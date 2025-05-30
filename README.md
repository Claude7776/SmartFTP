# 📱 SmartFTP - Transformer un smartphone en serveur FTPS local sécurisé

## 🧠 Contexte

Besoin de transférer rapidement un fichier de ~5 Go depuis un téléphone vers un PC portable, **sans câble USB, ni cloud, ni Bluetooth**, dans un environnement sans Internet ?  
Voici comment j’ai transformé mon **smartphone Android en serveur FTPS sécurisé** en local grâce à une simple connexion Wi-Fi.

---

## 🛠️ Stack Technique

| Outil / Technologie       | Utilisation                         |
|---------------------------|--------------------------------------|
| Android                   | Appareil hébergeant le serveur FTPS |
| FTPS Server (Android App) | Serveur de transfert sécurisé        |
| FileZilla (PC)            | Client FTP                           |
| FTPS (FTP over SSL/TLS)   | Chiffrement des transferts           |
| Wi-Fi local               | Connexion réseau locale              |

---

## ⚙️ Étapes de mise en place

### 1. Configuration du serveur FTPS sur Android
- **App utilisée** : `FTP Server` (avec support de FTPS)
- **Port personnalisé** : `2221` *(au lieu du 21 par défaut)*
- **Sécurité activée** : SSL/TLS (FTPS)
- **Identifiants définis** : login / mot de passe
- **Répertoire partagé** : dossier contenant le fichier à transférer

### 2. Connexion depuis FileZilla (PC)
- Hôte : `192.168.x.x` (IP locale du téléphone)
- Port : `2221`
- Protocole : **FTP - FTP over TLS**
- Mode : **Connexion explicite**
- Authentification par identifiants

---

## 🔁 Résultat

- ✅ Transfert réussi d’un fichier de **4,9 Go**
- ⚡ Vitesse moyenne : **2,7 Mo/s**
- 🔐 Connexion sécurisée (SSL/TLS)
- 💡 Aucun besoin d’Internet ni de câble

---

## 🧠 Ce que ce projet démontre

- ✅ Maîtrise des protocoles réseau (FTP, FTPS)
- ✅ Capacité à configurer des services en local
- ✅ Notions de cybersécurité (chiffrement, ports non standards, identifiants)
- ✅ Adaptabilité et résolution de problèmes IT terrain

---

## 📸 Captures (à ajouter)

- Interface de FileZilla connecté
- Configuration du serveur FTPS sur Android
- Photo de l'environnement local

---

## 💬 À propos

> Ce projet fait partie de mes expérimentations personnelles dans l’optimisation des transferts de fichiers et l’administration réseau locale.  
> Il peut être utile en contexte professionnel (maintenance, transfert sécurisé de logs, fichiers ISO, backups temporaires, etc.)

---

## 🔗 Licence

Ce projet est librement partageable pour usage personnel ou d'apprentissage.

---
