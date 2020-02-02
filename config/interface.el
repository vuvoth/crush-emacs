(global-linum-mode)
(global-hl-line-mode)
(tool-bar-mode -1)

(set-frame-font "Source Code Pro 12" nil t)
(toggle-scroll-bar -1)
(menu-bar-mode -1)
(load-theme 'gruvbox t)
;; (load-theme 'tango t)
(fringe-mode '(4 . 0))

(require 'neotree)
(global-set-key (kbd "M-s f") 'neotree-toggle)

;;Neotree 
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))


(provide 'interface)
