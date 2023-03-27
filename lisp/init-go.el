;;; init-go.el --- Support for working with golang -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (require 'init-eglot)
(when (maybe-require-package 'go-mode)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook #'gofmt-before-save)

  (when (maybe-require-package 'go-eldoc)
    (add-hook 'go-mode-hook 'go-eldoc-setup)
    (setq eldoc-idle-dealy 2))

  (with-eval-after-load "go-mode"
    (with-eval-after-load "project"
      (defun project-find-go-module (dir)
        (when-let ((root (locate-dominating-file dir "go.mod")))
          (cons 'go-module root)))
      (cl-defmethod project-root ((project (head go-module)))
        (cdr project))
      (add-hook 'project-find-functions #'project-find-go-module)))

  ;;(add-hook 'go-mode-hook #'eglot-ensure)
  ;; (setq eglot-ignored-server-capabilites '(:documentHighlightProvider)
  ;;       read-process-output-max (* 1024 1024))
  ;; (setq-default eglot-workspace-configuration
  ;;     '((:gopls .
  ;;         ((staticcheck . t)
  ;;          (matcher . "CaseSensitive"))))))

  )

(provide 'init-go)
;;; init-go.el ends here
