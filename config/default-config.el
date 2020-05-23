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
(require 'ivy)


(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode +1))
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))
(global-hl-line-mode +1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(fringe-mode '(4 . 2))

(use-package neotree
  :ensure t
  :config
  (setq neo-window-fixed-size nil)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(setq-default indicate-empty-lines t)

;; (use-package plan9-theme
;;   :ensure t
;;   :config
;;   (load-theme 'plan9 t))

;; (use-package gruvbox-theme
;;   :ensure t
;;   :config
;;   (load-theme 'gruvbox t))

;; (load-theme 'manoj-dark t)
 ;; (set-face-attribute hl-line-face nil :foreground nil :background "gray25")

;; (use-package dracula-theme
;;   :ensure t
;;   :config
;;   (load-theme 'dracula t))

;; (use-package moe-theme
;;   :ensure t
;;   :config
;;   (setq moe-theme-highlight-buffer-id nil)
;;   (load-theme 'moe-dark t))

;; (use-package twilight-theme
;;   :ensure t
;;   :config
;;   (load-theme 'twilight t))

;; (use-package color-theme-sanityinc-tomorrow
;;   :ensure t
;;   :config
;;   (load-theme 'sanityinc-tomorrow-eighties t))


;; (use-package color-theme-sanityinc-solarized
;;   :ensure t
;;   :config  
;;   (load-theme 'solarized-light t))




;; Set default font
(set-face-attribute 'default nil
                    :family "Monoid"
                    :height 110
                    :weight 'normal
                    :width 'normal)

;; (use-package telephone-line
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
