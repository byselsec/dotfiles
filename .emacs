(require 'package)
;; add MELPA package archive
(add-to-list 'package-archives
	     '("melpa-stable"
	       . "https://stable.melpa.org/packages/") t)

;; specify to _load_ where to find elisp files
(add-to-list 'load-path "~/.emacs.d/elisp/")
;; Setup custom Custom file :)
(setq custom-file "~/.emacs.d/elisp/custom.el")
(load custom-file)

;; When exiting emacs, check if there're any unsaved customizations, and
;; if test succeeds, prompt user whether to save them.
(add-hook 'kill-emacs-query-functions
          'custom-prompt-customize-unsaved-options)

;; programming stuff
(load "prog.el")
;; general key bindings
(load "keys.el")
;; navigation related stuff
(load "navig.el")
;; General configuration
(load "general.el")
