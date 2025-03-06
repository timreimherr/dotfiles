noti() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if [[ $? = 0 ]]; then
            say OK
        else
            say error
        fi
    fi
}

# Add the play_sound function to the precmd hook
precmd_functions+=(noti)
