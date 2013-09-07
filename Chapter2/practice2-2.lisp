(defun make-point (x y)
  (cons x y))

(defun make-line (s e)
  (cons s e))

(defun start-seg (l)
  (car l))

(defun end-seg (l)
  (cdr l))

(defun get-x (p)
  (car p))

(defun get-y (p)
  (cdr p))

(defun mid-point (l)
  (make-point (/ (+ (get-x (end-seg x)) (get-x (start-seg x))) 2)
              (/ (+ (get-y (end-seg x)) (get-y (start-seg x))) 2)))

(defun print-point (p)
  (format *standard-output* "(~A,~A)~%" (get-x p) (get-y p)))
