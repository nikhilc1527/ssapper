; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7348 () Bool)

(assert start!7348)

(declare-datatypes () ((Foo!44 (BarExt!6 (__x!119 Int)) (Baz!16) (FooExt!19 (__x!120 Int)))))

(declare-fun thiss!7417 () Foo!44)

(declare-fun thiss!7418 () Foo!44)

(assert (=> start!7348 (and (is-Baz!16 thiss!7417) (= thiss!7418 thiss!7417) (not (is-BarExt!6 thiss!7418)) (not (is-Baz!16 thiss!7418)))))

(assert (=> start!7348 true))

(push 1)

(check-sat)

(pop 1)

