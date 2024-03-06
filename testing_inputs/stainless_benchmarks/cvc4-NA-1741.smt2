; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11986 () Bool)

(assert start!11986)

(declare-fun res!47405 () Bool)

(declare-fun e!49361 () Bool)

(assert (=> start!11986 (=> (not res!47405) (not e!49361))))

(declare-datatypes () ((Monoid!38 (AdditiveMonoid!26) (MonoidExt!32 (__x!290 Int)))))

(declare-fun thiss!10239 () Monoid!38)

(assert (=> start!11986 (= res!47405 (is-AdditiveMonoid!26 thiss!10239))))

(assert (=> start!11986 e!49361))

(assert (=> start!11986 true))

(declare-fun b!90422 () Bool)

(declare-fun res!47407 () Bool)

(assert (=> b!90422 (=> (not res!47407) (not e!49361))))

(declare-datatypes () ((Nat!300 (Succ!274 (prev!848 Nat!300)) (Zero!280))))

(declare-fun x!31810 () Nat!300)

(declare-fun res!47285 () Bool)

(declare-fun y!2171 () Nat!300)

(declare-fun z!282 () Nat!300)

(declare-fun law_associativity!3 (Monoid!38 Nat!300 Nat!300 Nat!300) Bool)

(assert (=> b!90422 (= res!47407 (= res!47285 (law_associativity!3 thiss!10239 x!31810 y!2171 z!282)))))

(declare-fun b!90423 () Bool)

(declare-fun e!49360 () Bool)

(assert (=> b!90423 (= e!49361 e!49360)))

(declare-fun res!47406 () Bool)

(assert (=> b!90423 (=> res!47406 e!49360)))

(assert (=> b!90423 (= res!47406 (not res!47285))))

(declare-fun b!90424 () Bool)

(declare-fun append!6 (Monoid!38 Nat!300 Nat!300) Nat!300)

(assert (=> b!90424 (= e!49360 (not (= (append!6 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) (append!6 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282))))))

(assert (= (and start!11986 res!47405) b!90422))

(assert (= (and b!90422 res!47407) b!90423))

(assert (= (and b!90423 (not res!47406)) b!90424))

(declare-fun m!86226 () Bool)

(assert (=> b!90422 m!86226))

(declare-fun m!86228 () Bool)

(assert (=> b!90424 m!86228))

(assert (=> b!90424 m!86228))

(declare-fun m!86230 () Bool)

(assert (=> b!90424 m!86230))

(declare-fun m!86232 () Bool)

(assert (=> b!90424 m!86232))

(assert (=> b!90424 m!86232))

(declare-fun m!86234 () Bool)

(assert (=> b!90424 m!86234))

(push 1)

(assert (not b!90422))

(assert (not b!90424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59557 () Bool)

(declare-datatypes () ((ProofOps!390 (ProofOps!391 (prop!536 Bool)))))

(declare-fun because!1 (ProofOps!390 Bool) Bool)

(declare-fun Monoid$law_associativity!0 (Monoid!38 Nat!300 Nat!300 Nat!300) Bool)

(declare-fun lemma_associativity_plus!1 (Nat!300 Nat!300 Nat!300) Bool)

(assert (=> d!59557 (because!1 (ProofOps!391 (Monoid$law_associativity!0 thiss!10239 x!31810 y!2171 z!282)) (lemma_associativity_plus!1 x!31810 y!2171 z!282))))

(assert (=> d!59557 (= (law_associativity!3 thiss!10239 x!31810 y!2171 z!282) true)))

(declare-fun bs!41637 () Bool)

(assert (= bs!41637 d!59557))

(declare-fun m!86236 () Bool)

(assert (=> bs!41637 m!86236))

(declare-fun m!86238 () Bool)

(assert (=> bs!41637 m!86238))

(assert (=> bs!41637 m!86238))

(declare-fun m!86240 () Bool)

(assert (=> bs!41637 m!86240))

(assert (=> b!90422 d!59557))

(declare-fun d!59559 () Bool)

(declare-fun c!22098 () Bool)

(assert (=> d!59559 (= c!22098 (is-AdditiveMonoid!26 thiss!10239))))

(declare-fun e!49364 () Nat!300)

(assert (=> d!59559 (= (append!6 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) e!49364)))

(declare-fun b!90429 () Bool)

(declare-fun append!7 (Monoid!38 Nat!300 Nat!300) Nat!300)

(assert (=> b!90429 (= e!49364 (append!7 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)))))

(declare-fun b!90430 () Bool)

(declare-fun append!169 (Monoid!38 Nat!300 Nat!300) Nat!300)

(assert (=> b!90430 (= e!49364 (append!169 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)))))

(assert (= (and d!59559 c!22098) b!90429))

(assert (= (and d!59559 (not c!22098)) b!90430))

(assert (=> b!90429 m!86228))

(declare-fun m!86242 () Bool)

(assert (=> b!90429 m!86242))

(assert (=> b!90430 m!86228))

(declare-fun m!86244 () Bool)

(assert (=> b!90430 m!86244))

(assert (=> b!90424 d!59559))

