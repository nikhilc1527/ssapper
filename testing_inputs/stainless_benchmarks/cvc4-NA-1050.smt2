; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7718 () Bool)

(assert start!7718)

(declare-fun y!1652 () (_ BitVec 32))

(declare-datatypes () ((IntSet!55 (Node!139 (left!1225 IntSet!55) (elem!291 (_ BitVec 32)) (right!1228 IntSet!55)) (Empty!178))))

(declare-fun s!1767 () IntSet!55)

(declare-fun x!22074 () (_ BitVec 32))

(declare-fun s!1764 () IntSet!55)

(declare-fun x!22083 () (_ BitVec 32))

(declare-fun thiss!7865 () IntSet!55)

(declare-fun thiss!7856 () IntSet!55)

(declare-fun y!1649 () (_ BitVec 32))

(assert (=> start!7718 (and (not (= x!22074 y!1649)) (or (not (is-Node!139 s!1764)) (bvsge x!22074 (elem!291 s!1764))) (is-Node!139 s!1764) (bvsgt x!22074 (elem!291 s!1764)) (= thiss!7865 thiss!7856) (= s!1767 (right!1228 s!1764)) (= x!22083 x!22074) (= y!1652 y!1649) (= x!22083 y!1652))))

(assert (=> start!7718 true))

(push 1)

(check-sat)

(pop 1)

