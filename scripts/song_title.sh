#!/usr/bin/env bash
print_song_title() {
    title="$(mpc current)"
    pos="$(mpc | grep --color=never play | sed 's/.*   //;s/ .*$//')"
    [[ -n "$pos" ]] && printf "♫ ${title} [${pos}]" || printf "𝄐"
}

main() {
	print_song_title
}
main
