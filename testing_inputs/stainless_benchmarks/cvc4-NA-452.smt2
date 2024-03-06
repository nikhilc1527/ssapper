; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2960 () Bool)

(assert start!2960)

(declare-fun b!14024 () (_ BitVec 8))

(declare-fun x!7911 () (_ BitVec 32))

(assert (=> start!2960 (and (bvsge ((_ sign_extend 24) b!14024) #b11111111111111111111111110000000) (bvsle ((_ sign_extend 24) b!14024) #b00000000000000000000000001111111) (= x!7911 ((_ sign_extend 24) b!14024)) (bvsge x!7911 #b00000000000000000000000010000000))))

(assert (=> start!2960 true))

(push 1)

(check-sat)

(pop 1)

