; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12272 () Bool)

(assert start!12272)

(declare-fun x!33149 () Int)

(declare-fun x!33148 () Int)

(declare-datatypes () ((Monoid!44 (MonoidExt!38 (__x!298 Int)) (WrongProductMonoid!1) (WrongAdditiveMonoid!1))))

(declare-fun thiss!10602 () Monoid!44)

(declare-fun thiss!10603 () Monoid!44)

(assert (=> start!12272 (and (is-MonoidExt!38 thiss!10602) (= thiss!10603 thiss!10602) (= x!33149 x!33148) (not (is-MonoidExt!38 thiss!10603)))))

(assert (=> start!12272 true))

(push 1)

(check-sat)

(pop 1)

