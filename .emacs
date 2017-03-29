;; If you don't have MELPA in your package archives:
(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(load-theme 'atom-dark t)

(setq backup-directory-alist `(("." . "~/.saves")))

(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(add-hook 'haskell-mode-hook #'hindent-mode)
(add-hook 'after-init-hook 'global-company-mode)
;; (add-to-list 'company-backends 'company-ghc)

(add-to-list 'load-path "/Users/qabbasi/git/ghc-mod/elisp")
(setq ghc-debug t) ; enable debug logging
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "d9129a8d924c4254607b5ded46350d68cc00b6e38c39fc137c3cfb7506702c12" default)))
 '(package-selected-packages
   (quote
    (company-ghc hindent helm atom-dark-theme dracula-theme intero))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
