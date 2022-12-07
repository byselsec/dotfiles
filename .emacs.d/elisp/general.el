;;
;; General customizations
;;

;; Change font size
(set-face-attribute 'default nil :height 120)

;; Hide tool bar
(tool-bar-mode -1)

;; ask y or n instead of looooong yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable scroll bar
(scroll-bar-mode 0)

;; where to search for C sources of emacs itself
(setq find-function-C-source-directory
      "/home/mathway/.local/src/emacs/src")

;; for X version of emacs - this will copy
;; in system clipboard alongside kill ring.
;; (setq x-select-enable-clipboard y)
(setq x-select-enable-clipboard nil)


;; Markdown and GFX mode configuration
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-open-command "mdbrowse")


