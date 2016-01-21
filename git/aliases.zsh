#!/usr/bin/env bash
#
# Some additional git aliases

alias gbv='git branch -v'
alias gh='git hist'

git config --global alias.editlast 'commit --amend -m' # Make sure to unstage all first!
git config --global alias.sync '!zsh -ic git-sync'
git config --global alias.add-upstream '!zsh -ic add-upstream'
