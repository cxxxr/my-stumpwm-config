(in-package :my-stumpwm-config)

(setf stumpwm:*mode-line-highlight-template* "^[^78~A^]")
(setf stumpwm:*window-format* "%m%n%s%20t")

(setf battery-portable::*no-battery-info* "")

(setf stumpwm:*screen-mode-line-format*
      (list "^7"
            "^B"
            '(:eval (run-shell-command "date '+%R %F %a'|tr -d [:cntrl:]" t))
            " [%B]"
            "   %g   "
            "%W"
            "^b"))

(unless (stumpwm::head-mode-line (current-head))
  (toggle-mode-line (current-screen) (current-head)))
