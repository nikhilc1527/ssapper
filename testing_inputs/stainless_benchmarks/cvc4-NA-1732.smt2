; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11898 () Bool)

(assert start!11898)

(declare-fun res!47302 () Bool)

(declare-fun e!49243 () Bool)

(assert (=> start!11898 (=> (not res!47302) (not e!49243))))

(declare-datatypes () ((Monoid!31 (AdditiveMonoid!19) (MonoidExt!25 (__x!283 Int)))))

(declare-fun thiss!10169 () Monoid!31)

(assert (=> start!11898 (= res!47302 (is-AdditiveMonoid!19 thiss!10169))))

(assert (=> start!11898 e!49243))

(assert (=> start!11898 true))

(declare-fun b!90239 () Bool)

(declare-fun res!47301 () Bool)

(assert (=> b!90239 (=> (not res!47301) (not e!49243))))

(declare-datatypes () ((Nat!291 (Succ!265 (prev!839 Nat!291)) (Zero!271))))

(declare-fun x!31760 () Nat!291)

(declare-fun res!47273 () Bool)

(declare-fun law_rightIdentity!3 (Monoid!31 Nat!291) Bool)

(assert (=> b!90239 (= res!47301 (= res!47273 (law_rightIdentity!3 thiss!10169 x!31760)))))

(declare-fun b!90240 () Bool)

(declare-fun e!49244 () Bool)

(assert (=> b!90240 (= e!49243 e!49244)))

(declare-fun res!47303 () Bool)

(assert (=> b!90240 (=> res!47303 e!49244)))

(assert (=> b!90240 (= res!47303 (not res!47273))))

(declare-fun b!90241 () Bool)

(declare-fun append!6 (Monoid!31 Nat!291 Nat!291) Nat!291)

(declare-fun empty!11 (Monoid!31) Nat!291)

(assert (=> b!90241 (= e!49244 (not (= (append!6 thiss!10169 x!31760 (empty!11 thiss!10169)) x!31760)))))

(assert (= (and start!11898 res!47302) b!90239))

(assert (= (and b!90239 res!47301) b!90240))

(assert (= (and b!90240 (not res!47303)) b!90241))

(declare-fun m!86076 () Bool)

(assert (=> b!90239 m!86076))

(declare-fun m!86078 () Bool)

(assert (=> b!90241 m!86078))

(assert (=> b!90241 m!86078))

(declare-fun m!86080 () Bool)

(assert (=> b!90241 m!86080))

(push 1)

(assert (not b!90239))

