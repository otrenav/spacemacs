
(defconst own-sql-packages
  '(sql-indent))

(defun own-sql/post-init-sql-indent ()
  (use-package sql-indent
    :demand t
    :config
    (setq-default sqlind-indentation-offsets-alist
                  `((select-clause 0)
                    (insert-clause 0)
                    (delete-clause 0)
                    (update-clause 0)
                    (update-clause 0)
                    (select-table 0)
                    (select-join-condition 0)
                    ((in-select-clause "order by") ++)
                    (select-table-continuation sqlind-use-anchor-indentation +)
                    ,@sqlind-default-indentation-offsets-alist))

    ))
