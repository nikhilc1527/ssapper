; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9546 () Bool)

(assert start!9546)

(declare-datatypes () ((NatMonoid!2 (AdditiveMonoid!3) (NatMonoidExt!1 (__x!260 Int)))))

(declare-fun thiss!9195 () NatMonoid!2)

(declare-datatypes () ((Nat!268 (Succ!246 (prev!807 Nat!268)) (Zero!251))))

(declare-fun z!242 () Nat!268)

(declare-fun x!27969 () Nat!268)

(declare-fun y!1992 () Nat!268)

(declare-fun thiss!9196 () NatMonoid!2)

(declare-fun z!243 () Nat!268)

(declare-fun x!27968 () Nat!268)

(declare-fun y!1991 () Nat!268)

(assert (=> start!9546 (and (is-AdditiveMonoid!3 thiss!9195) (= thiss!9196 thiss!9195) (= x!27969 x!27968) (= y!1992 y!1991) (= z!243 z!242) (not (is-AdditiveMonoid!3 thiss!9196)))))

(assert (=> start!9546 true))

(push 1)

(check-sat)

(pop 1)

