; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8418 () Bool)

(assert start!8418)

(declare-datatypes () ((List!505 (Cons!479 (head!756 (_ BitVec 32)) (tail!782 List!505)) (Nil!480))))

(declare-fun l!1195 () List!505)

(declare-fun l!1194 () List!505)

(declare-fun acc!18 () Int)

(assert (=> start!8418 (and (= l!1195 l!1194) (= acc!18 0) (< acc!18 0))))

(assert (=> start!8418 true))

(push 1)

(check-sat)

(pop 1)

