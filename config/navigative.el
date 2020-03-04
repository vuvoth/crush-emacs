;; emacs navigative
;; author vuvth

(setq mac-option-modifier 'super)

(use-package projectile
  :ensure t)
(projectile-mode +1)

(use-package counsel-projectile
  :ensure t)
(counsel-projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(show-paren-mode 1)
(setq show-paren-delay 0)

(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)

(use-package treemacs-projectile
  :ensure t)

(use-package restart-emacs
  :ensure t)


;; Config navigative for emacs


(when (eq system-type 'darwin)
  (require 'ls-lisp)
  (setq ls-lisp-use-insert-directory-program nil)
  (setq insert-directory-program "/bin/ls")
  ;; (setq dired-listing-switches "your settings"))
  )

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))


(defun vuvoth/ivy-format-function-arrow (cands)
  "Transform CANDS into a string for minibuffer."
  (ivy--format-function-generic
   (lambda (str)
     (concat " ->  " (ivy--add-face (concat  str "\n") 'ivy-current-match)))
   (lambda (str)
     (concat "     " str "\n"))
   cands
   ""))

(defun vuvoth/ivy-format-function-line (Cands)
  "Transform CANDS into a string for minibuffer."
  (ivy--format-function-generic
   (lambda (str)
     (ivy--add-face (concat  str "\n") 'ivy-current-match))
   (lambda (str)
     (concat str "\n"))
   cands
   ""))


(setcdr (assq t ivy-format-functions-alist) #'vuvoth/ivy-format-function-arrow)

(use-package smex
  :ensure t)
(use-package counsel
  :ensure t)
(global-set-key (kbd "M-s s") 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)

(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


(global-visual-line-mode t)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq mac-command-modifier 'meta)
(setq mac-right-option-modifier 'control)

(provide 'navigative)
