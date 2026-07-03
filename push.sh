#!/bin/bash

# ============================================
#  JONGNESIA CONTENT TOOLKIT
#  Bikin konten jadi makin gampang
# ============================================

cd "$(dirname "$(readlink -f "$0" 2>/dev/null || realpath "$0" 2>/dev/null || echo "$0")")" 2>/dev/null
[ -f "config.toml" ] || { echo "Gagal deteksi folder project!"; exit 1; }

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; PURPLE='\033[0;35m'; NC='\033[0m'
BOLD='\033[1m'

# ============================================
#  TOKEN & AUTH
# ============================================
# Penulis biasa: gak perlu token, gak bisa push
# Admin (lu): bikin file .token (udah di gitignore)
#   isi file cukup token aja, contoh:
# ============================================

TOKEN=""
IS_ADMIN=false

get_token() {
  if [ -f ".token" ]; then
    TOKEN=$(cat ".token" | tr -d ' \t\n\r')
    [ -n "$TOKEN" ] && IS_ADMIN=true
  fi
}

push_with_token() {
  if [ "$IS_ADMIN" = false ]; then
    echo -e "\n${RED}Hanya admin yang bisa push!${NC}"
    echo -e "Buat file ${YELLOW}.token${NC} berisi GitHub token lu."
    read -p "Tekan Enter..."
    return 1
  fi

  REMOTE=$(git remote get-url origin)
  BRANCH=$(git branch --show-current)

  echo -e "${YELLOW}══════════════════════════════════${NC}"
  echo -e "  Remote : ${CYAN}$REMOTE${NC}"
  echo -e "  Branch : ${CYAN}$BRANCH${NC}"
  echo -e "${YELLOW}══════════════════════════════════${NC}"
  echo -e "${RED}Yakin push ke remote di atas?${NC}"
  read -p "  Ketik yakin: " confirm

  if [ "$confirm" != "yakin" ]; then
    echo -e "${YELLOW}Dibatalkan.${NC}"
    return 1
  fi

  GIT_USER=$(git remote get-url origin | sed 's|https://\([^@]*\)@.*|\1|')
  AUTH_REMOTE="https://${GIT_USER}:${TOKEN}@github.com/rysnant0-nes/jongnesia.or.id.git"
  git push "$AUTH_REMOTE" "$BRANCH"
}

get_token

# ============================================

show_logo() {
  clear
  echo -e "${PURPLE}"
  echo '     _  ___  _   _  ____ _   _ _____ ____ ___    _    '
  echo '    | |/ _ \| \ | |/ ___| \ | | ____/ ___|_ _|  / \   '
  echo ' _  | | | | |  \| | |  _|  \| |  _| \___ \| |  / _ \  '
  echo '| |_| | |_| | |\  | |_| | |\  | |___ ___) | | / ___ \ '
  echo ' \___/ \___/|_| \_|\____|_| \_|_____|____/___/_/   \_|'
  echo -e "${NC}"

  if [ "$IS_ADMIN" = true ]; then
    echo -e "${CYAN}  Jongnesia ${GREEN}[ADMIN]${NC}"
  else
    echo -e "${CYAN}  Jongnesia ${YELLOW}[PENULIS]${NC}"
  fi
  echo ''
}

show_menu() {
  echo -e "${BOLD}Pilih tindakan:${NC}"
  echo -e "${GREEN}  1${NC}. Buat konten baru"
  echo -e "${GREEN}  2${NC}. Jalankan Hugo server (dev mode)"
  echo -e "${GREEN}  3${NC}. Build production"
  echo -e "${GREEN}  4${NC}. Edit konten terbaru"
  echo -e "${GREEN}  5${NC}. Lihat status Git"

  if [ "$IS_ADMIN" = true ]; then
    echo ''
    echo -e "${BOLD}── Admin ──${NC}"
    echo -e "${GREEN}  6${NC}. Build & Push ke GitHub"
    echo -e "${GREEN}  7${NC}. Quick push"
    echo -e "${GREEN}  8${NC}. Simpan token ke Windows"
    echo -e "${GREEN}  9${NC}. Kelola PR dari penulis"
  fi
  echo ''

  echo -e "${RED}  0${NC}. Keluar"
  echo ''
}

buat_konten() {
  echo -e "\n${YELLOW}═══ Buat Konten Baru ═══${NC}\n"

  read -p "Judul: " title
  read -p "Penulis (nama kamu): " penulis
  read -p "Deskripsi (SEO): " description

  echo -e "Kategori:"
  echo "  1. post"
  echo "  2. koding"
  read -p "Pilihan [1]: " cat_choice
  case $cat_choice in
    2) category="koding" ;;
    *) category="post" ;;
  esac

  read -p "Ilustration [/ilustration/]: " ilustration
  ilustration=${ilustration:-/ilustration/}

  slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g; s/[^a-zA-Z0-9-]//g')
  read -p "Slug [$slug]: " slug_input
  slug=${slug_input:-$slug}

  filename="${slug}.md"
  filepath="content/${category}/${filename}"

  if [ -f "$filepath" ]; then
    echo -e "${RED}File $filepath sudah ada!${NC}"
    read -p "Timpa? (y/N): " confirm
    [ "$confirm" != "y" ] && return
  fi

  cat > "$filepath" <<EOF
