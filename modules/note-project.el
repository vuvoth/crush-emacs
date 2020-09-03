(defun open-note()
  (interactive)
  (find-file "~/Desktop/Note/petrinet.org"))

(define-key global-map (kbd "C-c n") 'open-note)
(provide 'note-project)
