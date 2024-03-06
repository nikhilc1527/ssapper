; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2958 () Bool)

(assert start!2958)

(declare-fun res!5326 () (_ BitVec 32))

(declare-fun b!14022 () (_ BitVec 8))

(declare-fun c!3909 () (_ BitVec 8))

(assert (=> start!2958 (and (= res!5326 (bvadd ((_ sign_extend 24) b!14022) ((_ sign_extend 24) c!3909))) (or (bvsgt #b11111111111111111111111100000000 res!5326) (bvsgt res!5326 #b00000000000000000000000011111110)))))

(assert (=> start!2958 true))

(push 1)

(check-sat)

(pop 1)

