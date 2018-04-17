# bash-extensions

## 1. git_branch_for_bash_prompt.sh
This scripts helps to identify git branch in bash prompt if the current directory is git enabled and print branch name in prompt.

Prompt similar to below would appear in shell. This scirpt also changes current shell to `/bin/bash`.

Directory without git :: `[johndoe::Desktop #(no-git)]$ `

Directory with git enabled :: `[johndoe::my-work #(master)]$ `

## 2. git
Auto completes branch names matching into git commands for checkout.
Auto complete most popular git commands :: pull, reabse, checkout, branch
