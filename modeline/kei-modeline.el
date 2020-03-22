;; Kei modeline
;; vuvoth / vuvth - Vu Vo Thanh
;; Simple mode line for keimacs

;; Hello, hello, hello, how low
;; Hello, hello, hello, how low
;; Hello, hello, hello, how low
;; Hello, hello, hello

(setq-default mode-line-format '("-" mode-line-modified " " mode-line-position mode-name    (vc-mode vc-mode) "-"))

