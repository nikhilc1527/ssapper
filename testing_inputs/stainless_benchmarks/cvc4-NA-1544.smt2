; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10434 () Bool)

(assert start!10434)

(declare-datatypes () ((Formula!113 (Implies!117 (lhs!1452 Formula!113) (rhs!1452 Formula!113)) (And!117 (lhs!1453 Formula!113) (rhs!1453 Formula!113)) (Or!117 (lhs!1454 Formula!113) (rhs!1454 Formula!113)) (Literal!111 (id!4974 (_ BitVec 32))) (Not!117 (f!4771 Formula!113)))))

(declare-fun formula!94 () Formula!113)

(assert (=> start!10434 (and (not (is-And!117 formula!94)) (not (is-Or!117 formula!94)) (not (is-Implies!117 formula!94)) (or (not (is-Not!117 formula!94)) (not (is-And!117 (f!4771 formula!94)))) (or (not (is-Not!117 formula!94)) (not (is-Or!117 (f!4771 formula!94)))) (or (not (is-Not!117 formula!94)) (not (is-Implies!117 (f!4771 formula!94)))) (or (not (is-Not!117 formula!94)) (not (is-Not!117 (f!4771 formula!94)))) (or (not (is-Not!117 formula!94)) (not (is-Literal!111 (f!4771 formula!94)))) (not (is-Literal!111 formula!94)))))

(assert (=> start!10434 true))

(push 1)

(check-sat)

(pop 1)

