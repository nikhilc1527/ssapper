; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7344 () Bool)

(assert start!7344)

(declare-datatypes () ((Foo!42 (BarExt!4 (__x!115 Int)) (Baz!14) (FooExt!17 (__x!116 Int)))))

(declare-fun thiss!7404 () Foo!42)

(declare-fun thiss!7405 () Foo!42)

(assert (=> start!7344 (and (or (is-BarExt!4 thiss!7404) (is-Baz!14 thiss!7404)) (is-BarExt!4 thiss!7404) (= thiss!7405 thiss!7404) (not (is-BarExt!4 thiss!7405)))))

(assert (=> start!7344 true))

(push 1)

(check-sat)

(pop 1)

