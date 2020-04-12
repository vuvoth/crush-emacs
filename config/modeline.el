(defvar kei/mode-line-git-edited-symbol " ++ "
  "show when git buffer modified")

(defvar kei/mode-line-git-up-to-date-symbol " -- "
  "show when git buffer up to date")

(defvar kei/mode-line-git-nothing-symbol ""
  "show when git buffer nothing")


(defun initial-mode-line()
  (setq auto-revert-check-vc-info t))
(initial-mode-line)

(defun get-git-status-of-buffer()
  (interactive)
  (let (
	(buffer-status nil)
	(current-buffle-file-name (buffer-file-name (current-buffer)))
	
	)
    (if (not (equal current-buffle-file-name nil))
      (setq buffer-status (vc-state (buffer-file-name (current-buffer))))
      )
    buffer-status
  ))

(get-git-status-of-buffer)
(defun modeline-git-status ()
  (interactive)
  (let ((
			    
	 file-status (get-git-status-of-buffer)
	 ))
    
    (if (string-equal file-status "edited")
	(setq file-status 'kei/mode-line-git-edited-symbol)
      (if (string-equal file-status "up-to-date")
	  (setq file-status 'kei/mode-line-git-up-to-date-symbol)
	  (setq file-status 'kei/mode-line-git-nothing-symbol))
      )
    
    (if  (vc-mode)
	file-status
      (setq file-status "not git control"))
    file-status))

(modeline-git-status)

(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT aligned respectively."
  (let* ((available-width (- (window-total-width) (+ (length (format-mode-line left)) (length (format-mode-line right))))))
    (append left (list (format (format "%%%ds" available-width) "")) right)
    )
  )



(setq left-mode-line
      (list
       " "
       mode-line-mule-info
       ":"
       mode-line-modified
       
       " ("
       mode-name
       " - line %l"
       ")"
       " "
       mode-line-buffer-identification
       ))


(setq-default
 mode-line-format
 '(:eval
   (simple-mode-line-render
    ;; left
    (quote ( "" left-mode-line  ))
    ;; right
    (quote (
      (:eval (when-let (vc vc-mode)
               (list 
                (propertize (substring vc 5)
                            ))))
      
      (:eval (modeline-git-status))
      
      ))
    )))


(provide 'modeline)
;;; modelines ends here.
