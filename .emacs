(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq js-indent-level 4)
(setq css-indent-offset 4)
(setq sgml-basic-offset 4)

(defun my-html-mode-hook ()
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (define-key html-mode-map (kbd "C->") 'sgml-close-tag))

(add-hook 'html-mode-hook 'my-html-mode-hook)

(add-hook 'html-mode-hook
  (lambda ()
    ;; Default indentation is usually 2 spaces, changing to 4.
    (set (make-local-variable 'sgml-basic-offset) 4)))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")
(custom-set-variables '(solarized-termcolors 256))

(setq solarized-default-background-mode 'dark)

(load-theme 'solarized t)

(defun set-background-mode (frame mode)
  (set-frame-parameter frame 'background-mode mode)
  (when (not (display-graphic-p frame))
    (set-terminal-parameter (frame-terminal frame) 'background-mode mode))
  (enable-theme 'solarized))

(defun switch-theme ()
  (interactive)
  (let ((mode  (if (eq (frame-parameter nil 'background-mode) 'dark)
                   'light 'dark)))
    (set-background-mode nil mode)))

(add-hook 'after-make-frame-functions
          (lambda (frame) (set-background-mode frame solarized-default-background-mode)))

(set-background-mode nil solarized-default-background-mode)

(global-set-key (kbd "C-c t") 'switch-theme)