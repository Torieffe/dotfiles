function docker-start --wraps='sudo systemctl start docker' --description 'alias docker-start sudo systemctl start docker'
    sudo systemctl start docker $argv
end
