;;; emacs meme install and config
;;; vuvth - Vu Vo Thanh


(add-to-list 'load-path "~/.emacs.d/elpa/meme")
(require 'meme)
(autoload 'meme "meme.el" "Create a meme from a collection" t)
(autoload 'meme-file "meme.el" "Create a meme from a file" t)

(provide 'emacs-meme)