(declare-fun d!59561 () Bool)

(declare-fun c!22099 () Bool)

(assert (=> d!59561 (= c!22099 (is-AdditiveMonoid!26 thiss!10239))))

(declare-fun e!49365 () Nat!300)

(assert (=> d!59561 (= (append!6 thiss!10239 y!2171 z!282) e!49365)))

(declare-fun b!90431 () Bool)

(assert (=> b!90431 (= e!49365 (append!7 thiss!10239 y!2171 z!282))))

(declare-fun b!90432 () Bool)

(assert (=> b!90432 (= e!49365 (append!169 thiss!10239 y!2171 z!282))))

(assert (= (and d!59561 c!22099) b!90431))

(assert (= (and d!59561 (not c!22099)) b!90432))

(declare-fun m!86246 () Bool)

(assert (=> b!90431 m!86246))

(declare-fun m!86248 () Bool)

(assert (=> b!90432 m!86248))

(assert (=> b!90424 d!59561))

(declare-fun d!59563 () Bool)

(declare-fun c!22100 () Bool)

(assert (=> d!59563 (= c!22100 (is-AdditiveMonoid!26 thiss!10239))))

(declare-fun e!49366 () Nat!300)

(assert (=> d!59563 (= (append!6 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282) e!49366)))

(declare-fun b!90433 () Bool)

(assert (=> b!90433 (= e!49366 (append!7 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282))))

(declare-fun b!90434 () Bool)

(assert (=> b!90434 (= e!49366 (append!169 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282))))

(assert (= (and d!59563 c!22100) b!90433))

(assert (= (and d!59563 (not c!22100)) b!90434))

(assert (=> b!90433 m!86232))

(declare-fun m!86250 () Bool)

(assert (=> b!90433 m!86250))

(assert (=> b!90434 m!86232))

(declare-fun m!86252 () Bool)

(assert (=> b!90434 m!86252))

(assert (=> b!90424 d!59563))

(declare-fun d!59565 () Bool)

(declare-fun c!22101 () Bool)

(assert (=> d!59565 (= c!22101 (is-AdditiveMonoid!26 thiss!10239))))

(declare-fun e!49367 () Nat!300)

(assert (=> d!59565 (= (append!6 thiss!10239 x!31810 y!2171) e!49367)))

(declare-fun b!90435 () Bool)

(assert (=> b!90435 (= e!49367 (append!7 thiss!10239 x!31810 y!2171))))

(declare-fun b!90436 () Bool)

(assert (=> b!90436 (= e!49367 (append!169 thiss!10239 x!31810 y!2171))))

(assert (= (and d!59565 c!22101) b!90435))

(assert (= (and d!59565 (not c!22101)) b!90436))

(declare-fun m!86254 () Bool)

(assert (=> b!90435 m!86254))

(declare-fun m!86256 () Bool)

(assert (=> b!90436 m!86256))

(assert (=> b!90424 d!59565))

(push 1)

(assert (not b!90429))

(assert (not b!90436))

(assert (not b!90430))

(assert (not b!90434))

(assert (not b!90435))

(assert (not b!90433))

(assert (not d!59557))

(assert (not b!90432))

