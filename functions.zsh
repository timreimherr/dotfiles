noti() {
    if [[ $? = 0 ]]; then
        say OK
    else
        say error
    fi
}

# Add the play_sound function to the precmd hook
precmd_functions+=(noti)
