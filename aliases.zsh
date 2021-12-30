### Git
# Reset to last commit and delete any new files
alias nah='git reset --hard;git clean -df'
# wip
alias wip='git add . && git commit -m wip'

### Laravel
alias a='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias p='php artisan test'
function pf() {
  php artisan test --filter "$*"
}

### Make ls great again
# colorize the output
alias ls='ls --color'
# show hidden files + long listing format + file size in MB
alias ll='ls -alh'
