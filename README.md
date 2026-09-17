<div align="center">

# 🔐 personal-vpn-server

**A broken OnePlus 9R, reborn as a self-hosted VPN server.**

Built with Termux → Tailscale → WireGuard, documented phase by phase.

[![Status](https://img.shields.io/badge/status-in%20progress-yellow)](#roadmap)
[![Platform](https://img.shields.io/badge/platform-Android%20%2F%20Termux-3DDC84)](#tech-stack)
[![Protocol](https://img.shields.io/badge/protocol-WireGuard-88171A)](https://www.wireguard.com/)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

</div>

---

## 📖 Why This Exists

Full backstory is on the blog (linked below), but the short version: an old OnePlus 9R that I refused to sell after its screen cracked got a second life as a self-hosted VPN server — so my traffic isn't sitting there for my ISP or public Wi-Fi to watch, and so I've got remote access into my home network from anywhere.

📝 Full write-up: *[Medium / dev.to link — add once published]*

## 🧠 Core Idea

```
Without VPN:  [Phone] → [WiFi/ISP] → [Website]
With VPN:     [Phone] → [Encrypted Tunnel] → [Home Server (OnePlus 9R)] → [Website]
```

Anyone on the same network (coffee shop Wi-Fi, ISP) can only see that I'm talking to my home server — not where I actually end up online. GPS location doesn't change; only how and where traffic appears to originate.

## 🛠️ Tech Stack

| Layer | Tool | Why |
|---|---|---|
| Runtime | [Termux](https://termux.dev/) | Turns the Android phone into a Linux-capable environment |
| VPN (Phase 1) | [Tailscale](https://tailscale.com/) | WireGuard-based mesh VPN, no manual port forwarding, fast on-ramp |
| VPN (Phase 2) | [WireGuard](https://www.wireguard.com/) (raw) | Manual keys/config — full control once the concepts are solid |
| Media (bonus) | [Jellyfin](https://jellyfin.org/) | Remote access to a self-hosted media server over the tunnel |

## 🗺️ Roadmap / Build Log

- [ ] **Phase 1 — Server side (OnePlus 9R)**
  - [ ] Install Termux (F-Droid)
  - [ ] Create Tailscale account
  - [ ] Install Tailscale inside Termux
  - [ ] Confirm device shows "online" in Tailscale admin dashboard
- [ ] **Phase 2 — Client side**
  - [ ] Install Tailscale on client device(s)
  - [ ] Confirm both devices on the same private network
- [ ] **Phase 3 — Test**
  - [ ] Disconnect from home Wi-Fi (mobile data / office Wi-Fi)
  - [ ] Ping/access home server through Tailscale
  - [ ] (Bonus) Access Jellyfin remotely via Tailscale IP
- [ ] **Phase 4 — Raw WireGuard (advanced)**
  - [ ] Generate key pairs manually
  - [ ] Write WireGuard config files by hand
  - [ ] Understand and configure port forwarding
  - [ ] Full manual handshake working, Tailscale-free

> Commits are made phase by phase as the build actually happens — check the commit history for real progress, not just this checklist.

## 📂 Repo Structure

```
.
├── docs/
│   ├── CONCEPTS.md       # VPN/networking terms explained (tunnel, NAT, peer, handshake, etc.)
│   └── SETUP.md          # Step-by-step setup log per phase
├── scripts/              # Termux/setup helper scripts
├── assets/               # Screenshots, diagrams for docs + blog
├── CHANGELOG.md
├── LICENSE
└── README.md
```

## 🚀 Quick Start

> ⚠️ This section fills in as each phase is actually completed. Right now this repo is documentation + planning — see [Roadmap](#-roadmap--build-log).

## 📚 Docs

- [Concepts — VPN/networking terms explained](docs/CONCEPTS.md)
- [Setup Log](docs/SETUP.md)

## 🙌 Motivation

Written up in full on Medium/dev.to — the phone was a OnePlus 9R I saved up for years ago and didn't want to let go of after it broke. This project is as much about not throwing away something that mattered as it is about the networking.

## 📄 License

MIT — see [LICENSE](LICENSE).
