(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (setq org-plantuml-jar-path (expand-file-name "/Users/apple/.emacs.d/tools/plantuml.jar"))
  )

 (require 'org-tempo)
	

(require 'org)



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

(with-eval-after-load 'org (company-mode +1))

(provide 'org-config)
;;; org-config.el ends here
