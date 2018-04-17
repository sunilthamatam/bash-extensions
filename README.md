# bash-extensions

## 1. git_branch_for_bash_prompt.sh
This scripts helps to identify git branch in bash prompt if the current directory is git enabled and print branch name in prompt.

Prompt similar to below would appear in shell. This scirpt also changes current shell to `/bin/bash`.

Directory without git :: `[johndoe::Desktop #(no-git)]$ `

Directory with git enabled :: `[johndoe::my-work #(master)]$ `

## 2. git
Auto completes branch names matching into `git checkout` command.

Auto complete most popular git commands :: pull, reabse, checkout, branch

### 2.1 OSX Installation
Download git(https://github.com/sunilthamatam/bash-extensions/blob/master/git) script from this repo.

Install autocomplete for Bash using Brew (http://davidalger.com/development/bash-completion-on-os-x-with-brew/)

Move/Copy downloaded git to `/usr/local/Cellar/bash-completion/1.3/etc/bash_completion.d/`

Make a link to using `ln -s /usr/local/bash-completion/1.3/etc/bash_completion.d/git /usr/local/etc/bash_completion.d/git`

Restart Terminal, whala!!! magic starts working.
