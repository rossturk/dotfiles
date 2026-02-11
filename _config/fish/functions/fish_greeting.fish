function fish_greeting
    set_color normal
    echo ""

    # Fun system info
    set_color cyan
    printf "          System: "
    set_color yellow
    echo (uname -s)

    set_color cyan
    printf "           Shell: "
    set_color yellow
    echo "Fish "(fish --version | string match -r '\d+\.\d+\.\d+')

    set_color cyan
    printf "        Hostname: "
    set_color yellow
    echo (hostname)

    set_color normal
    echo ""
end
