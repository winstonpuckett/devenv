# general
alias ls='ls --color=auto'
alias la='ls -a'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# git
gca() {
	git add .
	git commit -m$1
	git push
	git status
}
alias gs='git status'
alias gfs='git fetch && git status'

# stable diffusion
alias sd='~/stablediffusion/stable-diffusion-ui/start.sh'

# nvim
alias vim='nvim'
