;;
;; Customizations for Programming
;;


;; customizing cpreproc indentation
(require 'ppindent)

;; Customizing all programming modes at once.
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'show-paren-local-mode)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'prog-mode-hook (lambda () (setq-local show-trailing-whitespace t)))
;; walk by symbols, not subwords
;;(add-hook 'prog-mode-hook 'superword-mode)

;; customizing c-mode
(load "c-mode.el")

;; customizing c++-mode
;(add-hook 'c++-mode-hook 'company-mode)
;(add-hook 'c++-mode-hook 'flycheck-mode)
;(add-hook 'c++-mode-hook 'irony-mode)

;; Irony minor mode configuration
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(eval-after-load 'company
    '(add-to-list 'company-backends 'company-irony))
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; customizing elisp
(setq print-circle t)

;; diff mode customizations
(add-hook 'diff-mode-hook (lambda () (rc/keys-mode -1)))

(provide 'rc/prog)
