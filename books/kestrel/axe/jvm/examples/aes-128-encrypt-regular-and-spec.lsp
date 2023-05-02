; Verfication of AES-128 (the regular version from bouncycastle)
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2023 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; This file deals with the bouncycastle version of AES that is neither the
;; "Light" one nor the "Fast" one.

(include-book "kestrel/axe/unroll-spec-basic" :dir :system)
(include-book "kestrel/axe/jvm/unroll-java-code" :dir :system :ttags :all)
(include-book "kestrel/axe/equivalence-checker" :dir :system)
(include-book "kestrel/crypto/aes/aes-spec" :dir :system)

(read-class "AESEncryptRegularDriver.class") ; (depends-on "AESEncryptRegularDriver.class")

;; Read in bouncycastle classes:
(read-jar "jce-jdk13-134.jar" ; (depends-on "jce-jdk13-134.jar")
          :classes ("org.bouncycastle.crypto.params.KeyParameter"
                    "org.bouncycastle.crypto.engines.AESEngine"))

;; Read in some Java libraries:
(read-jar "jdk1.7.0_80/jre/lib/rt.jar" ; (depends-on "jdk1.7.0_80/jre/lib/rt.jar")
          :classes ("java.lang.Object"
                    "java.lang.String"
                    "java.lang.Class"
                    "java.lang.System"))

(defconst *key-byte-count* 16) ; AES-128 has 128 key bits (= 16 bytes)

;; Unroll the spec:
(unroll-spec-basic *aes-128-encrypt-spec-dag*
                   `(list-to-bv-array '8 (aes::aes-128-encrypt ,(make-bit-blasted-cons-nest-for-vars 16 'in)
                                                               ,(make-bit-blasted-cons-nest-for-vars *key-byte-count* 'key)))
                   :rules :auto
                   :extra-rules (introduce-bv-array-rules) ; turns nth into bv-array-read
                   )

;; Unroll the code:
;; NOTE: This assumes that the AES classes have not been initialized yet, so
;; they get initialized during lifting, which is a bit un-general.
(unroll-java-code *aes-128-encrypt-regular-dag*
                  "AESEncryptRegularDriver.driver([B[B[B)[B"
                  :array-length-alist `((key . ,*key-byte-count*)
                                        (in . 16)
                                        (out . 16))
                  :vars-for-array-elements :bits)

;; Prove equivalence of unrolled code and spec:
(prove-equivalence *aes-128-encrypt-regular-dag*
                   *aes-128-encrypt-spec-dag*
                   :types (bit-types-for-vars (append (make-bit-var-list-for-bytes *key-byte-count* 'key)
                                                      (make-bit-var-list-for-bytes 16 'in))))
