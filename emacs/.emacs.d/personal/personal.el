;;; personal.el --- personal stuff to add to emacs prelude

;;; Commentary:
;;

;;; Code:

;; Adding pandoc-mode
(prelude-require-package 'pandoc-mode)

;; Adding packages
(prelude-require-packages
 '(
   julia-mode
   elpy
   pandoc-mode
   bazel
   yasnippet
   yasnippet-snippets
   multiple-cursors
   ))

;; yasnippet model
(yas-global-mode +1)

;; bind keys to the use features of the multiple cursor package
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; transparency!!
;; (set-frame-parameter (selected-frame) 'alpha '(90 . 50))
;; (add-to-list 'default-frame-alist '(alpha . (90 . 50)))

;; Add outline-minor-mode emacs
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)

;; Dictionary RFC 2229 and dictcc
(prelude-require-packages '(dictionary dictcc))

;; Disable the super keybindings
(setq prelude-super-keybindings nil)

;; Force formatting in go mode before save
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 2)))

(provide 'personal)

;;; personal.el ends here
