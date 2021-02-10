;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Michel Aquino"
      user-mail-address "michelaquino@mailbox.org")

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-nova)
(setq doom-theme 'doom-dark+)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Load the recommended configuration
(use-package evil-multiedit
 :defer 0
 :config
 (evil-multiedit-default-keybinds))

(use-package undo-tree)
