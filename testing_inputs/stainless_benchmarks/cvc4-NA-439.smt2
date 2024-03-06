; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2916 () Bool)

(assert start!2916)

(declare-fun i!220 () (_ BitVec 32))

(declare-fun n!262 () (_ BitVec 32))

(declare-fun n!263 () (_ BitVec 32))

(declare-fun x!7812 () (_ BitVec 32))

(declare-fun x!7811 () (_ BitVec 32))

(assert (=> start!2916 (and (bvsle #b00000000000000000000000000000000 i!220) (bvslt i!220 #b00000000000000000000000000100000) (bvsle #b00000000000000000000000000000000 n!262) (bvslt n!262 #b00000000000000000000000000100000) (= x!7812 x!7811) (= n!263 i!220) (or (bvslt n!263 #b00000000000000000000000000000000) (bvsge n!263 #b00000000000000000000000000100000)))))

(assert (=> start!2916 true))

(push 1)

(check-sat)

(pop 1)

