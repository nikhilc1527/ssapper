; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8304 () Bool)

(assert start!8304)

(declare-datatypes () ((List!486 (Cons!461 (h!700 Int) (t!47141 List!486)) (Nil!462))))

(declare-fun left!1330 () List!486)

(declare-fun left!1333 () List!486)

(declare-datatypes () ((Monoid!25 (ListMonoid!17) (MonoidExt!17 (__x!249 Int)))))

(declare-fun thiss!8652 () Monoid!25)

(declare-fun thiss!8649 () Monoid!25)

(declare-fun right!1336 () List!486)

(declare-fun right!1333 () List!486)

(assert (=> start!8304 (and (not (is-ListMonoid!17 thiss!8649)) (= thiss!8652 thiss!8649) (= left!1333 left!1330) (= right!1336 right!1333) (not (is-MonoidExt!17 thiss!8652)))))

(assert (=> start!8304 true))

(push 1)

(check-sat)

(pop 1)

