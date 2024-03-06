; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2918 () Bool)

(assert start!2918)

(declare-fun n!265 () (_ BitVec 32))

(declare-fun i!220 () (_ BitVec 32))

(declare-fun n!262 () (_ BitVec 32))

(declare-fun y!691 () (_ BitVec 32))

(declare-fun x!7814 () (_ BitVec 32))

(assert (=> start!2918 (and (bvsle #b00000000000000000000000000000000 i!220) (bvslt i!220 #b00000000000000000000000000100000) (bvsle #b00000000000000000000000000000000 n!262) (bvslt n!262 #b00000000000000000000000000100000) (= x!7814 y!691) (= n!265 (bvsrem (bvadd i!220 n!262) #b00000000000000000000000000100000)) (or (bvslt n!265 #b00000000000000000000000000000000) (bvsge n!265 #b00000000000000000000000000100000)))))

(assert (=> start!2918 true))

(push 1)

(check-sat)

(pop 1)

