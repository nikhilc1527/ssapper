; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8202 () Bool)

(assert start!8202)

(declare-datatypes () ((Monoid!10 (ListMonoid!2) (MonoidExt!2 (__x!234 Int)))))

(declare-fun thiss!8632 () Monoid!10)

(declare-fun thiss!8641 () Monoid!10)

(declare-datatypes () ((List!471 (Cons!446 (h!685 Int) (t!47126 List!471)) (Nil!447))))

(declare-fun x!26087 () List!471)

(declare-fun x!26092 () List!471)

(assert (=> start!8202 (and (not (is-ListMonoid!2 thiss!8632)) (= thiss!8641 thiss!8632) (= x!26092 x!26087) (not (is-MonoidExt!2 thiss!8641)))))

(assert (=> start!8202 true))

(push 1)

(check-sat)

(pop 1)

