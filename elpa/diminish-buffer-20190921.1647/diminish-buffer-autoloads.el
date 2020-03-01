;;; diminish-buffer-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "diminish-buffer" "diminish-buffer.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from diminish-buffer.el

(autoload 'diminish-buffer-clean "diminish-buffer" "\
Do the diminish action for `buffer-menu'.

\(fn)" t nil)

(defvar diminish-buffer-mode nil "\
Non-nil if Diminish-Buffer mode is enabled.
See the `diminish-buffer-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `diminish-buffer-mode'.")

(custom-autoload 'diminish-buffer-mode "diminish-buffer" nil)

(autoload 'diminish-buffer-mode "diminish-buffer" "\
Minor mode 'diminish-buffer-mode'.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diminish-buffer" '("diminish-buffer-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; diminish-buffer-autoloads.el ends here
