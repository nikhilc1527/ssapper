; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2894 () Bool)

(assert start!2894)

(declare-fun x!7807 () (_ BitVec 32))

(declare-fun x!7806 () (_ BitVec 32))

(declare-fun x$1!270 () (_ BitVec 32))

(declare-fun indexFromLeft!1 () (_ BitVec 32))

(assert (=> start!2894 (and (= x$1!270 (bvand x!7806 (bvsub x!7806 #b00000000000000000000000000000001))) (= x!7807 x!7806) (= indexFromLeft!1 #b00000000000000000000000000011111) (or (bvsgt #b00000000000000000000000000000000 indexFromLeft!1) (bvsge indexFromLeft!1 #b00000000000000000000000000100000)))))

(assert (=> start!2894 true))

(push 1)

(check-sat)

(pop 1)

