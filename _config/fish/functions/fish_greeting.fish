function fish_greeting
    # Color definitions
    set -l colors red yellow green cyan blue magenta
    set -l reset (set_color normal)

    # Clear screen for dramatic effect
    clear

    # Animated wave effect with RDT initials
    echo ""
    for i in (seq 1 3)
        set -l delay 0.05

        # Wave animation
        for wave in (seq 1 5)
            clear
            echo ""
            echo ""

            # Calculate wave offset
            set -l offset (math "$wave % 3")

            # RDT letters with wave effect
            if test $offset -eq 1
                set_color yellow
                echo ""
                set_color red
                echo "       ██████╗  ██████╗ ████████╗"
                echo "       ██╔══██╗ ██╔══██╗╚══██╔══╝"
                set_color magenta
                echo "       ██████╔╝ ██║  ██║   ██║"
                echo "       ██╔══██╗ ██║  ██║   ██║"
                set_color blue
                echo "       ██║  ██║ ██████╔╝   ██║"
            else if test $offset -eq 2
                set_color magenta
                echo ""
                echo "       ██████╗  ██████╗ ████████╗"
                set_color yellow
                echo "       ██╔══██╗ ██╔══██╗╚══██╔══╝"
                echo "       ██████╔╝ ██║  ██║   ██║"
                set_color red
                echo "       ██╔══██╗ ██║  ██║   ██║"
                echo "       ██║  ██║ ██████╔╝   ██║"
            else
                set_color blue
                echo ""
                echo "       ██████╗  ██████╗ ████████╗"
                set_color cyan
                echo "       ██╔══██╗ ██╔══██╗╚══██╔══╝"
                set_color green
                echo "       ██████╔╝ ██║  ██║   ██║"
                echo "       ██╔══██╗ ██║  ██║   ██║"
                set_color magenta
                echo "       ██║  ██║ ██████╔╝   ██║"
            end

            # Animated status message
            set -l messages "Initializing..." "Loading modules..." "Calibrating..." "Ready to code!" "Welcome back!"
            set -l msg_idx (math "$wave % 5 + 1")
            set_color yellow
            echo ""
            set_color green
            printf "       %-45s\n" "$messages[$msg_idx]"

            set_color normal

            sleep $delay
        end
    end

    # Final display with sparkles
    clear
    echo ""
    echo ""
    echo ""

    # Random sparkle colors
    set -l sparkle_color $colors[(random 1 6)]

    set_color red
    echo "       ██████╗  ██████╗ ████████╗"
    set_color yellow
    echo "       ██╔══██╗ ██╔══██╗╚══██╔══╝"
    set_color green
    echo "       ██████╔╝ ██║  ██║   ██║"
    set_color cyan
    echo "       ██╔══██╗ ██║  ██║   ██║"
    set_color blue
    echo "       ██║  ██║ ██████╔╝   ██║"

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
