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
  (setq plantuml-jar-path "/Users/apple/.emacs.d/tools/plantuml.jar"))
(require 'org)

(require 'org-tempo)

(setq org-confirm-babel-evaluate nil)




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
