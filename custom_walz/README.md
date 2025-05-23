
With the currently editing theme set, get the file

    ./get-current.sh #/home/<user>/.cache/wal/colors.json

Rename the file to theme name

    mv colors.json [custom-theme]

Process (Files do not need to be formatted before installing, just proper json)

    nvim [custom-theme]

Install

  sudo cp custom-theme /usr/lib/python3.13/site-packages/pywal/colorschemes/dark

Test

  wal -a 92 --theme custom-[theme]

Add save to newlook script
