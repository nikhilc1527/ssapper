; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7716 () Bool)

(assert start!7716)

(declare-fun x!22075 () (_ BitVec 32))

(declare-fun x!22074 () (_ BitVec 32))

(declare-datatypes () ((IntSet!54 (Node!138 (left!1224 IntSet!54) (elem!290 (_ BitVec 32)) (right!1227 IntSet!54)) (Empty!177))))

(declare-fun s!1764 () IntSet!54)

(declare-fun thiss!7857 () IntSet!54)

(declare-fun thiss!7856 () IntSet!54)

(declare-fun s!1765 () IntSet!54)

(declare-fun y!1650 () (_ BitVec 32))

(declare-fun y!1649 () (_ BitVec 32))

(assert (=> start!7716 (and (not (= x!22074 y!1649)) (is-Node!138 s!1764) (bvslt x!22074 (elem!290 s!1764)) (= thiss!7857 thiss!7856) (= s!1765 (left!1224 s!1764)) (= x!22075 x!22074) (= y!1650 y!1649) (= x!22075 y!1650))))

(assert (=> start!7716 true))

(push 1)

(check-sat)

(pop 1)

