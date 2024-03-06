; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7346 () Bool)

(assert start!7346)

(declare-datatypes () ((Foo!43 (BarExt!5 (__x!117 Int)) (Baz!15) (FooExt!18 (__x!118 Int)))))

(declare-fun thiss!7404 () Foo!43)

(declare-fun thiss!7407 () Foo!43)

(assert (=> start!7346 (and (or (is-BarExt!5 thiss!7404) (is-Baz!15 thiss!7404)) (not (is-BarExt!5 thiss!7404)) (= thiss!7407 thiss!7404) (not (is-Baz!15 thiss!7407)))))

(assert (=> start!7346 true))

(push 1)

(check-sat)

(pop 1)

