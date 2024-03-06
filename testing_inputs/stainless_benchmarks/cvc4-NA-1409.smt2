; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9764 () Bool)

(assert start!9764)

(declare-fun a!755 () (_ BitVec 32))

(declare-fun a!756 () (_ BitVec 32))

(declare-fun b!71220 () (_ BitVec 32))

(assert (=> start!9764 (and (bvsge a!755 #b00000000000000000000000000000000) (= a!756 a!755) (= b!71220 #b00000000000000000000000000000010) (bvsge a!756 #b00000000000000000000000000000000) (bvsle b!71220 #b00000000000000000000000000000000))))

(assert (=> start!9764 true))

(push 1)

(check-sat)

(pop 1)

