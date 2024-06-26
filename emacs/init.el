;; Disable initial message

(setq inhibit-startup-message t) 

;; Line mode

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(set-face-attribute 'line-number nil
                    :foreground "gray"
                    :background "black"
                    :weight 'bold)
(set-face-attribute 'line-number-current-line nil
                    :foreground "yellow"
                    :background "black"
                    :weight 'bold)


;; Hide menu bar *

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Keybindings

(global-set-key (kbd "<f5>") 'revert-buffer)
(global-set-key (kbd "<f3>") 'org-export-dispatch)
(global-set-key (kbd "<f6>") 'eshell) 
(global-set-key (kbd "<f7>") 'ranger) 
(global-set-key (kbd "<f8>") 'magit)

;; Evil mode powerline

(use-package powerline-evil
  :ensure t)

(powerline-evil-vim-theme)
(powerline-evil-vim-color-theme)

(global-hl-line-mode t)

;; Theme

(use-package dracula-theme
        :ensure t
        :config
        (load-theme 'dracula t))

(use-package beacon 
   :ensure t
   :config
   (beacon-mode 1))

;; Try

(use-package try
  :ensure t)

;; Which-key

(use-package which-key
  :config 
    (setq which-key-idle-delay 0.3)
    (setq which-key-popup-type 'frame)
    (which-key-mode)
    (which-key-setup-minibuffer)
    (set-face-attribute 'which-key-local-map-description-face nil 
       :weight 'bold)
  :ensure t)

;; Magit

(use-package magit
  :ensure t)

;; Flycheck

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

;; Autocomplete

(use-package auto-complete
  :ensure t
  :config 
  (ac-config-default)
  )

;; Emmet-mode

(use-package emmet-mode
  :ensure t
  :config 
    (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
    (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
)

;; Markdown mode
(global-set-key (kbd "C-c m") 'markdown-mode)
(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; RestClient

(use-package restclient
  :ensure t)

;; Linhe bkeak

(global-visual-line-mode t)

;; Side edge spacing

(set-fringe-mode 10)

;; organize backups

(setq backup-directory-alist `(("." . "~/.save")))
(use-package neotree
  :ensure t
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle)))

;; Pyenv

(use-package pyvenv
  :ensure t
  :config
  (pyvenv-mode 1))

;; Web Package

(use-package web-mode
  :ensure t
  :mode ("\\.html?\\'" "\\.css?\\'" "\\.js?\\'"))


;; Org mode config languages
;(setq org-babel-python-command "python3")
(unless (package-installed-p 'ob-ipython)
  (package-install 'ob-ipython))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
  (ipython . t)))
