(defsystem "my-stumpwm-config"
  :depends-on ("stumpwm"
               "ttf-fonts"
               "micros"
               "battery-portable")
  :components ((:file "package")
               (:file "style")
               (:file "modeline")
               (:file "commands")
               (:file "keybinds")
               (:file "groups")
               (:file "font")
               (:file "main")))
