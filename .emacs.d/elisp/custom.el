;;
;; file to be used by Custom, like customize-variable, etc...
;; 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ange-ftp-generate-anonymous-password "anonymous")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(apropos-sort-by-scores t)
 '(auto-revert-remote-files t)
 '(backup-by-copying-when-linked t)
 '(bookmark-save-flag 1)
 '(company-idle-delay 0)
 '(completion-auto-help 'visible)
 '(completion-auto-select 'second-tab)
 '(completion-category-overrides
   '((file (styles emacs21 basic partial-completion))
	 (buffer (styles emacs21 substring partial-completion flex))))
 '(completion-cycle-threshold nil)
 '(completion-show-help nil)
 '(completion-styles '(basic partial-completion initials flex))
 '(completions-format 'one-column)
 '(completions-max-height 20)
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476"
	 "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(default-input-method "russian-computer")
 '(default-transient-input-method "russian-computer")
 '(delete-trailing-lines nil)
 '(desktop-path '("." "~/.emacs.d/" "~"))
 '(desktop-save-mode t)
 '(dired-listing-switches "-alF --group-directories-first")
 '(display-line-numbers-type 'relative)
 '(display-raw-bytes-as-hex t)
 '(enable-recursive-minibuffers t)
 '(erc-modules
   '(autojoin button completion fill irccontrols list log match menu move-to-prompt
			  netsplit networks noncommands notifications readonly ring smiley
			  stamp spelling track) nil nil "erc modules customization")
 '(erc-nick "mathway_")
 '(erc-nick-uniquifier "_")
 '(erc-prompt-for-channel-key nil)
 '(erc-server "irc.libera.chat")
 '(file-coding-system-alist
   '(("\\.\\(elf\\|ELF\\)\\'" . binary) ("\\.\\(so\\|SO\\)\\'" . binary)
	 ("\\.\\(exe\\|EXE\\)\\'" . binary) ("\\.\\(elf\\|ELF\\)\\'" . binary)
	 ("\\.\\(bin\\|BIN\\)\\'" . binary)
	 ("\\.tzst\\'" no-conversion . no-conversion)
	 ("\\.zst\\'" no-conversion . no-conversion)
	 ("\\.dz\\'" no-conversion . no-conversion)
	 ("\\.txz\\'" no-conversion . no-conversion)
	 ("\\.xz\\'" no-conversion . no-conversion)
	 ("\\.lzma\\'" no-conversion . no-conversion)
	 ("\\.lz\\'" no-conversion . no-conversion)
	 ("\\.g?z\\'" no-conversion . no-conversion)
	 ("\\.\\(?:tgz\\|svgz\\|sifz\\)\\'" no-conversion . no-conversion)
	 ("\\.tbz2?\\'" no-conversion . no-conversion)
	 ("\\.bz2\\'" no-conversion . no-conversion)
	 ("\\.Z\\'" no-conversion . no-conversion) ("\\.elc\\'" . utf-8-emacs)
	 ("\\.el\\'" . prefer-utf-8) ("\\.utf\\(-8\\)?\\'" . utf-8)
	 ("\\.xml\\'" . xml-find-file-coding-system)
	 ("\\(\\`\\|/\\)loaddefs.el\\'" raw-text . raw-text-unix)
	 ("\\.tar\\'" no-conversion . no-conversion)
	 ("\\.po[tx]?\\'\\|\\.po\\." . po-find-file-coding-system)
	 ("\\.\\(tex\\|ltx\\|dtx\\|drv\\)\\'" . latexenc-find-file-coding-system)
	 ("" undecided)))
 '(fill-column 80)
 '(goto-line-history-local t)
 '(help-enable-variable-value-editing t)
 '(help-window-keep-selected t)
 '(help-window-select t)
 '(hi-lock-auto-select-face t)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f") ("NEXT" . "#dc752f") ("THEM" . "#2d9574")
	 ("PROG" . "#3a81c3") ("OKAY" . "#3a81c3") ("DONT" . "#f2241f")
	 ("FAIL" . "#f2241f") ("DONE" . "#42ae2c") ("NOTE" . "#b1951d")
	 ("KLUDGE" . "#b1951d") ("HACK" . "#b1951d") ("TEMP" . "#b1951d")
	 ("FIXME" . "#dc752f") ("XXX+" . "#dc752f") ("\\?\\?\\?+" . "#dc752f")))
 '(hscroll-step 5)
 '(ido-cannot-complete-command 'ido-next-match)
 '(ido-confirm-unique-completion t)
 '(ido-enable-dot-prefix t)
 '(ido-everywhere t)
 '(ido-max-prospects 7)
 '(image-use-external-converter t)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t)
 '(isearch-allow-motion t)
 '(isearch-allow-scroll t)
 '(isearch-motion-changes-direction t)
 '(isearch-repeat-on-direction-change t)
 '(isearch-yank-on-move 'shift)
 '(ispell-dictionary nil)
 '(kill-buffer-delete-auto-save-files t)
 '(kill-read-only-ok t)
 '(kmacro-ring-max 4)
 '(line-move-visual nil)
 '(list-directory-brief-switches "-C --group-directories-first")
 '(list-directory-verbose-switches "-lF --group-directories-first")
 '(list-matching-lines-default-context-lines 2)
 '(markdown-command-needs-filename t)
 '(markdown-open-command "/home/mathway/.local/bin/mdbrowse" t)
 '(max-mini-window-height 0.2)
 '(minibuffer-beginning-of-buffer-movement t)
 '(minibuffer-depth-indicate-mode t)
 '(mode-line-compact 'long)
 '(next-line-add-newlines nil)
 '(next-screen-context-lines 4)
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(org-special-ctrl-a/e t)
 '(org-special-ctrl-k t)
 '(outline-default-state 'outline-show-only-headings)
 '(package-hidden-regexps '("\\`cc-mode\\'"))
 '(package-selected-packages
   '(move-text flycheck-rust rust-mode dashboard spacemacs-theme bash-completion
			   company-shell lua-mode jedi company-jedi company-irony
			   company-irony-c-headers flycheck-irony edit-indirect
			   markdown-mode))
 '(parse-sexp-ignore-comments t)
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(read-buffer-completion-ignore-case t)
 '(read-file-name-completion-ignore-case t)
 '(read-quoted-char-radix 16)
 '(repeat-exit-key "RET")
 '(repeat-keep-prefix t)
 '(repeat-mode t)
 '(revert-buffer-quick-short-answers t)
 '(revert-without-query '("\\.log\\(\\.[0-9]\\)?\\'"))
 '(scroll-conservatively 4)
 '(scroll-error-top-bottom t)
 '(scroll-margin 2)
 '(scroll-preserve-screen-position t)
 '(send-mail-function 'sendmail-send-it)
 '(sentence-end-double-space nil)
 '(server-after-make-frame-hook '(desktop-read))
 '(shift-select-mode 'permanent)
 '(tab-always-indent 'complete)
 '(tab-bar-select-tab-modifiers '(super))
 '(tab-bar-show 1)
 '(tab-width 4)
 '(undelete-frame-mode t)
 '(user-mail-address "mathway.home@gmail.com")
 '(view-read-only t)
 '(warning-minimum-level :error)
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp)))
 '(what-cursor-show-names t))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
