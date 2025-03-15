;;
;; General customizations
;;

;; handle enabled & disabled commands
(load "disabled.el")

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
      (concat (getenv "HOME") "/.local/src/emacs/src"))

;; Markdown and GFM mode configuration
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-open-command "mdbrowse")

;; When exiting emacs, check if there're any unsaved customizations, and
;; if test succeeds, prompt user whether to save them.
(add-hook 'kill-emacs-query-functions
          'custom-prompt-customize-unsaved-options)

(provide 'rc/general)
