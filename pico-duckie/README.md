# Pico-Ducky Payloads

This directory contains Rubber Ducky payloads for the **Raspberry Pi Pico** (using pico-ducky firmware).

## mac-os-keyboard-injection

**File:** `mac-os-keyboard-injection`

### Description
This payload is designed for **macOS** systems. When the Pico is plugged in, it emulates a keyboard and performs the following actions:

1. Opens Spotlight Search (`⌘ + Space`)
2. Types "Terminal" and opens it
3. Executes the `/catch` command (for the internal catch-ing program)
4. Immediately exits the terminal window to minimize visibility

<br>

## linux-keyboard-injection

**File:** `linux-keyboard-injection`

### Description
This payload is designed for **linux** systems. When the Pico is plugged in, it emulates a keyboard and performs the following actions:

1. Opens GUI for app-search
2. Types "Terminal" and opens it
3. Executes the `/catch` command (for the internal catch-ing program)
4. Immediately exits the terminal window to minimize visibility

<br>

## Purpose

- Used for Proof of Concept (PoC) testing on personal/company Mac devices.
- Simulates a physical attack vector using a disguised USB device (intended to look like a YubiKey or security key).
- Demonstrates how a BadUSB device can achieve code execution via HID keyboard emulation.

## Usage Instructions

- Flash your Raspberry Pi Pico with the latest pico-ducky firmware.
- Copy this file to the root of the Pico (as payload.dd).
- Safely eject the Pico.
- Plug it into a target Mac to test.

## Customization Tips

- Change "Terminal" to Ghostty, iTerm, or your preferred terminal app.
- Adjust DELAY values based on the target machine's speed.
- Update the catch reason string for different scenarios.
- For production use, consider disguising the Pico inside a YubiKey-style shell.
