; A stob containing a single array, of elements of any type.
;
; Copyright (C) 2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(defstobj array-stobj
  (elems :type (array t (1)) :initially nil :resizable t))

;; Returns the array-stobj.
(defun load-list-into-array-stobj-aux (list i len array-stobj)
  (declare (xargs :guard (and (true-listp list)
                              (natp i)
                              (natp len)
                              (equal len (elems-length array-stobj)))
                  :measure (nfix (- len i))
                  :stobjs array-stobj))
  (if (or (not (mbt (and (natp i)
                         (natp len))))
          (<= len i))
      array-stobj
    (let ((array-stobj (update-elemsi i (first list) array-stobj)))
      (load-list-into-array-stobj-aux (rest list) (+ 1 i) len array-stobj))))

;; Returns the array-stobj.
(defund load-list-into-array-stobj (list array-stobj)
  (declare (xargs :guard (true-listp list)
                  :stobjs array-stobj))
  (let* ((len (len list))
         (array-stobj (resize-elems len array-stobj)))
    (load-list-into-array-stobj-aux list 0 len array-stobj)))

;; Returns the list.
(defun extract-list-from-array-stobj-aux (i acc array-stobj)
  (declare (xargs :guard (and (integerp i)
                              (< i (elems-length array-stobj)))
                  :measure (nfix (+ 1 i))
                  :stobjs array-stobj))
  (if (or (not (mbt (integerp i)))
          (< i 0))
      acc
    (extract-list-from-array-stobj-aux (+ -1 i)
                                       (cons (elemsi i array-stobj) acc)
                                       array-stobj)))

;; Returns the list.
(defund extract-list-from-array-stobj (array-stobj)
  (declare (xargs :stobjs array-stobj))
  (extract-list-from-array-stobj-aux (+ -1 (elems-length array-stobj)) nil array-stobj))
