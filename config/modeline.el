(defun g)
(setq-default mode-line-format
	      (list
	       ">>>"
	       '(:eval magit-show)
	       '(:eval (when-let (vc vc-mode)
                         (list " "
                               (propertize (substring vc 5)
                                           'face 'font-lock-comment-face)
                               " ")))
	        "  vo thanh vu "))
(vc-mode vc-mode)



(provide 'modeline)
;;; modelines ends here.
