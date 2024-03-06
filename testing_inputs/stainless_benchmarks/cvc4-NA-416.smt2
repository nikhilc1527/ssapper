; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2848 () Bool)

(assert start!2848)

(declare-fun res!5163 () (_ BitVec 32))

(declare-fun x!7777 () (_ BitVec 32))

(declare-fun y!689 () (_ BitVec 32))

(assert (=> start!2848 (and (= res!5163 (bvxor (bvxor x!7777 y!689) x!7777)) (not (= res!5163 y!689)))))

(assert (=> start!2848 true))

(push 1)

(check-sat)

(pop 1)

