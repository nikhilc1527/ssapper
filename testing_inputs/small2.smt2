(declare-fun start!8930 () Bool)

(assert start!8930)

(assert (=> start!8930 false))

(push 1)

(check-sat)
(check-sat)

(pop 1)

