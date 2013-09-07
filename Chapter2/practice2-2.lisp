(defun make-point (x y)
  (cons x y))

(defun make-line (s e)
  (cons s e))

(defun start-seg (x)
  (car x))

(defun end-seg (x)
  (cdr x))

(defun get-x (x)
  (car x))

(defun get-y (x)
  (cdr x))

(defun mid-point (x)
  (make-point (/ (+ (get-x (end-seg x)) (get-x (start-seg x))) 2)
              (/ (+ (get-y (end-seg x)) (get-y (start-seg x))) 2)))
