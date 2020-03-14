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


(use-package command-log-mode
  :ensure t)

(global-set-key (kbd "M-o r") 'restart-emacs)

(defun kei/open-git-root()
  (interactive)
  (find-file "~/Desktop/GitHub"))

(defun kei/open-emacs-config()
  (interactive)
  (find-file "~/.emacs.d/config"))

(global-set-key (kbd "M-s g") 'kei/open-git-root)
(global-set-key (kbd "M-s c") 'kei/open-emacs-config)

(provide 'utils)
