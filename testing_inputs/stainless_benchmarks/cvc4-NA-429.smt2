; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2880 () Bool)

(assert start!2880)

(declare-fun x$1!269 () (_ BitVec 32))

(assert (=> start!2880 (and (= x$1!269 #b00000000000000000000000000001000) (= x$1!269 #b00000000000000000000000000000000))))

(assert (=> start!2880 true))

(push 1)

(check-sat)

(pop 1)

