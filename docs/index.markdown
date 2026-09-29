---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---

## Classic dungeon crawling. A new window into it.

AnybandUI is a standalone native frontend for roguelike game engines, starting
with **Angband**. It brings the dungeon, your character and the decisions in
front of you into a dedicated graphical interface, while the game engine
continues to run the adventure.

Explore, manage your equipment, browse spells and face whatever waits on the
next level. The interface handles presentation; Angband handles the rules.

<section class="trailer" aria-labelledby="trailer-title">
  <!-- Replace this placeholder with the trailer's video or iframe embed. -->
  <div class="trailer-placeholder">
    <span class="trailer-symbol" aria-hidden="true">&#9654;</span>
    <h2 id="trailer-title">See AnybandUI in action</h2>
    <p>Trailer coming soon</p>
  </div>
</section>

## Get AnybandUI

Public downloads are on the way. One Windows ZIP will include AnybandUI and
Angband together: extract it, open AnybandUI, and play.

<div class="download-buttons" aria-describedby="download-status">
  <button class="btn" type="button" disabled>Download AnybandUI with Angband<br><small>Windows · Coming soon</small></button>
</div>
<p id="download-status" class="muted">Download links will be enabled when releases are ready.</p>

## Features

- **A dedicated game interface.** Native views for character creation,
  inventory, equipment, spells and shops.
- **A clearer view of the dungeon.** Map rendering, mouse targeting and visual
  effects that follow events reported by the engine.
- **Make it your own.** Adjust the interface's themes, fonts and presentation,
  with audio playback alongside the action.
- **Choose your engine.** Discover and select installed compatible engine
  packages. Angband is the current reference implementation; other engines
  need their own compatible adapter.
- **Keep your adventures separate.** UI settings and engine saves live outside
  the installation folder, with saves separated by engine and compatibility.

## How it fits together

AnybandUI has three parts:

1. **The frontend** draws the interface, presents controls and plays audio and
   visual effects.
2. **An adapter** translates between the frontend's shared protocol and a
   specific game engine. The Angband adapter is developed separately from the UI.
3. **The game engine** owns the rules, turns, combat, random outcomes and saves.

The frontend talks to a separate engine process using versioned JSON messages.
This lets the interface and engine be built and packaged independently, and
leaves game decisions with the engine that understands them.

---

AnybandUI is under active development. This page is a first look; the trailer
and downloadable releases will follow.
