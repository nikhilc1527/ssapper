; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7684 () Bool)

(assert start!7684)

(declare-fun x!22005 () (_ BitVec 32))

(declare-datatypes () ((IntSet!48 (Empty!172) (Node!133 (left!1184 IntSet!48) (elem!252 (_ BitVec 32)) (right!1187 IntSet!48)))))

(declare-fun thiss!7799 () IntSet!48)

(declare-fun thiss!7796 () IntSet!48)

(declare-fun s!1750 () IntSet!48)

(declare-fun y!1643 () (_ BitVec 32))

(declare-fun y!1646 () (_ BitVec 32))

(declare-fun x!22002 () (_ BitVec 32))

(declare-fun s!1753 () IntSet!48)

(assert (=> start!7684 (and (not (= x!22002 y!1643)) (not (is-Empty!172 s!1750)) (bvsge x!22002 (elem!252 s!1750)) (bvsgt x!22002 (elem!252 s!1750)) (= thiss!7799 thiss!7796) (= s!1753 (right!1187 s!1750)) (= x!22005 x!22002) (= y!1646 y!1643) (= x!22005 y!1646))))

(assert (=> start!7684 true))

(push 1)

(check-sat)

(pop 1)

