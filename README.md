<div align="center">
  <img src="https://lh3.googleusercontent.com/aida/AEtjO1XY9lAmRfvxhyL2mTFnOX3-yZI6SLURVD8lPcxT246tz-7s61f-GAUQ-9nnTQI7VvytwqE27pxy3d42vYXAnrmxCoGqgdOu0w9VN3H4FEDsPd6vCdG4FSbQGdhlvVzMLOwx67Y1KayQf_QZkijAxz-u9FBOU29GLG2MYnE75UD1SaAR6Rtij6xLEsLNiLig03n5aRHfA38VS2LjVgd9-DYFYYFP5hv7EuAZYiKU36-osSc3Z1g0kn3zsguV" alt="ATLAS Goma Logo" width="120" />

  # ATLAS Driver App (Livreur / Livreur)
  **L'outil ultime pour les livreurs et livreurs du réseau ATLAS à Goma.**

  [![Flutter](https://img.shields.io/badge/Flutter-3.22.x-02569B?logo=flutter)](https://flutter.dev)
  [![Dart](https://img.shields.io/badge/Dart-3.4.x-0175C2?logo=dart)](https://dart.dev)
  [![Platform](https://img.shields.io/badge/Platform-Android-lightgrey)]()
  [![CI/CD](https://img.shields.io/badge/Build-GitHub%20Actions-brightgreen?logo=github-actions)]()
</div>

---

## 📌 À propos

**ATLAS Driver App** est l'application réservée aux coursiers (livreurs) partenaires du réseau ATLAS Goma. Développée en **Flutter**, elle permet aux livreurs de gérer leurs courses, de suivre leurs revenus journaliers, et de valider les livraisons de manière ultrasécurisée via un système de **Code OTP client**.

## ✨ Fonctionnalités Clés

*   💸 **Dashboard des Gains** : Suivi instantané des revenus générés dans la journée et bouton de retrait rapide (M-Pesa, Airtel Money, etc.).
*   🛵 **Course en Cours** : Informations claires sur le point de retrait (ex: Katindo) et de dépôt (ex: Himbi), kilométrage et estimation de gain.
*   🗺️ **Bouton Itinéraire** : Lien direct vers l'application de navigation GPS native du téléphone.
*   🔒 **Clavier Code OTP Sécurisé** : Un pavé numérique intégré permet au livreur de saisir le code de réception à 4 chiffres (fourni par le client) pour débloquer le paiement sous séquestre et clore la course avec succès.

---

## 📸 Capture d'Écran (UI/UX)

Une interface claire, adaptée à un usage en extérieur sur moto.

<div align="center">
  <img src="assets/showcase/showcase_driver.png" width="300" alt="Dashboard Livreur ATLAS"/>
</div>

---

## 🛠️ Stack Technique

*   **Framework** : [Flutter](https://flutter.dev) (Dart)
*   **Architecture** : MVC / Clean Architecture
*   **Design System** : Minimaliste, contrastes forts pour lecture au soleil.
*   **Polices** : `Inter` (lisibilité) & `Plus Jakarta Sans` (titres).

## 🚀 Installation & Démarrage

1.  **Prérequis** : Avoir installé [Flutter](https://docs.flutter.dev/get-started/install).
2.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/atheon006/atlas-driver-app.git
    cd atlas-driver-app
    ```
3.  **Installer les dépendances** :
    ```bash
    flutter pub get
    ```
4.  **Lancer l'application** :
    ```bash
    flutter run
    ```

---

<div align="center">
  <p>Conçu pour simplifier la vie des livreurs de Goma avec ❤️</p>
</div>
