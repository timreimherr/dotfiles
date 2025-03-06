noti() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if [[ $? = 0 ]]; then
            say OK
        else
            say error
        fi
    fi
}

# Only add the noti function to the precmd hook on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    precmd_functions+=(noti)
fi
