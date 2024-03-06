; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11954 () Bool)

(assert start!11954)

(declare-fun res!47367 () Bool)

(declare-fun e!49306 () Bool)

(assert (=> start!11954 (=> (not res!47367) (not e!49306))))

(declare-datatypes () ((Nat!295 (Succ!269 (prev!843 Nat!295)) (Zero!275))))

(declare-fun x!31804 () Nat!295)

(declare-fun res!47283 () Bool)

(declare-datatypes () ((Monoid!35 (AdditiveMonoid!23) (MonoidExt!29 (__x!287 Int)))))

(declare-fun thiss!10231 () Monoid!35)

(declare-fun Monoid$law_rightIdentity!0 (Monoid!35 Nat!295) Bool)

(assert (=> start!11954 (= res!47367 (= res!47283 (Monoid$law_rightIdentity!0 thiss!10231 x!31804)))))

(assert (=> start!11954 e!49306))

(assert (=> start!11954 true))

(declare-fun b!90339 () Bool)

(declare-fun e!49307 () Bool)

(assert (=> b!90339 (= e!49306 e!49307)))

(declare-fun res!47368 () Bool)

(assert (=> b!90339 (=> res!47368 e!49307)))

(assert (=> b!90339 (= res!47368 (not res!47283))))

(declare-fun b!90340 () Bool)

(declare-fun append!6 (Monoid!35 Nat!295 Nat!295) Nat!295)

(declare-fun empty!11 (Monoid!35) Nat!295)

(assert (=> b!90340 (= e!49307 (not (= (append!6 thiss!10231 x!31804 (empty!11 thiss!10231)) x!31804)))))

(assert (= (and start!11954 res!47367) b!90339))

(assert (= (and b!90339 (not res!47368)) b!90340))

(declare-fun m!86152 () Bool)

(assert (=> start!11954 m!86152))

(declare-fun m!86154 () Bool)

(assert (=> b!90340 m!86154))

(assert (=> b!90340 m!86154))

(declare-fun m!86156 () Bool)

(assert (=> b!90340 m!86156))

(push 1)

(assert (not b!90340))

(assert (not start!11954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59529 () Bool)

(declare-fun c!22074 () Bool)

(assert (=> d!59529 (= c!22074 (is-AdditiveMonoid!23 thiss!10231))))

(declare-fun e!49310 () Nat!295)

(assert (=> d!59529 (= (append!6 thiss!10231 x!31804 (empty!11 thiss!10231)) e!49310)))

(declare-fun b!90345 () Bool)

(declare-fun append!7 (Monoid!35 Nat!295 Nat!295) Nat!295)

(assert (=> b!90345 (= e!49310 (append!7 thiss!10231 x!31804 (empty!11 thiss!10231)))))

(declare-fun b!90346 () Bool)

(declare-fun append!169 (Monoid!35 Nat!295 Nat!295) Nat!295)

(assert (=> b!90346 (= e!49310 (append!169 thiss!10231 x!31804 (empty!11 thiss!10231)))))

(assert (= (and d!59529 c!22074) b!90345))

(assert (= (and d!59529 (not c!22074)) b!90346))

(assert (=> b!90345 m!86154))

(declare-fun m!86158 () Bool)

(assert (=> b!90345 m!86158))

(assert (=> b!90346 m!86154))

(declare-fun m!86160 () Bool)

(assert (=> b!90346 m!86160))

(assert (=> b!90340 d!59529))

(declare-fun d!59531 () Bool)

(declare-fun c!22077 () Bool)

(assert (=> d!59531 (= c!22077 (is-AdditiveMonoid!23 thiss!10231))))

(declare-fun e!49313 () Nat!295)

(assert (=> d!59531 (= (empty!11 thiss!10231) e!49313)))

(declare-fun b!90351 () Bool)

(declare-fun empty!12 (Monoid!35) Nat!295)

(assert (=> b!90351 (= e!49313 (empty!12 thiss!10231))))

(declare-fun b!90352 () Bool)

(declare-fun empty!154 (Monoid!35) Nat!295)

(assert (=> b!90352 (= e!49313 (empty!154 thiss!10231))))

(assert (= (and d!59531 c!22077) b!90351))

(assert (= (and d!59531 (not c!22077)) b!90352))

(declare-fun m!86162 () Bool)

(assert (=> b!90351 m!86162))

(declare-fun m!86164 () Bool)

(assert (=> b!90352 m!86164))

(assert (=> b!90340 d!59531))

(declare-fun d!59533 () Bool)

(declare-fun e!49316 () Bool)

(assert (=> d!59533 e!49316))

(declare-fun res!47372 () Bool)

(assert (=> d!59533 (=> (not res!47372) (not e!49316))))

(declare-fun lt!20480 () Bool)

(assert (=> d!59533 (= res!47372 lt!20480)))

(declare-fun choose!50 (Monoid!35 Nat!295) Bool)

(assert (=> d!59533 (= lt!20480 (choose!50 thiss!10231 x!31804))))

(assert (=> d!59533 (= (Monoid$law_rightIdentity!0 thiss!10231 x!31804) lt!20480)))

(declare-fun b!90355 () Bool)

(assert (=> b!90355 (= e!49316 (= (append!6 thiss!10231 x!31804 (empty!11 thiss!10231)) x!31804))))

(assert (= (and d!59533 res!47372) b!90355))

(declare-fun m!86166 () Bool)

(assert (=> d!59533 m!86166))

(assert (=> b!90355 m!86154))

(assert (=> b!90355 m!86154))

(assert (=> b!90355 m!86156))

(assert (=> start!11954 d!59533))

(push 1)

(assert (not d!59533))

(assert (not b!90355))

(assert (not b!90351))

(assert (not b!90352))

(assert (not b!90346))

(assert (not b!90345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

