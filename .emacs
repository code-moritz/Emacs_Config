(require 'package)
(add-to-list 'package-archives
'("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((c-mode . "cc-mode") (c++-mode . "cc-mode") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(column-number-mode t)
 '(delete-selection-mode nil)
 '(global-linum-mode t)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(transient-mark-mode 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Set a proxy
;;(setq url-proxy-services '(("http" . "proxycn2.huawei.com:8080")))

;;Set global tags
(setq load-path (cons "~/.emacs.d/elpa/ggtags-0.8.4" load-path))           
(autoload 'gtags-mode "gtags" "" t)

;;enable gnu global-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))


(add-hook 'c-mode-common-hook
              (lambda ()
                (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
                  (ggtags-mode 1))))

;;Set yas
    (add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0")
    (require 'yasnippet)
    (yas-global-mode 1)

;;set company
 (add-to-list 'load-path "~/.emacs.d/elpa/company-0.8.0")
 (autoload 'company-mode "company" nil t)

;;set table width size
 (setq-default tab-width 4)

;;set emacs no need backup
(setq make-backup-files nil)

;;helm
(add-to-list 'load-path "~/.emacs.d/persional/helm-master")
(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-mini)
(helm-mode 1)

;;set ido-mode
(ido-mode 1)

;;ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;open sr speedbar automactic
 (require 'sr-speedbar)
 (global-set-key (kbd "s-s") 'sr-speedbar-toggle)

;;set hide or show mode
(add-hook 'c-mode-common-hook   'hs-minor-mode)