(assert (not b!90431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59567 () Bool)

(declare-fun +!4 (Nat!300 Nat!300) Nat!300)

(assert (=> d!59567 (= (append!7 thiss!10239 x!31810 y!2171) (+!4 x!31810 y!2171))))

(declare-fun bs!41638 () Bool)

(assert (= bs!41638 d!59567))

(declare-fun m!86258 () Bool)

(assert (=> bs!41638 m!86258))

(assert (=> b!90435 d!59567))

(declare-fun d!59569 () Bool)

(assert (=> d!59569 true))

(assert (=> d!59569 true))

(declare-fun res!47410 () Nat!300)

(assert (=> d!59569 (= (append!169 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282) res!47410)))

(assert (=> b!90434 d!59569))

(declare-fun d!59571 () Bool)

(assert (=> d!59571 true))

(assert (=> d!59571 true))

(declare-fun res!47411 () Nat!300)

(assert (=> d!59571 (= (append!169 thiss!10239 x!31810 y!2171) res!47411)))

(assert (=> b!90436 d!59571))

(declare-fun d!59573 () Bool)

(assert (=> d!59573 (= (append!7 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282) (+!4 (append!6 thiss!10239 x!31810 y!2171) z!282))))

(declare-fun bs!41639 () Bool)

(assert (= bs!41639 d!59573))

(assert (=> bs!41639 m!86232))

(declare-fun m!86260 () Bool)

(assert (=> bs!41639 m!86260))

(assert (=> b!90433 d!59573))

(declare-fun d!59575 () Bool)

(assert (=> d!59575 true))

(assert (=> d!59575 true))

(declare-fun res!47412 () Nat!300)

(assert (=> d!59575 (= (append!169 thiss!10239 y!2171 z!282) res!47412)))

(assert (=> b!90432 d!59575))

(declare-fun d!59577 () Bool)

(assert (=> d!59577 (= (append!7 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) (+!4 x!31810 (append!6 thiss!10239 y!2171 z!282)))))

(declare-fun bs!41640 () Bool)

(assert (= bs!41640 d!59577))

(assert (=> bs!41640 m!86228))

(declare-fun m!86262 () Bool)

(assert (=> bs!41640 m!86262))

(assert (=> b!90429 d!59577))

(declare-fun d!59579 () Bool)

(assert (=> d!59579 (= (because!1 (ProofOps!391 (Monoid$law_associativity!0 thiss!10239 x!31810 y!2171 z!282)) (lemma_associativity_plus!1 x!31810 y!2171 z!282)) (and (lemma_associativity_plus!1 x!31810 y!2171 z!282) (prop!536 (ProofOps!391 (Monoid$law_associativity!0 thiss!10239 x!31810 y!2171 z!282)))))))

(assert (=> d!59557 d!59579))

(declare-fun d!59581 () Bool)

(declare-fun e!49370 () Bool)

(assert (=> d!59581 e!49370))

(declare-fun res!47416 () Bool)

(assert (=> d!59581 (=> (not res!47416) (not e!49370))))

(declare-fun lt!20495 () Bool)

(assert (=> d!59581 (= res!47416 lt!20495)))

(declare-fun choose!48 (Monoid!38 Nat!300 Nat!300 Nat!300) Bool)

(assert (=> d!59581 (= lt!20495 (choose!48 thiss!10239 x!31810 y!2171 z!282))))

(assert (=> d!59581 (= (Monoid$law_associativity!0 thiss!10239 x!31810 y!2171 z!282) lt!20495)))

(declare-fun b!90439 () Bool)

(assert (=> b!90439 (= e!49370 (= (append!6 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) (append!6 thiss!10239 (append!6 thiss!10239 x!31810 y!2171) z!282)))))

(assert (= (and d!59581 res!47416) b!90439))

(declare-fun m!86264 () Bool)

(assert (=> d!59581 m!86264))

(assert (=> b!90439 m!86228))

(assert (=> b!90439 m!86228))

(assert (=> b!90439 m!86230))

(assert (=> b!90439 m!86232))

(assert (=> b!90439 m!86232))

(assert (=> b!90439 m!86234))

(assert (=> d!59557 d!59581))

(declare-fun e!49373 () Bool)

(declare-fun b!90444 () Bool)

(assert (=> b!90444 (= e!49373 (= (+!4 x!31810 (+!4 y!2171 z!282)) (+!4 (+!4 x!31810 y!2171) z!282)))))

(declare-fun lt!20498 () Bool)

(assert (=> b!90444 (= lt!20498 (lemma_associativity_plus!1 (prev!848 x!31810) y!2171 z!282))))

(declare-fun d!59583 () Bool)

(assert (=> d!59583 e!49373))

(declare-fun c!22104 () Bool)

(assert (=> d!59583 (= c!22104 (is-Succ!274 x!31810))))

(assert (=> d!59583 (= (lemma_associativity_plus!1 x!31810 y!2171 z!282) true)))

(declare-fun b!90445 () Bool)

(assert (=> b!90445 (= e!49373 (= (+!4 x!31810 (+!4 y!2171 z!282)) (+!4 (+!4 x!31810 y!2171) z!282)))))

(assert (= (and d!59583 c!22104) b!90444))

(assert (= (and d!59583 (not c!22104)) b!90445))

(declare-fun m!86266 () Bool)

(assert (=> b!90444 m!86266))

(declare-fun m!86268 () Bool)

(assert (=> b!90444 m!86268))

(assert (=> b!90444 m!86266))

(assert (=> b!90444 m!86258))

(declare-fun m!86270 () Bool)

(assert (=> b!90444 m!86270))

(assert (=> b!90444 m!86258))

(declare-fun m!86272 () Bool)

(assert (=> b!90444 m!86272))

(assert (=> b!90445 m!86266))

(assert (=> b!90445 m!86266))

(assert (=> b!90445 m!86268))

(assert (=> b!90445 m!86258))

(assert (=> b!90445 m!86258))

(assert (=> b!90445 m!86270))

(assert (=> d!59557 d!59583))

(declare-fun d!59585 () Bool)

(assert (=> d!59585 true))

(assert (=> d!59585 true))

(declare-fun res!47417 () Nat!300)

(assert (=> d!59585 (= (append!169 thiss!10239 x!31810 (append!6 thiss!10239 y!2171 z!282)) res!47417)))

(assert (=> b!90430 d!59585))

(declare-fun d!59587 () Bool)

(assert (=> d!59587 (= (append!7 thiss!10239 y!2171 z!282) (+!4 y!2171 z!282))))

(declare-fun bs!41641 () Bool)

(assert (= bs!41641 d!59587))

(assert (=> bs!41641 m!86266))

(assert (=> b!90431 d!59587))

(push 1)

(assert (not b!90444))

(assert (not b!90439))

(assert (not d!59567))

(assert (not b!90445))

(assert (not d!59587))

(assert (not d!59581))

(assert (not d!59577))

(assert (not d!59573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

