(in-package :my-stumpwm-config)

(pushnew (namestring (asdf:system-relative-pathname :my-stumpwm-config "./fonts/"))
         xft:*font-dirs*
         :test #'equal)

(add-hook *start-hook*
          (lambda ()
            (xft:cache-fonts)

            (set-font
             (list
              (make-instance
               'xft:font
               :family "PlemolJP Console HS"
               :subfamily "Regular"
               :size 15)))

            (stumpwm::resize-mode-line (first stumpwm::*mode-lines*))))
