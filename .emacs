```emacs-lisp
(require 'package)
(defvar gnu '("gnu" . "https://elpa.gnu.org/packages/"))
(defvar melpa '("melpa" . "https://melpa.org/packages/"))
(defvar melpa-stable '("melpa-stable" . "https://stable.melpa.org/packages/"))
(defvar org-elpa '("org" . "http://orgmode.org/elpa/"))

(setq package-archives nil)
(add-to-list 'package-archives melpa-stable t)
(add-to-list 'package-archives melpa t)
(add-to-list 'package-archives gnu t)
(add-to-list 'package-archives org-elpa t)
(package-initialize)

(when (not package-archive-contents)

  (package-refresh-contents))

(defvar myPackages

  '(hc-zenburn-theme
    evil
    evil-leader
    evil-escape
    evil-surround
    linum-relative
    neotree
    yasnippet
    )

  )


(mapc #'(lambda (package)

          (unless (package-installed-p package)

            (package-install package)))

      myPackages)

(blink-cursor-mode -1)
(setq visible-cursor nil)
(menu-bar-mode -1)
(setq c-default-style "linux"
      c-basic-offset 8)
(electric-pair-mode 1)
(setq inhibit-startup-message t)

(load-theme 'hc-zenburn t)

(global-linum-mode t)

(custom-set-variables

 '(blink-cursor-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(hc-zenburn-theme evil-surround yasnippet-snippets yasnippet neotree linum-relative evil-leader evil-escape evil)))
(custom-set-faces

 '(default ((t (:family "FreeMono" :foundry "GNU " :slant normal :weight medium :height 158 :width normal))))
 '(font-lock-comment-face ((t (:foreground "#8CAC8C" :slant italic)))))
(require 'evil)
(evil-mode 1)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(setq-default evil-escape-key-sequence "kj")
(setq-default evil-escape-delay 0.2)
(require 'evil-escape)
(evil-escape-mode 1)
(require 'evil-surround)
(global-evil-surround-mode 1)
(require 'linum-relative)
(linum-relative-mode 1)
(setq linum-relative-backend 'display-line-numbers-mode)
(setq linum-relative-current-symbol "")
(setq linum-relative-format "%s ")
(require 'neotree)
    (add-hook 'neotree-mode-hook
              (lambda ()
                (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
                (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
                (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
                (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
                (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
                (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
                (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
                (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
                (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))
(global-set-key [f8] 'neotree-toggle)
(require 'yasnippet)
(yas-global-mode 1)
(require 'cc-mode)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
