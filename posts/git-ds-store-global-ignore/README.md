# Git `.DS_Store` Global Ignore

Here's how you can ignore changes to the dreaded macOS `.DS_Store` files across
all repositories by adding the ignore pattern to the global Git ignore file.

First, find where the global Git ignore file lives:

```sh
git config --get core.excludesfile
```

I found this on Stack Overflow: https://stackoverflow.com/a/22885996/2715716
It is not the top answer.

For me on macOS this is at `~/.config/git/ignore`.

The same SO post talks about this not working OOTB on macOS.
I don't remember if I've already set up the global Git ignore file before and
forgot or if this is inaccurate, but in case I ever do this on a new machine, if
there's issues with it, here's how to set a path to a new global ignore file:

```sh
git config --global core.excludesfile ~/.config/git/ignore
```

Simply append `.DS_Store` to this file and re-run the respective Git CLI command
or refresh the VS Code source control pane.
