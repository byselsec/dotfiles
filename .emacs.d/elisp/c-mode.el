;;
;; C-mode customizations
;;

(setq c-default-style
	  '((java-mode . "java")
		(python-mode . "python")
		(awk-mode . "awk")
		(other . "linux")))
(setq c-basic-offset 4
      c-tab-always-indent 'comments)
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'show-paren-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c-mode-hook
		  (lambda()
			(define-key c-mode-map "\C-ci" 'c-include-header)))

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

(defun c-include-header-near-regexp (header regexp type where)
  "Tries to insert HEADER before or after REGEXP starting from the beginning of the buffer. Possible values for WHERE: 'before or 'after.

Returns t if successfull, nil otherwise."
  (let ((hs (if type
	       ?\"
	      ?<))
	(he (if type
		?\"
	      ?>)))
    (save-excursion
      (when (progn (goto-char (point-min))
		   (re-search-forward regexp nil t))
	(goto-char (if (string-equal where 'before)
		       (match-beginning 0)
		     (match-end 0)))
	(newline)
	(forward-line -1)
	(insert "#include " hs header he)
	t)))

(defun c-include-header (header &optional arg)
  "Inserts a C preprocessor 'include' directive to include HEADER file. If ARG is
omitted or nil, header will be surrounded by '<>' brackets. Otherwise, it will be
surrounded by double quotes '\"\"'.

Algorithm for insertion is as follows:
1. Make an insertion right before the first 'include' statement.
2. Make an insertion before the first non-empty non-comment line, if previous failed.
3. Otherwise, fail."
  (interactive "sHeader: \nP")
  (cond ((c-include-header-near-regexp header "^\\s-*#\\s-*include .*$" arg 'before)
	 (message "Header '%s' successfully included" header))
	((c-include-header-near-regexp header "\\(?:\\(?:/\\*\\(?:[^*]\\|\\*[^/]\\)*\\*+/\\)\\|\\(?://.*\\)\\|[[:blank:]\n]\\)*" arg 'after)
	 (message "Header '%s' successfully included" header))
	(t (error "Can't insert header. Sorry"))))
