; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9550 () Bool)

(assert start!9550)

(declare-fun res!34603 () Bool)

(declare-fun e!38200 () Bool)

(assert (=> start!9550 (=> (not res!34603) (not e!38200))))

(declare-datatypes () ((NatMonoid!4 (AdditiveMonoid!5) (NatMonoidExt!3 (__x!262 Int)))))

(declare-fun thiss!9195 () NatMonoid!4)

(assert (=> start!9550 (= res!34603 (is-AdditiveMonoid!5 thiss!9195))))

(assert (=> start!9550 e!38200))

(assert (=> start!9550 true))

(declare-fun b!70636 () Bool)

(declare-fun res!34601 () Bool)

(assert (=> b!70636 (=> (not res!34601) (not e!38200))))

(declare-datatypes () ((Nat!270 (Succ!248 (prev!809 Nat!270)) (Zero!253))))

(declare-fun z!242 () Nat!270)

(declare-fun res!34584 () Bool)

(declare-fun x!27968 () Nat!270)

(declare-fun y!1991 () Nat!270)

(declare-fun law_associativity!1 (NatMonoid!4 Nat!270 Nat!270 Nat!270) Bool)

(assert (=> b!70636 (= res!34601 (= res!34584 (law_associativity!1 thiss!9195 x!27968 y!1991 z!242)))))

(declare-fun b!70637 () Bool)

(declare-fun e!38201 () Bool)

(assert (=> b!70637 (= e!38200 e!38201)))

(declare-fun res!34602 () Bool)

(assert (=> b!70637 (=> res!34602 e!38201)))

(assert (=> b!70637 (= res!34602 (not res!34584))))

(declare-fun b!70638 () Bool)

(declare-fun append!2 (NatMonoid!4 Nat!270 Nat!270) Nat!270)

(assert (=> b!70638 (= e!38201 (not (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))))))

(assert (= (and start!9550 res!34603) b!70636))

(assert (= (and b!70636 res!34601) b!70637))

(assert (= (and b!70637 (not res!34602)) b!70638))

(declare-fun m!70677 () Bool)

(assert (=> b!70636 m!70677))

(declare-fun m!70679 () Bool)

(assert (=> b!70638 m!70679))

(assert (=> b!70638 m!70679))

(declare-fun m!70681 () Bool)

(assert (=> b!70638 m!70681))

(declare-fun m!70683 () Bool)

(assert (=> b!70638 m!70683))

(assert (=> b!70638 m!70683))

(declare-fun m!70685 () Bool)

(assert (=> b!70638 m!70685))

(push 1)

(assert (not b!70636))

(assert (not b!70638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53684 () Bool)

(declare-fun e!38204 () Bool)

(assert (=> d!53684 e!38204))

(declare-fun res!34607 () Bool)

(assert (=> d!53684 (=> (not res!34607) (not e!38204))))

(declare-fun lt!15094 () Bool)

(assert (=> d!53684 (= res!34607 lt!15094)))

(declare-datatypes () ((ProofOps!356 (ProofOps!357 (prop!467 Bool)))))

(declare-fun because!1 (ProofOps!356 Bool) Bool)

(declare-fun lemma_associativity_plus!0 (Nat!270 Nat!270 Nat!270) Bool)

(assert (=> d!53684 (= lt!15094 (because!1 (ProofOps!357 (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))) (lemma_associativity_plus!0 x!27968 y!1991 z!242)))))

(assert (=> d!53684 (= (law_associativity!1 thiss!9195 x!27968 y!1991 z!242) lt!15094)))

(declare-fun b!70641 () Bool)

(assert (=> b!70641 (= e!38204 (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242)))))

(assert (= (and d!53684 res!34607) b!70641))

(declare-fun m!70687 () Bool)

(assert (=> d!53684 m!70687))

(declare-fun m!70689 () Bool)

(assert (=> d!53684 m!70689))

(assert (=> d!53684 m!70679))

(assert (=> d!53684 m!70681))

(assert (=> d!53684 m!70687))

(assert (=> d!53684 m!70683))

(assert (=> d!53684 m!70683))

(assert (=> d!53684 m!70685))

(assert (=> d!53684 m!70679))

(assert (=> b!70641 m!70679))

(assert (=> b!70641 m!70679))

(assert (=> b!70641 m!70681))

(assert (=> b!70641 m!70683))

(assert (=> b!70641 m!70683))

(assert (=> b!70641 m!70685))

(assert (=> b!70636 d!53684))

