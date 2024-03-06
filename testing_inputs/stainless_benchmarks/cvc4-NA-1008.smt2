; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7476 () Bool)

(assert start!7476)

(declare-fun x!21290 () (_ BitVec 32))

(declare-datatypes () ((IntSet!11 (Node!98 (left!1081 IntSet!11) (elem!157 (_ BitVec 32)) (right!1084 IntSet!11)) (Empty!137))))

(declare-fun s!875 () IntSet!11)

(declare-fun thiss!7534 () IntSet!11)

(declare-fun y!1635 () (_ BitVec 32))

(declare-fun thiss!7541 () IntSet!11)

(declare-fun y!1636 () (_ BitVec 32))

(declare-fun x!21283 () (_ BitVec 32))

(declare-fun s!876 () IntSet!11)

(assert (=> start!7476 (and (not (= x!21283 y!1635)) (not (is-Empty!137 s!875)) (bvslt x!21283 (elem!157 s!875)) (= thiss!7541 thiss!7534) (= s!876 (left!1081 s!875)) (= x!21290 x!21283) (= y!1636 y!1635) (= x!21290 y!1636))))

(assert (=> start!7476 true))

(push 1)

(check-sat)

(pop 1)

