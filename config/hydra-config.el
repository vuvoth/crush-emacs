(use-package hydra
  :ensure t
  :bind
  ("C-c C-w" . hydra-window/body))

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
  ("z" zoom-window-zoom)
  ("v" split-window-vertically)
  ("h" split-window-horizontally)
  ("f" delete-other-windows)
  ("c" delete-window)
  ("b" balance-windows)
  ("q" nil))

;; (define-key global-map (kbd "C-c C-w") 'hydra-window/body)

(provide 'hydra-config)
;;; hydra-config.el ends here.
