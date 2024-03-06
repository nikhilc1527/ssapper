; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9820 () Bool)

(assert start!9820)

(declare-fun arg!470 () (_ BitVec 32))

(assert (=> start!9820 (and (bvsgt arg!470 #b00000000000000000000000000000000) (= arg!470 #b00000000000000000000000000000000))))

(assert (=> start!9820 true))

(push 1)

(check-sat)

(pop 1)

