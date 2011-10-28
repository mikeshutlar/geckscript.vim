# GECKScript.vim

Enables Vim's syntax highlighting and code completion for GECK Script, the scripting language used by Bethesda Softworks' Fallout 3 and Fallout: New Vegas.


## Features

* Highlighting for all built-in commands and syntax
* Includes all [Fallout Script Extender](http://fose.silverlock.org/) (FOSE) commands
* Includes all known [New Vegas Script Extender](http://nvse.silverlock.org/) (NVSE) commands as of NVSE v2 beta 9
* Associates .gek files with GECK Script when opened in Vim


## Install

### If using [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332):

Install to the bundle directory, e.g.:
    ```
    cd ~/.vim/bundle && git clone --depth 1 git://github.com/infectedsoundsystem/geckscript.vim.git
    ```


### Manually:

Place the ftdetect and syntax directories into your Vim runtime path, e.g.

Linux:

* ~/.vim/ftdetect/geckscript.vim
* ~/.vim/syntax/geckscript.vim

Windows:    

* %USERPROFILE%\Documents\vimfiles\ftdetect\geckscript.vim
* %USERPROFILE%\Documents\vimfiles\syntax\geckscript.vim


## Usage

Start saving your GECK scripts with the .gek file extension (e.g. *mygroovyscript.gek*), and Vim will automatically recognise them and start highlighting. You can also use:
    ```
    set ft=geckscript
    ```

To enable code completion, either:

* Use [neocomplcache](http://www.vim.org/scripts/script.php?script_id=2620) (recommended)
* Or, [run the following when editing a script](http://vimdoc.sourceforge.net/htmldoc/insert.html#ft-syntax-omni):
    ```
    setlocal omnifunc=syntaxcomplete#Complete
    ```

If neocomplcache is used, indications will be given as to whether a command is built-in, for FOSE (and therefore NVSE), or for NVSE only.


## Contribute

Something incorrect or missing, or got an improvement?

* Raise an [issue](https://github.com/infectedsoundsystem/geckscript.vim/issues)
* Or fork the repository, edit the file(s), and send a pull request


## License

Copyright (c) 2011, Mike Shutlar

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