---
ilustration: "${ilustration}"
penulis: "${penulis}"
description: "${description}"
slug: "${slug}"
title: "${title}"
date: $(date +%Y-%m-%dT%H:%M:%S%z)
draft: true
tags: []
---
EOF

  echo -e "\n${GREEN}Konten dibuat:${NC} $filepath"
  echo -e "${YELLOW}Status: draft${NC}\n"

  read -p "Langsung edit? (y/N): " edit_now
  if [ "$edit_now" = "y" ]; then
    if command -v code &>/dev/null; then
      code "$filepath"
    elif command -v nano &>/dev/null; then
      nano "$filepath"
    elif command -v vim &>/dev/null; then
      vim "$filepath"
    else
      echo -e "${YELLOW}Buka manual: $filepath${NC}"
    fi
  fi
}

run_server() {
  echo -e "\n${YELLOW}═══ Hugo Server (Dev Mode) ═══${NC}\n"
  echo -e "${CYAN}Local: http://localhost:1313${NC}"
  echo -e "${CYAN}Drafts: visible${NC}\n"
  hugo server -D
}

build_prod() {
  echo -e "\n${YELLOW}═══ Build Production ═══${NC}\n"
  echo -e "${CYAN}Hugo build...${NC}"
  hugo
  echo -e "${CYAN}Pagefind index...${NC}"
  npx pagefind --site public
  echo -e "\n${GREEN}Build selesai! Output: public/${NC}"
}

