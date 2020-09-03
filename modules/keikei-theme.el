;; kei kei theme
;; 

(add-to-list 'custom-theme-load-path "~/.emacs.d/modules/")

(deftheme keikei
  "Demo theme")

(custom-theme-set-faces
 'keikei
 '(default ((t (:background "#d9d8d0" :foreground "black"))))
 '(hl-line ((t (:background "#ebdfa4" :foreground nil))))
 '(font-lock-comment-face ((t ( :foreground "blue")))))

(provide 'keikei-theme)
