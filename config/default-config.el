;; vuvth - Vu Vo Thanh
;; configure default for emacs
;; include theme, buffer, window, bar mode ...
;; next time i will add more comment and make clear and clean funcional
;;
;; why not Gia Binh ? i dont know. :'(
;; =================================
;; Its a bad man's world
;; Its a bad man's world
;; Im a bad, bad girl
;; Its a bad man's world
;; =================================


(global-hl-line-mode +1)

(tool-bar-mode -1)

(toggle-scroll-bar -1)

(fringe-mode '(8 . 0))

(setq-default indicate-empty-lines t)

;; (use-package gruvbox-theme
;;   :ensure t
;;   :config
;;   (load-theme 'gruvbox t))

;; (load-theme 'manoj-dark t)
 ;; (set-face-attribute hl-line-face nil :foreground nil :background "gray25")

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

;; (use-package moe-theme
;;   :ensure t
;;   :config
;;   (setq moe-theme-highlight-buffer-id nil)
;;   (load-theme 'moe-light t))

;; (use-package twilight-theme
;;   :ensure t
;;   :config
;;   (load-theme 'twilight t))

;; Set default font
(set-face-attribute 'default nil
                    :family "Andale Mono"
                    :height 120
                    :weight 'normal
                    :width 'normal)

1;; (use-package telephone-line
;;   :ensure t
;;   :config
;;   (telephone-line-mode 1))


(setq inhibit-startup-message t)

;; Display startup message
(setq initial-scratch-message
"
I give up everything or I will have nothing
  
   You, you, you're the one who comes and breaks the rule
   breaks the rule
   I, I, I have always been acting a fool
   and I know it's not cool
   choose ego over u
   even I know the truth
   I love you

   Don't care, don't hear
   what they say, they do 
   to your life, your story.

   You might not... be the first, or the last, but the best...

                                                         Han Han
")



(setq-default cursor-type 'box)
(blink-cursor-mode +1)

(setq scroll-conservatively most-positive-fixnum)


(provide 'default-config)
