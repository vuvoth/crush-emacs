
;; Config navigative for emacs

;; (require 'ls-lisp)

(global-diff-hl-mode)


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


(setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-arrow)

(use-package smex
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

(global-company-mode +1)
(setq company-idle-delay 0.1)



(global-visual-line-mode t)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq mac-command-modifier 'meta)

(provide 'general-settings)
