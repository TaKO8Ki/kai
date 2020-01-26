;;;; launch.lisp --- File opener
;;;
;;; This code has been placed in the Public Domain.  All warranties
;;; are disclaimed.
;;;
;;; This file handles opening js files with system commands.

(in-package :cl-user)

(defpackage :kai.plotly.launch
  (:use :cl)
  (:import-from :kai.plotly.generate
                :check-file-exist))
(in-package :kai.plotly.launch)



;;;; Open browser
;;;
;;; When launching js file in the browser, we use system command
;;; to open browser.
(defun open-browser ()
  (let ((path-to-html (check-file-exist "index.html")))
    (trivial-open-browser:open-browser (namestring path-to-html))))
