(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(defvar my-packages '(better-defaults 
                      projectile
                      emacs-eclim))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/noctilux-theme")
(load-theme 'noctilux t)

(require 'eclim)
(global-eclim-mode)

(require 'eclimd)

(custom-set-variables
 '(eclim-eclipse-dirs '("/opt/eclipse"))
 '(eclim-executable '("~/.eclipse/org.eclipse.platform_4.5.2_1473617060_linux_gtk_x86_64/eclim")))

;; Display compilation error messages in the echo area
;; ...
