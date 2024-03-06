; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2818 () Bool)

(assert start!2818)

(declare-fun n1!41 () (_ BitVec 200))

(declare-fun n2!45 () (_ BitVec 200))

(assert (=> start!2818 (and (bvsgt n1!41 n2!45) (bvslt n1!41 (bvadd n2!45 #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)))))

(assert (=> start!2818 true))

(push 1)

(check-sat)

(pop 1)

