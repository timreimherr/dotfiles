# Function to play a sound after each command
play_sound() {
    paplay /usr/share/sounds/freedesktop/stereo/complete.oga
}

# Add the play_sound function to the precmd hook
precmd_functions+=(play_sound)
