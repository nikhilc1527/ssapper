; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7342 () Bool)

(assert start!7342)

(declare-datatypes () ((Foo!41 (BarExt!3 (__x!113 Int)) (Baz!13) (FooExt!16 (__x!114 Int)))))

(declare-fun thiss!7412 () Foo!41)

(declare-fun thiss!7415 () Foo!41)

(assert (=> start!7342 (and (not (is-BarExt!3 thiss!7412)) (not (is-Baz!13 thiss!7412)) (= thiss!7415 thiss!7412) (not (is-FooExt!16 thiss!7415)))))

(assert (=> start!7342 true))

(push 1)

(check-sat)

(pop 1)

