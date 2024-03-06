; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12406 () Bool)

(assert start!12406)

(declare-fun res!48268 () (_ BitVec 32))

(declare-fun b!91833 () (_ BitVec 8))

(declare-fun c!22353 () (_ BitVec 8))

(assert (=> start!12406 (and (= res!48268 (bvadd ((_ sign_extend 24) b!91833) ((_ sign_extend 24) c!22353))) (or (bvsgt #b11111111111111111111111110000000 res!48268) (bvsgt res!48268 #b00000000000000000000000001111111)))))

(assert (=> start!12406 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

