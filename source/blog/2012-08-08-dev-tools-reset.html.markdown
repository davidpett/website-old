---
title: Dev Tools Reset
date: 2012-08-08 09:39 -07:00
tags: mac, command line, dev
---
On my home computer, I have been installing dev tools for a while and had things somewhat working great. Recently, I have been having problems with paths being messed up, bundler not being found and just a lot of bloat from years of installing. I decided it was time to reset and start fresh. I didn't want to just wipe the machine and do a clean install, so a little bit of searching on the web brought me [here](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/). This is the best comprehensive installation guide that I have come across for exactly what I needed to do. One issue that I noticed right away, is that I still had old versions of these installed on my machine.

## Uninstalling
First things first, I needed to uninstall dev tools, homebrew, and rvm. 

### Homebrew
To do this, I followed this gist from the creator of homebrew:
<script src="https://gist.github.com/1173223.js?file=uninstall_homebrew.sh"></script>
I did this from the command line with this command:

    curl https://raw.github.com/gist/1173223/a833ba44e7be8428d877e58640720ff43c59dbad/uninstall_homebrew.sh | sh

### RVM
Uninstalling rvm was as easy as:

    rvm implode
    
I did have to manually remove a few .rvmrc files and also don't forget to remove the script calls in your `.bashrc` or `.bash_profile` files that reference rvm

### Dev Tools
This is the big one. I am currently running Snow Leopard at home, because it is ~stable. And I had Xcode 3.2 installed, very old. I found [this link](http://pushkararora.com/how-to/how-to-uninstall-xcode-completely/) which gives the command that I was in need of:

    sudo /Developer/Library/uninstall-devtools –mode=all
    
Let that bad boy do it's thing and then you will be clean as a whistle. And ready to follow the [installation process](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/).

## Installing
Following the process was fairly straightforward and easy to follow. One thing that I noticed was that I was in need of Xcode 4.1 for Snow Leopard which the author references, but it didn't show up in the list like it did for him. I needed to sign in with my Apple developer account (paid) to have that option available, because that was a paid version still. If you have Lion/Mountain Lion installed, just install the most recent from the [App Store](http://itunes.apple.com/us/app/xcode/id497799835?mt=12).

After finishing the install, things were good. There were a few tweaks that I had to do to make everything work, one important one was that bundler still wasn't working, the fix was found [here](https://github.com/wayneeseguin/rvm/issues/1043#issuecomment-7336267) a simple removal of `- "gem" => "-n/usr/local/bin"` from the `~/.gemrc` file.

## Some Extras
I have been using, and am a big fan of [iTerm2](http://www.iterm2.com/#/section/home) and I recently installed [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/) switching from bash to zsh, because it has some great helpers and plugins.

For more information on command line tools, check out [Andy Matthew's](http://twitter.com/commadelimited) post on [Command line tools for the novice](http://andymatthews.net/read/2012/07/24/Command-line-tools-for-the-novice).

## All Set
I am now all set up again at home to work the magic of the command line, build some rails apps, compile my SASS and get my git on.

I hope this helped you to do the same. Let me know if you have any questions or need some help getting your system back to where it shoud be.
