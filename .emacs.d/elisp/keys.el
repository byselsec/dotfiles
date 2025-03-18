;; My key bindings

;; UNNECESSARY: Use input method russian-computer!
;; Russian key bindings support
;; (load "ru-keys.el")

;; This allows to paste from X clipboard,
;; without clobbering emacs kill ring by above setting.
(keymap-global-set "C-c c y" 'clipboard-yank)

;; enable/disable killing to clipboard
(define-minor-mode rc/clip-shared-mode
  "Minor mode showing whether sharing clipboard
with the system is currently on."
  :init-value nil
  :lighter " Clip"
  (if rc/clip-shared-mode
	  (setq-local select-enable-clipboard t)
	(setq-local select-enable-clipboard nil)))

(keymap-global-set "C-c c e" (lambda ()
							   (interactive)
							   (rc/clip-shared-mode 1)))
(keymap-global-set "C-c c d" (lambda ()
							   (interactive)
							   (rc/clip-shared-mode 0)))
(keymap-global-set "C-c c t" (lambda ()
							   (interactive)
							   (rc/clip-shared-mode 'toggle)))
(setq-default select-enable-clipboard nil)

;; Create terminal window
(keymap-global-set "C-c $" 'term)

;; Create a term buffer in other window
;; first form creates a keyboard macro variable
;; and the second actually makes a use of it
(fset 'term-other-window (kbd "C-x 4 4 C-c $"))
(keymap-global-set "C-c 4 $" 'term-other-window)

;; Shortdoc shortcut
(keymap-global-set "C-c s" 'shortdoc)

;; minibuffer keymap alteration
(keymap-unset minibuffer-local-completion-map "SPC")

;; file convinience bindings
(keymap-global-set "C-c f d" 'delete-file)

(provide 'rc/keys)
