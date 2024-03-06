; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12026 () Bool)

(assert start!12026)

(declare-fun res!47453 () Bool)

(declare-fun e!49423 () Bool)

(assert (=> start!12026 (=> (not res!47453) (not e!49423))))

(declare-datatypes () ((Monoid!41 (AdditiveMonoid!29) (MonoidExt!35 (__x!293 Int)))))

(declare-fun thiss!10187 () Monoid!41)

(declare-fun res!47276 () Bool)

(declare-datatypes () ((Nat!305 (Succ!279 (prev!853 Nat!305)) (Zero!285))))

(declare-fun x!31774 () Nat!305)

(declare-fun Monoid$law_leftIdentity!0 (Monoid!41 Nat!305) Bool)

(assert (=> start!12026 (= res!47453 (= res!47276 (Monoid$law_leftIdentity!0 thiss!10187 x!31774)))))

(assert (=> start!12026 e!49423))

(assert (=> start!12026 true))

(declare-fun b!90525 () Bool)

(declare-fun e!49424 () Bool)

(assert (=> b!90525 (= e!49423 e!49424)))

(declare-fun res!47454 () Bool)

(assert (=> b!90525 (=> res!47454 e!49424)))

(assert (=> b!90525 (= res!47454 (not res!47276))))

(declare-fun b!90526 () Bool)

(declare-fun append!6 (Monoid!41 Nat!305 Nat!305) Nat!305)

(declare-fun empty!11 (Monoid!41) Nat!305)

(assert (=> b!90526 (= e!49424 (not (= (append!6 thiss!10187 (empty!11 thiss!10187) x!31774) x!31774)))))

(assert (= (and start!12026 res!47453) b!90525))

(assert (= (and b!90525 (not res!47454)) b!90526))

(declare-fun m!86366 () Bool)

(assert (=> start!12026 m!86366))

(declare-fun m!86368 () Bool)

(assert (=> b!90526 m!86368))

(assert (=> b!90526 m!86368))

(declare-fun m!86370 () Bool)

(assert (=> b!90526 m!86370))

(push 1)

(assert (not b!90526))

(assert (not start!12026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59623 () Bool)

(declare-fun c!22131 () Bool)

(assert (=> d!59623 (= c!22131 (is-AdditiveMonoid!29 thiss!10187))))

(declare-fun e!49427 () Nat!305)

(assert (=> d!59623 (= (append!6 thiss!10187 (empty!11 thiss!10187) x!31774) e!49427)))

(declare-fun b!90531 () Bool)

(declare-fun append!7 (Monoid!41 Nat!305 Nat!305) Nat!305)

(assert (=> b!90531 (= e!49427 (append!7 thiss!10187 (empty!11 thiss!10187) x!31774))))

(declare-fun b!90532 () Bool)

(declare-fun append!169 (Monoid!41 Nat!305 Nat!305) Nat!305)

(assert (=> b!90532 (= e!49427 (append!169 thiss!10187 (empty!11 thiss!10187) x!31774))))

(assert (= (and d!59623 c!22131) b!90531))

(assert (= (and d!59623 (not c!22131)) b!90532))

(assert (=> b!90531 m!86368))

(declare-fun m!86372 () Bool)

(assert (=> b!90531 m!86372))

(assert (=> b!90532 m!86368))

(declare-fun m!86374 () Bool)

(assert (=> b!90532 m!86374))

(assert (=> b!90526 d!59623))

(declare-fun d!59625 () Bool)

(declare-fun c!22134 () Bool)

(assert (=> d!59625 (= c!22134 (is-AdditiveMonoid!29 thiss!10187))))

(declare-fun e!49430 () Nat!305)

(assert (=> d!59625 (= (empty!11 thiss!10187) e!49430)))

(declare-fun b!90537 () Bool)

(declare-fun empty!12 (Monoid!41) Nat!305)

(assert (=> b!90537 (= e!49430 (empty!12 thiss!10187))))

(declare-fun b!90538 () Bool)

(declare-fun empty!154 (Monoid!41) Nat!305)

(assert (=> b!90538 (= e!49430 (empty!154 thiss!10187))))

(assert (= (and d!59625 c!22134) b!90537))

(assert (= (and d!59625 (not c!22134)) b!90538))

(declare-fun m!86376 () Bool)

(assert (=> b!90537 m!86376))

(declare-fun m!86378 () Bool)

(assert (=> b!90538 m!86378))

(assert (=> b!90526 d!59625))

(declare-fun d!59627 () Bool)

(declare-fun e!49433 () Bool)

(assert (=> d!59627 e!49433))

(declare-fun res!47458 () Bool)

(assert (=> d!59627 (=> (not res!47458) (not e!49433))))

(declare-fun lt!20510 () Bool)

(assert (=> d!59627 (= res!47458 lt!20510)))

(declare-fun choose!49 (Monoid!41 Nat!305) Bool)

(assert (=> d!59627 (= lt!20510 (choose!49 thiss!10187 x!31774))))

(assert (=> d!59627 (= (Monoid$law_leftIdentity!0 thiss!10187 x!31774) lt!20510)))

(declare-fun b!90541 () Bool)

(assert (=> b!90541 (= e!49433 (= (append!6 thiss!10187 (empty!11 thiss!10187) x!31774) x!31774))))

(assert (= (and d!59627 res!47458) b!90541))

(declare-fun m!86380 () Bool)

(assert (=> d!59627 m!86380))

(assert (=> b!90541 m!86368))

(assert (=> b!90541 m!86368))

(assert (=> b!90541 m!86370))

(assert (=> start!12026 d!59627))

(push 1)

(assert (not b!90532))

(assert (not b!90537))

(assert (not b!90531))

(assert (not d!59627))

(assert (not b!90538))

(assert (not b!90541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

