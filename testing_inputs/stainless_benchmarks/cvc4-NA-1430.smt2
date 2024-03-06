; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9824 () Bool)

(assert start!9824)

(declare-fun arg!469 () (_ BitVec 32))

(assert (=> start!9824 (and (bvsgt arg!469 #b00000000000000000000000000000000) (not (= arg!469 #b00000000000000000000000000000000)) (bvslt arg!469 #b00000000000000000000000000000000))))

(assert (=> start!9824 true))

(push 1)

(check-sat)

(pop 1)

