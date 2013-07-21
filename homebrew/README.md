# homebrew
sambao21's cookbook of additional homebrew stuff.

## [homebrew cask](https://github.com/phinze/homebrew-cask)
Adds a resource for installing apps using homebrew cask

### Usage in a recipe
Install an app that's supported by homebrew cask, simply add the line: `brew_cask {package_name}`

Only installs the app if it's not installed.
