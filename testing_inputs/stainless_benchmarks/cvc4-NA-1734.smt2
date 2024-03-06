; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11928 () Bool)

(assert start!11928)

(declare-fun res!47335 () Bool)

(declare-fun e!49277 () Bool)

(assert (=> start!11928 (=> (not res!47335) (not e!49277))))

(declare-datatypes () ((Monoid!33 (AdditiveMonoid!21) (MonoidExt!27 (__x!285 Int)))))

(declare-fun thiss!10262 () Monoid!33)

(assert (=> start!11928 (= res!47335 (is-AdditiveMonoid!21 thiss!10262))))

(assert (=> start!11928 e!49277))

(assert (=> start!11928 true))

(declare-fun b!90293 () Bool)

(declare-fun res!47336 () Bool)

(assert (=> b!90293 (=> (not res!47336) (not e!49277))))

(declare-fun res!47288 () Bool)

(declare-datatypes () ((Nat!293 (Succ!267 (prev!841 Nat!293)) (Zero!273))))

(declare-fun x!31833 () Nat!293)

(declare-fun law_leftIdentity!2 (Monoid!33 Nat!293) Bool)

(assert (=> b!90293 (= res!47336 (= res!47288 (law_leftIdentity!2 thiss!10262 x!31833)))))

(declare-fun b!90294 () Bool)

(declare-fun e!49276 () Bool)

(assert (=> b!90294 (= e!49277 e!49276)))

(declare-fun res!47337 () Bool)

(assert (=> b!90294 (=> res!47337 e!49276)))

(assert (=> b!90294 (= res!47337 (not res!47288))))

(declare-fun b!90295 () Bool)

(declare-fun append!6 (Monoid!33 Nat!293 Nat!293) Nat!293)

(declare-fun empty!11 (Monoid!33) Nat!293)

(assert (=> b!90295 (= e!49276 (not (= (append!6 thiss!10262 (empty!11 thiss!10262) x!31833) x!31833)))))

(assert (= (and start!11928 res!47335) b!90293))

(assert (= (and b!90293 res!47336) b!90294))

(assert (= (and b!90294 (not res!47337)) b!90295))

(declare-fun m!86118 () Bool)

(assert (=> b!90293 m!86118))

(declare-fun m!86120 () Bool)

(assert (=> b!90295 m!86120))

(assert (=> b!90295 m!86120))

(declare-fun m!86122 () Bool)

(assert (=> b!90295 m!86122))

(push 1)

(assert (not b!90295))

