; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7478 () Bool)

(assert start!7478)

(declare-datatypes () ((IntSet!12 (Node!99 (left!1082 IntSet!12) (elem!158 (_ BitVec 32)) (right!1085 IntSet!12)) (Empty!138))))

(declare-fun s!875 () IntSet!12)

(declare-fun thiss!7534 () IntSet!12)

(declare-fun x!21298 () (_ BitVec 32))

(declare-fun y!1638 () (_ BitVec 32))

(declare-fun y!1635 () (_ BitVec 32))

(declare-fun x!21283 () (_ BitVec 32))

(declare-fun s!878 () IntSet!12)

(declare-fun thiss!7549 () IntSet!12)

(assert (=> start!7478 (and (not (= x!21283 y!1635)) (not (is-Empty!138 s!875)) (bvsge x!21283 (elem!158 s!875)) (bvsgt x!21283 (elem!158 s!875)) (= thiss!7549 thiss!7534) (= s!878 (right!1085 s!875)) (= x!21298 x!21283) (= y!1638 y!1635) (= x!21298 y!1638))))

(assert (=> start!7478 true))

(push 1)

(check-sat)

(pop 1)

