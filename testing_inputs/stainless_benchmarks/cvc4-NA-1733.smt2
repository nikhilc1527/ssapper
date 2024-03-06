; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11920 () Bool)

(assert start!11920)

(declare-fun res!47322 () Bool)

(declare-fun e!49262 () Bool)

(assert (=> start!11920 (=> (not res!47322) (not e!49262))))

(declare-datatypes () ((Monoid!32 (AdditiveMonoid!20) (MonoidExt!26 (__x!284 Int)))))

(declare-fun thiss!10169 () Monoid!32)

(assert (=> start!11920 (= res!47322 (not (is-AdditiveMonoid!20 thiss!10169)))))

(assert (=> start!11920 e!49262))

(assert (=> start!11920 true))

(declare-fun b!90269 () Bool)

(declare-fun res!47321 () Bool)

(assert (=> b!90269 (=> (not res!47321) (not e!49262))))

(declare-fun res!47274 () Bool)

(declare-datatypes () ((Nat!292 (Succ!266 (prev!840 Nat!292)) (Zero!272))))

(declare-fun x!31760 () Nat!292)

(declare-fun law_rightIdentity!14 (Monoid!32 Nat!292) Bool)

(assert (=> b!90269 (= res!47321 (= res!47274 (law_rightIdentity!14 thiss!10169 x!31760)))))

(declare-fun b!90270 () Bool)

(declare-fun e!49261 () Bool)

(assert (=> b!90270 (= e!49262 e!49261)))

(declare-fun res!47320 () Bool)

(assert (=> b!90270 (=> res!47320 e!49261)))

(assert (=> b!90270 (= res!47320 (not res!47274))))

(declare-fun b!90271 () Bool)

(declare-fun append!6 (Monoid!32 Nat!292 Nat!292) Nat!292)

(declare-fun empty!11 (Monoid!32) Nat!292)

(assert (=> b!90271 (= e!49261 (not (= (append!6 thiss!10169 x!31760 (empty!11 thiss!10169)) x!31760)))))

(assert (= (and start!11920 res!47322) b!90269))

(assert (= (and b!90269 res!47321) b!90270))

(assert (= (and b!90270 (not res!47320)) b!90271))

(declare-fun m!86104 () Bool)

(assert (=> b!90269 m!86104))

(declare-fun m!86106 () Bool)

(assert (=> b!90271 m!86106))

(assert (=> b!90271 m!86106))

(declare-fun m!86108 () Bool)

(assert (=> b!90271 m!86108))

(push 1)

(assert (not b!90269))

(assert (not b!90271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59501 () Bool)

(declare-fun e!49265 () Bool)

(assert (=> d!59501 e!49265))

(declare-fun res!47328 () Bool)

(assert (=> d!59501 (=> (not res!47328) (not e!49265))))

(declare-fun res!47327 () Bool)

(assert (=> d!59501 (= res!47328 res!47327)))

(assert (=> d!59501 true))

(assert (=> d!59501 (= (law_rightIdentity!14 thiss!10169 x!31760) res!47327)))

(declare-fun b!90274 () Bool)

(assert (=> b!90274 (= e!49265 (= (append!6 thiss!10169 x!31760 (empty!11 thiss!10169)) x!31760))))

(assert (= (and d!59501 res!47328) b!90274))

(assert (=> b!90274 m!86106))

(assert (=> b!90274 m!86106))

(assert (=> b!90274 m!86108))

(assert (=> b!90269 d!59501))

(declare-fun d!59503 () Bool)

(declare-fun c!22056 () Bool)

(assert (=> d!59503 (= c!22056 (is-AdditiveMonoid!20 thiss!10169))))

(declare-fun e!49268 () Nat!292)

(assert (=> d!59503 (= (append!6 thiss!10169 x!31760 (empty!11 thiss!10169)) e!49268)))

(declare-fun b!90279 () Bool)

(declare-fun append!7 (Monoid!32 Nat!292 Nat!292) Nat!292)

(assert (=> b!90279 (= e!49268 (append!7 thiss!10169 x!31760 (empty!11 thiss!10169)))))

(declare-fun b!90280 () Bool)

(declare-fun append!169 (Monoid!32 Nat!292 Nat!292) Nat!292)

(assert (=> b!90280 (= e!49268 (append!169 thiss!10169 x!31760 (empty!11 thiss!10169)))))

(assert (= (and d!59503 c!22056) b!90279))

(assert (= (and d!59503 (not c!22056)) b!90280))

(assert (=> b!90279 m!86106))

(declare-fun m!86110 () Bool)

(assert (=> b!90279 m!86110))

(assert (=> b!90280 m!86106))

(declare-fun m!86112 () Bool)

(assert (=> b!90280 m!86112))

(assert (=> b!90271 d!59503))

(declare-fun d!59505 () Bool)

(declare-fun c!22059 () Bool)

(assert (=> d!59505 (= c!22059 (is-AdditiveMonoid!20 thiss!10169))))

(declare-fun e!49271 () Nat!292)

(assert (=> d!59505 (= (empty!11 thiss!10169) e!49271)))

(declare-fun b!90285 () Bool)

(declare-fun empty!12 (Monoid!32) Nat!292)

(assert (=> b!90285 (= e!49271 (empty!12 thiss!10169))))

(declare-fun b!90286 () Bool)

(declare-fun empty!154 (Monoid!32) Nat!292)

(assert (=> b!90286 (= e!49271 (empty!154 thiss!10169))))

(assert (= (and d!59505 c!22059) b!90285))

(assert (= (and d!59505 (not c!22059)) b!90286))

(declare-fun m!86114 () Bool)

(assert (=> b!90285 m!86114))

(declare-fun m!86116 () Bool)

(assert (=> b!90286 m!86116))

(assert (=> b!90271 d!59505))

(push 1)

(assert (not b!90286))

(assert (not b!90279))

(assert (not b!90274))

(assert (not b!90280))

(assert (not b!90285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

