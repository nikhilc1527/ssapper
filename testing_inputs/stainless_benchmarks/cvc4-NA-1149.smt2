; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8306 () Bool)

(assert start!8306)

(declare-datatypes () ((Monoid!26 (ListMonoid!18) (MonoidExt!18 (__x!250 Int)))))

(declare-fun thiss!8536 () Monoid!26)

(declare-fun thiss!8537 () Monoid!26)

(assert (=> start!8306 (and (is-ListMonoid!18 thiss!8536) (= thiss!8537 thiss!8536) (not (is-ListMonoid!18 thiss!8537)))))

(assert (=> start!8306 true))

(push 1)

(check-sat)

(pop 1)

