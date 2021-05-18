(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(company-quickhelp-color-background "#D0D0D0")
 '(company-quickhelp-color-foreground "#494B53")
 '(cursor-type '(bar . 1))
 '(custom-enabled-themes '(monokai))
 '(custom-safe-themes
   '("d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" default))
 '(fci-rule-color "#3E4451")
 '(global-display-line-numbers-mode t)
 '(global-flycheck-mode t)
 '(hl-sexp-background-color "#1c1f26")
 '(indent-tabs-mode nil)
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(flycheck which-key emmet-mode monokai-theme web-mode use-package iedit format-all rainbow-delimiters smartparens ac-php auto-complete melpa-upstream-visit))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(tooltip-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a")))
 '(vc-annotate-very-old-color nil)
 '(web-mode-auto-quote-style 1))
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;;Web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Auto complete
(ac-config-default)

;;php-mode
(require 'php-mode)

(add-hook 'php-mode-hook
          '(lambda ()
             ;; Enable auto-complete-mode
             (auto-complete-mode t)

             (require 'ac-php)
             (setq ac-sources '(ac-source-php)))
	  'local-write-file-hooks
          '(lambda ()
             (delete-trailing-whitespace)
             nil))
(require 'smartparens-config)
;;(add-hook 'c-mode-hook #'smartparens-mode)
;;(add-hook 'web-mode-hook #'smartparens-mode)
(define-key smartparens-mode-map (kbd "M-(") 'sp-wrap-round)
(define-key smartparens-mode-map (kbd "M-[") 'sp-wrap-square)
(define-key smartparens-mode-map (kbd "M-{") 'sp-wrap-curly)

;;Rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; Toggle between PHP & HTML Helper mode.  Useful when working on
;; php files, that can been intertwined with HTML code
(define-key php-mode-map [f5] 'web-mode)
(define-key web-mode-map [f5] 'php-mode)
;; For smartparens
(defun my-web-mode-hook ()
  "Hooks for web mode."
  (setq web-mode-enable-auto-pairing nil)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-auto-indentation t)
  (setq web-mode-markup-indent-offset 1)
  (setq web-mode-css-indent-offset 1)
  (setq web-mode-code-indent-offset 1)
)

(add-hook 'web-mode-hook  'my-web-mode-hook)

(defun sp-web-mode-is-code-context (id action context)
  (and (eq action 'insert)
       (not (or (get-text-property (point) 'part-side)
                (get-text-property (point) 'block-side)))))

(sp-local-pair 'web-mode "<" nil :when '(sp-web-mode-is-code-context))

;; (require 'neotree)
;; (global-set-key [f8] 'neotree-toggle)
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; (setq neo-smart-open t)
