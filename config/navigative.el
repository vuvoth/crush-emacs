;; emacs navigative
;; author vuvth

(use-package ace-window
  :ensure t
  :bind
  ("M-o" . ace-window))


(use-package goto-line-preview
  :ensure t
  :config
  (global-set-key [remap goto-line] 'goto-line-preview))

(setq mac-option-modifier 'super)

(when (eq system-type 'darwin)
  (require 'ls-lisp)
  (setq ls-lisp-use-insert-directory-program nil)
  (setq insert-directory-program "/bin/ls")
  ;; (setq dired-listing-switches "your settings"))
  )

(show-paren-mode 1)
(setq show-paren-delay 0)

(electric-pair-mode 1)



(use-package projectile
  :ensure t)
(projectile-mode +1)



(use-package restart-emacs
  :ensure t)


;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq mac-command-modifier 'meta)
(setq mac-right-option-modifier 'control)


(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

(provide 'navigative)

(global-visual-line-mode t)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq mac-command-modifier 'meta)
(setq mac-right-option-modifier 'control)


(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

(provide 'navigative)
