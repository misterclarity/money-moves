# 💸 Money Moves

A 3D property-trading board game that teaches teens how to manage money: budgeting, saving, investing and avoiding debt. Play in **English or German**, with **dollars or euros**.

**▶ Play it:** https://misterclarity.github.io/money-moves/

## Install it or take it offline

- **Install as an app:** on the setup screen tap **📲 Install app** (Chrome, Edge, Android). On iPhone or iPad, tap Share in Safari, then **Add to Home Screen**. The installed app opens full screen and works without internet.
- **Single-file version:** the setup screen links to [`money-moves-offline.html`](https://misterclarity.github.io/money-moves/money-moves-offline.html). It is the whole game, music included, in one HTML file. Open it from any folder or USB stick, no internet needed.

The web version loads the music separately so the first load is smaller, and caches it for offline play.

## Features

- **3D board** built with [A-Frame](https://aframe.io) 1.8.0. Drag to rotate, pinch or scroll to zoom, and tap a tile to see what it does.
- **2–4 players**: people on one device, CPU players, or friends on their own devices.
- **Payday budget:** at every Payday you split your paycheck with sliders into needs & bills (cash), wants (fun money) and savings. Presets: ⚖️ 50/30/20, 🐷 Super saver and 🎉 Fun first. You can let the game reuse your split automatically and change it any time under 💰 Money.
- **Fun money vs. impulse buys:** treats at the Impulse Mall paid from fun money count as planned. Anything beyond that comes out of your cash and counts as an impulse buy on the report card.
- **Trading:** under 🏪 Ventures → **🤝 Trade with another player**, offer ventures and/or cash to any player and ask for theirs in return. CPU players accept fair deals and sometimes make offers themselves to complete a set. Ventures from a set with ⭐ upgrades can't be traded.
- **Money lessons built into the rules**: compound interest, side-hustle ventures that earn income, a quiz, surprise "Life Happens" cards, taxes and savings goals. Every game ends with a report card.
- **English and German:** switch with **EN / DE** on the setup screen (German defaults to euros, and you can pick **$ / €** separately). In multiplayer, everyone plays in the host's language.
- **Auto-save**: the host's device saves the game after every turn.
- **Sound and music**: real recorded dice, chip, card and coin sounds, fanfares for big moments, and background music in three styles: 🎉 Upbeat, ☕ Calm lo-fi, or 🔀 Mix (the default). Tap 🎵 to pick a style, skip tracks, turn music or sound effects on or off, and change their volume.

## Difficulty levels

| | 🌱 Easy | ⚖️ Medium | 🔥 Hard |
|---|:-:|:-:|:-:|
| Paychecks with a budget, savings interest | ✅ | ✅ | ✅ |
| Buy ventures, customer fees, full-set bonus, trading | ✅ | ✅ | ✅ |
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

The host's device runs the game. Guests see the same board and make their own moves, including budgets and trades. If a guest disconnects, a CPU takes over their seat.

- Devices on the **same Wi-Fi** can connect even without internet.
- Devices on **different networks** need internet. The game uses a public STUN server only to find a route between the devices. Some strict networks (school, corporate, some mobile carriers) may block direct connections.

## Files

| File | What it is |
|---|---|
| `index.html` | The game (sound effects embedded, music loaded from `audio/`) |
| `money-moves-offline.html` | The same game as one self-contained file, music included |
| `sw.js`, `manifest.webmanifest`, `icons/` | Make the site installable and playable offline |
| `audio/` | Background music |

## Credits: music and sound

- **Music:** “Sergio’s Magic Dustbin” and “Club Seamus” by Kevin MacLeod ([incompetech.com](https://incompetech.com)), licensed under [Creative Commons: By Attribution 4.0](https://creativecommons.org/licenses/by/4.0/). The tracks were re-encoded to a smaller file size; the music itself is unchanged.
- **Lo-fi music:** “Fire Place” (from *Winter Lofi*) and “Sense Of Purpose” (from *Spring at Last (LOFI TAPE)*) by [HoliznaCC0](https://freemusicarchive.org/music/holiznacc0), public domain ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)). Loudness-matched and re-encoded to a smaller file size.
- **Sound effects:** [Kenney](https://kenney.nl) Casino, UI, Digital and RPG audio packs, public domain ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).
- **Fanfares:** Beatscribe, [Homebrew Free Jingle and Fanfare Music Assets](https://github.com/Beatscribe/homebrew_vgm), public domain (CC0).

## Third-party code (bundled in the HTML files)

- [A-Frame](https://github.com/aframevr/aframe) 1.8.0, MIT License
- [qrcode-generator](https://github.com/kazuhikoarase/qrcode-generator), MIT License, © Kazuhiko Arase
- [jsQR](https://github.com/cozmo/jsQR), Apache License 2.0, © Cosmo Wolfe
