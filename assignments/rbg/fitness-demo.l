(load "rbg.l")

(defmethod fitness-demo ()
  (let ((x (rbg-string)))
    (format t "x = ~A~%~%" x)
    (format t "Directly applying the fitness metrics ...~%")
    (format t "fitness-r = ~A~%" (fitness-r x))
    (format t "fitness-b = ~A~%" (fitness-b x))
    (format t "fitness-g = ~A~%~%" (fitness-g x))
    (format t "Indirectly applying the fitness metrics ...~%")
    (demo-indirect x #'fitness-r 'fitness-r)
    (demo-indirect x #'fitness-b 'fitness-b)
    (demo-indirect x #'fitness-g 'fitness-g)))

(defmethod demo-indirect ((x list) (fitness function) (name symbol))
  (format t "~A = ~A~%" name (funcall fitness x)))