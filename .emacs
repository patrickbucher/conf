(require 'package)
(add-to-list 'package-archives
         '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(racket-mode geiser-racket material-theme geiser-mit geiser)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq geiser-mit-binary "/usr/bin/scheme")
(setq geiser-racket-binary "/usr/bin/racket")
(setq geiser-active-implementations '(mit racket))
(add-to-list 'auto-mode-alist '("\\.rkt\\'" . geiser-mode))

(load-theme 'material t)
(global-display-line-numbers-mode)
