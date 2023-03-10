;;; init-php.el --- Support for working with PHP -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'php-mode)
  (maybe-require-package 'smarty-mode)
  (when (maybe-require-package 'company-php)
    (with-eval-after-load 'company
      (add-to-list 'company-backends 'company-ac-php-backend)))

  (add-hook 'php-mode-hook 'php-enable-psr2-coding-style))

(provide 'init-php)
;;; init-php.el ends here
