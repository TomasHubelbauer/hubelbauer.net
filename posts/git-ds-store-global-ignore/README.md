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

Simply append `.DS_Store` to this file and re-run the respective Git CLI command
or refresh the VS Code source control pane.
