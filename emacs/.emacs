(put 'upcase-region 'disabled nil)
(load "~/.emacs.d/init.el")
(require 'package)


(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))
(package-initialize)

(require 'use-package)
(use-package org
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))
