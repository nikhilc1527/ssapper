; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2882 () Bool)

(assert start!2882)

(declare-fun i!223 () (_ BitVec 32))

(declare-fun res!5193 () (_ BitVec 32))

(declare-fun x!7820 () (_ BitVec 32))

(declare-fun n!277 () (_ BitVec 32))

(declare-fun front!79 () (_ BitVec 32))

(declare-fun n!276 () (_ BitVec 32))

(declare-fun x!7819 () (_ BitVec 32))

(declare-fun y!695 () (_ BitVec 32))

(assert (=> start!2882 (and (bvsge n!276 #b00000000000000000000000000000000) (bvslt n!276 #b00000000000000000000000000100000) (= front!79 (bvlshr x!7819 (bvsub #b00000000000000000000000000100000 n!276))) (= res!5193 (bvor (bvshl x!7819 n!276) front!79)) (= x!7820 x!7819) (= y!695 res!5193) (= n!277 n!276) (= i!223 #b00000000000000000000000000011111) (or (bvsgt #b00000000000000000000000000000000 i!223) (bvsge i!223 #b00000000000000000000000000100000) (bvsgt #b00000000000000000000000000000000 n!277) (bvsge n!277 #b00000000000000000000000000100000)))))

(assert (=> start!2882 true))

(push 1)

(check-sat)

(pop 1)

