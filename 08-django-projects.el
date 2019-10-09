(defun mv-launch-masterbook () (interactive)
       (async-shell-command "c:/Users/mvezzoli/Documents/workspace/masterbook/runserver.bat")
       (browse-url "http://localhost:8008"))

(defun mv-launch-database () (interactive)
       (async-shell-command "c:/Users/mvezzoli/Documents/workspace/labdb2/runserver.bat")
       (browse-url "http://localhost:9009"))
