; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12122 () Bool)

(assert start!12122)

(declare-fun y!2233 () (_ BitVec 32))

(declare-fun vc!33 () (_ BitVec 32))

(declare-fun x$2!550 () (_ BitVec 32))

(assert (=> start!12122 (and (bvsge y!2233 #b00000000000000000000000000000000) (bvslt y!2233 #b00000000000000000000000001100100) (= vc!33 (bvadd y!2233 #b00000000000000000000000001011101)) (= x$2!550 vc!33) (= x$2!550 #b00000000000000000000000000101010))))

(assert (=> start!12122 true))

(push 1)

(check-sat)

(pop 1)

