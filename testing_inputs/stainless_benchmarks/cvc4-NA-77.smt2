; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!588 () Bool)

(assert start!588)

(declare-fun x!1634 () (_ BitVec 32))

(assert (=> start!588 (and (= x!1634 #b00000000000000000000000000010100) (or (bvslt x!1634 #b00000000000000000000000000000000) (bvsge x!1634 #b00000000000000000000000001100100)))))

(assert (=> start!588 true))

(push 1)

(check-sat)

(pop 1)

