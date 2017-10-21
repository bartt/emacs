(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(let ((packages '(ack magit scss-mode less-css-mode ruby-mode python-mode yasnippet
                      yaml-mode color-theme js2-mode editorconfig
                      dockerfile-mode multiple-cursors iy-go-to-char expand-region)))
     (package-initialize)
     (package-refresh-contents)
     (dolist (pkg packages)
       (unless (package-installed-p pkg)
         (package-install pkg))))
