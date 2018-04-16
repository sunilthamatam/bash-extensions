#!/bin/bash

chsh -s /bin/bash

cat > ~/get_git_branch.sh <<EOF
#!/bin/bash

if [ -d .git ]; then
    branch=\$(git branch | grep "*" | awk '{print \$2}')
    echo -n "\`tput setaf 2\`\${branch}\`tput sgr0\`"
else
    echo -n "\`tput setaf 2\`no-git\`tput sgr0\`"
fi
EOF

chmod 755 ~/get_git_branch.sh

if [[ ! -f ~/.bash_profile ]]; then
    touch ~/.bash_profile
    echo "#!/bin/bash" > ~/.bash_profile
fi

cat >> ~/.bash_profile <<EOF

##
## Added for git branch details in prompt
##
export PS1="[\u::\W #(\\\$(~/get_git_branch.sh))]$ "
##
EOF

echo " * "
echo " * Please open new terminal for changes to take effect"
echo " * "
