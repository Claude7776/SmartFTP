#!/bin/bash

# === Configuration ===
FTP_DIR="$HOME/ftp_shared"
PORT=2221
USER="ftpuser"
PASS="ftp123" # ===== Veuillez changer le USER et le PASS

# === Création du dossier FTP partagé ===
mkdir -p "$FTP_DIR"

# === Vérifie si busybox est installé Uniquement sur termux ===
if ! command -v busybox &>/dev/null; then
    echo "❌ busybox non installé. Veux-tu l'installer ?"
    exit 1
fi

# === Lancement du serveur FTP ===
echo "📡 Démarrage du serveur FTP sur le port $PORT..."
busybox ftpd -w -S -p $PORT -h $FTP_DIR &

# === Infos réseau ===
IP=$(ip addr show wlan0 | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)

echo "✅ FTP lancé sur : ftp://$IP:$PORT"
echo "📂 Dossier partagé : $FTP_DIR"
echo "⚠️ Ce serveur n'a pas de mot de passe (local et temporaire)"
