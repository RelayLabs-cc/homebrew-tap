# Relay Labs Homebrew tap

```sh
brew tap relaylabs-cc/tap
brew trust relaylabs-cc/tap        # Homebrew 7+: third-party taps are trusted once, explicitly
brew install --cask switchboard
```

Until SwitchBoard is notarized, macOS will warn on first launch. Either right-click the app and choose Open once, or install with:

```sh
brew install --cask --no-quarantine relaylabs-cc/tap/switchboard
```

Upgrade with `brew upgrade --cask switchboard`. The cask is updated by the SwitchBoard release script.
