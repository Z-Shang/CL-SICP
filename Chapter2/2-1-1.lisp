(defun make-rat (n d)
  (cons n d))

(defun numer (x)
  (car x))

(defun denom (x)
  (cdr x))

(defun add-rat (x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(defun sub-rat (x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(defun mul-rat (x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(defun div-rat (x y)
  (make-rat (* (numer x) (denom y))
            (* (numer y) (denom x))))

(defun equal-rat-p (x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(defun print-rat (x)
  (format *standard-output* "~%~A/~A" (numer x) (denom x)))
