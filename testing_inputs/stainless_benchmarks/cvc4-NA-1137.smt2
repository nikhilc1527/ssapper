; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8222 () Bool)

(assert start!8222)

(declare-datatypes () ((Monoid!14 (ListMonoid!6) (MonoidExt!6 (__x!238 Int)))))

(declare-fun thiss!8620 () Monoid!14)

(declare-datatypes () ((List!475 (Cons!450 (h!689 Int) (t!47130 List!475)) (Nil!451))))

(declare-fun y!1905 () List!475)

(declare-fun z!217 () List!475)

(declare-fun z!221 () List!475)

(declare-fun x!26083 () List!475)

(declare-fun x!26078 () List!475)

(declare-fun y!1901 () List!475)

(declare-fun thiss!8606 () Monoid!14)

(assert (=> start!8222 (and (not (is-ListMonoid!6 thiss!8606)) (= thiss!8620 thiss!8606) (= x!26083 x!26078) (= y!1905 y!1901) (= z!221 z!217) (not (is-MonoidExt!6 thiss!8620)))))

(assert (=> start!8222 true))

(push 1)

(check-sat)

(pop 1)

