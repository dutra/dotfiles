;; .emacs.d                                                 
(setq load-path (cons "~/.emacs.d" load-path))

;; paren matching                                           
(show-paren-mode 1)

;; auto ident                                            
(define-key global-map (kbd "RET") 'newline-and-indent)

;; ident whole buffer                                                                                                                                                
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; ido
(require 'ido)
(ido-mode t)

;; ruby reloaded
(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

(setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))
(require 'rails-autoload)

;; ruby hooks
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
(add-to-list 'auto-mode-alist '("\\.js.erb\\'" . javascript-mode))

;; save emacs backups to local folder
(setq backup-directory-alist `(("~" . ".saves")))

;; use penguin key as meta
(setq x-super-keysym 'meta)

;; jade-mode and sws-mode
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . jade-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))


;; color themes
(require 'color-theme)
(eval-after-load "color-theme"
    '(progn
            (color-theme-initialize)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-atelierforest-light)))
 '(custom-safe-themes (quote ("4da1f877d6bef66f8ed0a268b2e29999e36f1a3f910d163cad98388588738188" "da7c04cdc89cb0a3e5139ab8c17f9b7ba59c9e34ee6cbf17dea4a7da7d93d771" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
