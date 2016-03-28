(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(defvar my-packages '(better-defaults
		      projectile))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/noctilux-theme")
(load-theme 'noctilux t)