; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9586 () Bool)

(assert start!9586)

(declare-fun res!34650 () Bool)

(declare-fun e!38265 () Bool)

(assert (=> start!9586 (=> (not res!34650) (not e!38265))))

(declare-datatypes () ((NatMonoid!9 (AdditiveMonoid!10) (NatMonoidExt!8 (__x!267 Int)))))

(declare-fun thiss!9150 () NatMonoid!9)

(assert (=> start!9586 (= res!34650 (is-AdditiveMonoid!10 thiss!9150))))

(assert (=> start!9586 e!38265))

(assert (=> start!9586 true))

(declare-fun b!70749 () Bool)

(declare-fun res!34651 () Bool)

(assert (=> b!70749 (=> (not res!34651) (not e!38265))))

(declare-fun res!34578 () Bool)

(declare-datatypes () ((Nat!276 (Succ!254 (prev!815 Nat!276)) (Zero!259))))

(declare-fun x!27943 () Nat!276)

(declare-fun law_leftIdentity!11 (NatMonoid!9 Nat!276) Bool)

(assert (=> b!70749 (= res!34651 (= res!34578 (law_leftIdentity!11 thiss!9150 x!27943)))))

(declare-fun b!70750 () Bool)

(declare-fun e!38264 () Bool)

(assert (=> b!70750 (= e!38265 e!38264)))

(declare-fun res!34652 () Bool)

(assert (=> b!70750 (=> res!34652 e!38264)))

(assert (=> b!70750 (= res!34652 (not res!34578))))

(declare-fun b!70751 () Bool)

(declare-fun append!2 (NatMonoid!9 Nat!276 Nat!276) Nat!276)

(declare-fun empty!6 (NatMonoid!9) Nat!276)

(assert (=> b!70751 (= e!38264 (not (= (append!2 thiss!9150 (empty!6 thiss!9150) x!27943) x!27943)))))

(assert (= (and start!9586 res!34650) b!70749))

(assert (= (and b!70749 res!34651) b!70750))

(assert (= (and b!70750 (not res!34652)) b!70751))

(declare-fun m!70811 () Bool)

(assert (=> b!70749 m!70811))

(declare-fun m!70813 () Bool)

(assert (=> b!70751 m!70813))

(assert (=> b!70751 m!70813))

(declare-fun m!70815 () Bool)

(assert (=> b!70751 m!70815))

(push 1)

(assert (not b!70751))

(assert (not b!70749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53752 () Bool)

(declare-fun c!16932 () Bool)

(assert (=> d!53752 (= c!16932 (is-AdditiveMonoid!10 thiss!9150))))

(declare-fun e!38268 () Nat!276)

(assert (=> d!53752 (= (append!2 thiss!9150 (empty!6 thiss!9150) x!27943) e!38268)))

(declare-fun b!70756 () Bool)

(declare-fun append!3 (NatMonoid!9 Nat!276 Nat!276) Nat!276)

(assert (=> b!70756 (= e!38268 (append!3 thiss!9150 (empty!6 thiss!9150) x!27943))))

(declare-fun b!70757 () Bool)

(declare-fun append!168 (NatMonoid!9 Nat!276 Nat!276) Nat!276)

(assert (=> b!70757 (= e!38268 (append!168 thiss!9150 (empty!6 thiss!9150) x!27943))))

(assert (= (and d!53752 c!16932) b!70756))

(assert (= (and d!53752 (not c!16932)) b!70757))

(assert (=> b!70756 m!70813))

(declare-fun m!70817 () Bool)

(assert (=> b!70756 m!70817))

(assert (=> b!70757 m!70813))

(declare-fun m!70819 () Bool)

(assert (=> b!70757 m!70819))

(assert (=> b!70751 d!53752))

(declare-fun d!53754 () Bool)

(declare-fun c!16935 () Bool)

(assert (=> d!53754 (= c!16935 (is-AdditiveMonoid!10 thiss!9150))))

(declare-fun e!38271 () Nat!276)

(assert (=> d!53754 (= (empty!6 thiss!9150) e!38271)))

(declare-fun b!70762 () Bool)

(declare-fun empty!7 (NatMonoid!9) Nat!276)

(assert (=> b!70762 (= e!38271 (empty!7 thiss!9150))))

(declare-fun b!70763 () Bool)

(declare-fun empty!139 (NatMonoid!9) Nat!276)

(assert (=> b!70763 (= e!38271 (empty!139 thiss!9150))))

(assert (= (and d!53754 c!16935) b!70762))

(assert (= (and d!53754 (not c!16935)) b!70763))

(declare-fun m!70821 () Bool)

(assert (=> b!70762 m!70821))

(declare-fun m!70823 () Bool)

(assert (=> b!70763 m!70823))

(assert (=> b!70751 d!53754))

(declare-fun d!53756 () Bool)

(assert (=> d!53756 (= (append!2 thiss!9150 (empty!6 thiss!9150) x!27943) x!27943)))

(assert (=> d!53756 (= (law_leftIdentity!11 thiss!9150 x!27943) true)))

(declare-fun bs!37653 () Bool)

(assert (= bs!37653 d!53756))

(assert (=> bs!37653 m!70813))

(assert (=> bs!37653 m!70813))

(assert (=> bs!37653 m!70815))

(assert (=> b!70749 d!53756))

(push 1)

(assert (not b!70763))

(assert (not b!70757))

(assert (not d!53756))

(assert (not b!70762))

(assert (not b!70756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

