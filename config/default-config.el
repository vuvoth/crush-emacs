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


(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)  ;; buffernames that are foo<1>, foo<2> are hard to read. This makes them foo|dir  foo|otherdir

(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))

  ;; mocha seems to output some non-standard control characters that
  ;; aren't recognized by ansi-color-apply-on-region, so we'll
  ;; manually convert these into the newlines they should be.
  (goto-char (point-min))
  (while (re-search-forward "\\[2K\\[0G" nil t)
    (progn
      (replace-match "
")))
  (toggle-read-only))

(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(use-package undo-tree
  :config
  (global-undo-tree-mode +1))
(use-package beacon
  :config
  (beacon-mode 1))
(global-hl-line-mode +1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(fringe-mode '(8 . 2))

(use-package neotree
  :config
  (setq neo-window-fixed-size nil)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(setq-default indicate-empty-lines t)

(use-package minions
  :config (minions-mode 1))


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
(global-yascroll-bar-mode +1)
 ;; (custom-set-faces
 ;;     '(company-preview
 ;;       ((t (:foreground "darkgray" :underline t))))
 ;;     '(company-preview-common
 ;;       ((t (:inherit company-preview))))
 ;;     '(company-tooltip
 ;;       ((t (:background "lightgray" :foreground "black"))))
 ;;     '(company-tooltip-selection
 ;;       ((t (:background "steelblue" :foreground "white"))))
 ;;     '(company-tooltip-common
 ;;       ((((type x)) (:inherit company-tooltip :weight bold))
 ;;        (t (:inherit company-tooltip))))
 ;;     '(company-tooltip-common-selection
 ;;       ((((type x)) (:inherit company-tooltip-selection :weight bold))
 ;;        (t (:inherit company-tooltip-selection)))))

(provide 'default-config)
