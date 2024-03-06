; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2784 () Bool)

(assert start!2784)

(declare-fun n1!37 () (_ BitVec 200))

(declare-fun n2!41 () (_ BitVec 200))

(assert (=> start!2784 (and (bvugt n1!37 n2!41) (bvult n1!37 (bvadd n2!41 #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)))))

(assert (=> start!2784 true))

(push 1)

(check-sat)

(pop 1)

