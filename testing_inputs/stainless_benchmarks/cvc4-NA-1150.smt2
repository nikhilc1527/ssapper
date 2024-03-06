; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8308 () Bool)

(assert start!8308)

(declare-datatypes () ((Monoid!27 (ListMonoid!19) (MonoidExt!19 (__x!251 Int)))))

(declare-fun thiss!8536 () Monoid!27)

(declare-fun thiss!8539 () Monoid!27)

(assert (=> start!8308 (and (not (is-ListMonoid!19 thiss!8536)) (= thiss!8539 thiss!8536) (not (is-MonoidExt!19 thiss!8539)))))

(assert (=> start!8308 true))

(push 1)

(check-sat)

(pop 1)

