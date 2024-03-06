; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11962 () Bool)

(assert start!11962)

(declare-fun res!47377 () Bool)

(declare-fun e!49321 () Bool)

(assert (=> start!11962 (=> (not res!47377) (not e!49321))))

(declare-datatypes () ((Nat!296 (Succ!270 (prev!844 Nat!296)) (Zero!276))))

(declare-fun y!2158 () Nat!296)

(declare-datatypes () ((Monoid!36 (AdditiveMonoid!24) (MonoidExt!30 (__x!288 Int)))))

(declare-fun thiss!10217 () Monoid!36)

(declare-fun res!47280 () Bool)

(declare-fun x!31790 () Nat!296)

(declare-fun z!279 () Nat!296)

(declare-fun Monoid$law_associativity!0 (Monoid!36 Nat!296 Nat!296 Nat!296) Bool)

(assert (=> start!11962 (= res!47377 (= res!47280 (Monoid$law_associativity!0 thiss!10217 x!31790 y!2158 z!279)))))

(assert (=> start!11962 e!49321))

(assert (=> start!11962 true))

(declare-fun b!90360 () Bool)

(declare-fun e!49322 () Bool)

(assert (=> b!90360 (= e!49321 e!49322)))

(declare-fun res!47378 () Bool)

(assert (=> b!90360 (=> res!47378 e!49322)))

(assert (=> b!90360 (= res!47378 (not res!47280))))

(declare-fun b!90361 () Bool)

(declare-fun append!6 (Monoid!36 Nat!296 Nat!296) Nat!296)

(assert (=> b!90361 (= e!49322 (not (= (append!6 thiss!10217 x!31790 (append!6 thiss!10217 y!2158 z!279)) (append!6 thiss!10217 (append!6 thiss!10217 x!31790 y!2158) z!279))))))

(assert (= (and start!11962 res!47377) b!90360))

(assert (= (and b!90360 (not res!47378)) b!90361))

(declare-fun m!86168 () Bool)

(assert (=> start!11962 m!86168))

(declare-fun m!86170 () Bool)

(assert (=> b!90361 m!86170))

(assert (=> b!90361 m!86170))

(declare-fun m!86172 () Bool)

(assert (=> b!90361 m!86172))

(declare-fun m!86174 () Bool)

(assert (=> b!90361 m!86174))

(assert (=> b!90361 m!86174))

(declare-fun m!86176 () Bool)

(assert (=> b!90361 m!86176))

(push 1)

(assert (not b!90361))

