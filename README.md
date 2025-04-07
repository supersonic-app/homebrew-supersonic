# homebrew-supersonic

This is a [Homebrew](https://brew.sh/) tap (third-party repository) for [Supersonic](https://github.com/dweymouth/supersonic).

## Usage

To install Supersonic with Homebrew run:

```sh
brew tap supersonic-app/supersonic
brew install --no-quarantine supersonic
```

The `--no-quarantine` flag is important because Supersonic is distributed without having been [notarized](https://developer.apple.com/documentation/security/notarizing-macos-software-before-distribution), and therefore will not run without this.

You should also include it when upgrading in future:

```
brew upgrade --no-quarantine supersonic
```
