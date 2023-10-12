(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(setq frame-title-format
      '(:eval
        (if (buffer-file-name)
            (abbreviate-file-name (buffer-file-name))
          "%b")))

(column-number-mode t)

(setq-default indent-tabs-mode nil)

;; package.el
(require 'package)
(add-to-list
  'package-archives
  '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list
  'package-archives
  '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
