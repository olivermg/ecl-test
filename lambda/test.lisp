
(export '(fib main))

(defun fib (fn)
    (fn 1 2))

(defun main ()
  (fib (lambda (a b) (+ a b))))

