;; emacs navigative
;; author vuvth

(use-package ace-window
  :ensure t
  :config
  (ace-window-display-mode)
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
(setq electric-pair-preserve-balance nil)


(use-package projectile
  :ensure t)
(projectile-mode +1)



(use-package restart-emacs
  :ensure t)


(use-package helm-projectile
  :ensure t
    :bind ("C-c p h" . helm-projectile))
;; ;; Config navigative for emacs

;; (use-package ivy
;;   :ensure t
;;   :config
;;   (ivy-mode 1))


;; (defun vuvoth/ivy-format-function-arrow (cands)
;;   "Transform CANDS into a string for minibuffer."
;;   (ivy--format-function-generic
;;    (lambda (str)
;;      (concat " ->  " (ivy--add-face (concat  str "\n") 'ivy-current-match)))
;;    (lambda (str)
;;      (concat "     " str "\n"))
;;    cands
;;    ""))

;; (defun vuvoth/ivy-format-function-line (Cands)
;;   "Transform CANDS into a string for minibuffer."
;;   (ivy--format-function-generic
;;    (lambda (str)
;;      (ivy--add-face (concat  str "\n") 'ivy-current-match))
;;    (lambda (str)
;;      (concat str "\n"))
;;    cands
;;    ""))


;; (set-face-attribute 'ivy-current-match nil :underline nil :foreground nil :background "gray15")

;; (setcdr (assq t ivy-format-functions-alist) #'vuvoth/ivy-format-function-arrow)

;; (use-package smex
;;   :ensure t)
;; (use-package counsel
;;   :ensure t)
;; (global-set-key (kbd "M-s s") 'swiper)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)

;; (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


(use-package helm
  :ensure t
  :config
  (helm-mode +1)
  ;; (require 'helm-config)
  (setq helm-split-window-inside-p t)
  (setq helm-use-frame-when-more-than-two-windows nil)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 30)
  (setq helm-display-buffer-default-height 23)
  (setq helm-default-display-buffer-functions '(display-buffer-in-side-window))
  (helm-autoresize-mode 1)
  :bind
  ("C-x C-f" . helm-find-files)
  ("M-x" . helm-M-x)
  ("C-x b" . helm-mini))

(use-package helm-swoop
  :ensure t
  :bind
  ("M-s s" . helm-swoop))
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
