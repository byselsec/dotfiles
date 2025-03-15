;; 
;; Elisp library containing code related to navigating, searching, jumping, etc.
;;

;; Minor mode for custom keybindings
(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    ;; Smooth scrolling
    (define-key map (kbd "M-n") (kbd "C-u 2 C-v")) 
    (define-key map (kbd "M-p") (kbd "C-u 2 M-v"))
    map)
  "my-keys-minor-mode keymap.")
(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter " my-keys")
(my-keys-minor-mode 1)
;; Disable my-keys minor mode while in minibuffer
(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

;; Go to some file with just C-x r j <key>
(set-register ?\C-e '(file . "~/.emacs"))
(set-register ?\C-d '(file . "~/.local/src/dwm/config.h"))
(set-register ?\C-m '(file . "~/.local/src/dmenu/config.h"))
(set-register ?\C-s '(file . "~/.local/src/st/config.h"))
(set-register ?\C-x '(file . "~/.xinitrc"))
(set-register ?\C-b '(file . "~/.bashrc"))
(set-register ?\C-a '(file . "~/.bash_aliases"))
(set-register ?\C-n '(file . "~/.emacs.d/elisp/navig.el"))
(set-register ?\C-k '(file . "~/.emacs.d/elisp/keys.el"))
(set-register ?\C-l '(file . "~/.emacs.d/elisp/general.el"))

;; move lines(or region) up or down
(move-text-default-bindings)
