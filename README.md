# UXXU Homebrew tap

Install [UXXU Desktop](https://uxxu.io/) on macOS 13 Ventura or newer:

```sh
brew install --cask K8Studio/tap/uxxu
```

Homebrew selects the Apple Silicon or Intel installer for your machine and verifies its SHA-256 checksum. The app is installed as `/Applications/UXXU.app`.

Launch from Terminal or open a local Structurizr DSL workspace (replace the example path):

```sh
open -a UXXU
open -a UXXU "/path/to/workspace.dsl"
```

Keep file paths quoted when they contain spaces. `open -a` also works if another application is currently the default for `.dsl` files.

UXXU can view supported local Structurizr DSL workspaces for free without an account. Sign in to access cloud projects; local editing requires an active editing licence and the appropriate organisation role. Installed builds register UXXU for `.dsl` files; existing default applications may need changing through Open With.

## Updates

The app has its own updater. To explicitly upgrade through Homebrew, including casks with built-in updates:

```sh
brew update
brew upgrade --cask --greedy uxxu
```

## Uninstall

```sh
brew uninstall --cask uxxu
```

Uninstalling keeps preferences and login data. To remove those as well, use `brew uninstall --cask --zap uxxu`. This does not remove your separately saved `.dsl` workspaces or cloud projects, and does not erase server-side usage records.

## Maintaining the cask

`Casks/uxxu.rb` uses the published macOS DMGs on `releases.uxxu.io`. For each release:

1. Publish both signed, notarized DMGs with new versioned filenames. Do not replace an existing version's files after publishing its checksums.
2. Download both public files and run `shasum -a 256` on each.
3. Update `version` and both `sha256` values together; inspect each bundle's `LSMinimumSystemVersion` if the Electron version changes.
4. Validate with `brew style --cask K8Studio/tap/uxxu` and `brew audit --cask K8Studio/tap/uxxu`, then commit the cask update to this tap. Updates are maintained manually; livecheck is intentionally disabled.

This is a vendor-maintained tap. It is separate from the community-maintained `Homebrew/homebrew-cask` catalogue. See the [Homebrew tap documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap).
