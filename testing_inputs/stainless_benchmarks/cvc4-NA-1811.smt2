; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12274 () Bool)

(assert start!12274)

(declare-fun x!33148 () Int)

(declare-datatypes () ((Monoid!45 (MonoidExt!39 (__x!299 Int)) (WrongProductMonoid!2) (WrongAdditiveMonoid!2))))

(declare-fun thiss!10611 () Monoid!45)

(declare-fun x!33155 () Int)

(declare-fun thiss!10602 () Monoid!45)

(assert (=> start!12274 (and (not (is-MonoidExt!39 thiss!10602)) (is-WrongProductMonoid!2 thiss!10602) (= thiss!10611 thiss!10602) (= x!33155 x!33148) (not (is-WrongProductMonoid!2 thiss!10611)))))

(assert (=> start!12274 true))

(push 1)

(check-sat)

(pop 1)

