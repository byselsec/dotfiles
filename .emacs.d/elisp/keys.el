;; My key bindings

;; Russian key bindings support
(load "ru-keys.el")

;; This allows to paste from X clipboard,
;; without clobbering emacs kill ring by above setting.
(keymap-global-set "C-c C-y" 'clipboard-yank)

;; Create terminal window
(keymap-global-set "C-c $" 'term)

;; Create a term buffer in other window
;; first form creates a keyboard macro variable
;; and the second actually makes a use of it
(fset 'term-other-window (kbd "C-x 4 4 C-c $"))
(keymap-global-set "C-c 4 $" 'term-other-window)

;; Shortdoc shortcut
(keymap-global-set "C-c s" 'shortdoc)

;; Switch to completions buffer
(keymap-global-set "C-c t" 'switch-to-completions)

;; minibuffer keymap alteration
(keymap-set minibuffer-local-completion-map "SPC" 'self-insert-command)

