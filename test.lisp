(in-package :cl-user)

(export '(lispmain))

(defun blawurst (a b)
  (+ a b 1337))

(defun lispmain ()
  (blawurst 315 555))

