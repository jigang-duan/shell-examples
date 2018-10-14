# 方法1：
function echo_color() {
    if [ $1 == "green" ]; then
        echo -e "\033[32;40m$2\033[0m"
    elif [ $1 == "red" ]; then
        echo -e "\033[31;40m$2\033[0m"
    fi
}

# 方法2：
function echo_color() {
    case $1 in
        green)
            echo -e "\033[32;40m$2\033[0m"
            ;;
        red)
            echo -e "\033[31;40m$2\033[0m" 
            ;;
        *) 
            echo "Example: echo_color red string"
    esac
}

function banner_simple() {
    local msg="* $* *"
    local edge=`echo "$msg" | sed 's/./*/g'`
    echo "$edge"
    echo "`tput bold`$msg`tput sgr0`"
    echo "$edge"
    echo
}

function banner_color() {
    local color=$1
    shift

    case $color in
        black) color=0
        ;;
        red) color=1
        ;;
        green) color=2
        ;;
        yellow) color=3
        ;;
        blue) color=4
        ;;
        magenta) color=5
        ;;
        cyan) color=6
        ;;
        white) color=7
        ;;
        *) echo "color is not set"; exit 1
        ;;
    esac

    local s=("$@") b w
    for l in "${s[@]}"; do
        ((w<${#l})) && { b="$l"; w="${#l}"; }
    done
    tput setaf $color
    echo " =${b//?/=}=
| ${b//?/ } |"
    for l in "${s[@]}"; do
        printf '| %s%*s%s |\n' "$(tput setaf $color)" "-$w" "$l" "$(tput setaf $color)"
    done

    echo "| ${b//?/ } |
 =${b//?/=}="
    tput sgr 0
}

echo_color green "test"
banner_simple "test"
banner_color cyan "my title"
