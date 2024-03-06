; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2970 () Bool)

(assert start!2970)

(declare-fun x$1!271 () (_ BitVec 32))

(assert (=> start!2970 (and (= x$1!271 #b00000000000000000000000000000011) (not (= x$1!271 #b00000000000000000000000000000011)))))

(assert (=> start!2970 true))

(push 1)

(check-sat)

(pop 1)

