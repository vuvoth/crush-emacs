;;; kei interactive
;;; move a round a round

;;; =================================
;;; Oh, I always let you down
;; You're shattered on the ground
;; But I still find you there
;; Next to me
;;
;; And oh, the stupid things I do
;; I'm far from good, it's true
;; But I still find you there
;; Next to me
;; =================================


(defhydra hydra-window(:hint nil :color pink)
  "
  Window and buffer manager                                                vuvoth
  ╭───────────────────────────────────────────────────────────────────────┴──────╯
   [_j_]: jump window                    [_z_]: zoom window            [_q_] :  quit
   [_v_]: split window vertically        [_h_]: split window horizontally 
   [_f_]: full window                    [_c_]: close window
   [_b_]: balance windows
"  
  ("j" ace-window)
  ("z" zoom-window-zoom :color blue)
  ("v" split-window-vertically)
  ("h" split-window-horizontally)
  ("f" delete-other-windows)
  ("c" delete-window)
  ("b" balance-windows)
  ("q" nil))

(defhydra hydra-move(:columns 6 :color pink)
  "Motion"
  ("x" counsel-M-x "M-x")
  ("j" next-line "down")
  ("g" keyboard-quit "cancel")
  ("v" set-mark-command "mark")
  ("k" previous-line "up")
  ("l" forward-char "left")
  ("h" backward-char "right")
  ("w" forward-word "next work")
  ("b" backward-word "back work")
  ("c" kill-ring-save "copy")
  ("dd" kill-whole-line "delete line")
  ("C" kill-region "cut")
  ("p" yank "paste") 
  ("q" nil "quit"))

(defhydra hydra-projectile (:colums 10 :color amaranth)
  "Projectile control"
  ("f" counsel-projectile-find-file "find file")
  ("ag" counsel-projectile-ag "search use ag")
  ("q" nil "quit"))

(define-minor-mode kei-mode
  "Kei mode interactive"
  :lighter "kei"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "M-m m") 'hydra-move/body)
	    (define-key map (kbd "M-m w") 'hydra-window/body)
	    (define-key map (kbd "M-m p") 'hydra-projectile/body)
            map)
  :global t)

(add-hook 'after-init-hook 'kei-mode)
(provide 'kei-mode)
