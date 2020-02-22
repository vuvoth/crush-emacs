(add-hook 'prog-mode-hook 'linum-mode)
(global-hl-line-mode +1)

(tool-bar-mode -1)

(toggle-scroll-bar -1)
(menu-bar-mode -1)
(load-theme 'doom-dracula t)

(doom-modeline-mode +1)
(setq linum-format "%3d ")

(fringe-mode '(4 . 0))
;; Set default font
(set-face-attribute 'default nil
                    :family "Fira Code"
                    :height 120
                    :weight 'normal
                    :width 'normal)
(require 'neotree)
(global-set-key (kbd "M-s f") 'neotree-toggle)

;; (set-face-attribute 'hl-line nil :inherit t :background "sky blue")

;;Neotree 
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))



;; Display startup message
(setq initial-scratch-message
"
*I give up everything or I will have nothing*
  
   /You, you, you're the one who comes and breaks the rule/
   /breaks the rule/
   /I, I, I have always been acting a fool/
   /and I know it's not cool/
   /choose ego over u/
   /even I know the truth/
   /I love you/

   /Don't care, don't hear/
   /what they say, they do/ 
   /to your life, your story./

   *You might not... be the first, or the last, but the best...*

                                                         Infinity
")

(setq inhibit-startup-message t)

(setq initial-major-mode 'org-mode)
(setq org-hide-emphasis-markers t)


(provide 'interface)
