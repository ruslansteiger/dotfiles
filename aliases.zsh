### Git
# Reset to last commit and delete any new files
alias nah='git reset --hard;git clean -df'
# wip
alias wip='git add . && git commit -m wip'

### Laravel
alias c='composer'
alias a='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias p='php artisan test'
function pf() {
  php artisan test --filter "$*"
}

### Make ls great again
alias ls='exa --all'
alias ll='exa --all --git --grid --long --time-style=long-iso --group-directories-first'

