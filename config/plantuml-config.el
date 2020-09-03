;;; 
(use-package plantuml-mode
  :config
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-jar-path "/Users/apple/.emacs.d/tools/plantuml.jar")
  (setq plantuml-output-type "png"))

(setq plantuml-color-font-lock-keywords
      (let* (
	     (plantuml-keywords
	      '("note" "hide" "activate" "deactivate" "actor" "else"
		"end" "loop" "alt" "title" "skinparam" "left" "right" "participant" "break"))
	     (plantuml-arrow '("->" "-->" "<-" "<--"))
	     (plantuml-keywords-regexp (regexp-opt plantuml-keywords 'words))
	     (plantuml-arrow-regexp (regexp-opt plantuml-arrow 'works)))
	`(
	  (,plantuml-keywords-regexp . font-lock-keyword-face)
	  (,plantuml-arrow-regexp . font-lock-function-name-face)
	  )))



(font-lock-add-keywords 'plantuml-mode plantuml-color-font-lock-keywords)


(provide 'plantuml-config)

