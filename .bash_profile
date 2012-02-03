[[ -s "/Users/pankajdoharey/.rvm/scripts/rvm" ]] && source "/Users/pankajdoharey/.rvm/scripts/rvm"
#PS1='\033[7h\033[37m\W ∑\033[0m\033[31m™\033[0m»'
#alias cmis,ssh u64301143@s375123640.onlinehome.us
echo "$(tput setaf 7)$(tput setab 1)Select an app:$(tput sgr0)"
tput setaf 3
select i in irb emacs macirb rubinius jruby node.js gnu-smalltalk gnu-lisp cmucl io-lang lua clojure bash opt vim git-clone source
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
