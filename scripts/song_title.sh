#!/usr/bin/env bash
print_song_title() {
    title="$(mpc current | sed -E 's/.(mp3|wav|flac|m4a)//g' )"
    pos="$(mpc | grep --color=never play | sed -E 's/.*  +//;s/ .*$//')"
    [[ -n "$pos" ]] && printf "> ${title} [${pos}]" || printf "|| ${title}"
}

main() {
    print_song_title
}
main
