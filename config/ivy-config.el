;; config ivy swiper and counsel for emacs

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


;; (set-face-attribute 'ivy-current-match nil :underline nil :foreground nil :background "gray15")

(setcdr (assq t ivy-format-functions-alist) #'vuvoth/ivy-format-function-arrow)

(use-package smex
  :ensure t)


(use-package counsel
  :ensure t
  :config
  (setq counsel-find-file-ignore-regexp
        (concat
         ;; File names beginning with # or .
         "\\(?:\\`[#.]\\)"
         ;; File names ending with # or ~
         "\\|\\(?:\\`.+?[#~]\\'\\)")))

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-mode +1))


(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

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


(provide 'ivy-config)
;;; ivy-config.el ends here.
