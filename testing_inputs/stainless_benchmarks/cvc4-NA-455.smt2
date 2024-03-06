; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2968 () Bool)

(assert start!2968)

(declare-fun x!7908 () (_ BitVec 32))

(declare-fun i!226 () (_ BitVec 32))

(assert (=> start!2968 (and (= x!7908 ((_ sign_extend 24) ((_ extract 7 0) i!226))) (bvsge x!7908 #b00000000000000000000000010000000))))

(assert (=> start!2968 true))

(push 1)

(check-sat)

(pop 1)

