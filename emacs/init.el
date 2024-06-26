;; Disable the initial startup message
(setq inhibit-startup-message t)

;; Enable line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; Customize line numbers appearance
(set-face-attribute 'line-number nil
                    :foreground "gray"
                    :background "black"
                    :weight 'bold)
(set-face-attribute 'line-number-current-line nil
                    :foreground "yellow"
                    :background "black"
                    :weight 'bold)

;; Hide menu, tool, and scroll bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Keybindings
(global-set-key (kbd "<f5>") 'revert-buffer)         ;; Refresh buffer
(global-set-key (kbd "<f3>") 'org-export-dispatch)   ;; Export org mode
(global-set-key (kbd "<f6>") 'eshell)                ;; Open eshell
(global-set-key (kbd "<f7>") 'ranger)                ;; Open ranger
(global-set-key (kbd "<f8>") 'magit)                 ;; Open magit

;; Evil mode powerline
(use-package powerline-evil
  :ensure t)
(powerline-evil-vim-theme)
(powerline-evil-vim-color-theme)

;; Highlight the current line
(global-hl-line-mode t)

;; Load Dracula theme
(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

;; Enable beacon mode
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))

;; Try package for trying out new packages
(use-package try
  :ensure t)

;; Which-key for displaying possible keybindings
(use-package which-key
  :ensure t
  :config 
  (setq which-key-idle-delay 0.3)
  (setq which-key-popup-type 'frame)
  (which-key-mode)
  (which-key-setup-minibuffer)
  (set-face-attribute 'which-key-local-map-description-face nil 
                      :weight 'bold))

;; Magit for Git integration
(use-package magit
  :ensure t)

;; Flycheck for syntax checking
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

;; Auto-complete for text completion
(use-package auto-complete
  :ensure t
  :config 
  (ac-config-default))

;; Emmet mode for HTML and CSS
(use-package emmet-mode
  :ensure t
  :config 
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'css-mode-hook  'emmet-mode)) ;; Enable Emmet's CSS abbreviation

;; Markdown mode
(global-set-key (kbd "C-c m") 'markdown-mode)
(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; RestClient for testing REST APIs
(use-package restclient
  :ensure t)

;; Enable visual line mode for soft line wrapping
(global-visual-line-mode t)

;; Set fringe mode for side spacing
(set-fringe-mode 10)

;; Organize backups
(setq backup-directory-alist `(("." . "~/.save")))

;; Neotree for file tree
(use-package neotree
  :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind (("C-\\" . 'neotree-toggle)))

;; Pyenv for Python virtual environments
(use-package pyvenv
  :ensure t
  :config
  (pyvenv-mode 1))

;; Web mode for HTML, CSS, and JavaScript
(use-package web-mode
  :ensure t
  :mode ("\\.html?\\'" "\\.css?\\'" "\\.js?\\'"))

;; Org mode configuration for languages
(unless (package-installed-p 'ob-ipython)
  (package-install 'ob-ipython))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (ipython . t)))
   