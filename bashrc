## Helpful things to add to bashrc, helps keep devices feel the same.
# Note: This is not a complete bashrc only to be append to the end of an existing one.

### Instructions: Append this file to the current .bashrc
## Download this file
# cd ~
# curl https://raw.githubusercontent.com/xzava/home/master/bashrc > tmp_bashrc
## Check it is correct and all functions are needed
# vim tmp_bashrc
## Append the tmp file to the end of .bashrc
# cat tmp_bashrc >> .bashrc
## Check the new .bashrc is okay
# rm tmp_bashrc
# source .bashrc

# make a dir then enter it.
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name: mkcd <directory_name>"
  elif [ -d "$1" ]; then
    echo "'$1' already exists"
  else
    mkdir "$1" && cd "$1"
  fi
}


function activate {
  # check to see if their is a venv folder in the current dir
  # if so activate it otherwise make one then activate it.
  # this function doesnt check activate is safe. 
  if [ "$1" != "" ]; then
    # echo "argument one is not none"
    local VENV_FOLDER="$1"
  else
    # echo "default argument set"
    VENV_FOLDER="venv"
  fi

  local FILE="$PWD/$VENV_FOLDER/bin/activate"
  if [ -f "$FILE" ]; then
      # echo "$FILE exist"
      source "$FILE"
      echo "Existing venv is now active."
      python3 --version
  else 
      # echo "$FILE does not exist"
      echo "Creating new venv"
      # echo "$VENV_FOLDER"
      # echo "$FILE"
      python3 -m venv "$VENV_FOLDER"
      source "$FILE"
      python --version
  fi
}


# try and open a file
alias try='xdg-open'

alias chrome='chromium-browser'

function google {
  chromium-browser http://www.google.com/search?q=`echo "$@" | tr " " "+"`
}


function webshell {
    echo ""
    echo "Starting webshell for ${1}"
    echo ""
    chrome --headless --disable-gpu --repl --crash-dumps-dir=./tmp "${1}"
}


function cd {
	# "Change dir and list the contents of the new dir"
  if [ $# -eq 0 ]
  then
     # echo "No arguments supplied"
     # echo "Opening default linux keyboard"
     echo "No path supplied"
  else
    builtin cd ${1}
    ls
    echo ""
    echo "PATH: ${PWD}"
    
  fi
}

# Note: This requires a dir named shortcuts/ filled with pdf files.
function shortcuts {
    if [ $# -eq 0 ]
    then
       # echo "No arguments supplied"
       # echo "Opening default linux keyboard"
       gnome-control-center keyboard
    else
	FILE="${HOME}/shortcuts/${1}"
	echo "looking for file: ${FILE}"
        if test -f "$FILE"*; then
            # echo "$FILE exist"
            xdg-open $FILE*
        else
	    echo "shortcut file for ${1} not found."
        fi
    fi
}


function localhost {
  # "Open up 127.0.0.1:5000"
  if [ $# -eq 0 ]
  then
    # echo "No arguments supplied"
    echo "Opening http://127.0.0.1:5000"
    chrome "http://127.0.0.1:5000"
  else
    # echo "At least one arguments supplied"
    echo "Opening http://127.0.0.1:${1}"
    chrome "http://127.0.0.1:${1}"
  fi
}


# Note: This is not used very often.
function play {
  # Play vlc https://wiki.videolan.org/Documentation:Command_line/ 
  if [ $# -eq 0 ]
  then
    # echo "No arguments supplied"
    echo "Playing ~/Music in random"
    vlc ~/Music --quiet --random & 
  else
    # echo "At least one argument supplied"
    echo "Playing ~/Music/${1}"
    vlc ~/Music/${1} --quiet &
  fi
}


alias node='nodejs'


# Start terminal in newline
alias newline='PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\n\[\033[00m\]\$ "'
alias sameline='PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "'

alias bashrc='vim ~/.bashrc'
alias bashrc-restart='source ~/.bashrc'

alias short="PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u:\[\033[01;34m\]~/..\W\[\033[00m\]\$ '"
# alias short='PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "'
alias long='PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "'

alias idle="python3 -m idlelib"
# source ~/.bashrc

alias Unfinished="builtin cd ~/work/Unfinished && ls"
alias Finished="builtin cd ~/work/Finished && ls"

alias Downloads="cd ~/Downloads"

alias Desktop="cd ~/Desktop"

alias server="python3 -m http.server 8000 --bind 127.0.0.1"

alias utils="subl ~/work/utils.py"

alias helperjs="subl ~/work/helper.js"


## WARNING: Makes capslock become Esc
#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

# https://wiki.python.org/moin/Powerful%20Python%20One-Liners

# Create a token/secret/password of length 32
alias secret="python3 -c 'import secrets;print(secrets.token_urlsafe(32))'"


_decode_base64_url() {
  local len=$((${#1} % 4))
  local result="$1"
  if [ $len -eq 2 ]; then result="$1"'=='
  elif [ $len -eq 3 ]; then result="$1"'='
  fi
  echo "$result" | tr '_-' '/+' | base64 -d
}

# $1 => JWT to decode
# $2 => either 1 for header or 2 for body (default is 2)
decode_jwt() { _decode_base64_url $(echo -n $1 | cut -d "." -f ${2:-2}) | jq .; }


# Append text to local README.md, either as the first argument or from clipboard.
# $ append
# $ append "text to append"
function append {
  if [ $# -eq 0 ]
    then
      echo "Appending: clipboard to ./README.md.."
      xclip -o >> ./README.md
      echo >> ./README.md
  else
      echo "Appending: $1"
      echo "$1" >> ./README.md
  fi
}

alias v="nvim"
alias clipboard="xclip -sel clip < "
