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
(set-register ?e '(file . "~/.emacs"))
(set-register ?d '(file . "~/.local/src/dwm/config.h"))
(set-register ?m '(file . "~/.local/src/dmenu/config.h"))
(set-register ?s '(file . "~/.local/src/st/config.h"))
(set-register ?x '(file . "~/.xinitrc"))
(set-register ?b '(file . "~/.bashrc"))
(set-register ?a '(file . "~/.bash_aliases"))
(set-register ?n '(file . "~/.emacs.d/elisp/navig.el"))
(set-register ?k '(file . "~/.emacs.d/elisp/keys.el"))
(set-register ?g '(file . "~/.emacs.d/elisp/general.el"))

;; move lines(or region) up or down
(move-text-default-bindings)
