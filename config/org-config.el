(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (setq org-plantuml-jar-path (expand-file-name "/Users/apple/.emacs.d/tools/plantuml.jar"))
  )

(use-package plantuml-mode
  :ensure t
  :config
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-jar-path "/Users/apple/.emacs.d/tools/plantuml.jar")
  (setq plantuml-output-type "svg"))

(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))
(defun my-insert-return-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (newline))	
(define-key plantuml-mode-map (kbd "<tab>") 'my-insert-tab-char)
(define-key plantuml-mode-map (kbd "<return>") 'newline)
(require 'org)

(require 'org-tempo)

(setq org-confirm-babel-evaluate nil)

(setq org-latex-pdf-process
      (let
	  ((cmd (concat "pdflatex -shell-escape -interaction nonstopmode"
			" --synctex=1"
			" -output-directory %o %f")))
	(list cmd
	      "cd %o; if test -r %b.idx; then makeindex %b.idx; fi"
	      "cd %o; bibtex %b"
	      cmd
	      cmd)))

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   `((R . t)
     (ditaa . t)
     (dot . t)
     (emacs-lisp . t)
     (gnuplot . t)
     (haskell . nil)
     (latex . t)
     (ledger . t)
     (ocaml . nil)
     (octave . t)
     (python . t)
     (ruby . t)
     (screen . nil)
     (shell . t)
     (sql . t)
     (sqlite . t)
     (plantuml . t))))

(provide 'org-config)
;;; org-config.el ends here
