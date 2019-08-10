(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (alchemist elixir-mode erlang-mode erlang helm-projectile helm neotree cider ox-twbs magit slime-company slime company material-theme flycheck yasnippet-snippets yasnippet rainbow-mode hungry-delete beacon spaceline projectile pretty-mode rainbow-delimiters-mode clojure-mode material which-key use-package try spacemacs-theme org-bullets gotham-theme darktooth-theme counsel ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((((type graphic)) :foreground "#d3ebe9" :background "#0a3749") (((type tty)) :foreground "brightwhite" :background "brightblue"))))
