(defun mv-weekly-accountability () (interactive)
       (message-mail "ALL_AGROSSI_DIRECT_EMPLOYEE_REPORTS <all_agrossi_direct_employee_reports@micron.com>, ALL_FRIVA_EVENTUAL_EMPLOYEE_REPORTS <ALL_FRIVA_EVENTUAL_EMPLOYEE_REPORTS@micron.com>" "Utilizzo macchine laboratorio e wafer ricevuti")
       (message-goto-body)
       (insert "Ciao,
Riporto allegati i dati raccolti fino a settimana scorsa, sia per l'utilizzo dei banchi che per i wafer ricevuti
   Marco.
")
       (let
	   ((date-string (format-time-string "%Y%m%d")))
	 (dolist (chart (list "Functional" "Parametric" "WaferArrival" "DSID" "Bench"))
	   (let
	       ((attachment-string (concat "c:/TEMP/" chart "_" date-string "0930.pdf")))
	     (mml-attach-file attachment-string)))))
