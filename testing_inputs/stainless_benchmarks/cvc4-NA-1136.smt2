; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8220 () Bool)

(assert start!8220)

(declare-datatypes () ((List!474 (Cons!449 (h!688 Int) (t!47129 List!474)) (Nil!450))))

(declare-fun xxs!4 () List!474)

(declare-fun z!217 () List!474)

(declare-fun zs!11 () List!474)

(declare-fun x!26078 () List!474)

(declare-datatypes () ((Monoid!13 (ListMonoid!5) (MonoidExt!5 (__x!237 Int)))))

(declare-fun thiss!8607 () Monoid!13)

(declare-fun y!1901 () List!474)

(declare-fun ys!183 () List!474)

(declare-fun thiss!8606 () Monoid!13)

(assert (=> start!8220 (and (is-ListMonoid!5 thiss!8606) (= thiss!8607 thiss!8606) (= xxs!4 x!26078) (= ys!183 y!1901) (= zs!11 z!217) (not (is-ListMonoid!5 thiss!8607)))))

(assert (=> start!8220 true))

(push 1)

(check-sat)

(pop 1)

