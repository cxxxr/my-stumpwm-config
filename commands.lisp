(in-package :my-stumpwm-config)

(defcommand group-next () ()
  (gnext)
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand group-prev () ()
  (gprev)
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand group-other () ()
  (gother)
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand groups-verbose () ()
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand new-group () ()
  (let ((num-groups (length (screen-groups (current-screen)))))
    (gnew (format nil "group-~d" num-groups))))

(defcommand shutdown () () (run-shell-command "systemctl poweroff"))
(defcommand reboot () () (run-shell-command "systemctl reboot"))
(defcommand suspend () () (run-shell-command "systemctl suspend"))

(defcommand external-display () ()
  (run-shell-command "xrandr --output eDP-1 --off")
  (run-shell-command "xrandr --output DP-3 --mode 3840x2160"))

(defcommand internal-display () ()
  ;; (run-shell-command "xrandr --output eDP-1 --mode 2880x1800")
  (run-shell-command "xrandr --output eDP-1 --mode 2880x1800")
  (run-shell-command "xrandr --output DP-3 --off"))

(defun display-backlight-value ()
  (stumpwm:message "backlight ~A" (run-shell-command "light -G" t)))

(defcommand backlight-up () ()
  (run-shell-command "light -A 1")
  (display-backlight-value))

(defcommand backlight-down () ()
  (run-shell-command "light -U 1")
  (display-backlight-value))
