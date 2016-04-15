;;; init-local.el --- extra configurations
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Associate ac-js2-mode to javascript: ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'js2-mode-hook 'ac-js2-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set default size for Linum and solve resizing issues:  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100))

;; Add 3 spaces on left and thus align numbers to the right...

(setq linum-format (quote "%3d"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set default font and its size                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; set default font in initial window and for any new window
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-14"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-14"))))
 ((string-equal system-type "darwin") ; Mac OS X
  (when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-14"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-14"))))
 ((string-equal system-type "gnu/linux") ; linux
  (when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-14"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-14")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set default city names for WTTR.IN                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq wttrin-default-cities '("Munich" "Barcelona" "Los Angeles" "New York" "Brisbane"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Activate flycheck's fringes - left            INACTIVE ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;(setq flycheck-check-syntax-automatically '(save new-line)
;;flycheck-idle-change-delay 5.0
;;flycheck-display-errors-delay 0.9
;;flycheck-highlighting-mode 'symbols
;;flycheck-indication-mode 'left-fringe
;;'flycheck-fringe-bitmap-double-arrow
;;)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Activate Linum-mode for some major modes               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Don't turn on linum-mode by default, it crashes org-mode. Ok to
;; turn it on for various modes, however.
(require 'linum)
(global-set-key "\C-c l" 'linum-mode)

(defun enable-linum-mode ()
  (linum-mode t))

;; ----------------------------------------------------------------------
;; Automatically enable linum mode for various modes
(setq modes-to-hook-with-linum '(c-mode-hook
                                 csv-mode-hook
                                 emacs-lisp-mode-hook
                                 coffee-mode-hook
                                 feature-mode-hook
                                 java-mode-hook
                                 js-mode-hook
                                 javascript-mode-hook
                                 espresso-mode-hook
                                 haml-mode-hook
                                 lisp-mode-hook
                                 nxml-mode-hook
                                 php-mode-hook
                                 ruby-mode-hook
                                 sass-mode-hook
                                 scss-mode-hook
                                 sh-mode-hook
                                 text-mode-hook
                                 textile-mode-hook
                                 xml-mode-hook
                                 yaml-mode-hook))

(defun hook-linum-mode (mode)
  (add-hook mode 'enable-linum-mode))

(while modes-to-hook-with-linum
  (hook-linum-mode (car modes-to-hook-with-linum))
  (setq modes-to-hook-with-linum (cdr modes-to-hook-with-linum)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'init-local)
;;; init-local.el ends here