(declare-fun d!53686 () Bool)

(declare-fun c!16895 () Bool)

(assert (=> d!53686 (= c!16895 (is-AdditiveMonoid!5 thiss!9195))))

(declare-fun e!38207 () Nat!270)

(assert (=> d!53686 (= (append!2 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)) e!38207)))

(declare-fun b!70646 () Bool)

(declare-fun append!3 (NatMonoid!4 Nat!270 Nat!270) Nat!270)

(assert (=> b!70646 (= e!38207 (append!3 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)))))

(declare-fun b!70647 () Bool)

(declare-fun append!168 (NatMonoid!4 Nat!270 Nat!270) Nat!270)

(assert (=> b!70647 (= e!38207 (append!168 thiss!9195 x!27968 (append!2 thiss!9195 y!1991 z!242)))))

(assert (= (and d!53686 c!16895) b!70646))

(assert (= (and d!53686 (not c!16895)) b!70647))

(assert (=> b!70646 m!70679))

(declare-fun m!70691 () Bool)

(assert (=> b!70646 m!70691))

(assert (=> b!70647 m!70679))

(declare-fun m!70693 () Bool)

(assert (=> b!70647 m!70693))

(assert (=> b!70638 d!53686))

(declare-fun d!53688 () Bool)

(declare-fun c!16896 () Bool)

(assert (=> d!53688 (= c!16896 (is-AdditiveMonoid!5 thiss!9195))))

(declare-fun e!38208 () Nat!270)

(assert (=> d!53688 (= (append!2 thiss!9195 y!1991 z!242) e!38208)))

(declare-fun b!70648 () Bool)

(assert (=> b!70648 (= e!38208 (append!3 thiss!9195 y!1991 z!242))))

(declare-fun b!70649 () Bool)

(assert (=> b!70649 (= e!38208 (append!168 thiss!9195 y!1991 z!242))))

(assert (= (and d!53688 c!16896) b!70648))

(assert (= (and d!53688 (not c!16896)) b!70649))

(declare-fun m!70695 () Bool)

(assert (=> b!70648 m!70695))

(declare-fun m!70697 () Bool)

(assert (=> b!70649 m!70697))

(assert (=> b!70638 d!53688))

(declare-fun d!53690 () Bool)

(declare-fun c!16897 () Bool)

(assert (=> d!53690 (= c!16897 (is-AdditiveMonoid!5 thiss!9195))))

(declare-fun e!38209 () Nat!270)

(assert (=> d!53690 (= (append!2 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242) e!38209)))

(declare-fun b!70650 () Bool)

(assert (=> b!70650 (= e!38209 (append!3 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))))

(declare-fun b!70651 () Bool)

(assert (=> b!70651 (= e!38209 (append!168 thiss!9195 (append!2 thiss!9195 x!27968 y!1991) z!242))))

(assert (= (and d!53690 c!16897) b!70650))

(assert (= (and d!53690 (not c!16897)) b!70651))

(assert (=> b!70650 m!70683))

(declare-fun m!70699 () Bool)

(assert (=> b!70650 m!70699))

(assert (=> b!70651 m!70683))

(declare-fun m!70701 () Bool)

(assert (=> b!70651 m!70701))

(assert (=> b!70638 d!53690))

(declare-fun d!53692 () Bool)

(declare-fun c!16898 () Bool)

(assert (=> d!53692 (= c!16898 (is-AdditiveMonoid!5 thiss!9195))))

(declare-fun e!38210 () Nat!270)

(assert (=> d!53692 (= (append!2 thiss!9195 x!27968 y!1991) e!38210)))

(declare-fun b!70652 () Bool)

(assert (=> b!70652 (= e!38210 (append!3 thiss!9195 x!27968 y!1991))))

(declare-fun b!70653 () Bool)

(assert (=> b!70653 (= e!38210 (append!168 thiss!9195 x!27968 y!1991))))

(assert (= (and d!53692 c!16898) b!70652))

(assert (= (and d!53692 (not c!16898)) b!70653))

(declare-fun m!70703 () Bool)

(assert (=> b!70652 m!70703))

(declare-fun m!70705 () Bool)

(assert (=> b!70653 m!70705))

(assert (=> b!70638 d!53692))

(push 1)

(assert (not b!70641))

(assert (not b!70648))

(assert (not b!70652))

(assert (not b!70651))

(assert (not b!70646))

(assert (not b!70650))

(assert (not d!53684))

(assert (not b!70653))

(assert (not b!70647))

(assert (not b!70649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

