(defun initial-mode-line()
  (setq auto-revert-check-vc-info t))
(initial-mode-line)

(defun modeline-git-status ()
  (interactive)
  (let ((
	 file-status (vc-state (buffer-file-name (current-buffer)))
	 ))
    
    (if (string-equal file-status "edited")
	(setq file-status " ++")
      (setq file-status " --"))
    
    (if vc-mode
	file-status
      (setq file-status "not git control"))
    file-status)
  )

(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT aligned respectively."
  (let* ((available-width (- (window-total-width) (+ (length (format-mode-line left)) (length (format-mode-line right))))))
    (append left (list (format (format "%%%ds" available-width) "")) right)
    )
  )



(setq left-mode-line
      (list
       mode-name
       " "
       mode-line-mule-info
       ":"
       mode-line-modified
       " "
       
       mode-line-buffer-identification
       " "
       
       ))

(setq right-mode-line
      (list
       '(:eval (when-let (vc vc-mode)
                 (list 
                  (propertize (substring vc 5)
                              'face 'font-lock-comment-face)
                  )))
       
       '(:eval (modeline-git-status))
       )
      )





(setq-default
 mode-line-format
 '(:eval
   (simple-mode-line-render
    ;; left
    (quote ("(Line %l) "  left-mode-line))
    ;; right
    (quote (
      (:eval (when-let (vc vc-mode)
               (list 
                (propertize (substring vc 5)
                            'face 'font-lock-highlighting-faces))))
      
      (:eval (modeline-git-status))
      
      ))
    )))





(provide 'modeline)

;;; modelines ends here.
