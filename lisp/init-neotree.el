;;; init-neotree.el --- Support for project tree view -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package neotree
  :ensure t
  :bind ("<f8>" . neotree-toggle)
  :config
  (setq neo-theme 'arrow))

(provide 'init-neotree)
;;; init-neotree.el ends here
