; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2870 () Bool)

(assert start!2870)

(declare-fun x$2!124 () (_ BitVec 32))

(assert (=> start!2870 (and (= x$2!124 #b00000000000000000000000000000000) (not (= x$2!124 #b00000000000000000000000000000000)))))

(assert (=> start!2870 true))

(push 1)

(check-sat)

(pop 1)

