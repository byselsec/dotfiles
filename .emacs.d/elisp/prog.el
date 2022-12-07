;;
;; Customizations for Programming
;; 

;; customising cpreproc indentation
(require 'ppindent)

;; Customizing all programming modes at once.
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'show-paren-mode)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; customising c-mode
(load "c-mode.el")

;; customizing c++-mode
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'show-paren-mode)
(add-hook 'c++-mode-hook 'irony-mode)

;; Irony minor mode configuration
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(eval-after-load 'company
    '(add-to-list 'company-backends 'company-irony))
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; python config
(add-hook 'python-mode-hook 'show-paren-mode)
