; Standard Basic Library
;
; Copyright (C) 2024 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (www.alessandrocoglio.info)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "xdoc/constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection std/basic/member-symbol-name
  :parents (std/basic)
  :short "Theorems about the built-in function @('member-symbol-name')."

  (defthm member-symbol-name-when-atom
    (implies (atom symbols)
             (not (member-symbol-name string symbols)))
    :hints (("Goal" :in-theory (enable member-symbol-name))))

  (in-theory (disable member-symbol-name)))