(assert (not b!90293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59507 () Bool)

(declare-fun c!22062 () Bool)

(assert (=> d!59507 (= c!22062 (is-AdditiveMonoid!21 thiss!10262))))

(declare-fun e!49280 () Nat!293)

(assert (=> d!59507 (= (append!6 thiss!10262 (empty!11 thiss!10262) x!31833) e!49280)))

(declare-fun b!90300 () Bool)

(declare-fun append!7 (Monoid!33 Nat!293 Nat!293) Nat!293)

(assert (=> b!90300 (= e!49280 (append!7 thiss!10262 (empty!11 thiss!10262) x!31833))))

(declare-fun b!90301 () Bool)

(declare-fun append!169 (Monoid!33 Nat!293 Nat!293) Nat!293)

(assert (=> b!90301 (= e!49280 (append!169 thiss!10262 (empty!11 thiss!10262) x!31833))))

(assert (= (and d!59507 c!22062) b!90300))

(assert (= (and d!59507 (not c!22062)) b!90301))

(assert (=> b!90300 m!86120))

(declare-fun m!86124 () Bool)

(assert (=> b!90300 m!86124))

(assert (=> b!90301 m!86120))

(declare-fun m!86126 () Bool)

(assert (=> b!90301 m!86126))

(assert (=> b!90295 d!59507))

(declare-fun d!59509 () Bool)

(declare-fun c!22065 () Bool)

(assert (=> d!59509 (= c!22065 (is-AdditiveMonoid!21 thiss!10262))))

(declare-fun e!49283 () Nat!293)

(assert (=> d!59509 (= (empty!11 thiss!10262) e!49283)))

(declare-fun b!90306 () Bool)

(declare-fun empty!12 (Monoid!33) Nat!293)

(assert (=> b!90306 (= e!49283 (empty!12 thiss!10262))))

(declare-fun b!90307 () Bool)

(declare-fun empty!154 (Monoid!33) Nat!293)

(assert (=> b!90307 (= e!49283 (empty!154 thiss!10262))))

(assert (= (and d!59509 c!22065) b!90306))

(assert (= (and d!59509 (not c!22065)) b!90307))

(declare-fun m!86128 () Bool)

(assert (=> b!90306 m!86128))

(declare-fun m!86130 () Bool)

(assert (=> b!90307 m!86130))

(assert (=> b!90295 d!59509))

(declare-fun d!59511 () Bool)

(declare-fun Monoid$law_leftIdentity!0 (Monoid!33 Nat!293) Bool)

(assert (=> d!59511 (Monoid$law_leftIdentity!0 thiss!10262 x!31833)))

(assert (=> d!59511 (= (law_leftIdentity!2 thiss!10262 x!31833) true)))

(declare-fun bs!41628 () Bool)

(assert (= bs!41628 d!59511))

(declare-fun m!86132 () Bool)

(assert (=> bs!41628 m!86132))

(assert (=> b!90293 d!59511))

(push 1)

(assert (not b!90300))

(assert (not d!59511))

(assert (not b!90307))

(assert (not b!90306))

(assert (not b!90301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59513 () Bool)

(assert (=> d!59513 true))

(assert (=> d!59513 true))

(declare-fun res!47340 () Nat!293)

(assert (=> d!59513 (= (empty!154 thiss!10262) res!47340)))

(assert (=> b!90307 d!59513))

(declare-fun d!59515 () Bool)

(assert (=> d!59515 (is-AdditiveMonoid!21 thiss!10262)))

(assert (=> d!59515 (= (empty!12 thiss!10262) Zero!273)))

(assert (=> b!90306 d!59515))

(declare-fun d!59517 () Bool)

(assert (=> d!59517 true))

(assert (=> d!59517 true))

(declare-fun res!47343 () Nat!293)

(assert (=> d!59517 (= (append!169 thiss!10262 (empty!11 thiss!10262) x!31833) res!47343)))

(assert (=> b!90301 d!59517))

(declare-fun d!59519 () Bool)

(declare-fun e!49286 () Bool)

(assert (=> d!59519 e!49286))

(declare-fun res!47347 () Bool)

(assert (=> d!59519 (=> (not res!47347) (not e!49286))))

(declare-fun lt!20477 () Bool)

(assert (=> d!59519 (= res!47347 lt!20477)))

(declare-fun choose!49 (Monoid!33 Nat!293) Bool)

(assert (=> d!59519 (= lt!20477 (choose!49 thiss!10262 x!31833))))

(assert (=> d!59519 (= (Monoid$law_leftIdentity!0 thiss!10262 x!31833) lt!20477)))

(declare-fun b!90310 () Bool)

(assert (=> b!90310 (= e!49286 (= (append!6 thiss!10262 (empty!11 thiss!10262) x!31833) x!31833))))

(assert (= (and d!59519 res!47347) b!90310))

(declare-fun m!86134 () Bool)

(assert (=> d!59519 m!86134))

(assert (=> b!90310 m!86120))

(assert (=> b!90310 m!86120))

(assert (=> b!90310 m!86122))

(assert (=> d!59511 d!59519))

(declare-fun d!59521 () Bool)

(declare-fun +!4 (Nat!293 Nat!293) Nat!293)

(assert (=> d!59521 (= (append!7 thiss!10262 (empty!11 thiss!10262) x!31833) (+!4 (empty!11 thiss!10262) x!31833))))

(declare-fun bs!41629 () Bool)

(assert (= bs!41629 d!59521))

(assert (=> bs!41629 m!86120))

(declare-fun m!86136 () Bool)

(assert (=> bs!41629 m!86136))

(assert (=> b!90300 d!59521))

(push 1)

(assert (not b!90310))

(assert (not d!59519))

(assert (not d!59521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

