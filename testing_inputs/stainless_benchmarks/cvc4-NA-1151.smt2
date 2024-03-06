; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8310 () Bool)

(assert start!8310)

(declare-datatypes () ((Monoid!28 (ListMonoid!20) (MonoidExt!20 (__x!252 Int)))))

(declare-fun thiss!8552 () Monoid!28)

(declare-datatypes () ((List!487 (Cons!462 (h!701 Int) (t!47142 List!487)) (Nil!463))))

(declare-fun v!2185 () List!487)

(assert (=> start!8310 (and (is-ListMonoid!20 thiss!8552) (= v!2185 Nil!463) (not (is-Nil!463 v!2185)))))

(assert (=> start!8310 true))

(push 1)

(check-sat)

(pop 1)

