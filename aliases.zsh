### Git
# Reset to last commit and delete any new files
alias nah='git reset --hard;git clean -df'
# wip
alias wip='git add . && git commit -m wip'

### Composer
alias c='composer'

### Laravel
alias a='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias p='php artisan test'
function pf() {
  php artisan test --filter "$*"
}
alias tinker='php artisan tinker'

### Laravel Sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

### Cat with syntax highlighting
alias cat=bat

### Make ls great again
alias ls='exa --all'
alias ll='exa --all --git --grid --long --time-style=long-iso --group-directories-first'

### SSH
alias copyssh='pbcopy < $HOME/.ssh/id_ed25519.pub'

### Deployer
alias dep='vendor/bin/dep'
