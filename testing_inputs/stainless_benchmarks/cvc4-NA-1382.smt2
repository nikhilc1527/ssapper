; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9662 () Bool)

(assert start!9662)

(declare-datatypes () ((NatMonoid!16 (AdditiveMonoid!17) (NatMonoidExt!15 (__x!274 Int)))))

(declare-fun thiss!9241 () NatMonoid!16)

(declare-datatypes () ((Nat!284 (Succ!262 (prev!823 Nat!284)) (Zero!267))))

(declare-fun x!28005 () Nat!284)

(declare-fun x!28008 () Nat!284)

(declare-fun y!2026 () Nat!284)

(declare-fun thiss!9238 () NatMonoid!16)

(declare-fun y!2023 () Nat!284)

(assert (=> start!9662 (and (not (is-AdditiveMonoid!17 thiss!9238)) (= thiss!9241 thiss!9238) (= x!28008 x!28005) (= y!2026 y!2023) (not (is-NatMonoidExt!15 thiss!9241)))))

(assert (=> start!9662 true))

(push 1)

(check-sat)

(pop 1)

