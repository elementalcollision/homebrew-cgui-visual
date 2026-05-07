# homebrew-cgui-visual

Personal Homebrew tap for [`cgui-visual`](https://github.com/elementalcollision/cgui-visual)
— a desktop GUI for Apple's [`container`](https://github.com/apple/container)
runtime.

## Install

```sh
brew tap elementalcollision/cgui-visual
brew install --cask cgui-visual
```

To upgrade later:

```sh
brew update && brew upgrade --cask cgui-visual
```

To uninstall and remove all user data:

```sh
brew uninstall --cask --zap cgui-visual
```

## Why a personal tap?

The main [`homebrew-cask`](https://github.com/Homebrew/homebrew-cask) repo
requires projects to meet a popularity threshold (≥75 stars / 30 forks /
30 watchers) before accepting new submissions. cgui-visual is too new for
that threshold today — this tap is the bridge until it crosses the
line, after which a submission to the main repo is intended too.

The cask in this tap auto-tracks the latest cgui-visual GitHub release
via `livecheck`, so `brew upgrade --cask cgui-visual` always grabs the
newest version.

## License

The cask formula is MIT-licensed. The cgui-visual application is
distributed under its own license (also MIT). See the [main
repo](https://github.com/elementalcollision/cgui-visual) for source +
release artifacts.
