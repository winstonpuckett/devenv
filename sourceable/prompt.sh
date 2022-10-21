function print_branch_name() {
    BRANCH=$(git branch --show-current 2>/dev/null)
    [ "$BRANCH" ] && echo " | $BRANCH"
}

export PS1="\n\[\e[35m\]\w | $?\`print_branch_name\`\[\e[m\]\n\[\e[35m\]❯\[\e[m\] "
