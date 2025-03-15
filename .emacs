(require 'package)
;; add MELPA package archive
(add-to-list 'package-archives
	     '("melpa-stable"
	       . "https://stable.melpa.org/packages/") t)

;; specify to `load' where to find elisp files
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; Setup custom Custom file :)
(setq custom-file "~/.emacs.d/elisp/custom.el")
(load custom-file)

(defvar rc/features '(rc/prog rc/keys rc/navig rc/general)
  "List of files to load providing my personal customizations.
prog    --- make programming more pleasant
navig   --- navigation related stuff
keys    --- customizing key bindings not related to navigation
general --- general configuration items")

(dolist (ftr rc/features)
  (require ftr (concat (substring (symbol-name ftr) 3) ".el")))
