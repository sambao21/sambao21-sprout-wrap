# sambao21_workstation
A cookbook of recipes for sambao21's OSX workstation.

## Usage

1. First install [Xcode](http://itunes.apple.com/us/app/xcode/id497799835) and Command Line Tools (under Preferences > Downloads)

2. Execute the following on the command line:

`bash <(curl -s https://raw.github.com/sambao21/sambao21_workstation/master/bootstrap.sh)`

## Development
`bootstrap_dev.sh` is the bootstrap file to use when trying out new recipes, developing new recipes, or contributing updates to pivotal_workstation recipes. It will use `/cookbooks_dev` directory instead of the normal `/cookbooks`.

When trying out new recipes, after testing it, *don't* forget to copy the recipes into the normal `bootstrap.sh`.

When contributing to pivotal_workstation, make the changes against my [forked repo](https://github.com/sambao21/pivotal_workstation). Then be sure to submit a pull request back to pivotal_workstation.

`bash <(curl -s https://raw.github.com/sambao21/sambao21_workstation/master/bootstrap_dev.sh)`

## Recipes
More details for specific recipes.

### Sublime Text
`/attributes/sublime_text.rb` - list of Sublime Text packages to install

#### Settings
The following gets copied into `~/Library/Application Support/Sublime Text 2/Packages/User`:
* `/templates/default/sublime_text-Preferences.sublime-settings.erb` - Custom user settings
* `/templates/default/sublime_text-Auto Encoding for Ruby.sublime-settings.erb` - Custom settings for Auto Encoding for Ruby

## Thanks
Thanks to [Roderik van der Veer](http://twitter.com/r0derik) for his excellent [article](http://vanderveer.be/blog/2013/01/02/automating-the-setup-of-my-perfect-developer-environment-on-osx-10-dot-8-mountain-lion/) that inspired me to make my own workstation project.
