#!/data/data/com.termux/files/usr/bin/bash
# setup-tailscale-termux.sh
# Phase 1 helper: get Tailscale running inside Termux on the OnePlus 9R.
# Fill in / adjust as the actual build happens — this is a starting skeleton.

set -e

echo "Updating packages..."
pkg update -y && pkg upgrade -y

echo "Installing Tailscale..."
pkg install tailscale -y

echo "Starting tailscaled..."
tailscaled &
sleep 2

echo "Bringing up Tailscale (this will prompt you to log in via a URL)..."
tailscale up

echo "Done. Check status with: tailscale status"
