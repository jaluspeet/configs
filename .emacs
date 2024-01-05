;; INITIALIZE
(require 'package)
(setq package-archives '                                        ;; initialize repos
       (("elpa" . "https://elpa.gnu.org/packages/")             ;; ELPA - gnu
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")          ;; ELPA - non gnu
        ("melpa" . "https://melpa.org/packages/")))             ;; MELPA
(package-initialize)
(unless package-archive-contents  (package-refresh-contents))   ;; use-package
(unless (package-installed-p 'use-package)                      ;; for easier and better package management
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;;; HOOKS
(add-hook 'prog-mode-hook #'display-line-numbers-mode)          ;; show line numbers
(add-hook 'prog-mode-hook #'eglot-ensure)                       ;; lsp
(add-hook 'prog-mode-hook #'flymake-mode)                       ;; check errors

;; KEYBINDINGS
(keymap-global-set "C-c t" 'term)                               ;; launch a terminal
(keymap-global-set "C-c c" 'compile)                            ;; compile mode

;; SETTINGS
(load-theme 'modus-vivendi t)                                   ;; Load theme
(set-face-attribute 'default nil :font "Iosevka 18")            ;; Default font face
(set-face-attribute 'variable-pitch nil :font "Sans 16")        ;; Variable pitch font
(tool-bar-mode -1)                                              ;; Disable the tool bar
(scroll-bar-mode -1)                                            ;; Disable the scroll bars
(setq make-backup-files nil)                                    ;; No backups
(cua-mode t)                                                    ;; Enable CUA key bindings
(setq inhibit-startup-screen t)                                 ;; Disable splash screen
(electric-pair-mode t)                                          ;; Automatically pair parentheses
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
(use-package csharp-mode)                                       ;; C#
(use-package json-mode)                                         ;; JSON
(use-package nasm-mode)                                         ;; NASM
(use-package rust-mode)                                         ;; Rust
(use-package yaml-mode)                                         ;; YAML
(use-package markdown-mode)                                     ;; Markdown

;;; PACKAGES
(use-package which-key                                          ;; which-key
   :init (which-key-mode))                                      ;; shows you keybinds

(use-package direnv                                             ;; direnv
 :config                                                        ;; source .envrc files
 (direnv-mode))

(use-package mood-line                                          ;; mood-line
  :init (mood-line-mode 1))                                     ;; less cluttered modeline

(use-package vertico                                            ;; vertico
  :init (vertico-mode 1))                                       ;; command completion

(use-package evil                                               ;; evil
  :demand t                                                     ;; vim (bringing come sanity)
  :bind (("<escape>" . keyboard-escape-quit))
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection                                    ;; evil-collection
  :after evil                                                   ;; compatibility stuff for evil
  :ensure t
  :config
  (evil-collection-init))

(use-package corfu                                              ;; corfu
  :demand t                                                     ;; code completion engine
  :custom
  (corfu-auto t)
  :init
  (global-corfu-mode))

(use-package yasnippet                                          ;; yasnippet
  :diminish yas-minor-mode                                      ;; snippet engine
  :hook (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all))

(use-package yasnippet-snippets                                 ;; yasnippet-snippets
  :defer t                                                      ;; snippets collection
  :after yasnippet)
