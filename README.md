# Emacs Configuration #


## Description ##

This is a custom configuration for GNU's Emacs (best for v. 24).


It includes autocompletion out of the box and automatically highlights syntax errors using `flycheck`.
The Emmet mode is automatically activated for HTML/CSS.
Linum mode is accessible by `M-x linum-mode` and has beed adapted to resize correctly when the font size is changed.


The default Theme can be changed entering `M-x customize-themes`. Default is set to `deeper-blue`.


Improved support for:
* Ruby / Ruby on Rails
* CSS / LESS / SASS / SCSS
* HAML / Markdown / Textile / ERB
* Clojure (with Cider and nRepl)
* Javascript / Coffeescript
* Python
* PHP
* Haskell
* Elm
* Common Lisp (with Slime)


If you want to add your own customizations, please do it here: `~/.emacs.d/lisp/init-local.el`.


## Last changes ##
(14.04.2016)
* Autocomplete-mode starts automatically for JavaScript (with a pop-up box)
* Bigger default font-size (you can still always zoom in `C+x C-+`, or out `C+x C--`)
* Linum-mode (numeration) is now automatically activated for most of the major modes
* Beautify function for HTML, CSS, JS is now available. To beautify => `M-x web-beautify-*js/json/html/css*`
* Whitespace trailing made more appealing (magenta wave underline)
* Flycheck messages available as emojis. To activate => `flycheck-status-emoji-mode`
