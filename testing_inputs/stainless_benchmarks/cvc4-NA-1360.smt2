; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9526 () Bool)

(assert start!9526)

(declare-datatypes () ((Formula!60 (And!65 (lhs!983 Formula!60) (rhs!983 Formula!60)) (Literal!59 (id!4840 Int)) (Implies!65 (lhs!984 Formula!60) (rhs!984 Formula!60)) (Or!65 (lhs!985 Formula!60) (rhs!985 Formula!60)) (Not!65 (f!4229 Formula!60)))))

(declare-fun formula!50 () Formula!60)

(assert (=> start!9526 (and (not (is-And!65 formula!50)) (not (is-Or!65 formula!50)) (not (is-Implies!65 formula!50)) (or (not (is-Not!65 formula!50)) (not (is-And!65 (f!4229 formula!50)))) (or (not (is-Not!65 formula!50)) (not (is-Or!65 (f!4229 formula!50)))) (or (not (is-Not!65 formula!50)) (not (is-Implies!65 (f!4229 formula!50)))) (or (not (is-Not!65 formula!50)) (not (is-Not!65 (f!4229 formula!50)))) (or (not (is-Not!65 formula!50)) (not (is-Literal!59 (f!4229 formula!50)))) (not (is-Literal!59 formula!50)))))

(assert (=> start!9526 true))

(push 1)

(check-sat)

(pop 1)

