;; 
;; Elisp library containing code related to navigating, searching, jumping, etc.
;;

;; Minor mode for custom keybindings
(define-minor-mode rc/keys-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter nil
  :keymap '( ([?\M-n] . [?\C-u ?2 ?\C-v])
			 ([?\M-p] . [?\C-u ?2 ?\M-v])))
(rc/keys-mode 1)
;; Disable rc/keys minor mode while in minibuffer
(add-hook 'minibuffer-setup-hook (lambda () (rc/keys-mode 0)))

;; Go to some file with just C-x r j <key>
(set-register ?\C-e '(file . "~/.emacs"))
(set-register ?\C-d '(file . "~/.emacs.d/elisp/disabled.el"))
(set-register ?\C-n '(file . "~/.emacs.d/elisp/navig.el"))
(set-register ?\C-k '(file . "~/.emacs.d/elisp/keys.el"))
(set-register ?\C-l '(file . "~/.emacs.d/elisp/general.el"))
(set-register ?\C-p '(file . "~/.emacs.d/elisp/prog.el"))
(set-register ?\C-x '(file . "~/.xinitrc"))
(set-register ?\C-b '(file . "~/.bashrc"))
(set-register ?\C-a '(file . "~/.bash_aliases"))


;; move lines(or region) up or down
(move-text-default-bindings)

(provide 'rc/navig)
