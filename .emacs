;; specify where to find elisp files
(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable"
	       . "https://stable.melpa.org/packages/") t)

;; for gui version of emacs - connecting to X clipboard
(setq x-select-enable-clipboard t)

;; customising c-mode
(setq c-default-style "linux"
      c-basic-offset 4)

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'show-paren-mode)
(add-hook 'c-mode-hook 'irony-mode)

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

(defun get-include-guard ()
  "Return a string suitable for use in a C/C++ include guard"
  (let* ((fname (buffer-file-name (current-buffer)))
         (fbasename (replace-regexp-in-string ".*/" "" fname))
         (inc-guard-base (replace-regexp-in-string "[.-]"
                                                   "_"
                                                   fbasename)))
    (concat (upcase inc-guard-base) "_")))

(defun insert-include-guard()
  "Inserts include guard in current buffer"
  (interactive)
  (let ((file-name (buffer-file-name (current-buffer))))
    (when (string= ".h" (substring file-name -2))
      (let ((include-guard (get-include-guard)))
        (insert "#ifndef " include-guard)
        (newline)
        (insert "#define " include-guard)
        (newline 4)
        (insert "#endif")
        (newline)
        (previous-line 3)
        (set-buffer-modified-p nil)))))

;; Add automatically header guards in new header files.
(add-hook 'find-file-not-found-functions
          '(lambda ()
             (let ((file-name (buffer-file-name (current-buffer))))
               (when (string= ".h" (substring file-name -2))
                 (let ((include-guard (get-include-guard)))
                   (insert "#ifndef " include-guard)
                   (newline)
                   (insert "#define " include-guard)
                   (newline 4)
                   (insert "#endif")
                   (newline)
                   (previous-line 3)
                   (set-buffer-modified-p nil))))))



;; Customizing rust-mode
;; rust likes spaces, not tabs
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(add-hook 'rust-mode-hook
	  'flycheck-mode)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

;; Markdown and GFX mode configuration
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-open-command "mdbrowse")

;;(add-hook 'sh-mode-hook 'company-mode)

;; customising cpreproc indentation
(require 'ppindent)

;; python config
(add-hook 'python-mode-hook 'show-paren-mode)

;; ;; bash completion
;; (require 'bash-completion)
;; (bash-completion-setup)

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

(global-unset-key (kbd "C-x f"))


;; ;(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-idle-delay 0)
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(erc-modules
   '(autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands notifications readonly ring smiley stamp spelling track) nil nil "erc modules customization")
 '(erc-nick "mathway_")
 '(erc-nick-uniquifier "_")
 '(erc-prompt-for-channel-key nil)
 '(erc-server "irc.libera.chat")
 '(ispell-dictionary nil)
 '(markdown-command-needs-filename t)
 '(markdown-open-command "mdbrowse.sh")
 '(package-selected-packages
   '(flycheck-rust rust-mode dashboard spacemacs-theme bash-completion company-shell lua-mode jedi company-jedi company-irony company-irony-c-headers flycheck-irony edit-indirect markdown-mode)))


(set-face-attribute 'default nil :height 120)

;; When using quoted-insert, which is typically bound to C-q,
;; use hex number instead of octal to specify character to insert.
(setq read-quoted-char-radix 16)



;; Hide tool bar
(tool-bar-mode -1)

;; When line is unindented - make indentation.
;; Otherwise, complete
(setq tab-always-indent 'complete)

;; (require 'sh-script)                    ;sh-beginning-of-command
;; (require 'bash-completion)

;; (defun my-sh-completion-at-point ()
;;   (let ((end (point))
;;         (beg (save-excursion (sh-beginning-of-command))))
;;     (when (and beg (> end beg))
;;       (bash-completion-dynamic-complete-nocomint beg end t))))

;; (defun my-sh-hook ()
;;   (add-hook 'completion-at-point-functions #'my-sh-completion-at-point nil t))

;; (add-hook 'sh-mode-hook #'my-sh-hook)


;; Go to .emacs file with just C-x r j e
(set-register ?e '(file . "~/.emacs"))

;; Go to dwm config file with just C-x r j d
(set-register ?d '(file . "~/.local/src/dwm/config.h"))

;; Go to dmenu config file with just C-x r j m
(set-register ?m '(file . "~/.local/src/dmenu/config.h"))

;; Go to st config file with just C-x r j s
(set-register ?s '(file . "~/.local/src/st/config.h"))

;; Go to xinitrc file with just C-x r j x
(set-register ?x '(file . "~/.xinitrc"))

;; Go to bashrc file with just C-x r j b
(set-register ?b '(file . "~/.bashrc"))

;; Go to bash_aliases file with just C-x r j a
(set-register ?a '(file . "~/.bash_aliases"))

;; ;; Set emacs own source directory
;; (setq source-directory "/usr/src/emacs-27.1+1")

(put 'upcase-region 'disabled nil)

;; Disable scroll bar
(scroll-bar-mode 0)

;; Switch to completions buffer
(define-key global-map (kbd "C-x t") 'switch-to-completions)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
