; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9584 () Bool)

(assert start!9584)

(declare-datatypes () ((Nat!275 (Succ!253 (prev!814 Nat!275)) (Zero!258))))

(declare-fun x!27950 () Nat!275)

(declare-datatypes () ((NatMonoid!8 (AdditiveMonoid!9) (NatMonoidExt!7 (__x!266 Int)))))

(declare-fun thiss!9150 () NatMonoid!8)

(declare-fun x!27943 () Nat!275)

(declare-fun thiss!9159 () NatMonoid!8)

(assert (=> start!9584 (and (not (is-AdditiveMonoid!9 thiss!9150)) (= thiss!9159 thiss!9150) (= x!27950 x!27943) (not (is-NatMonoidExt!7 thiss!9159)))))

(assert (=> start!9584 true))

(push 1)

(check-sat)

(pop 1)

