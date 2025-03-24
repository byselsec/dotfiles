;; My key bindings

;; UNNECESSARY: Use input method russian-computer!
;; Russian key bindings support
;; (load "ru-keys.el")

;; This allows to paste from X clipboard,
;; without clobbering emacs kill ring by above setting.

;; enable/disable killing to clipboard
(define-minor-mode rc/clip-shared-mode
  "Minor mode showing whether sharing clipboard
with the system is currently on."
  :init-value nil
  :lighter " Clip"
  (if rc/clip-shared-mode
	  (setq-local select-enable-clipboard t)
	(setq-local select-enable-clipboard nil)))

(defun rc/clip-shared-enable ()
  "Enable clipboard shared mode."
  (interactive)
  (rc/clip-shared-mode 1))

(defun rc/clip-shared-disable ()
  "Disable clipboard shared mode."
  (interactive)
  (rc/clip-shared-mode 0))

(defun rc/clip-shared-toggle ()
  "Toggle clipboard shared mode."
  (interactive)
  (rc/clip-shared-mode 'toggle))

(defvar-keymap ctl-c-c-map
  :doc "Prefix key for `C-c c'"
  :prefix 'ctl-c-c-prefix
  "e" #'rc/clip-shared-enable
  "d" #'rc/clip-shared-disable
  "t" #'rc/clip-shared-toggle
  "y" #'clipboard-yank)

(keymap-global-set "C-c c" #'ctl-c-c-prefix)

(setq-default select-enable-clipboard nil)



;; add some apropos keybindings
(defvar-keymap ctl-c-a-map
  :doc "Prefix key for `C-c a'"
  :prefix 'ctl-c-a-prefix
  "a" #'apropos
  "u" #'apropos-user-option
  "c" #'apropos-user-option
  "v" #'apropos-variable
  "l" #'apropos-local-variable
  "L" #'apropos-local-value
  "V" #'apropos-value
  "f" #'apropos-function)

(keymap-global-set "C-c a" 'ctl-c-a-prefix)



;; file-related bindings
(defvar-keymap ctl-c-f-map
  :doc "Prefix key for `C-c f'"
  :prefix 'ctl-c-f-prefix
  "R" #'rename-visited-file
  "r" #'rename-file
  "v" #'view-file
  "l" #'make-symbolic-link
  "d" #'delete-file
  "c" #'copy-file)

(keymap-global-set "C-c f" 'ctl-c-f-prefix)



(defvar-keymap ctl-v-map
  :doc "Prefix key for `C-c v'"
  :prefix 'ctl-c-v-prefix
  "l" #'make-local-variable
  "L" #'make-variable-buffer-local
  "k" #'kill-local-variable
  "c" #'customize-variable
  "s" #'set-variable
  "a" #'add-file-local-variable-prop-line
  "A" #'add-file-local-variable
  "r" #'delete-file-local-variable-prop-line
  "R" #'delete-file-local-variable)

(keymap-global-set "C-c v" 'ctl-c-v-prefix)



(defvar-keymap ctl-d-map
  :doc "Prefix key for `C-c d'"
  :prefix 'ctl-d-prefix
  "C-d" #'dired
  "m" #'make-directory
  "d" #'delete-directory
  "l" #'list-directory
  "c" #'copy-directory)

(keymap-global-set "C-c d" 'ctl-d-prefix)



(defvar-keymap ctl-b-map
  :doc "Prefix key for `C-c b'"
  :prefix 'ctl-b-prefix
  "v" #'view-buffer
  "V" #'view-mode
  "r" #'rename-buffer
  "R" #'read-only-mode
  "u" #'rename-uniquely
  "l" #'buffer-menu
  "i" #'insert-buffer
  "a" #'append-to-buffer)

(keymap-global-set "C-c b" 'ctl-b-prefix)



;; Create terminal window
(keymap-global-set "C-c $" #'term)

;; Create a term buffer in other window
;; first form creates a keyboard macro variable
;; and the second actually makes a use of it
(fset 'term-other-window (kbd "C-x 4 4 C-c $"))
(keymap-global-set "C-c 4 $" #'term-other-window)

;; Shortdoc shortcut
(keymap-global-set "C-c s" #'shortdoc)

;; minibuffer keymap alteration
(keymap-unset minibuffer-local-completion-map "SPC")

;; zap-up-to-char instead of zap-to-char
(keymap-global-set "M-z" #'zap-up-to-char)

;; get the definition of a word
(keymap-global-set "M-s d" #'dictionary-search)

;; same as M-%
(keymap-global-set "M-s r" 'query-replace)

;; same as C-M-%
(keymap-global-set "M-s R" 'query-replace-regexp)

(keymap-global-set "C-x u" 'undo-only)


(provide 'rc/keys)
