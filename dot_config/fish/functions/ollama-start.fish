function ollama-start --wraps='sudo systemctl start ollama' --description 'alias ollama-start sudo systemctl start ollama'
    sudo systemctl start ollama $argv
end
