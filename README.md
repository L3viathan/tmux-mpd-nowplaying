# Tmux MPD now-playing

Tmux plugin that enables displaying the current song title playing in MPD.

Introduces a new `#{song_title}` format.

This plugin is useful if:
- you spend most of your time in Tmux and don't want to "switch" away from
  the terminal to check the current song title.

### Usage

Add `#{song_title}` format string to your existing `status-right` tmux
option.

Here's the example in `.tmux.conf`:

    set -g status-right "Song: #{song_title} | %a %h-%d %H:%M "

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'L3viathan/tmux-mpd-nowplaying'

Hit `prefix + I` to fetch the plugin and source it.

`#{song_title}` interpolation should now work.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/L3viathan/tmux-mpd-nowplaying ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/mpd_nowplaying.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

`#{song_title}` interpolation should now work.

### Limitations

Song title most likely won't be instant. The duration depends on the
`status-interval` Tmux option. So, it might take anywhere between 5 and 60
seconds for song title to change.

Set `status-interval` to a low number to make this faster, example:

    # in .tmux.conf
    set -g status-interval 5

### Other plugins

You might also find these useful:

- [battery](https://github.com/tmux-plugins/tmux-battery) - battery status in
  Tmux `status-right`
- [logging](https://github.com/tmux-plugins/tmux-logging) - easy logging and
  screen capturing
- [online status](https://github.com/tmux-plugins/tmux-online-status) - show
  online status

### License

[MIT](LICENSE.md)
