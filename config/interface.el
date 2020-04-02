;; vuvth - Vu Vo Thanh
;; configure interface for emacs
;; include theme, buffer, window, bar mode ...
;; next time i will add more comment and make clear and clean funcional
;;
;; why not Gia Binh ? i dont know. :'(
;; thủ vai ác nhé (-.-) 
;; =================================
;; Its a bad man's world
;; Its a bad man's world
;; Im a bad, bad girl
;; Its a bad man's world
;; =================================


(use-package anzu
  ;; show number text match with search test
  :ensure t
  :config
  (global-anzu-mode +1))

(use-package prettier-js
  :ensure t)

(require 'prettier-js)

(add-hook 'js2-mode-hook 'prettier-js-mode)

(use-package all-the-icons
  :ensure t)


(use-package treemacs
  :ensure t)


;; (add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; (add-hook 'markdown-mode-hook 'display-line-numbers-mode)
(global-hl-line-mode +1)


(tool-bar-mode -1)

(toggle-scroll-bar -1)


(use-package moe-theme
  :ensure t
  :config
  (setq moe-theme-highlight-buffer-id nil)
  (load-theme 'moe-light t))


;; (set-face-attribute 'hl-line nil :foreground nil :background "gray15")

(fringe-mode '(8 . 0))


;; Set default font
(set-face-attribute 'default nil
                    :family "Andale Mono"
                    :height 120
                    :weight 'normal
                    :width 'normal)

(use-package telephone-line
  :ensure t
  :config
  (telephone-line-mode 1))


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

(setq inhibit-startup-message t)

(setq-default cursor-type 'box)
(blink-cursor-mode +1)

(setq scroll-conservatively most-positive-fixnum)



(provide 'interface)
