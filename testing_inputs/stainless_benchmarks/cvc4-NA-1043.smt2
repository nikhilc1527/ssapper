; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7682 () Bool)

(assert start!7682)

(declare-datatypes () ((IntSet!47 (Empty!171) (Node!132 (left!1183 IntSet!47) (elem!251 (_ BitVec 32)) (right!1186 IntSet!47)))))

(declare-fun thiss!7797 () IntSet!47)

(declare-fun thiss!7796 () IntSet!47)

(declare-fun s!1750 () IntSet!47)

(declare-fun x!22003 () (_ BitVec 32))

(declare-fun s!1751 () IntSet!47)

(declare-fun y!1643 () (_ BitVec 32))

(declare-fun x!22002 () (_ BitVec 32))

(declare-fun y!1644 () (_ BitVec 32))

(assert (=> start!7682 (and (not (= x!22002 y!1643)) (not (is-Empty!171 s!1750)) (bvslt x!22002 (elem!251 s!1750)) (= thiss!7797 thiss!7796) (= s!1751 (left!1183 s!1750)) (= x!22003 x!22002) (= y!1644 y!1643) (= x!22003 y!1644))))

(assert (=> start!7682 true))

(push 1)

(check-sat)

(pop 1)