(assert (not start!11962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59535 () Bool)

(declare-fun c!22080 () Bool)

(assert (=> d!59535 (= c!22080 (is-AdditiveMonoid!24 thiss!10217))))

(declare-fun e!49325 () Nat!296)

(assert (=> d!59535 (= (append!6 thiss!10217 x!31790 (append!6 thiss!10217 y!2158 z!279)) e!49325)))

(declare-fun b!90366 () Bool)

(declare-fun append!7 (Monoid!36 Nat!296 Nat!296) Nat!296)

(assert (=> b!90366 (= e!49325 (append!7 thiss!10217 x!31790 (append!6 thiss!10217 y!2158 z!279)))))

(declare-fun b!90367 () Bool)

(declare-fun append!169 (Monoid!36 Nat!296 Nat!296) Nat!296)

(assert (=> b!90367 (= e!49325 (append!169 thiss!10217 x!31790 (append!6 thiss!10217 y!2158 z!279)))))

(assert (= (and d!59535 c!22080) b!90366))

(assert (= (and d!59535 (not c!22080)) b!90367))

(assert (=> b!90366 m!86170))

(declare-fun m!86178 () Bool)

(assert (=> b!90366 m!86178))

(assert (=> b!90367 m!86170))

(declare-fun m!86180 () Bool)

(assert (=> b!90367 m!86180))

(assert (=> b!90361 d!59535))

(declare-fun d!59537 () Bool)

(declare-fun c!22081 () Bool)

(assert (=> d!59537 (= c!22081 (is-AdditiveMonoid!24 thiss!10217))))

(declare-fun e!49326 () Nat!296)

(assert (=> d!59537 (= (append!6 thiss!10217 y!2158 z!279) e!49326)))

(declare-fun b!90368 () Bool)

(assert (=> b!90368 (= e!49326 (append!7 thiss!10217 y!2158 z!279))))

(declare-fun b!90369 () Bool)

(assert (=> b!90369 (= e!49326 (append!169 thiss!10217 y!2158 z!279))))

(assert (= (and d!59537 c!22081) b!90368))

(assert (= (and d!59537 (not c!22081)) b!90369))

(declare-fun m!86182 () Bool)

(assert (=> b!90368 m!86182))

(declare-fun m!86184 () Bool)

(assert (=> b!90369 m!86184))

(assert (=> b!90361 d!59537))

(declare-fun d!59539 () Bool)

(declare-fun c!22082 () Bool)

(assert (=> d!59539 (= c!22082 (is-AdditiveMonoid!24 thiss!10217))))

(declare-fun e!49327 () Nat!296)

(assert (=> d!59539 (= (append!6 thiss!10217 (append!6 thiss!10217 x!31790 y!2158) z!279) e!49327)))

(declare-fun b!90370 () Bool)

(assert (=> b!90370 (= e!49327 (append!7 thiss!10217 (append!6 thiss!10217 x!31790 y!2158) z!279))))

(declare-fun b!90371 () Bool)

(assert (=> b!90371 (= e!49327 (append!169 thiss!10217 (append!6 thiss!10217 x!31790 y!2158) z!279))))

(assert (= (and d!59539 c!22082) b!90370))

(assert (= (and d!59539 (not c!22082)) b!90371))

(assert (=> b!90370 m!86174))

(declare-fun m!86186 () Bool)

(assert (=> b!90370 m!86186))

(assert (=> b!90371 m!86174))

(declare-fun m!86188 () Bool)

(assert (=> b!90371 m!86188))

(assert (=> b!90361 d!59539))

(declare-fun d!59541 () Bool)

(declare-fun c!22083 () Bool)

(assert (=> d!59541 (= c!22083 (is-AdditiveMonoid!24 thiss!10217))))

(declare-fun e!49328 () Nat!296)

(assert (=> d!59541 (= (append!6 thiss!10217 x!31790 y!2158) e!49328)))

(declare-fun b!90372 () Bool)

(assert (=> b!90372 (= e!49328 (append!7 thiss!10217 x!31790 y!2158))))

(declare-fun b!90373 () Bool)

(assert (=> b!90373 (= e!49328 (append!169 thiss!10217 x!31790 y!2158))))

(assert (= (and d!59541 c!22083) b!90372))

(assert (= (and d!59541 (not c!22083)) b!90373))

(declare-fun m!86190 () Bool)

(assert (=> b!90372 m!86190))

(declare-fun m!86192 () Bool)

(assert (=> b!90373 m!86192))

(assert (=> b!90361 d!59541))

(declare-fun d!59543 () Bool)

(declare-fun e!49331 () Bool)

(assert (=> d!59543 e!49331))

(declare-fun res!47382 () Bool)

(assert (=> d!59543 (=> (not res!47382) (not e!49331))))

(declare-fun lt!20483 () Bool)

(assert (=> d!59543 (= res!47382 lt!20483)))

(declare-fun choose!48 (Monoid!36 Nat!296 Nat!296 Nat!296) Bool)

(assert (=> d!59543 (= lt!20483 (choose!48 thiss!10217 x!31790 y!2158 z!279))))

(assert (=> d!59543 (= (Monoid$law_associativity!0 thiss!10217 x!31790 y!2158 z!279) lt!20483)))

(declare-fun b!90376 () Bool)

(assert (=> b!90376 (= e!49331 (= (append!6 thiss!10217 x!31790 (append!6 thiss!10217 y!2158 z!279)) (append!6 thiss!10217 (append!6 thiss!10217 x!31790 y!2158) z!279)))))

(assert (= (and d!59543 res!47382) b!90376))

(declare-fun m!86194 () Bool)

(assert (=> d!59543 m!86194))

(assert (=> b!90376 m!86170))

(assert (=> b!90376 m!86170))

(assert (=> b!90376 m!86172))

(assert (=> b!90376 m!86174))

(assert (=> b!90376 m!86174))

(assert (=> b!90376 m!86176))

(assert (=> start!11962 d!59543))

(push 1)

(assert (not b!90371))

(assert (not b!90366))

(assert (not b!90373))

(assert (not b!90376))

(assert (not d!59543))

(assert (not b!90369))

(assert (not b!90370))

(assert (not b!90372))

(assert (not b!90368))

(assert (not b!90367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

