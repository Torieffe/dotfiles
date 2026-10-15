function depends-on --description 'Show what a package depends on'
    if test (count $argv) -eq 0
        echo "Use: depends-on <package>"
        return 1
    end
    LC_ALL=C pacman -Qi $argv[1] | grep '^Depends On' | cut -d ':' -f2 | string trim
end
