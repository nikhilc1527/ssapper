; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9698 () Bool)

(assert start!9698)

(declare-fun j!73 () (_ BitVec 32))

(declare-fun k!272 () (_ BitVec 32))

(declare-fun j!74 () (_ BitVec 32))

(assert (=> start!9698 (and (bvsge j!73 #b00000000000000000000000000000000) (or (bvsgt j!73 #b00000000000000000000000000000000) (= j!73 k!272)) (not (= k!272 #b00000000000000000000000000000000)) (= j!74 (bvsub j!73 #b00000000000000000000000000000001)) (bvslt j!74 #b00000000000000000000000000000000))))

(assert (=> start!9698 true))

(push 1)

(check-sat)

(pop 1)

