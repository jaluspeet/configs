;; INITIALIZE
(require 'package)
(setq package-archives '
      (("nongnu" . "https://elpa.nongnu.org/nongnu/")
       ("melpa" . "https://melpa.org/packages/")
       ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;;; HOOKS
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'eglot-ensure)
(add-hook 'prog-mode-hook #'flymake-mode)

;; KEYBINDINGS
(keymap-global-set "C-c t" 'shell-pop)
(keymap-global-set "C-c c" 'compile)

;; SETTINGS
(load-theme 'modus-vivendi t)                                   ;; Load theme
(set-face-attribute 'default nil :font "Iosevka 17")            ;; Default font face
(set-face-attribute 'variable-pitch nil :font "Arial 19")       ;; Variable pitch font
(tool-bar-mode -1)                                              ;; Disable the tool bar
(scroll-bar-mode -1)                                            ;; Disable the scroll bars
(setq make-backup-files nil)                                    ;; No backups
(cua-mode t)                                                    ;; Enable CUA key bindings
(setq inhibit-startup-screen t)                                 ;; Disable splash screen
(electric-pair-mode t)                                          ;; Automatically pair parentheses
(setq confirm-kill-emacs #'yes-or-no-p)                         ;; Confirm exit
(defalias 'yes-or-no #'y-or-n-p)                                ;; Confirm with y/n
(setq window-resize-pixelwise t)                                ;; Resize window by pixel
(setq frame-resize-pixelwise t)                                 ;; Resize frame by pixel
(set-fringe-mode 0)                                             ;; Disable padding
(setq tab-always-indent 'complete)                              ;; TAB indent and complete
(save-place-mode t)                                             ;; Resume session
(savehist-mode t)                                               ;; Save history
(recentf-mode t)                                                ;; Recent files mode
(setq ns-alternate-modifier 'meta)                              ;; Alternate mod key
(setq ns-right-alternate-modifier 'none)                        ;; Disable right meta key
(setq custom-file (locate-user-emacs-file "custom.el"))         ;; Store automatic customisation options elsewhere

;;; LANGUAGES
(use-package csharp-mode)                                      ;; C#
(use-package go-mode)                                          ;; Go
(use-package json-mode)                                        ;; JSON
(use-package kotlin-mode)                                      ;; Kotlin
(use-package lua-mode)                                         ;; Lua
(use-package nasm-mode)                                        ;; NASM
(use-package rust-mode)                                        ;; Rust
(use-package yaml-mode)                                        ;; YAML
(use-package markdown-mode)                                    ;; Markdown

;;; PACKAGES
(use-package which-key                                         ;; which-key
   :init (which-key-mode))

(use-package direnv                                            ;; direnv
 :config
 (direnv-mode))

(use-package mood-line                                         ;; mood-line
  :init (mood-line-mode 1))

(use-package vertico                                           ;; vertico
  :init (vertico-mode 1))

(use-package shell-pop                                         ;; shell-pop
  :config (setq shell-pop-window-position "full"))

(use-package evil                                              ;; evil
  :demand t
  :bind (("<escape>" . keyboard-escape-quit))
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection                                   ;; evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package corfu                                             ;; corfu
  :demand t
  :custom
  (corfu-auto t)
  :init
  (global-corfu-mode))

(use-package yasnippet                                         ;; yasnippet
  :diminish yas-minor-mode
  :hook (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all))

(use-package yasnippet-snippets                                ;; yasnippet-snippets
  :defer t
  :after yasnippet)
