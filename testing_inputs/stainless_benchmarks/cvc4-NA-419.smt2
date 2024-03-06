; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2854 () Bool)

(assert start!2854)

(declare-fun res!5161 () (_ BitVec 32))

(declare-fun n!237 () (_ BitVec 32))

(declare-fun n!236 () (_ BitVec 32))

(declare-fun x!7764 () (_ BitVec 32))

(declare-fun x!7765 () (_ BitVec 32))

(assert (=> start!2854 (and (bvsge n!236 #b00000000000000000000000000000000) (bvslt n!236 #b00000000000000000000000000100000) (= res!5161 (bvxor x!7764 (bvshl #b00000000000000000000000000000001 n!236))) (= x!7765 x!7764) (= n!237 n!236) (or (bvslt n!237 #b00000000000000000000000000000000) (bvsge n!237 #b00000000000000000000000000100000)))))

(assert (=> start!2854 true))

(push 1)

(check-sat)

(pop 1)

