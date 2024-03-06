; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8302 () Bool)

(assert start!8302)

(declare-datatypes () ((List!485 (Cons!460 (h!699 Int) (t!47140 List!485)) (Nil!461))))

(declare-fun left!1330 () List!485)

(declare-fun right!1334 () List!485)

(declare-fun left!1331 () List!485)

(declare-datatypes () ((Monoid!24 (ListMonoid!16) (MonoidExt!16 (__x!248 Int)))))

(declare-fun thiss!8650 () Monoid!24)

(declare-fun thiss!8649 () Monoid!24)

(declare-fun right!1333 () List!485)

(assert (=> start!8302 (and (is-ListMonoid!16 thiss!8649) (= thiss!8650 thiss!8649) (= left!1331 left!1330) (= right!1334 right!1333) (not (is-ListMonoid!16 thiss!8650)))))

(assert (=> start!8302 true))

(push 1)

(check-sat)

(pop 1)

