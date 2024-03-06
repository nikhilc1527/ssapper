; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9582 () Bool)

(assert start!9582)

(declare-datatypes () ((NatMonoid!7 (AdditiveMonoid!8) (NatMonoidExt!6 (__x!265 Int)))))

(declare-fun thiss!9151 () NatMonoid!7)

(declare-fun thiss!9150 () NatMonoid!7)

(declare-datatypes () ((Nat!274 (Succ!252 (prev!813 Nat!274)) (Zero!257))))

(declare-fun x!27943 () Nat!274)

(declare-fun x!27944 () Nat!274)

(assert (=> start!9582 (and (is-AdditiveMonoid!8 thiss!9150) (= thiss!9151 thiss!9150) (= x!27944 x!27943) (not (is-AdditiveMonoid!8 thiss!9151)))))

(assert (=> start!9582 true))

(push 1)

(check-sat)

(pop 1)

