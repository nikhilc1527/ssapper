; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9544 () Bool)

(assert start!9544)

(declare-datatypes () ((Formula!65 (And!70 (lhs!998 Formula!65) (rhs!998 Formula!65)) (Literal!64 (id!4845 Int)) (Implies!70 (lhs!999 Formula!65) (rhs!999 Formula!65)) (Or!70 (lhs!1000 Formula!65) (rhs!1000 Formula!65)) (Not!70 (f!4234 Formula!65)))))

(declare-fun formula!15 () Formula!65)

(declare-fun res!29385 () Int)

(assert (=> start!9544 (and (not (is-And!70 formula!15)) (not (is-Or!70 formula!15)) (not (is-Implies!70 formula!15)) (not (is-Not!70 formula!15)) (= res!29385 0) (< res!29385 0))))

(assert (=> start!9544 true))

(push 1)

(check-sat)

(pop 1)