(assert (not b!90241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59481 () Bool)

(declare-datatypes () ((ProofOps!386 (ProofOps!387 (prop!533 Bool)))))

(declare-fun because!1 (ProofOps!386 Bool) Bool)

(declare-fun Monoid$law_rightIdentity!0 (Monoid!31 Nat!291) Bool)

(declare-fun lemma_rightIdentity_plus!1 (Nat!291) Bool)

(assert (=> d!59481 (because!1 (ProofOps!387 (Monoid$law_rightIdentity!0 thiss!10169 x!31760)) (lemma_rightIdentity_plus!1 x!31760))))

(assert (=> d!59481 (= (law_rightIdentity!3 thiss!10169 x!31760) true)))

(declare-fun bs!41624 () Bool)

(assert (= bs!41624 d!59481))

(declare-fun m!86082 () Bool)

(assert (=> bs!41624 m!86082))

(declare-fun m!86084 () Bool)

(assert (=> bs!41624 m!86084))

(assert (=> bs!41624 m!86084))

(declare-fun m!86086 () Bool)

(assert (=> bs!41624 m!86086))

(assert (=> b!90239 d!59481))

(declare-fun d!59483 () Bool)

(declare-fun c!22047 () Bool)

(assert (=> d!59483 (= c!22047 (is-AdditiveMonoid!19 thiss!10169))))

(declare-fun e!49247 () Nat!291)

(assert (=> d!59483 (= (append!6 thiss!10169 x!31760 (empty!11 thiss!10169)) e!49247)))

(declare-fun b!90246 () Bool)

(declare-fun append!7 (Monoid!31 Nat!291 Nat!291) Nat!291)

(assert (=> b!90246 (= e!49247 (append!7 thiss!10169 x!31760 (empty!11 thiss!10169)))))

(declare-fun b!90247 () Bool)

(declare-fun append!169 (Monoid!31 Nat!291 Nat!291) Nat!291)

(assert (=> b!90247 (= e!49247 (append!169 thiss!10169 x!31760 (empty!11 thiss!10169)))))

(assert (= (and d!59483 c!22047) b!90246))

(assert (= (and d!59483 (not c!22047)) b!90247))

(assert (=> b!90246 m!86078))

(declare-fun m!86088 () Bool)

(assert (=> b!90246 m!86088))

(assert (=> b!90247 m!86078))

(declare-fun m!86090 () Bool)

(assert (=> b!90247 m!86090))

(assert (=> b!90241 d!59483))

(declare-fun d!59485 () Bool)

(declare-fun c!22050 () Bool)

(assert (=> d!59485 (= c!22050 (is-AdditiveMonoid!19 thiss!10169))))

(declare-fun e!49250 () Nat!291)

(assert (=> d!59485 (= (empty!11 thiss!10169) e!49250)))

(declare-fun b!90252 () Bool)

(declare-fun empty!12 (Monoid!31) Nat!291)

(assert (=> b!90252 (= e!49250 (empty!12 thiss!10169))))

(declare-fun b!90253 () Bool)

(declare-fun empty!154 (Monoid!31) Nat!291)

(assert (=> b!90253 (= e!49250 (empty!154 thiss!10169))))

(assert (= (and d!59485 c!22050) b!90252))

(assert (= (and d!59485 (not c!22050)) b!90253))

(declare-fun m!86092 () Bool)

(assert (=> b!90252 m!86092))

(declare-fun m!86094 () Bool)

(assert (=> b!90253 m!86094))

(assert (=> b!90241 d!59485))

(push 1)

(assert (not b!90246))

(assert (not b!90252))

(assert (not b!90247))

(assert (not d!59481))

(assert (not b!90253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59487 () Bool)

(assert (=> d!59487 true))

(assert (=> d!59487 true))

(declare-fun res!47306 () Nat!291)

(assert (=> d!59487 (= (append!169 thiss!10169 x!31760 (empty!11 thiss!10169)) res!47306)))

(assert (=> b!90247 d!59487))

(declare-fun d!59489 () Bool)

(declare-fun +!4 (Nat!291 Nat!291) Nat!291)

(assert (=> d!59489 (= (append!7 thiss!10169 x!31760 (empty!11 thiss!10169)) (+!4 x!31760 (empty!11 thiss!10169)))))

(declare-fun bs!41625 () Bool)

(assert (= bs!41625 d!59489))

(assert (=> bs!41625 m!86078))

(declare-fun m!86096 () Bool)

(assert (=> bs!41625 m!86096))

(assert (=> b!90246 d!59489))

(declare-fun d!59491 () Bool)

(assert (=> d!59491 true))

(assert (=> d!59491 true))

(declare-fun res!47309 () Nat!291)

(assert (=> d!59491 (= (empty!154 thiss!10169) res!47309)))

(assert (=> b!90253 d!59491))

(declare-fun d!59493 () Bool)

(assert (=> d!59493 (is-AdditiveMonoid!19 thiss!10169)))

(assert (=> d!59493 (= (empty!12 thiss!10169) Zero!271)))

(assert (=> b!90252 d!59493))

(declare-fun d!59495 () Bool)

(assert (=> d!59495 (= (because!1 (ProofOps!387 (Monoid$law_rightIdentity!0 thiss!10169 x!31760)) (lemma_rightIdentity_plus!1 x!31760)) (and (lemma_rightIdentity_plus!1 x!31760) (prop!533 (ProofOps!387 (Monoid$law_rightIdentity!0 thiss!10169 x!31760)))))))

(assert (=> d!59481 d!59495))

(declare-fun d!59497 () Bool)

(declare-fun e!49253 () Bool)

(assert (=> d!59497 e!49253))

(declare-fun res!47313 () Bool)

(assert (=> d!59497 (=> (not res!47313) (not e!49253))))

(declare-fun lt!20471 () Bool)

(assert (=> d!59497 (= res!47313 lt!20471)))

(declare-fun choose!50 (Monoid!31 Nat!291) Bool)

(assert (=> d!59497 (= lt!20471 (choose!50 thiss!10169 x!31760))))

(assert (=> d!59497 (= (Monoid$law_rightIdentity!0 thiss!10169 x!31760) lt!20471)))

(declare-fun b!90256 () Bool)

(assert (=> b!90256 (= e!49253 (= (append!6 thiss!10169 x!31760 (empty!11 thiss!10169)) x!31760))))

(assert (= (and d!59497 res!47313) b!90256))

(declare-fun m!86098 () Bool)

(assert (=> d!59497 m!86098))

(assert (=> b!90256 m!86078))

(assert (=> b!90256 m!86078))

(assert (=> b!90256 m!86080))

(assert (=> d!59481 d!59497))

(declare-fun b!90261 () Bool)

(declare-fun e!49256 () Bool)

(assert (=> b!90261 (= e!49256 (= (+!4 x!31760 Zero!271) x!31760))))

(declare-fun lt!20474 () Bool)

(assert (=> b!90261 (= lt!20474 (lemma_rightIdentity_plus!1 (prev!839 x!31760)))))

(declare-fun d!59499 () Bool)

(assert (=> d!59499 e!49256))

(declare-fun c!22053 () Bool)

(assert (=> d!59499 (= c!22053 (is-Succ!265 x!31760))))

(assert (=> d!59499 (= (lemma_rightIdentity_plus!1 x!31760) true)))

(declare-fun b!90262 () Bool)

(assert (=> b!90262 (= e!49256 (= (+!4 x!31760 Zero!271) x!31760))))

(assert (= (and d!59499 c!22053) b!90261))

(assert (= (and d!59499 (not c!22053)) b!90262))

(declare-fun m!86100 () Bool)

(assert (=> b!90261 m!86100))

(declare-fun m!86102 () Bool)

(assert (=> b!90261 m!86102))

(assert (=> b!90262 m!86100))

(assert (=> d!59481 d!59499))

(push 1)

(assert (not b!90256))

(assert (not b!90261))

(assert (not d!59497))

(assert (not b!90262))

(assert (not d!59489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

