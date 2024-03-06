; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12016 () Bool)

(assert start!12016)

(declare-fun res!47444 () Bool)

(declare-fun e!49400 () Bool)

(assert (=> start!12016 (=> (not res!47444) (not e!49400))))

(declare-datatypes () ((Nat!303 (Succ!277 (prev!851 Nat!303)) (Zero!283))))

(declare-fun x!31785 () Nat!303)

(assert (=> start!12016 (= res!47444 (is-Succ!277 x!31785))))

(assert (=> start!12016 e!49400))

(assert (=> start!12016 true))

(declare-fun b!90486 () Bool)

(declare-fun res!47445 () Bool)

(assert (=> b!90486 (=> (not res!47445) (not e!49400))))

(declare-fun z!276 () Nat!303)

(declare-fun y!2155 () Nat!303)

(declare-fun inductVal!1023 () Bool)

(declare-fun lemma_associativity_plus!1 (Nat!303 Nat!303 Nat!303) Bool)

(assert (=> b!90486 (= res!47445 (= inductVal!1023 (lemma_associativity_plus!1 (prev!851 x!31785) y!2155 z!276)))))

(declare-fun b!90487 () Bool)

(declare-fun +!4 (Nat!303 Nat!303) Nat!303)

(assert (=> b!90487 (= e!49400 (not (= (+!4 x!31785 (+!4 y!2155 z!276)) (+!4 (+!4 x!31785 y!2155) z!276))))))

(assert (= (and start!12016 res!47444) b!90486))

(assert (= (and b!90486 res!47445) b!90487))

(declare-fun m!86326 () Bool)

(assert (=> b!90486 m!86326))

(declare-fun m!86328 () Bool)

(assert (=> b!90487 m!86328))

(assert (=> b!90487 m!86328))

(declare-fun m!86330 () Bool)

(assert (=> b!90487 m!86330))

(declare-fun m!86332 () Bool)

(assert (=> b!90487 m!86332))

(assert (=> b!90487 m!86332))

(declare-fun m!86334 () Bool)

(assert (=> b!90487 m!86334))

(push 1)

(assert (not b!90486))

(assert (not b!90487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!49403 () Bool)

(declare-fun b!90492 () Bool)

(assert (=> b!90492 (= e!49403 (= (+!4 (prev!851 x!31785) (+!4 y!2155 z!276)) (+!4 (+!4 (prev!851 x!31785) y!2155) z!276)))))

(declare-fun lt!20507 () Bool)

(assert (=> b!90492 (= lt!20507 (lemma_associativity_plus!1 (prev!851 (prev!851 x!31785)) y!2155 z!276))))

(declare-fun d!59605 () Bool)

(assert (=> d!59605 e!49403))

(declare-fun c!22116 () Bool)

(assert (=> d!59605 (= c!22116 (is-Succ!277 (prev!851 x!31785)))))

(assert (=> d!59605 (= (lemma_associativity_plus!1 (prev!851 x!31785) y!2155 z!276) true)))

(declare-fun b!90493 () Bool)

(assert (=> b!90493 (= e!49403 (= (+!4 (prev!851 x!31785) (+!4 y!2155 z!276)) (+!4 (+!4 (prev!851 x!31785) y!2155) z!276)))))

(assert (= (and d!59605 c!22116) b!90492))

(assert (= (and d!59605 (not c!22116)) b!90493))

(assert (=> b!90492 m!86328))

(declare-fun m!86336 () Bool)

(assert (=> b!90492 m!86336))

(declare-fun m!86338 () Bool)

(assert (=> b!90492 m!86338))

(assert (=> b!90492 m!86328))

(declare-fun m!86340 () Bool)

(assert (=> b!90492 m!86340))

(declare-fun m!86342 () Bool)

(assert (=> b!90492 m!86342))

(assert (=> b!90492 m!86336))

(assert (=> b!90493 m!86328))

(assert (=> b!90493 m!86328))

(assert (=> b!90493 m!86340))

(assert (=> b!90493 m!86336))

(assert (=> b!90493 m!86336))

(assert (=> b!90493 m!86338))

(assert (=> b!90486 d!59605))

(declare-fun d!59607 () Bool)

(declare-fun c!22119 () Bool)

(assert (=> d!59607 (= c!22119 (is-Zero!283 x!31785))))

(declare-fun e!49406 () Nat!303)

(assert (=> d!59607 (= (+!4 x!31785 (+!4 y!2155 z!276)) e!49406)))

(declare-fun b!90498 () Bool)

(assert (=> b!90498 (= e!49406 (+!4 y!2155 z!276))))

(declare-fun b!90499 () Bool)

(assert (=> b!90499 (= e!49406 (Succ!277 (+!4 (prev!851 x!31785) (+!4 y!2155 z!276))))))

(assert (= (and d!59607 c!22119) b!90498))

(assert (= (and d!59607 (not c!22119)) b!90499))

(assert (=> b!90499 m!86328))

(assert (=> b!90499 m!86340))

(assert (=> b!90487 d!59607))

(declare-fun d!59609 () Bool)

(declare-fun c!22120 () Bool)

(assert (=> d!59609 (= c!22120 (is-Zero!283 y!2155))))

(declare-fun e!49407 () Nat!303)

(assert (=> d!59609 (= (+!4 y!2155 z!276) e!49407)))

(declare-fun b!90500 () Bool)

(assert (=> b!90500 (= e!49407 z!276)))

(declare-fun b!90501 () Bool)

(assert (=> b!90501 (= e!49407 (Succ!277 (+!4 (prev!851 y!2155) z!276)))))

(assert (= (and d!59609 c!22120) b!90500))

(assert (= (and d!59609 (not c!22120)) b!90501))

(declare-fun m!86345 () Bool)

(assert (=> b!90501 m!86345))

(assert (=> b!90487 d!59609))

(declare-fun d!59611 () Bool)

(declare-fun c!22121 () Bool)

(assert (=> d!59611 (= c!22121 (is-Zero!283 (+!4 x!31785 y!2155)))))

(declare-fun e!49408 () Nat!303)

(assert (=> d!59611 (= (+!4 (+!4 x!31785 y!2155) z!276) e!49408)))

(declare-fun b!90502 () Bool)

(assert (=> b!90502 (= e!49408 z!276)))

(declare-fun b!90503 () Bool)

(assert (=> b!90503 (= e!49408 (Succ!277 (+!4 (prev!851 (+!4 x!31785 y!2155)) z!276)))))

(assert (= (and d!59611 c!22121) b!90502))

(assert (= (and d!59611 (not c!22121)) b!90503))

(declare-fun m!86347 () Bool)

(assert (=> b!90503 m!86347))

(assert (=> b!90487 d!59611))

(declare-fun d!59613 () Bool)

(declare-fun c!22122 () Bool)

(assert (=> d!59613 (= c!22122 (is-Zero!283 x!31785))))

(declare-fun e!49409 () Nat!303)

(assert (=> d!59613 (= (+!4 x!31785 y!2155) e!49409)))

(declare-fun b!90504 () Bool)

(assert (=> b!90504 (= e!49409 y!2155)))

(declare-fun b!90505 () Bool)

(assert (=> b!90505 (= e!49409 (Succ!277 (+!4 (prev!851 x!31785) y!2155)))))

(assert (= (and d!59613 c!22122) b!90504))

(assert (= (and d!59613 (not c!22122)) b!90505))

(assert (=> b!90505 m!86336))

(assert (=> b!90487 d!59613))

(push 1)

(assert (not b!90505))

(assert (not b!90493))

(assert (not b!90492))

(assert (not b!90499))

(assert (not b!90501))

(assert (not b!90503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

