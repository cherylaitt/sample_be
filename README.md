# README

## Setup Ruby on Apple chip Macbook

- You may need to install brew & Xcode first
  - For Xcode, remember to install the commands version
  - as the step change repidly, I won't copy the step here and please ask google or your teammate if you need help.
- suggeset using `rbenv` to manage the versioning of ruby.
- you can install it via brew

```bash
brew install rbenv ruby-build
```

- run this and follow the step to setup path and init script

```bash
rbenv init
```

- you may also need following dependency, install them first

```bash
brew install -s readline
brew install libyaml
brew install libxml2
brew install shared-mime-info
brew install pkg-config imagemagick
```

- Then, we have to make sure rbenv got all the access right by changing the owner

```bash
whoami = {your_uesrname_in_this_machine}

sudo chown -R $whoami /Users/$whoami/.rbenv
```

- Load rbenv automatically by appending the following to ~/.zshrc:

```bash
eval "$(rbenv init - zsh)"
```

- After that, you should be able to install ruby with targetted version

```bash
RUBY_CFLAGS=“-w” rbenv install 3.0.6

# if  RUBY_CFLAGS=“-w” rbenv install 3.0.6 is not working, please run this:
rbenv install 3.0.6

rbenv rehash
# this is very important!

rbenv global 3.0.6
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
ruby -v
# now you should be able to see ruby 3.0.6...
```

- Restart terminal if it does not work.
