(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
 )

(use-package plantuml-mode
  :ensure t)
(require 'org)

(require 'org-tempo)

(setq org-confirm-babel-evaluate nil)

(setq org-plantuml-jar-path (expand-file-name "/Users/apple/.emacs.d/tools/plantuml.jar"))
(setq plantuml-default-exec-mode 'jar)
(setq plantuml-jar-path "/Users/apple/.emacs.d/tools/plantuml.jar")
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))

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
     (plantuml . t)
     (python . t)
     (ruby . t)
     (screen . nil)
     (shell . t)
     (sql . t)
     (sqlite . t)
     (plantuml . t))))

(provide 'org-config)
