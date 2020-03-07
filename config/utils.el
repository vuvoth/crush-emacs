(use-package google-this
  :ensure t
  :config
  (google-this-mode))

(defun kei/npm-search ()
  "Search for a NPM package at: https://www.npmjs.com"
  (interactive)
  
  (browse-url
   
   (format "https://www.npmjs.com/search?q=%s"
	   
           (url-hexify-string  (read-string "npm: "))
	   
           )))

(defun kei/open-youtube ()
  (interactive)
  (browse-url "https://www.youtube.com"))

(defun kei/open-local-server (port)
  "Open localhost server with `port`"
  (interactive "n Open at port: ")
  (browse-url
   (format "http://localhost:%s" port)
   ))


(provide 'utils)
