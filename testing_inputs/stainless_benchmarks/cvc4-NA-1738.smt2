; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11968 () Bool)

(assert start!11968)

(declare-fun res!47385 () Bool)

(declare-fun e!49334 () Bool)

(assert (=> start!11968 (=> (not res!47385) (not e!49334))))

(declare-datatypes () ((Monoid!37 (AdditiveMonoid!25) (MonoidExt!31 (__x!289 Int)))))

(declare-fun thiss!10278 () Monoid!37)

(assert (=> start!11968 (= res!47385 (is-AdditiveMonoid!25 thiss!10278))))

(assert (=> start!11968 e!49334))

(assert (=> start!11968 true))

(declare-fun b!90379 () Bool)

(declare-datatypes () ((Nat!297 (Succ!271 (prev!845 Nat!297)) (Zero!277))))

(declare-fun x!31844 () Nat!297)

(declare-datatypes () ((ProofOps!388 (ProofOps!389 (prop!534 Bool)))))

(declare-fun because!1 (ProofOps!388 Bool) Bool)

(declare-fun Monoid$law_rightIdentity!0 (Monoid!37 Nat!297) Bool)

(declare-fun lemma_rightIdentity_plus!1 (Nat!297) Bool)

(assert (=> b!90379 (= e!49334 (not (because!1 (ProofOps!389 (Monoid$law_rightIdentity!0 thiss!10278 x!31844)) (lemma_rightIdentity_plus!1 x!31844))))))

(assert (= (and start!11968 res!47385) b!90379))

(declare-fun m!86196 () Bool)

(assert (=> b!90379 m!86196))

(declare-fun m!86198 () Bool)

(assert (=> b!90379 m!86198))

(assert (=> b!90379 m!86198))

(declare-fun m!86200 () Bool)

(assert (=> b!90379 m!86200))

(push 1)

(assert (not b!90379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59545 () Bool)

(assert (=> d!59545 (= (because!1 (ProofOps!389 (Monoid$law_rightIdentity!0 thiss!10278 x!31844)) (lemma_rightIdentity_plus!1 x!31844)) (and (lemma_rightIdentity_plus!1 x!31844) (prop!534 (ProofOps!389 (Monoid$law_rightIdentity!0 thiss!10278 x!31844)))))))

(assert (=> b!90379 d!59545))

(declare-fun d!59547 () Bool)

(declare-fun e!49337 () Bool)

(assert (=> d!59547 e!49337))

(declare-fun res!47389 () Bool)

(assert (=> d!59547 (=> (not res!47389) (not e!49337))))

(declare-fun lt!20486 () Bool)

(assert (=> d!59547 (= res!47389 lt!20486)))

(declare-fun choose!50 (Monoid!37 Nat!297) Bool)

(assert (=> d!59547 (= lt!20486 (choose!50 thiss!10278 x!31844))))

(assert (=> d!59547 (= (Monoid$law_rightIdentity!0 thiss!10278 x!31844) lt!20486)))

(declare-fun b!90382 () Bool)

(declare-fun append!6 (Monoid!37 Nat!297 Nat!297) Nat!297)

(declare-fun empty!11 (Monoid!37) Nat!297)

(assert (=> b!90382 (= e!49337 (= (append!6 thiss!10278 x!31844 (empty!11 thiss!10278)) x!31844))))

(assert (= (and d!59547 res!47389) b!90382))

(declare-fun m!86202 () Bool)

(assert (=> d!59547 m!86202))

(declare-fun m!86204 () Bool)

(assert (=> b!90382 m!86204))

(assert (=> b!90382 m!86204))

(declare-fun m!86206 () Bool)

(assert (=> b!90382 m!86206))

(assert (=> b!90379 d!59547))

(declare-fun b!90387 () Bool)

(declare-fun e!49340 () Bool)

(declare-fun +!4 (Nat!297 Nat!297) Nat!297)

(assert (=> b!90387 (= e!49340 (= (+!4 x!31844 Zero!277) x!31844))))

(declare-fun lt!20489 () Bool)

(assert (=> b!90387 (= lt!20489 (lemma_rightIdentity_plus!1 (prev!845 x!31844)))))

(declare-fun d!59549 () Bool)

(assert (=> d!59549 e!49340))

(declare-fun c!22086 () Bool)

(assert (=> d!59549 (= c!22086 (is-Succ!271 x!31844))))

(assert (=> d!59549 (= (lemma_rightIdentity_plus!1 x!31844) true)))

(declare-fun b!90388 () Bool)

(assert (=> b!90388 (= e!49340 (= (+!4 x!31844 Zero!277) x!31844))))

(assert (= (and d!59549 c!22086) b!90387))

(assert (= (and d!59549 (not c!22086)) b!90388))

(declare-fun m!86208 () Bool)

(assert (=> b!90387 m!86208))

(declare-fun m!86210 () Bool)

(assert (=> b!90387 m!86210))

(assert (=> b!90388 m!86208))

(assert (=> b!90379 d!59549))

(push 1)

(assert (not b!90382))

(assert (not d!59547))

(assert (not b!90387))

(assert (not b!90388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

