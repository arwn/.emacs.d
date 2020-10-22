;;; Packages

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package ivy
  :ensure
  :diminish ivy-mode
  :config
  (ivy-mode))

(use-package counsel
  :ensure
  :diminish counsel-mode
  :config
  (counsel-mode))

(use-package swiper
  :ensure
  :config
  (global-set-key "\C-s" 'swiper))

(use-package magit
  :ensure)

(use-package flycheck
  :ensure
  :diminish flycheck-mode
  :config
  (global-flycheck-mode))

(use-package company
  :ensure
  :diminish company-mode
  :config
  (global-company-mode))

(use-package which-key
  :ensure
  :config
  (which-key-mode))

;;; language specific configs
(use-package go-mode
  :ensure
  :config
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))

;;; face customizations

(use-package leuven-theme
  :ensure
  :config
  (load-theme 'leuven t)
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(use-package rainbow-delimiters
  :ensure
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(global-hl-line-mode 1)
(show-paren-mode t)

;;; misc

(setq-default frame-title-format '("%f"))
(setq make-backup-files nil)
(global-hl-line-mode t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(delete-selection-mode t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
