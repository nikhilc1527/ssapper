; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7338 () Bool)

(assert start!7338)

(declare-datatypes () ((Foo!39 (BarExt!1 (__x!109 Int)) (Baz!11) (FooExt!14 (__x!110 Int)))))

(declare-fun thiss!7409 () Foo!39)

(assert (=> start!7338 (and (= thiss!7409 Baz!11) (not (is-Baz!11 thiss!7409)))))

(assert (=> start!7338 true))

(push 1)

(check-sat)

(pop 1)

