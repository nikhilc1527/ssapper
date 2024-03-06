; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12022 () Bool)

(assert start!12022)

(declare-fun res!47448 () Bool)

(declare-fun e!49412 () Bool)

(assert (=> start!12022 (=> (not res!47448) (not e!49412))))

(declare-datatypes () ((Nat!304 (Succ!278 (prev!852 Nat!304)) (Zero!284))))

(declare-fun x!31785 () Nat!304)

(assert (=> start!12022 (= res!47448 (not (is-Succ!278 x!31785)))))

(assert (=> start!12022 e!49412))

(assert (=> start!12022 true))

(declare-fun z!276 () Nat!304)

(declare-fun y!2155 () Nat!304)

(declare-fun b!90508 () Bool)

(declare-fun +!4 (Nat!304 Nat!304) Nat!304)

(assert (=> b!90508 (= e!49412 (not (= (+!4 x!31785 (+!4 y!2155 z!276)) (+!4 (+!4 x!31785 y!2155) z!276))))))

(assert (= (and start!12022 res!47448) b!90508))

(declare-fun m!86349 () Bool)

(assert (=> b!90508 m!86349))

(assert (=> b!90508 m!86349))

(declare-fun m!86351 () Bool)

(assert (=> b!90508 m!86351))

(declare-fun m!86353 () Bool)

(assert (=> b!90508 m!86353))

(assert (=> b!90508 m!86353))

(declare-fun m!86355 () Bool)

(assert (=> b!90508 m!86355))

(push 1)

(assert (not b!90508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59615 () Bool)

(declare-fun c!22125 () Bool)

(assert (=> d!59615 (= c!22125 (is-Zero!284 x!31785))))

(declare-fun e!49415 () Nat!304)

(assert (=> d!59615 (= (+!4 x!31785 (+!4 y!2155 z!276)) e!49415)))

(declare-fun b!90513 () Bool)

(assert (=> b!90513 (= e!49415 (+!4 y!2155 z!276))))

(declare-fun b!90514 () Bool)

(assert (=> b!90514 (= e!49415 (Succ!278 (+!4 (prev!852 x!31785) (+!4 y!2155 z!276))))))

(assert (= (and d!59615 c!22125) b!90513))

(assert (= (and d!59615 (not c!22125)) b!90514))

(assert (=> b!90514 m!86349))

(declare-fun m!86358 () Bool)

(assert (=> b!90514 m!86358))

(assert (=> b!90508 d!59615))

(declare-fun d!59617 () Bool)

(declare-fun c!22126 () Bool)

(assert (=> d!59617 (= c!22126 (is-Zero!284 y!2155))))

(declare-fun e!49416 () Nat!304)

(assert (=> d!59617 (= (+!4 y!2155 z!276) e!49416)))

(declare-fun b!90515 () Bool)

(assert (=> b!90515 (= e!49416 z!276)))

(declare-fun b!90516 () Bool)

(assert (=> b!90516 (= e!49416 (Succ!278 (+!4 (prev!852 y!2155) z!276)))))

(assert (= (and d!59617 c!22126) b!90515))

(assert (= (and d!59617 (not c!22126)) b!90516))

(declare-fun m!86360 () Bool)

(assert (=> b!90516 m!86360))

(assert (=> b!90508 d!59617))

(declare-fun d!59619 () Bool)

(declare-fun c!22127 () Bool)

(assert (=> d!59619 (= c!22127 (is-Zero!284 (+!4 x!31785 y!2155)))))

(declare-fun e!49417 () Nat!304)

(assert (=> d!59619 (= (+!4 (+!4 x!31785 y!2155) z!276) e!49417)))

(declare-fun b!90517 () Bool)

(assert (=> b!90517 (= e!49417 z!276)))

(declare-fun b!90518 () Bool)

(assert (=> b!90518 (= e!49417 (Succ!278 (+!4 (prev!852 (+!4 x!31785 y!2155)) z!276)))))

(assert (= (and d!59619 c!22127) b!90517))

(assert (= (and d!59619 (not c!22127)) b!90518))

(declare-fun m!86362 () Bool)

(assert (=> b!90518 m!86362))

(assert (=> b!90508 d!59619))

(declare-fun d!59621 () Bool)

(declare-fun c!22128 () Bool)

(assert (=> d!59621 (= c!22128 (is-Zero!284 x!31785))))

(declare-fun e!49418 () Nat!304)

(assert (=> d!59621 (= (+!4 x!31785 y!2155) e!49418)))

(declare-fun b!90519 () Bool)

(assert (=> b!90519 (= e!49418 y!2155)))

(declare-fun b!90520 () Bool)

(assert (=> b!90520 (= e!49418 (Succ!278 (+!4 (prev!852 x!31785) y!2155)))))

(assert (= (and d!59621 c!22128) b!90519))

(assert (= (and d!59621 (not c!22128)) b!90520))

(declare-fun m!86364 () Bool)

(assert (=> b!90520 m!86364))

(assert (=> b!90508 d!59621))

(push 1)

(assert (not b!90514))

(assert (not b!90520))

(assert (not b!90518))

(assert (not b!90516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

