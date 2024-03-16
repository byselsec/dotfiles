; -*-coding: utf-8-*-
;; moving around
(global-set-key [?\C-ф] 'move-beginning-of-line)
(global-set-key [?\C-у] 'move-end-of-line)
(global-set-key [?\C-д] 'recenter-top-bottom)
(global-set-key [?\C-з] 'previous-line)
(global-set-key [?\C-т] 'next-line)
(global-set-key [?\M-а] 'forward-word)
(global-set-key [?\M-и] 'backward-word)
(global-set-key [?\C-а] 'forward-char)
(global-set-key [?\C-и] 'backward-char)
(global-set-key [?\C-м] 'scroll-up-command)
(global-set-key [?\M-м] 'scroll-down-command)
(global-set-key [?\M-ю] 'end-of-buffer)
(global-set-key [?\M-б] 'beginning-of-buffer)

;; inserting/killing/deleting
(global-set-key [?\C-в] 'delete-char)
(global-set-key [?\M-в] 'kill-word)
(global-set-key [?\C-л] 'kill-line)
(global-set-key [?\M-г] 'upcase-word)
(global-set-key [?\M-д] 'downcase-word)
(global-set-key [?\C-ь] 'newline)

;; misc
(global-set-key [?\C-г] 'universal-argument)
(global-set-key [?\C-.] 'undo)
(global-set-key [?\C-п] 'keyboard-quit)
(global-set-key [?\C-н] 'yank)
(global-set-key [?\C-й] 'quoted-insert)
(global-set-key (kbd "C-ч C-ы") 'save-buffer)
(global-set-key (kbd "C-ч C-у") 'eval-last-sexp)
(global-set-key [?\C-.] 'undo)

 ;; search
(global-set-key [?\C-ы] 'isearch-forward)
(global-set-key [?\C-к] 'isearch-backward)

;; buffers and windows
(global-set-key (kbd "C-ч щ") 'other-window)
(global-set-key (kbd "C-ч и") 'switch-to-buffer)
