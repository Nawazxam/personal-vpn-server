# Setup Log

Running log of the actual build — updated as each phase is completed. Screenshots referenced here live in `/assets`.

## Phase 1 — Server Side (OnePlus 9R)

- [ ] Install Termux (F-Droid build, not Play Store)
- [ ] `pkg update && pkg upgrade`
- [ ] Install Tailscale inside Termux
- [ ] Create Tailscale account
- [ ] Log in and connect the device
- [ ] Confirm device shows "online" in the [Tailscale admin dashboard](https://login.tailscale.com/admin/machines)

**Notes / gotchas:** _(fill in as you go)_

**Screenshot:** `assets/phase1-tailscale-online.png`

---

## Phase 2 — Client Side

- [ ] Install Tailscale on client device (laptop / office phone)
- [ ] Log in with the same account
- [ ] Confirm both devices appear on the same tailnet

**Notes / gotchas:**

---

## Phase 3 — Test

- [ ] Disconnect from home Wi-Fi — switch to mobile data or a different network
- [ ] Ping / access the home server over its Tailscale IP
- [ ] (Bonus) Access Jellyfin remotely over Tailscale

**Notes / gotchas:**

**Screenshot:** `assets/phase3-remote-test.png`

---

## Phase 4 — Raw WireGuard (Advanced)

- [ ] Generate public/private key pairs manually
- [ ] Write `wg0.conf` by hand
- [ ] Configure port forwarding on the router
- [ ] Bring the interface up (`wg-quick up wg0`)
- [ ] Confirm handshake with a peer, Tailscale-free

**Notes / gotchas:**

---

## Reference

- [Tailscale docs](https://tailscale.com/kb/)
- [WireGuard official site](https://www.wireguard.com/)
