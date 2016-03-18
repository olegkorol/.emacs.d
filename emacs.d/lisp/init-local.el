;;; init-local.el --- Oleg Korol's configurations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Commentary:						;;
;;							;;
;;    Emacs init file that uses my own configurations.  ;;
;;							;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;; Code:


;;;;;;;;;;;;;;;;;;;;;;;
;; Auto-start EMMET: ;;
;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set default size for Linum and solve resizing issues:  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100))

;; Add 3 spaces on left and thus align numbers to the right...

(setq linum-format (quote "%3d"))



(provide 'init-local)
;;; init-local.el ends here
