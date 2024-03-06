; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9664 () Bool)

(assert start!9664)

(declare-datatypes () ((NatMonoid!17 (AdditiveMonoid!18) (NatMonoidExt!16 (__x!275 Int)))))

(declare-fun thiss!9286 () NatMonoid!17)

(declare-datatypes () ((Nat!285 (Succ!263 (prev!824 Nat!285)) (Zero!268))))

(declare-fun inlined!6774 () Nat!285)

(declare-fun v!2416 () Nat!285)

(assert (=> start!9664 (and (is-AdditiveMonoid!18 thiss!9286) (= inlined!6774 Zero!268) (= v!2416 inlined!6774) (not (is-Zero!268 v!2416)))))

(assert (=> start!9664 true))

(push 1)

(check-sat)

(pop 1)

