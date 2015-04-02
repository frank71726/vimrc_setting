# About CYH vimrc setting

## Function Key Shortcut
    *   <F2>  ===> YcmForceCompileAndDiagnostics
    *   <F3>  ===> QFSwitch
    *   <F4>  ===> go to next tab
    *   <F5>  ===> go to previous tab
    *   <F6>  ===> QuickFix Display the next error in the list that includes a file name.
    *   <F7>  ===> QucikFix Display the previous error in the list that includes a file name.
    *   <F8>  ===> Toggle WinMmanager
    *   <F10> ===> Toggle Visual_Marka
    *   <F11> ===> Cscope database create and update
    *   <F12> ===> Toggle auto-indenting for code paste

## EasyGrep Shortcut
    *   <Leader>vv  - Grep for the word under the cursor, match all occurences,
                      like 'g*'.  See ":help gstar".
    *   <Leader>vV  - Grep for the word under the cursor, match whole word, like
                      '*'.  See ":help star".
    *   <Leader>va  - Like vv, but add to existing list.
    *   <Leader>vA  - Like vV, but add to existing list.
    *   <Leader>vr  - Perform a global search on the word under the cursor
                      and prompt for a pattern with which to replace it.
    *   <Leader>vR  - Like vr, but match whole word.

## Youcompleteme Shortcut
    *   <leader>gl  - YcmCompleter GoToDeclaration
    *   <leader>gf  - YcmCompleter GoToDefinition
    *   <leader>gg  - YcmCompleter GoToDefinitionElseDeclaration
    *   CTRL-O      - Jump back to where you where before invoking the command
                      (and CTRL-I to jump forward; see :h jumplist for details)
### Youcompleteme notes:
    *   ycm error symbol = >> - YCM will use the value of this option as the symbol for
                                  errors in the Vim gutter.
    *   ycm warning symbol = >? - YCM will use the value of this option as the symbol for
                                   warnings in the Vim gutter.

## Cscope notes:
    *   <C-_>s  - Find this C symbol
    *   <C-_>g  - Find this definition
    *   <C-_>c  - Find functions calling this function
    *   <C-_>t  - Find assignments to
    *   <C-_>e  - Find this egrep pattern
    *   <C-_>f  - Find this file
    *   <C-_>i  - Find files #including this file
    *   <C-_>d  - Find functions called by this function
    *  Ctrl+]   - Jump next
    *  Ctrl+o   - Jump back

## Other shortcuts
    *   xw/xr  ===> Copy Paste between buffer
    *   CTRL-k ===> At insert mode, move the cursor to upward.
    *   CTRL-j ===> At insert mode, move the cursor to dwonward.
    *   CTRL-h ===> At insert mode, move the cursor to left.
    *   CTRL-l ===> At insert mode, move the cursor to right.
>The Syntastic/Fugitive statusline flags don't work! These flags should work without any configuration.
>If you installed either plugin after Powerline, you'll have to clear the cache using **:PowerlineClearCache and restart vim** .
