(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(setq package-archive-priorities '(("melpa" . 10)
				                   ("gnu" . 5)
				                   ("nongnu" . 2)))

(package-initialize)
(package-install 'eglot)

;; During investigation, it looks like this was the problem
(setq lisp-indent-function 'common-lisp-indent-function)

;; If I instead have
;; (setq lisp-indent-function 'lisp-indent-function)
;; Then things seem to work as expected
