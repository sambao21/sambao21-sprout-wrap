# homebrew
sambao21's cookbook of additional homebrew stuff.

## [homebrew cask](https://github.com/phinze/homebrew-cask)
Adds a resource for installing apps using homebrew cask

### Usage in a recipe
Install an app that's supported by homebrew cask, simply add the line: `homebrew_cask {package_name}`

Only installs the app if it's not installed.

Cask [installs applications](https://github.com/phinze/homebrew-cask/blob/master/FAQ.md#why-use-homebrews-cellar-why-not-just-manage-apps-directly-in-applications) into it's own *caskroom directory* instead of directly into Applications.

It then symlinks to the application. By default homebrew_cask resource default symlinks to `/Applications`.

    homebrew_cask 'google-chrome' #default, will symlink chrome in /Applications

This option can be overridden using the `opts` attribute.

    homebrew_cask 'google-chrome' do
      opts "--appdir=~/Applications" #will symlink chrome into the user's Applications
    end
