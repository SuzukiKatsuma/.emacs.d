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
