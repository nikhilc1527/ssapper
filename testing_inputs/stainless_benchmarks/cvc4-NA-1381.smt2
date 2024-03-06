; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9660 () Bool)

(assert start!9660)

(declare-datatypes () ((Nat!283 (Succ!261 (prev!822 Nat!283)) (Zero!266))))

(declare-fun y!2024 () Nat!283)

(declare-fun x!28005 () Nat!283)

(declare-fun x!28006 () Nat!283)

(declare-datatypes () ((NatMonoid!15 (AdditiveMonoid!16) (NatMonoidExt!14 (__x!273 Int)))))

(declare-fun thiss!9239 () NatMonoid!15)

(declare-fun thiss!9238 () NatMonoid!15)

(declare-fun y!2023 () Nat!283)

(assert (=> start!9660 (and (is-AdditiveMonoid!16 thiss!9238) (= thiss!9239 thiss!9238) (= x!28006 x!28005) (= y!2024 y!2023) (not (is-AdditiveMonoid!16 thiss!9239)))))

(assert (=> start!9660 true))

(push 1)

(check-sat)

(pop 1)

