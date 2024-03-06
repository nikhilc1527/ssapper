; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9700 () Bool)

(assert start!9700)

(declare-fun j!76 () (_ BitVec 32))

(declare-fun j!77 () (_ BitVec 32))

(declare-fun k!273 () (_ BitVec 32))

(assert (=> start!9700 (and (bvsge j!76 #b00000000000000000000000000000000) (= j!77 j!76) (= k!273 j!76) (bvsle j!77 #b00000000000000000000000000000000) (not (= j!77 k!273)))))

(assert (=> start!9700 true))

(push 1)

(check-sat)

(pop 1)

