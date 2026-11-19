<div align="center">

# ✨ Halo — Mindful AI Wellbeing Companion

[![Category](https://img.shields.io/badge/Category-JR2:_AI_That_Makes_Life_Better-8A2BE2.svg)](https://thegaudium.com)
[![Team](https://img.shields.io/badge/Team-The_H@ckers-00C49F.svg)](#team--contributors)
[![School](https://img.shields.io/badge/School-The_Gaudium_School-blue.svg)](https://thegaudium.com)
[![Live Demo](https://img.shields.io/badge/Live_Demo-thehackers--halo.netlify.app-00C7B7?style=flat&logo=netlify)](https://thehackers-halo.netlify.app/)
[![Platform](https://img.shields.io/badge/Platform-iOS_|_Android_|_macOS_|_Windows_|_Linux_|_Web-orange.svg)](#downloads--releases)
[![License](https://img.shields.io/badge/Privacy-100%25_On--Device_Local-brightgreen.svg)](#privacy--architecture)

<p align="center">
  <b>A compassionate, multisensory emotional sanctuary designed to tackle adolescent burnout, academic anxiety, and neurodivergent sensory overload.</b>
</p>

[🌐 **Live Web App**](https://thehackers-halo.netlify.app/) • [Quick Start](#-quick-start) • [Features](#-core-features) • [Architecture](#-project-architecture) • [Downloads](#-downloads--releases) • [The Team](#-team--contributors)

---

</div>

## 🌟 Overview

Adolescence and academic pressure often bring silent struggles: sensory overwhelm, ADHD hyperactivity, racing thoughts, and late-night burnout. Traditional mental health apps frequently feel sterile, clinical, or lock privacy behind cloud subscriptions.

**Halo** bridges cutting-edge emotional AI with real-time sensory and audio neuro-tuning:
- **Instant Empathetic Cognitive Reframing:** Powered by Gemini 2.5 Flash with intelligent on-device fallbacks.
- **Synthesized Psychoacoustic Audio:** Real-time procedural 432Hz binaural frequencies, pink/brown noise, and generative natural soundscapes.
- **Gentle Taptic Sensory Rhythms:** Haptic pulses synchronized to physiological 4-4-6 breathing patterns and tactile fidget toys.
- **Zero-Cloud Privacy:** Personal check-ins and journal entries never leave the device.

---

## 🚀 Core Features

### 1. 🌈 Mindful Check-In & AI Day Plan
- **Dynamic Chromatic Mood Dial:** Interactive color temperature adjustment across 6 emotional states (*Drained, Heavy, Foggy, Balanced, Bright, Radiant*).
- **Three-Part Actionable Plan:** Generates immediate cognitive reframes:
  - 💡 **Perspective:** Compassionate reframing of present feelings.
  - ⚡ **Right Now (2 min):** A tiny micro-action to break inertia.
  - 🌱 **Later Today:** A gentle, low-pressure focus to look forward to.
- **Direct Journey Integration:** Seamlessly log reflections or escalate to deeper conversations with the AI Counselor.

### 2. 🫁 Somatic Breathing Orb & Taptic Guidance
- **4-4-6 Calming Rhythms:** Physiological inhale (4s), hold (4s), and exhale (6s) cycles designed to activate the parasympathetic nervous system.
- **Tactile Resonance:** Synchronized haptic pulses guide breathing physically so users can close their eyes and center themselves.

### 3. 🎧 5-Channel Ambient Soundscape Synthesizer
- Fully generative, real-time Web Audio API sound generator (no pre-recorded loops or streaming bandwidth required):
  - 🌧️ **Rain & Storm:** Dynamic pink-noise filtering with raindrop drops.
  - 🧘 **Zen 432Hz:** Pure sine wave binaural harmonics for deep calm.
  - 🧠 **Focus:** Brown noise tuned for ADHD executive focus.
  - 🔥 **Hearth:** Random crackle impulses for evening grounding.
  - 🌲 **Night Forest:** Soft cicada chirps and natural nighttime stillness.

### 4. 🎈 Sensory Relief & Fidget Studio
- Interactive tactile toys designed for neurodivergent sensory regulation:
  - **Pop It:** 30 silicone bubbles with resonant popping frequencies and haptics.
  - **Thought Shredder:** Write worries and watch them incinerate into embers, disintegrate into cosmic stardust, or shred into paper ribbons.
  - **Tactile Clicker & Switchboard:** Micro-switches with mechanical spring clicks.
  - **Newton’s Cradle & Marbles:** Elastic physics simulations with kinetic chimes.
  - **Kinetic Canvas & Kaleidoscope:** 8-way mirroring generative neon art.

### 5. 💬 Halo AI Counselor
- An emotionally attuned, warm conversational companion trained in non-judgmental reflective inquiry.
- Capable of guiding through burnout, social comparison, imposter syndrome, and study stress without clinical jargon.

---

## 📂 Project Architecture

The codebase is organized into modular platform directories:

```
hackathon/
├── Halo.html               # Unified single-file core application (UI, Audio & AI engine)
├── index.html              # Web PWA root entry point
├── capacitor.config.json   # Native cross-platform bridge configuration
├── package.json            # Scripts and desktop build configuration
│
├── docs/                   # Hackathon project documentation & submission PDFs
│   ├── Gaudium_JR2_Halo.pdf
│   └── Project_Note.pdf
│
├── media/                  # High-resolution logos, mockups, and banners
│   ├── halo_official_logo.png
│   ├── halo_innovation_studio.jpg
│   └── halo_studio_clean.jpg
│
├── ios/                    # Native iOS Xcode Project & CocoaPods bridge
│   └── App/
│       ├── App/Sources/    # AppDelegate.swift, SceneDelegate.swift, ViewController.swift
│       └── App.xcworkspace # Main Xcode workspace
│
├── android/                # Native Android Studio Project (Gradle)
│   └── app/src/main/       # AndroidManifest.xml & assets
│
├── scripts/                # Automated multi-platform build scripts
│   └── build-web.js
│
├── www/                    # Production static web assets
│
└── release/                # Compiled production packages
    ├── ios/                # Halo.ipa (iOS Development Package)
    ├── android/            # Halo-1.0.0.apk (Android Package)
    ├── mac/                # Halo-1.0.0-arm64.dmg (macOS Installer)
    ├── windows/            # Halo Setup 1.0.0.exe (Windows Installer)
    └── linux/              # Halo-1.0.0.AppImage & DEB package
```

---

## 📦 Downloads & Releases

Pre-compiled installation packages are available in the [`release/`](release/) folder:

| Platform | Package | Description |
|:---|:---|:---|
| 🍏 **iOS** | [`release/ios/Halo.ipa`](release/ios/Halo.ipa) | Native iOS app with WebKit audio session bypass |
| 🤖 **Android** | [`release/android/Halo-1.0.0.apk`](release/android/Halo-1.0.0.apk) | Standalone APK for Android 8.0+ devices |
| 🍎 **macOS** | [`release/mac/Halo-1.0.0-arm64.dmg`](release/mac/) | DMG Installer for Apple Silicon Macs |
| 🐧 **Linux** | [`release/linux/Halo-1.0.0.AppImage`](release/linux/) | Universal AppImage & DEB for Ubuntu / Debian / Fedora |
| 🪟 **Windows** | [`release/windows/Halo Setup 1.0.0.exe`](release/windows/) | 64-bit Windows executable installer |

---

## 🛠️ Quick Start & Development

### Prerequisites
- Node.js (v18+)
- Xcode (for iOS builds, macOS only)
- Android Studio / JDK 17 (for Android builds)

### 1. Run in Web Browser
```bash
git clone https://github.com/PixelPunchline/halo.git
cd halo
npm install
npm run start:web
```

### 2. Run Desktop App (Electron)
```bash
npm start
```

### 3. Build for Mobile
- **iOS:** `npm run build:web && npx cap sync ios` (then open `ios/App/App.xcworkspace` in Xcode)
- **Android:** `npm run build:web && npx cap sync android` (then open `android/` in Android Studio)

---

## 🔒 Privacy & Architecture

- **Zero Surveillance:** Personal journal logs and check-in history are stored exclusively in local encrypted sandboxes on device.
- **Hardware-Aware Audio:** Integrates with iOS `AVAudioSessionCategoryPlayback` to allow soundscape playback even when the hardware mute switch is engaged.
- **Offline Reliability:** Generative audio and fallback heuristic reasoning function with zero internet connection.

---

## 👥 Team & Contributors

Proudly developed for the **Inter-School AI Hackathon**:

* **Category:** JR2 – *AI That Makes Life Better* (Grades 6–8)
* **Team:** **The H@ckers**
* **School:** **The Gaudium School**

### Team Members:
* **Hruthvik Aarav Madasu** — *Team Leader & System Architect*
* **Hiresh Reddy Tadigotla** — *Frontend Engineering & Audio Synthesizer*
* **Dhruv Movva** — *AI Logic & Cognitive Reframing*

---
<div align="center">
  <sub>Built with compassion and curiosity • Halo 2026</sub>
</div>
