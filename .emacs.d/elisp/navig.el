;; 
;; Elisp library containing code related to navigating, searching, jumping, etc.
;;

;; Minor mode for custom keybindings
(defvar rc/keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    ;; Smooth scrolling
    (keymap-set map "M-n" "C-u 2 C-v") 
    (keymap-set map "M-p" "C-u 2 M-v")
    map)
  "rc/keys-minor-mode keymap.")
(define-minor-mode rc/keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value nil
  :lighter nil)
(rc/keys-minor-mode 1)
;; Disable rc/keys minor mode while in minibuffer
(add-hook 'minibuffer-setup-hook (lambda () (rc/keys-minor-mode 0)))

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
(set-register ?\C-p '(file . "~/.emacs.d/elisp/prog.el"))

;; move lines(or region) up or down
(move-text-default-bindings)

(provide 'rc/navig)
