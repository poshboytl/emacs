(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/defunkt/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(when (file-exists-p ".passwords") (load ".passwords"))

(load "defunkt/lisp")
(load "defunkt/global")
(load "defunkt/defuns")
(load "defunkt/bindings")
(load "defunkt/modes")
(load "defunkt/temp_files")
(load "defunkt/github")
(load "defunkt/git")
(load "defunkt/todo")



(when (file-exists-p "defunkt/private")
  (load "defunkt/private"))

(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'twittering-mode)
(vendor 'textile-mode)
(vendor 'yaml-mode)
(vendor 'open-file-in-github)
(vendor 'ooc-mode)
(vendor 'coffee-mode)
(vendor 'lua-mode)
(vendor 'any-ini-mode)
(vendor 'mustache-mode)
(vendor 'scss-mode)

(add-to-list 'load-path "/Users/poshboytl/.emacs.d/vendor/slime")
(require 'slime-autoloads)
;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(require 'dirtree)

;; Coffee mode configuration

;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
;; This gives you a tab of 2 spaces
(custom-set-variables '(coffee-tab-width 2))


;; rinari setup
;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path "/Users/poshboytl/.emacs.d/vendor/rinari")
(require 'rinari)

;; Rinari
(add-to-list 'load-path "/Users/poshboytl/.emacs.d/vendor/rhtml")
(require 'rhtml-mode)


