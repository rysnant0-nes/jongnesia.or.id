#!/bin/bash

# ============================================
#  JONGNESIA CONTENT TOOLKIT
#  Bikin konten jadi makin gampang
# ============================================

[ -f "config.toml" ] || { echo "Jalankan dari root project!"; exit 1; }

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; PURPLE='\033[0;35m'; NC='\033[0m'
BOLD='\033[1m'

show_logo() {
  clear
  echo -e "${PURPLE}"
  echo '     _  ___  _   _  ____ _   _ _____ ____ ___    _    '
  echo '    | |/ _ \| \ | |/ ___| \ | | ____/ ___|_ _|  / \   '
  echo ' _  | | | | |  \| | |  _|  \| |  _| \___ \| |  / _ \  '
  echo '| |_| | |_| | |\  | |_| | |\  | |___ ___) | | / ___ \ '
  echo ' \___/ \___/|_| \_|\____|_| \_|_____|____/___/_/   \_|'
  echo -e "${NC}"
  echo -e "${CYAN}  Content Toolkit — bikin, preview, deploy 🚀${NC}"
  echo ''
}

show_menu() {
  echo -e "${BOLD}Pilih tindakan:${NC}"
  echo -e "${GREEN}  1${NC}. Buat konten baru"
  echo -e "${GREEN}  2${NC}. Jalankan Hugo server (dev mode)"
  echo -e "${GREEN}  3${NC}. Build & Push ke GitHub"
  echo -e "${GREEN}  4${NC}. Quick push (commit + push cepat)"
  echo -e "${GREEN}  5${NC}. Lihat status Git"
  echo -e "${GREEN}  6${NC}. Build production (hugo + pagefind)"
  echo -e "${GREEN}  7${NC}. Edit konten terbaru"
  echo -e "${RED}  0${NC}. Keluar"
  echo ''
}

buat_konten() {
  echo -e "\n${YELLOW}═══ Buat Konten Baru ═══${NC}\n"

  read -p "Judul: " title
  read -p "Penulis [Rysnanto]: " penulis
  penulis=${penulis:-Rysnanto}
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

  echo -e "\n${GREEN}✓ Konten dibuat:${NC} $filepath"
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

build_and_push() {
  echo -e "\n${YELLOW}═══ Build & Push ═══${NC}\n"

  echo -e "${CYAN}▶ Build production...${NC}"
  npm run build

  echo -e "\n${CYAN}▶ Staging file...${NC}"
  git add .

  echo -e "\n${CYAN}▶ Status:${NC}"
  git status --short

  echo ''
  read -p "Commit message: " msg
  if [ -z "$msg" ]; then
    echo -e "${RED}Batal — pesan kosong.${NC}"
    return
  fi

  git commit -m "$msg"
  git push

  echo -e "\n${GREEN}✓ Berhasil di-push ke GitHub!${NC}"
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
  git push

  echo -e "\n${GREEN}✓ Done!${NC}"
}

lihat_status() {
  echo -e "\n${YELLOW}═══ Git Status ═══${NC}\n"
  git status --short

  echo -e "\n${YELLOW}═══ 10 Commit Terakhir ═══${NC}\n"
  git log --oneline -10

  echo ''
  read -p "Tekan Enter untuk kembali..."
}

build_prod() {
  echo -e "\n${YELLOW}═══ Build Production ═══${NC}\n"
  echo -e "${CYAN}▶ Hugo build...${NC}"
  hugo
  echo -e "${CYAN}▶ Pagefind index...${NC}"
  npx pagefind --site public
  echo -e "\n${GREEN}✓ Build selesai! Output: public/${NC}"
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
    3) build_and_push ;;
    4) quick_push ;;
    5) lihat_status ;;
    6) build_prod ;;
    7) edit_konten ;;
    0)
      echo -e "\n${GREEN}Dadah! 👋${NC}\n"
      exit 0
      ;;
    *)
      echo -e "\n${RED}Pilihan tidak valid!${NC}"
      sleep 1
      ;;
  esac
done
