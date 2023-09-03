;;; init-cc.el --- Support for working with C/C++ -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'google-c-style)
(require-package 'clang-format)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'init-cc)
;;; init-cc.el ends here
