function is-dependency --description 'Show if this package is dependecy of another'
    if test (count $argv) -eq 0
        echo "Use: is-dependency <package>"
        return 1
    end
    LC_ALL=C pacman -Qi $argv[1] | grep '^Required By' | cut -d ':' -f2 | string trim
end
