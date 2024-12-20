(in-package :my-stumpwm-config)

(set-prefix-key (kbd "C-3"))

(define-key *top-map* (kbd "s-t") "display-info")

(define-key *root-map* (kbd "c") "terminal")
(define-key *root-map* (kbd "C-c") "terminal")
(define-key *top-map* (kbd "s-RET") "terminal")

(define-key *root-map* (kbd "b") "browser")
(define-key *top-map* (kbd "s-b") "browser")

(define-key *top-map* (kbd "s-n") "pull-hidden-next")
(define-key *top-map* (kbd "s-p") "pull-hidden-previous")
(define-key *top-map* (kbd "s-o") "fnext")
(define-key *top-map* (kbd "s-TAB") "fother")
(define-key *top-map* (kbd "s-d") "exec")
(define-key *top-map* (kbd "s-S") "hsplit")
(define-key *top-map* (kbd "s-s") "vsplit")
(define-key *top-map* (kbd "s-R") "remove")
(define-key *top-map* (kbd "s-r") "iresize")

(define-key *top-map* (kbd "s-N") "gnext")
(define-key *top-map* (kbd "s-P") "gprev")
(define-key *top-map* (kbd "s-O") "gother")
(define-key *top-map* (kbd "s-g") "groups-verbose")

(define-key *top-map* (kbd "s-G") "new-group")

(define-key *top-map* (kbd "M-TAB") "windowlist")
(define-key stumpwm::*menu-map* (kbd "TAB") 'stumpwm::menu-down)
(define-key stumpwm::*menu-map* (kbd "M-TAB") 'stumpwm::menu-down)

(define-key *top-map* (kbd "s-:") "eval")
(define-key *top-map* (kbd "s-;") "colon")
(define-key *top-map* (kbd "s-g") "abort")
(define-key *top-map* (kbd "s-k") "delete")

(define-key *top-map* (kbd "XF86MonBrightnessDown") "backlight-down")
(define-key *top-map* (kbd "XF86MonBrightnessUp") "backlight-up")

(define-key *top-map* (kbd "XF86AudioLowerVolume") "audio-volume-down")
(define-key *top-map* (kbd "XF86AudioRaiseVolume") "audio-volume-up")
