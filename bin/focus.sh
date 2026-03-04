#!/bin/bash
# Focus Timer: minimal, customizable, Ctrl+C safe

focus() {
    local mins=${1:-25}
    local url=${2:-"https://www.youtube.com/watch?v=jfKfPfyQne8"}
    local seconds=$((mins * 60))

    trap 'echo -e "\n❌ Focus session cancelled."; exit' SIGINT

    echo -e "🎯 Focus Mode for $mins min"
    echo -e "🎵 Playlist: $url\n"

    while [ $seconds -gt 0 ]; do
        printf "\r⏱️  Time left: %02d:%02d " $((seconds/60)) $((seconds%60))
        sleep 1
        ((seconds--))
    done

    echo -e "\n✅ Session complete! Take a break. \a"
}

# Run with optional minutes argument
focus "$1"

