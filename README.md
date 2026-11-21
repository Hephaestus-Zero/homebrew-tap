# Hephaestus-Zero Homebrew Tap

Official Homebrew formulas for [Hephaestus-Zero](https://github.com/Hephaestus-Zero) CLI tools:

```bash
# Full 5-organ agent spine (macOS & Linux): slice, shield, verify, memory, voice
brew install Hephaestus-Zero/tap/hephaestus

# Standalone code indexer & AST slicer (macOS & Linux)
brew install Hephaestus-Zero/tap/hslice

# Standalone Landlock LSM sandbox & supply-chain auditor (Linux)
brew install Hephaestus-Zero/tap/hshield
```

Or tap once and install by short name:

```bash
brew tap Hephaestus-Zero/tap
brew install hephaestus
```

## Formulas

| Formula | Platforms | Notes |
|---|---|---|
| `hephaestus` | macOS & Linux | Full 5-organ spine (`hslice`, `hfind`, `hsearch`, `hshield`, `hhook`, `hverify`, `hmemory`, `hvoice`). `hshield audit` + `hhook` work on both macOS and Linux; Landlock sandboxing activates on Linux. |
| `hslice` | macOS & Linux | Standalone trigram indexer & AST slicer (`hslice`, `hfind`, `hsearch`). |
| `hshield` | Linux | Standalone Landlock LSM sandbox + supply-chain scanner (`hshield`, `hshield-supply-scan`). |

`hephaestus` already ships `hslice` (and `hshield` on Linux), so install either `hephaestus` or the standalone formulas, not both.
