#PS1='\033[7h\033[37m\W ∑\033[0m\033[31m™\033[0m»'
alias cmis="ssh u64301143@s375123640.onlinehome.us"
alias cljrl="rlwrap --quote-characters=\"'\" --command clojure clj"
alias sirb="irb --simple-prompt"
alias gi="gem install "
alias gcl="git clone `pbpaste`"
alias beg="bundle exec guard"



echo "$(tput setaf 7)$(tput setab 1)Select an app:$(tput sgr0)"
tput setaf 3
select i in irb emacs macirb rubinius jruby node.js gnu-smalltalk gnu-lisp cmucl io-lang lua clojure haskell bash opt vim git-clone source
do
  tput setaf 3
  case $i in
 	irb) irb --simple-prompt;;
 	emacs) emacs;;
 	macirb) rvm use macruby;macirb;;
 	rubinius) rvm use rbx;rbx;;
 	jruby) rvm use jruby;jirb;;
 	node.js) node;;
 	gnu-smalltalk) gst;;
 	cmucl) lisp;;
 	gnu-lisp) clisp;;
 	io-lang) io;;
	lua) lua;;
        clojure) cljrl;;
	haskell) ghci;;
 	opt) echo "Type opt when in bash for this menu.";;
 	source) source /Users/pankajdoharey/.bash_profile;;
 	git-clone) cd ~/Development;echo "$(git clone $(pbpaste))";;
 	vim) vim;;
 	bash) break;; 
  esac
tput sgr0
done

export CLICOLOR=1
export LSCOLORS=BxFxCxDxBxegedabagacad
export PS1="\n\[$(tput setaf 6)\] \[$HOME$(tput setaf 7)\]\w\n \[$(tput setaf 5)\]∑\[$(tput setaf 1)\]™»\[$(tput sgr0)\]"
export PATH="./bin:$PATH"
#export PS1="$(pwd)/\w\n>"
export JRUBY_OPTS=--1.8
#export RUBYOPT=rubygems

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Load SM Breeze into a shell session *as a set of aliases*
[ -s "/Users/pankajdoharey/.scm_breeze/scm_breeze.sh" ] && source "/Users/pankajdoharey/.scm_breeze/scm_breeze.sh"

