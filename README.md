# 💸 Money Moves

A 3D property-trading board game that teaches teens how to manage money: budgeting, saving, investing and avoiding debt.

**▶ Play it:** https://misterclarity.github.io/money-moves/

The whole game is one HTML file (`index.html`). It works offline, so you can download it and open it in any modern browser with no internet connection.

## Features

- **3D board** built with [A-Frame](https://aframe.io) 1.8.0. Drag to rotate, pinch or scroll to zoom, and tap a tile to see what it does.
- **2–4 players**: people on one device, CPU players, or friends on their own devices.
- **Money lessons built into the rules**: paychecks with automatic saving ("pay yourself first"), compound interest, side-hustle ventures that earn income, a quiz, surprise "Life Happens" cards, an impulse-buy mall, taxes and savings goals. Every game ends with a report card.
- **Auto-save**: the host's device saves the game after every turn.
- **Sound and music**: real recorded dice, chip, card and coin sounds, fanfares for big moments, and background music in three styles: 🎉 Upbeat, ☕ Calm lo-fi, or 🔀 Mix (the default). Tap 🎵 to pick a style, skip tracks, turn music or sound effects on or off, and change their volume. Everything is embedded in the page, so it works offline too.

## Difficulty levels

| | 🌱 Easy | ⚖️ Medium | 🔥 Hard |
|---|:-:|:-:|:-:|
| Paychecks, auto-save, savings interest | ✅ | ✅ | ✅ |
| Buy ventures, customer fees, full-set bonus | ✅ | ✅ | ✅ |
| Money Quiz | 3 choices | 4 choices | 4 choices + credit questions |
| ⭐ Venture upgrades | – | ✅ | ✅ |
| 🧾 Income tax (Easy: optional "Give Back" donation) | – | ✅ | ✅ |
| Bigger surprise costs | – | ✅ | ✅ |
| When you can't pay | Safety net covers it, but you go to Budget Bootcamp and skip a turn | Ventures sold at half price, then bankruptcy | Loan up to your credit limit, then sales, then bankruptcy |
| 💳 Borrowing and loans | – | – | ✅ |
| 📊 Credit score (sets your interest rate and limit) | – | – | ✅ |
| 📅 Minimum payments and late fees | – | – | ✅ |
| 📈 Inflation every 5 rounds | – | – | ✅ |
| Credit-card, buy-now-pay-later and payday-loan cards | – | – | ✅ |
| Starting cash | $400 | $300 | $250 |

## Playing on several devices

Multiplayer runs peer-to-peer over WebRTC, so no game server is involved.

1. **Host:** in setup, set a player to **📡 Other device**. An invite appears as a QR code and as a copyable code.
2. **Friend:** open this page and tap **📡 Join a friend's game**. Scan the QR code or paste the invite. If the page is served over https (as it is on GitHub Pages), the friend can also scan the invite QR with their phone's camera app, which opens the game with the invite already filled in.
3. **Friend:** send the reply code back to the host by QR or by pasting it.
4. **Host:** paste or scan the reply code, then start the game.

The host's device runs the game. Guests see the same board and make their own moves. If a guest disconnects, a CPU takes over their seat.

- Devices on the **same Wi-Fi** can connect even without internet.
- Devices on **different networks** need internet. The game uses a public STUN server only to find a route between the devices. Some strict networks (school, corporate, some mobile carriers) may block direct connections.

## Credits: music and sound (bundled in `index.html`)

- **Music:** “Sergio’s Magic Dustbin” and “Club Seamus” by Kevin MacLeod ([incompetech.com](https://incompetech.com)), licensed under [Creative Commons: By Attribution 4.0](https://creativecommons.org/licenses/by/4.0/). The tracks were re-encoded to a smaller file size; the music itself is unchanged.
- **Lo-fi music:** “Fire Place” (from *Winter Lofi*) and “Sense Of Purpose” (from *Spring at Last (LOFI TAPE)*) by [HoliznaCC0](https://freemusicarchive.org/music/holiznacc0), public domain ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)). Loudness-matched and re-encoded to a smaller file size.
- **Sound effects:** [Kenney](https://kenney.nl) Casino, UI, Digital and RPG audio packs, public domain ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).
- **Fanfares:** Beatscribe, [Homebrew Free Jingle and Fanfare Music Assets](https://github.com/Beatscribe/homebrew_vgm), public domain (CC0).

## Third-party code (bundled in `index.html`)

- [A-Frame](https://github.com/aframevr/aframe) 1.8.0, MIT License
- [qrcode-generator](https://github.com/kazuhikoarase/qrcode-generator), MIT License, © Kazuhiko Arase
- [jsQR](https://github.com/cozmo/jsQR), Apache License 2.0, © Cosmo Wolfe
