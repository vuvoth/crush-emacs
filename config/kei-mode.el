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

(defhydra hydra-move(:color pink)
  "hello"
  ("j" next-line)
  ("g" keyboard-quit)
  ("v" set-mark-command)
  ("k" previous-line)
  ("l" forward-char)
  ("h" backward-char)
  ("w" forward-word)
  ("b" backward-word)
  ("c" kill-ring-save)
  ("dd" kill-whole-line)
  ("C" kill-region)
  ("p" yank) 
  ("q" nil))

(define-minor-mode kei-mode
  "Kei mode interactive"
  :lighter "kei"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "M-m m") 'hydra-move/body)
	    (define-key map (kbd "M-m w") 'hydra-window/body)
            map)
  (which-key-mode -1))

(kei-mode +1)
(provide 'kei-mode)
