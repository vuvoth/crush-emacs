(require 'json)

(defun kei-run-json ()
  (interactive)
  (json-parse-string "{\"a\": 2}"))


(provide 'counsel-npm)
