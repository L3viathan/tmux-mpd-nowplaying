#!/usr/bin/env bash
print_song_title() {
    printf "♪$(mpc current)"
}

main() {
	print_song_title
}
main
