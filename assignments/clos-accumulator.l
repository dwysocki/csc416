(defclass accumulator ()
  ((value :accessor accumulator-value :initform 0)))

(defmethod inc ((a accumulator) (i number))
  (setf (accumulator-value a)
        (+ (accumulator-value a) i))
  nil)

(defmethod dec ((a accumulator) (i number))
  (setf (accumulator-value a)
        (- (accumulator-value a) i))
  nil)

(defmethod reset ((a accumulator))
  (setf (accumulator-value a) 0)
  nil)
