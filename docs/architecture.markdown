---
layout: default
title: Architecture
permalink: /architecture/
---

## Architecture

AnybandUI draws the interface. The engine runs the game. An adapter connects them.

### The interface

The desktop application displays the map and panels, handles input, and manages
interface settings. It sends requests to a separate engine process and receives
game state and events in return.

### The adapter

The Angband adapter translates between the UI's protocol and Angband's internal
functions, callbacks and events. It is compiled together with Angband into the
engine executable.

The UI and engine exchange JSON messages over standard input and output using
**Anyband Protocol** (`anyband-protocol`). The adapter is a source-level integration, not a plugin
that can be loaded into an existing Angband executable.

### The engine

Angband owns the game rules, random outcomes, legal actions and saves. The adapter
uses the engine's calculations and player knowledge to supply information to the UI.

The current package includes an **experimental engine based on Angband 4.2.6**,
built from a pinned revision with patches for:

- Map information, game events and player interactions.
- Building with the external adapter.
- Engine correctness fixes.

### For derivative developers

Angband derivatives are an intended use, but currently need source changes and
a compatible adapter. Developers must adapt the engine patches and adapter to
their code, then build a package that implements Anyband Protocol.

The work depends on how far the derivative differs from Angband 4.2.6. Unmodified
executables are not supported. Once a compatible package is installed, it can be
selected in AnybandUI.

### Source code

- [AnybandUI](https://github.com/AnybandUI/AnybandUI): desktop interface and protocol.
- [Angband adapter](https://github.com/AnybandUI/AnybandUI-AngbandAdapter): integration, engine patches and build tools.
- [Angband](https://github.com/AnybandUI/angband): engine repository.
