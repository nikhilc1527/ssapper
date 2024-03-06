; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9548 () Bool)

(assert start!9548)

(declare-datatypes () ((NatMonoid!3 (AdditiveMonoid!4) (NatMonoidExt!2 (__x!261 Int)))))

(declare-fun thiss!9195 () NatMonoid!3)

(declare-datatypes () ((Nat!269 (Succ!247 (prev!808 Nat!269)) (Zero!252))))

(declare-fun y!2005 () Nat!269)

(declare-fun thiss!9209 () NatMonoid!3)

(declare-fun z!242 () Nat!269)

(declare-fun z!248 () Nat!269)

(declare-fun x!27982 () Nat!269)

(declare-fun x!27968 () Nat!269)

(declare-fun y!1991 () Nat!269)

(assert (=> start!9548 (and (not (is-AdditiveMonoid!4 thiss!9195)) (= thiss!9209 thiss!9195) (= x!27982 x!27968) (= y!2005 y!1991) (= z!248 z!242) (not (is-NatMonoidExt!2 thiss!9209)))))

(assert (=> start!9548 true))

(push 1)

(check-sat)

(pop 1)

