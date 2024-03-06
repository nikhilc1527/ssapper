; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12536 () Bool)

(assert start!12536)

(declare-datatypes () ((IntSet!63 (IntSetExt!1 (__x!364 Int)) (Empty!202) (Node!183 (left!1968 IntSet!63) (elem!354 (_ BitVec 32)) (right!1974 IntSet!63)))))

(declare-fun t2!40 () IntSet!63)

(declare-fun x!33969 () (_ BitVec 32))

(declare-fun x!33968 () (_ BitVec 32))

(declare-fun t1!36 () IntSet!63)

(declare-fun t1!35 () IntSet!63)

(declare-fun t2!39 () IntSet!63)

(declare-fun thiss!11000 () IntSet!63)

(declare-fun thiss!10999 () IntSet!63)

(assert (=> start!12536 (and (is-IntSetExt!1 thiss!10999) (= thiss!11000 thiss!10999) (= t1!36 t1!35) (= t2!40 t2!39) (= x!33969 x!33968) (not (is-IntSetExt!1 thiss!11000)))))

(assert (=> start!12536 true))

(push 1)

(check-sat)

(pop 1)

