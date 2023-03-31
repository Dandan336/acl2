; A lightweight book about the built-in function write-byte$
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2023 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(local (include-book "kestrel/utilities/state" :dir :system))
(local (include-book "channels"))

(defthm state-p1-of-write-byte$-alt
  (implies (and (state-p state)
                (symbolp channel)
                (open-output-channel-p channel :byte state)
                (unsigned-byte-p 8 byte) ;this is what's different
                )
           (state-p1 (write-byte$ byte channel state)))
  :hints (("Goal" :in-theory (enable write-byte$))))

(defthm open-output-channel-p1-of-write-byte$-gen
  (implies (open-output-channel-p1 channel typ state)
           (open-output-channel-p1 channel typ (write-byte$ byte channel2 state)))
  :hints (("Goal" :in-theory (enable write-byte$))))
