(load "rbg.l")

(defmethod mutation-demo ()
  (let ((s (rbg-string)))
    (dotimes (i 10)
      (let ((m (mutation s)))
        (format t "s = ~A~%"   s)
        (format t "m = ~A~%~%" m)))))

(defmethod crossover-demo ()
  (let ((m (rbg-string))
        (f (rbg-string)))
    (dotimes (i 10)
      (let ((x (crossover m f)))
        (format t "m = ~A~%"   m)
        (format t "f = ~A~%"   f)
        (format t "x = ~A~%~%" x)))))
