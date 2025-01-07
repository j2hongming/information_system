#!/bin/bash

# Prompt the user for their name
read -p "Enter your name: " user_name

# Prompt the user for their email
read -p "Enter your email: " user_email

# Configure Git with the provided name and email
git config --global user.name "$user_name"
git config --global user.email "$user_email"
git config --global core.editor "vim"
git config --global core.whitespace cr-at-eol
git config --global alias.tree "log --graph --decorate --pretty=oneline --abbrev-commit"


# Confirm the settings
echo "Git has been configured with the following details:"
git config --global --list

# Define the content to be added to ~/.bashrc
git_branch_prompt='
parse_git_branch() {
     git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
'

# Append the content to ~/.bashrc if not already present
if ! grep -q "parse_git_branch" ~/.bashrc; then
    echo "$git_branch_prompt" >> ~/.bashrc
    echo "Git branch prompt added to ~/.bashrc"
else
    echo "Git branch prompt is already present in ~/.bashrc"
fi

# Reload ~/.bashrc
source ~/.bashrc
echo "Changes applied. Open a new terminal or reload your session to see the new prompt."
