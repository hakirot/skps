#!/bin/env bash

# This should work, it has always worked for me, no guarantees though.
# but please report mistakes to me :)

music_dir="$HOME/mzk"
fallback_image=$HOME/pix/gimp/cache-coyote/favicon.png


find_cover () {

    ext="$(mpc --format %file% current | sed 's/^.*\.//')"
    if [ "$ext" != "flac" ]; then
        ffmpeg -y -i "$(mpc --format "$music_dir"/%file% | head -n 1)" \
        /tmp/cover.jpg && cover_path="/tmp/cover.jpg" && return
    else
        # ffmpeg doesn't work for flacs
        metaflac --export-picture-to=/tmp/cover.jpg \
        "$(mpc --format "$music_dir"/%file% current)" && cover_path="/tmp/cover.jpg" && return
    fi

    # fallback
    file="$music_dir/$(mpc --format %file% current)"
    artist="$(mpc --format %artist% current)"
    album="${file%/*}"

    # search for cover
    cover_path=$(find "$album"  -maxdepth 1 | grep -m 1 ".*\.\(jpg\|png\|gif\|bmp\)")
}

send () {
    if test -z "$artist"; then
      notify-send --expire-time 3000 -i "${cover_path}" "[]" "$(mpc current)" || \
      notify-send --expire-time 3000 -i "${fallback_image}" "[]" "$(mpc current)"
    else
      notify-send --expire-time 3000 -i "${cover_path}" "${artist}" "$(mpc current)" || \
      notify-send --expire-time 3000 -i "${fallback_image}" "${artist}" "$(mpc current)"
    fi
}

find_cover
send
#find_cover 2>/dev/null
#send       2>/dev/null
