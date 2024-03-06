; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12276 () Bool)

(assert start!12276)

(declare-fun x!33148 () Int)

(declare-datatypes () ((Monoid!46 (MonoidExt!40 (__x!300 Int)) (WrongProductMonoid!3) (WrongAdditiveMonoid!3))))

(declare-fun thiss!10619 () Monoid!46)

(declare-fun thiss!10602 () Monoid!46)

(declare-fun x!33161 () Int)

(assert (=> start!12276 (and (not (is-MonoidExt!40 thiss!10602)) (not (is-WrongProductMonoid!3 thiss!10602)) (= thiss!10619 thiss!10602) (= x!33161 x!33148) (not (is-WrongAdditiveMonoid!3 thiss!10619)))))

(assert (=> start!12276 true))

(push 1)

(check-sat)

(pop 1)

