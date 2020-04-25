(require 'cl-lib)
(require 'company)


(defvar sample-completions
  '("as" "assert" "break" "case" "catch" "class" "const" "continue"
    "def" "default" "do" "else" "enum" "extends" "false" "finally" "for"
    "goto" "if" "implements" "import" "in" "instanceof" "interface" "new"
    "null" "package" "return" "super" "switch" "this" "throw" "throws"
    "trait" "true" "try" "var" "while"))


 
(defun company-groovy (command &optional arg &rest ignored)
  (interactive (list 'interactive))
  
  (cl-case command
    (interactive (company-begin-backend 'company-groovy))
    (prefix (and (eq major-mode 'groovy-mode)
                 (company-grab-symbol)))
    (candidates
     (let* (
	   (words (company-dabbrev--search (company-dabbrev--make-regexp)
                                            company-dabbrev-time-limit
                                            (pcase nil
                                              (`t (list major-mode))
                                              (`all `all))))
	     (potential-word (delete-dups (append sample-completions words))))
     (all-completions arg potential-word))
     )))
  

(add-to-list 'company-backends 'company-groovy)


(provide 'gradle-company)

