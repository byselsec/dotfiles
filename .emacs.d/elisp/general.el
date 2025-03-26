;;
;; General customizations
;;

;; handle enabled & disabled commands
(load "disabled.el")

;; Change font size
(set-face-attribute 'default nil :height 120)

;; Hide tool bar
(tool-bar-mode 0)

;; Disable scroll bar
(scroll-bar-mode 0)

;; ask y or n instead of looooong yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

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

;; enable ido
(ido-mode)

;; learn existing keymaps faster
(which-key-mode)

;(global-auto-revert-mode)
;(setopt global-auto-revert-non-file-buffers t)
(add-hook 'Buffer-menu-mode-hook 'auto-revert-mode)

(provide 'rc/general)
