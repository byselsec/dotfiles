;; My key bindings

;; Russian key bindings support
(load "ru-keys.el")

;; This allows to paste from X clipboard,
;; without clobbering emacs kill ring by above setting.
(global-set-key (kbd "C-c C-y") 'clipboard-yank)

(global-set-key (kbd "C-c $") 'term)
;; (defun term-other-window
;; (global-set-key (kbd "C-x 4 $") 'term-other-window)

;; When line is unindented - make indentation.
;; Otherwise, complete
(setq tab-always-indent 'complete)

;; Switch to completions buffer
(define-key global-map (kbd "C-x t") 'switch-to-completions)

;; disable some commands
(put 'set-fill-column 'disabled t)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; minibuffer keymap alteration
(define-key minibuffer-local-completion-map " " 'self-insert-command)

