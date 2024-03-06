; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8200 () Bool)

(assert start!8200)

(declare-datatypes () ((Monoid!9 (ListMonoid!1) (MonoidExt!1 (__x!233 Int)))))

(declare-fun thiss!8632 () Monoid!9)

(declare-datatypes () ((List!470 (Cons!445 (h!684 Int) (t!47125 List!470)) (Nil!446))))

(declare-fun x!26087 () List!470)

(declare-fun thiss!8633 () Monoid!9)

(declare-fun x!26088 () List!470)

(assert (=> start!8200 (and (is-ListMonoid!1 thiss!8632) (= thiss!8633 thiss!8632) (= x!26088 x!26087) (not (is-ListMonoid!1 thiss!8633)))))

(assert (=> start!8200 true))

(push 1)

(check-sat)

(pop 1)