edit_konten() {
  echo -e "\n${YELLOW}═══ Konten Terbaru ═══${NC}\n"

  files=()
  while IFS= read -r f; do
    files+=("$f")
  done < <(find content/post content/koding -name "*.md" -not -name "_index.md" -printf '%T@ %p\n' 2>/dev/null | sort -rn | head -12 | cut -d' ' -f2-)

  if [ ${#files[@]} -eq 0 ]; then
    echo -e "${YELLOW}Tidak ada konten.${NC}"
    return
  fi

  for i in "${!files[@]}"; do
    name=$(basename "${files[$i]}" .md)
    echo -e "${GREEN}$((i+1))${NC}. $name"
  done

  echo ''
  read -p "Pilih nomor (atau Enter untuk batal): " pick
  [ -z "$pick" ] && return

  idx=$((pick-1))
  [ "$idx" -lt 0 ] || [ "$idx" -ge "${#files[@]}" ] && echo -e "${RED}Pilihan tidak valid.${NC}" && return

  selected="${files[$idx]}"
  echo -e "${CYAN}Membuka: $selected${NC}"

  if command -v code &>/dev/null; then
    code "$selected"
  elif command -v nano &>/dev/null; then
    nano "$selected"
  elif command -v vim &>/dev/null; then
    vim "$selected"
  else
    echo -e "${YELLOW}Buka manual: $selected${NC}"
  fi
}

build_and_push() {
  echo -e "\n${YELLOW}═══ Build & Push ═══${NC}\n"

  echo -e "${CYAN}Build production...${NC}"
  npm run build

  echo -e "\n${CYAN}Staging file...${NC}"
  git add .

  echo -e "\n${CYAN}Status:${NC}"
  git status --short

  echo ''
  read -p "Commit message: " msg
  if [ -z "$msg" ]; then
    echo -e "${RED}Batal -- pesan kosong.${NC}"
    return
  fi

  git commit -m "$msg"
  push_with_token
}

quick_push() {
  echo -e "\n${YELLOW}═══ Quick Push ═══${NC}\n"

  git add .
  status_count=$(git status --short | wc -l)

  if [ "$status_count" -eq 0 ]; then
    echo -e "${YELLOW}Tidak ada perubahan.${NC}"
    return
  fi

  echo -e "${CYAN}Changed: $status_count file(s)${NC}"
  git status --short

  echo ''
  read -p "Pesan commit: " msg
  msg=${msg:-update $(date +%Y-%m-%d)}

  git commit -m "$msg"
  push_with_token
}

setup_credential() {
  echo -e "\n${YELLOW}═══ Setup Credential Helper ═══${NC}\n"
  echo -e "${CYAN}Ini akan menyimpan token ke Windows Credential Manager${NC}"
  echo -e "${CYAN}Jadi gak perlu masukin ulang tiap push.${NC}\n"

  if [ "$IS_ADMIN" = false ]; then
    echo -e "${RED}Buat file .token dulu!${NC}"
    read -p "Tekan Enter..."
    return
  fi

  git config --global credential.helper manager-core

  echo -e "${YELLOW}Menyimpan credential ke Windows...${NC}"
  cmdkey /generic:git:https://github.com /user:rysnant0-nes /pass:"$TOKEN" 2>/dev/null
  echo -e "protocol=https\nhost=github.com\nusername=rysnant0-nes\npassword=$TOKEN" | git credential-manager-core store 2>/dev/null || true

  echo -e "\n${GREEN}Selesai! Sekarang push cukup pake: git push${NC}"
  echo -e "${YELLOW}Token tersimpan aman di Windows Credential Manager.${NC}"
  read -p "Tekan Enter..."
}

kelola_pr() {
  echo -e "\n${YELLOW}═══ PR dari Penulis ═══${NC}\n"

  if ! command -v gh &>/dev/null; then
    echo -e "${RED}GitHub CLI (gh) gak ada. Install dulu:${NC}"
    echo "  winget install GitHub.cli"
    echo "  lalu: gh auth login"
    read -p "Tekan Enter..."
    return
  fi

  if ! gh auth status &>/dev/null; then
    echo -e "${YELLOW}Belum login ke GitHub.${NC}"
    read -p "Lanjut login? (y/N): " login_gh
    [ "$login_gh" != "y" ] && return
    gh auth login
  fi

  echo -e "${CYAN}Mengambil daftar PR...${NC}\n"

  PRS=$(gh pr list --repo rysnant0-nes/jongnesia.or.id --state open \
    --template '{{range .}}{{.number}}|{{.title}}|{{.author.login}}|{{.headRefName}}|{{.url}}{{"\n"}}{{end}}' 2>/dev/null)

  if [ -z "$PRS" ]; then
    echo -e "${GREEN}Tidak ada PR open.${NC}"
    read -p "Tekan Enter..."
    return
  fi

  echo -e "${BOLD}PR Open:${NC}\n"

  NUM=0
  PR_LIST=()
  while IFS= read -r line; do
    [ -z "$line" ] && continue
    PR_LIST+=("$line")
    NUM=$((NUM+1))
    IFS='|' read -r num title author branch url <<< "$line"
    echo -e "  ${GREEN}$NUM${NC}. ${CYAN}$title${NC}"
    echo -e "     Oleh: $author  |  Branch: $branch"
    echo ''
  done <<< "$PRS"

  echo -e "${BOLD}Aksi:${NC}"
  echo "  1. Merge salah satu PR"
  echo "  Enter. Kembali"
  read -p "Pilihan: " action
  [ "$action" != "1" ] && return

  read -p "Nomor urut PR yang mau di-merge: " pick
  pick=$((pick-1))
  [ "$pick" -lt 0 ] || [ "$pick" -ge "${#PR_LIST[@]}" ] && echo -e "${RED}Pilihan gak valid.${NC}" && read -p "Tekan Enter..." && return

  IFS='|' read -r gh_num gh_title gh_author gh_branch gh_url <<< "${PR_LIST[$pick]}"

  echo -e "\n${YELLOW}Merge PR #$gh_num: $gh_title${NC}"
  echo -e "Dari: ${CYAN}$gh_author${NC}"
  echo -e "${RED}Yakin merge?${NC}"
  read -p "  Ketik yakin: " confirm
  [ "$confirm" != "yakin" ] && echo -e "${YELLOW}Dibatalkan.${NC}" && read -p "Tekan Enter..." && return

  gh pr merge "$gh_num" --repo rysnant0-nes/jongnesia.or.id --merge --delete-branch

  echo -e "\n${GREEN}PR #$gh_num berhasil di-merge!${NC}"
  echo -e "${YELLOW}Jangan lupa pull dulu di lokal:${NC}"
  echo "  git pull"
  read -p "Tekan Enter..."
}

lihat_status() {
  echo -e "\n${YELLOW}═══ Git Status ═══${NC}\n"
  git status --short

  echo -e "\n${YELLOW}═══ 10 Commit Terakhir ═══${NC}\n"
  git log --oneline -10

  echo ''
  read -p "Tekan Enter untuk kembali..."
}

# ============================================
#  MAIN
# ============================================

while true; do
  show_logo
  show_menu
  read -p "Pilihan: " choice

  case $choice in
    1) buat_konten ;;
    2) run_server ;;
    3) build_prod ;;
    4) edit_konten ;;
    5) lihat_status ;;
    6) [ "$IS_ADMIN" = true ] && build_and_push || echo -e "${RED}Menu khusus admin${NC}"; sleep 1 ;;
    7) [ "$IS_ADMIN" = true ] && quick_push || echo -e "${RED}Menu khusus admin${NC}"; sleep 1 ;;
    8) [ "$IS_ADMIN" = true ] && setup_credential || echo -e "${RED}Menu khusus admin${NC}"; sleep 1 ;;
     9) [ "$IS_ADMIN" = true ] && kelola_pr || echo -e "${RED}Menu khusus admin${NC}"; sleep 1 ;;
    0)
      echo -e "\n${GREEN}Dadah!${NC}\n"
      exit 0
      ;;
    *)
      echo -e "\n${RED}Pilihan tidak valid!${NC}"
      sleep 1
      ;;
  esac
done
