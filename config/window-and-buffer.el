(define-key global-map (kbd "M-<left>") 'previous-buffer)
(define-key global-map (kbd "M-<right>") 'next-buffer)

(use-package zoom-window
  :bind
  ("C-c w" . zoom-window-zoom))
(provide 'window-and-buffer)
;;; window-and-buffer.el ends here.
