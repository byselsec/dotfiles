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

;; file convinience bindings
(keymap-global-set "C-c f d" #'delete-file)

;; add some apropos keybindings
(defvar-keymap ctl-c-a-map
  :doc "Prefix key for `C-c a'"
  :prefix 'ctl-c-a-prefix
  "a" #'apropos
  "u" #'apropos-user-option
  "v" #'apropos-variable
  "V" #'apropos-value
  "f" #'apropos-function)

(keymap-global-set "C-c a" ctl-c-a-prefix)

(provide 'rc/keys)
