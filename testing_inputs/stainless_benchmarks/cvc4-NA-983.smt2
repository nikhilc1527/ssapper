; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7340 () Bool)

(assert start!7340)

(declare-datatypes () ((Foo!40 (BarExt!2 (__x!111 Int)) (Baz!12) (FooExt!15 (__x!112 Int)))))

(declare-fun thiss!7401 () Foo!40)

(declare-fun thiss!7402 () Foo!40)

(assert (=> start!7340 (and (or (is-BarExt!2 thiss!7401) (is-Baz!12 thiss!7401)) (= thiss!7402 thiss!7401) (not (is-BarExt!2 thiss!7402)) (not (is-Baz!12 thiss!7402)))))

(assert (=> start!7340 true))

(push 1)

(check-sat)

(pop 1)

