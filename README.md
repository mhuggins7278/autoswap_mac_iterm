# autoswap_mac.vim

Created by [Damian Conway](https://github.com/thoughtstream)
Modified to work with iterm2 instead of mac terminal
## The automatic behaviour

Find if the file already open in another Vim session in some other Terminal window. 
If so, go there instead and terminate this attempt to open the file. 
Otherwise, if swapfile is older than file itself, just get rid of it.
Otherwise, open file read-only.

