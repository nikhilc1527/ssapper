; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12008 () Bool)

(assert start!12008)

(declare-fun res!47435 () Bool)

(declare-fun e!49391 () Bool)

(assert (=> start!12008 (=> (not res!47435) (not e!49391))))

(declare-datatypes () ((Monoid!40 (AdditiveMonoid!28) (MonoidExt!34 (__x!292 Int)))))

(declare-fun thiss!10196 () Monoid!40)

(assert (=> start!12008 (= res!47435 (is-AdditiveMonoid!28 thiss!10196))))

(assert (=> start!12008 e!49391))

(assert (=> start!12008 true))

(declare-datatypes () ((Nat!302 (Succ!276 (prev!850 Nat!302)) (Zero!282))))

(declare-fun y!2150 () Nat!302)

(declare-fun z!271 () Nat!302)

(declare-fun b!90472 () Bool)

(declare-fun x!31780 () Nat!302)

(declare-datatypes () ((ProofOps!392 (ProofOps!393 (prop!537 Bool)))))

(declare-fun because!1 (ProofOps!392 Bool) Bool)

(declare-fun Monoid$law_associativity!0 (Monoid!40 Nat!302 Nat!302 Nat!302) Bool)

(declare-fun lemma_associativity_plus!1 (Nat!302 Nat!302 Nat!302) Bool)

(assert (=> b!90472 (= e!49391 (not (because!1 (ProofOps!393 (Monoid$law_associativity!0 thiss!10196 x!31780 y!2150 z!271)) (lemma_associativity_plus!1 x!31780 y!2150 z!271))))))

(assert (= (and start!12008 res!47435) b!90472))

(declare-fun m!86300 () Bool)

(assert (=> b!90472 m!86300))

(declare-fun m!86302 () Bool)

(assert (=> b!90472 m!86302))

(assert (=> b!90472 m!86302))

(declare-fun m!86304 () Bool)

(assert (=> b!90472 m!86304))

(push 1)

(assert (not b!90472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59599 () Bool)

(assert (=> d!59599 (= (because!1 (ProofOps!393 (Monoid$law_associativity!0 thiss!10196 x!31780 y!2150 z!271)) (lemma_associativity_plus!1 x!31780 y!2150 z!271)) (and (lemma_associativity_plus!1 x!31780 y!2150 z!271) (prop!537 (ProofOps!393 (Monoid$law_associativity!0 thiss!10196 x!31780 y!2150 z!271)))))))

(assert (=> b!90472 d!59599))

(declare-fun d!59601 () Bool)

(declare-fun e!49394 () Bool)

(assert (=> d!59601 e!49394))

(declare-fun res!47439 () Bool)

(assert (=> d!59601 (=> (not res!47439) (not e!49394))))

(declare-fun lt!20501 () Bool)

(assert (=> d!59601 (= res!47439 lt!20501)))

(declare-fun choose!48 (Monoid!40 Nat!302 Nat!302 Nat!302) Bool)

(assert (=> d!59601 (= lt!20501 (choose!48 thiss!10196 x!31780 y!2150 z!271))))

(assert (=> d!59601 (= (Monoid$law_associativity!0 thiss!10196 x!31780 y!2150 z!271) lt!20501)))

(declare-fun b!90475 () Bool)

(declare-fun append!6 (Monoid!40 Nat!302 Nat!302) Nat!302)

(assert (=> b!90475 (= e!49394 (= (append!6 thiss!10196 x!31780 (append!6 thiss!10196 y!2150 z!271)) (append!6 thiss!10196 (append!6 thiss!10196 x!31780 y!2150) z!271)))))

(assert (= (and d!59601 res!47439) b!90475))

(declare-fun m!86306 () Bool)

(assert (=> d!59601 m!86306))

(declare-fun m!86308 () Bool)

(assert (=> b!90475 m!86308))

(assert (=> b!90475 m!86308))

(declare-fun m!86310 () Bool)

(assert (=> b!90475 m!86310))

(declare-fun m!86312 () Bool)

(assert (=> b!90475 m!86312))

(assert (=> b!90475 m!86312))

(declare-fun m!86314 () Bool)

(assert (=> b!90475 m!86314))

(assert (=> b!90472 d!59601))

(declare-fun e!49397 () Bool)

(declare-fun b!90480 () Bool)

(declare-fun +!4 (Nat!302 Nat!302) Nat!302)

(assert (=> b!90480 (= e!49397 (= (+!4 x!31780 (+!4 y!2150 z!271)) (+!4 (+!4 x!31780 y!2150) z!271)))))

(declare-fun lt!20504 () Bool)

(assert (=> b!90480 (= lt!20504 (lemma_associativity_plus!1 (prev!850 x!31780) y!2150 z!271))))

(declare-fun d!59603 () Bool)

(assert (=> d!59603 e!49397))

(declare-fun c!22113 () Bool)

(assert (=> d!59603 (= c!22113 (is-Succ!276 x!31780))))

(assert (=> d!59603 (= (lemma_associativity_plus!1 x!31780 y!2150 z!271) true)))

(declare-fun b!90481 () Bool)

(assert (=> b!90481 (= e!49397 (= (+!4 x!31780 (+!4 y!2150 z!271)) (+!4 (+!4 x!31780 y!2150) z!271)))))

(assert (= (and d!59603 c!22113) b!90480))

(assert (= (and d!59603 (not c!22113)) b!90481))

(declare-fun m!86316 () Bool)

(assert (=> b!90480 m!86316))

(declare-fun m!86318 () Bool)

(assert (=> b!90480 m!86318))

(declare-fun m!86320 () Bool)

(assert (=> b!90480 m!86320))

(assert (=> b!90480 m!86316))

(assert (=> b!90480 m!86320))

(declare-fun m!86322 () Bool)

(assert (=> b!90480 m!86322))

(declare-fun m!86324 () Bool)

(assert (=> b!90480 m!86324))

(assert (=> b!90481 m!86320))

(assert (=> b!90481 m!86320))

(assert (=> b!90481 m!86322))

(assert (=> b!90481 m!86316))

(assert (=> b!90481 m!86316))

(assert (=> b!90481 m!86318))

(assert (=> b!90472 d!59603))

(push 1)

(assert (not d!59601))

(assert (not b!90475))

(assert (not b!90481))

(assert (not b!90480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

