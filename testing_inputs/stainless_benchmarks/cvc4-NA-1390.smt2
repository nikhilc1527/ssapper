; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9696 () Bool)

(assert start!9696)

(declare-fun x$1!936 () (_ BitVec 32))

(assert (=> start!9696 (and (= x$1!936 #b00000000000000000000000000000000) (not (= #b00000000000000000000000000000000 x$1!936)))))

(assert (=> start!9696 true))

(push 1)

(check-sat)

(pop 1)

