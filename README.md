# Hephaestus-Zero Homebrew Tap

Official Homebrew formulas for [Hephaestus-Zero](https://github.com/Hephaestus-Zero) CLI tools:

```bash
# Full agent spine: slice, verify, memory, voice (+ shield on Linux)
brew install Hephaestus-Zero/tap/hephaestus

# macOS Apple Silicon & Linux
brew install Hephaestus-Zero/tap/hslice

# Linux (Landlock LSM + OpenSSL 3 + zlib)
brew install Hephaestus-Zero/tap/hshield
```

Or tap once and install by short name:

```bash
brew tap Hephaestus-Zero/tap
brew install hslice
```

`hephaestus` already contains `hslice` (and `hshield` on Linux), so install either the spine or the standalone tools, not both.
