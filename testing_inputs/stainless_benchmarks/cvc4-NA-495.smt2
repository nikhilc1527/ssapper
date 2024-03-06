; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3338 () Bool)

(assert start!3338)

(declare-fun b!19257 () Bool)

(declare-fun e!10190 () Bool)

(declare-datatypes () ((T!1745 (T!1746 (val!45 Int)))))

(declare-datatypes () ((Conc!27 (CC!26 (left!671 Conc!27) (right!674 Conc!27)) (Single!26 (x!8771 T!1745)) (Empty!37))))

(declare-fun ys!117 () Conc!27)

(declare-fun isEmpty!289 (Conc!27) Bool)

(assert (=> b!19257 (= e!10190 (isEmpty!289 ys!117))))

(declare-fun b!19258 () Bool)

(declare-fun res!8254 () Bool)

(declare-fun e!10189 () Bool)

(assert (=> b!19258 (=> (not res!8254) (not e!10189))))

(declare-fun y!824 () T!1745)

(declare-fun xs!604 () Conc!27)

(declare-fun i!298 () Int)

(declare-fun insert!17 (Conc!27 Int T!1745) Conc!27)

(declare-fun size!215 (Conc!27) Int)

(assert (=> b!19258 (= res!8254 (= ys!117 (insert!17 (right!674 xs!604) (- i!298 (size!215 (left!671 xs!604))) y!824)))))

(declare-fun b!19259 () Bool)

(declare-fun res!8249 () Bool)

(assert (=> b!19259 (=> res!8249 e!10190)))

(declare-fun xs!617 () Conc!27)

(declare-fun balanced!26 (Conc!27) Bool)

(assert (=> b!19259 (= res!8249 (not (balanced!26 xs!617)))))

(declare-fun b!19260 () Bool)

(declare-fun res!8245 () Bool)

(assert (=> b!19260 (=> (not res!8245) (not e!10189))))

(assert (=> b!19260 (= res!8245 (balanced!26 xs!604))))

(declare-fun b!19261 () Bool)

(declare-fun res!8246 () Bool)

(assert (=> b!19261 (=> (not res!8246) (not e!10189))))

(assert (=> b!19261 (= res!8246 (and (not (is-Empty!37 xs!604)) (not (is-Single!26 xs!604))))))

(declare-fun b!19262 () Bool)

(declare-fun res!8252 () Bool)

(assert (=> b!19262 (=> res!8252 e!10190)))

(assert (=> b!19262 (= res!8252 (isEmpty!289 xs!617))))

(declare-fun res!8248 () Bool)

(assert (=> start!3338 (=> (not res!8248) (not e!10189))))

(declare-fun concInv!25 (Conc!27) Bool)

(assert (=> start!3338 (= res!8248 (concInv!25 xs!604))))

(assert (=> start!3338 e!10189))

(declare-fun e!10191 () Bool)

(assert (=> start!3338 e!10191))

(declare-fun e!10192 () Bool)

(assert (=> start!3338 e!10192))

(declare-fun tp_is_empty!89 () Bool)

(assert (=> start!3338 tp_is_empty!89))

(declare-fun e!10193 () Bool)

(assert (=> start!3338 e!10193))

(assert (=> start!3338 true))

(declare-fun b!19263 () Bool)

(assert (=> b!19263 (= e!10191 tp_is_empty!89)))

(declare-fun b!19264 () Bool)

(assert (=> b!19264 (= e!10189 e!10190)))

(declare-fun res!8251 () Bool)

(assert (=> b!19264 (=> res!8251 e!10190)))

(assert (=> b!19264 (= res!8251 (not (concInv!25 xs!617)))))

(declare-fun b!19265 () Bool)

(declare-fun tp!4500 () Bool)

(declare-fun tp!4498 () Bool)

(assert (=> b!19265 (= e!10192 (and tp!4500 tp!4498))))

(declare-fun b!19266 () Bool)

(declare-fun tp!4502 () Bool)

(declare-fun tp!4501 () Bool)

(assert (=> b!19266 (= e!10191 (and tp!4502 tp!4501))))

(declare-fun b!19267 () Bool)

(declare-fun tp!4499 () Bool)

(declare-fun tp!4497 () Bool)

(assert (=> b!19267 (= e!10193 (and tp!4499 tp!4497))))

(declare-fun b!19268 () Bool)

(declare-fun res!8250 () Bool)

(assert (=> b!19268 (=> res!8250 e!10190)))

(assert (=> b!19268 (= res!8250 (not (balanced!26 ys!117)))))

(declare-fun b!19269 () Bool)

(declare-fun res!8256 () Bool)

(assert (=> b!19269 (=> (not res!8256) (not e!10189))))

(assert (=> b!19269 (= res!8256 (>= i!298 0))))

(declare-fun b!19270 () Bool)

(declare-fun res!8247 () Bool)

(assert (=> b!19270 (=> res!8247 e!10190)))

(assert (=> b!19270 (= res!8247 (not (concInv!25 ys!117)))))

(declare-fun b!19271 () Bool)

(declare-fun res!8257 () Bool)

(assert (=> b!19271 (=> (not res!8257) (not e!10189))))

(assert (=> b!19271 (= res!8257 (<= i!298 (size!215 xs!604)))))

(declare-fun b!19272 () Bool)

(assert (=> b!19272 (= e!10193 tp_is_empty!89)))

(declare-fun b!19273 () Bool)

(declare-fun res!8253 () Bool)

(assert (=> b!19273 (=> (not res!8253) (not e!10189))))

(assert (=> b!19273 (= res!8253 (= xs!617 (left!671 xs!604)))))

(declare-fun b!19274 () Bool)

(declare-fun res!8255 () Bool)

(assert (=> b!19274 (=> (not res!8255) (not e!10189))))

(assert (=> b!19274 (= res!8255 (>= i!298 (size!215 (left!671 xs!604))))))

(declare-fun b!19275 () Bool)

(assert (=> b!19275 (= e!10192 tp_is_empty!89)))

(assert (= (and start!3338 res!8248) b!19260))

(assert (= (and b!19260 res!8245) b!19269))

(assert (= (and b!19269 res!8256) b!19271))

(assert (= (and b!19271 res!8257) b!19261))

(assert (= (and b!19261 res!8246) b!19274))

(assert (= (and b!19274 res!8255) b!19273))

(assert (= (and b!19273 res!8253) b!19258))

(assert (= (and b!19258 res!8254) b!19264))

(assert (= (and b!19264 (not res!8251)) b!19259))

(assert (= (and b!19259 (not res!8249)) b!19270))

(assert (= (and b!19270 (not res!8247)) b!19268))

(assert (= (and b!19268 (not res!8250)) b!19262))

(assert (= (and b!19262 (not res!8252)) b!19257))

(assert (= (and start!3338 (is-CC!26 xs!617)) b!19266))

(assert (= (and start!3338 (is-Single!26 xs!617)) b!19263))

(assert (= (and start!3338 (is-CC!26 ys!117)) b!19265))

(assert (= (and start!3338 (is-Single!26 ys!117)) b!19275))

(assert (= (and start!3338 (is-CC!26 xs!604)) b!19267))

(assert (= (and start!3338 (is-Single!26 xs!604)) b!19272))

(declare-fun m!21621 () Bool)

(assert (=> b!19257 m!21621))

(declare-fun m!21623 () Bool)

(assert (=> b!19274 m!21623))

(declare-fun m!21625 () Bool)

(assert (=> b!19259 m!21625))

(assert (=> b!19258 m!21623))

(declare-fun m!21627 () Bool)

(assert (=> b!19258 m!21627))

(declare-fun m!21629 () Bool)

(assert (=> b!19270 m!21629))

(declare-fun m!21631 () Bool)

(assert (=> b!19264 m!21631))

(declare-fun m!21633 () Bool)

(assert (=> b!19260 m!21633))

(declare-fun m!21635 () Bool)

(assert (=> b!19262 m!21635))

(declare-fun m!21637 () Bool)

(assert (=> b!19271 m!21637))

(declare-fun m!21639 () Bool)

(assert (=> start!3338 m!21639))

(declare-fun m!21641 () Bool)

(assert (=> b!19268 m!21641))

(push 1)

(assert (not b!19257))

(assert (not b!19265))

(assert (not b!19259))

(assert (not b!19268))

(assert (not b!19270))

(assert (not b!19258))

(assert (not b!19260))

(assert (not b!19271))

(assert (not b!19266))

(assert (not start!3338))

(assert (not b!19264))

(assert (not b!19262))

(assert tp_is_empty!89)

(assert (not b!19267))

(assert (not b!19274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!19287 () Bool)

(declare-fun e!10198 () Bool)

(assert (=> b!19287 (= e!10198 (concInv!25 (right!674 ys!117)))))

(declare-fun d!12275 () Bool)

(declare-fun res!8269 () Bool)

(declare-fun e!10199 () Bool)

(assert (=> d!12275 (=> res!8269 e!10199)))

(assert (=> d!12275 (= res!8269 (not (is-CC!26 ys!117)))))

(assert (=> d!12275 (= (concInv!25 ys!117) e!10199)))

(declare-fun b!19285 () Bool)

(declare-fun res!8267 () Bool)

(assert (=> b!19285 (=> (not res!8267) (not e!10198))))

(assert (=> b!19285 (= res!8267 (not (isEmpty!289 (right!674 ys!117))))))

(declare-fun b!19286 () Bool)

(declare-fun res!8266 () Bool)

(assert (=> b!19286 (=> (not res!8266) (not e!10198))))

(assert (=> b!19286 (= res!8266 (concInv!25 (left!671 ys!117)))))

(declare-fun b!19284 () Bool)

(assert (=> b!19284 (= e!10199 e!10198)))

(declare-fun res!8268 () Bool)

(assert (=> b!19284 (=> (not res!8268) (not e!10198))))

(assert (=> b!19284 (= res!8268 (not (isEmpty!289 (left!671 ys!117))))))

(assert (= (and d!12275 (not res!8269)) b!19284))

(assert (= (and b!19284 res!8268) b!19285))

(assert (= (and b!19285 res!8267) b!19286))

(assert (= (and b!19286 res!8266) b!19287))

(declare-fun m!21643 () Bool)

(assert (=> b!19287 m!21643))

(declare-fun m!21645 () Bool)

(assert (=> b!19285 m!21645))

(declare-fun m!21647 () Bool)

(assert (=> b!19286 m!21647))

(declare-fun m!21649 () Bool)

(assert (=> b!19284 m!21649))

(assert (=> b!19270 d!12275))

(declare-fun d!12277 () Bool)

(declare-fun res!8281 () Bool)

(declare-fun e!10204 () Bool)

(assert (=> d!12277 (=> res!8281 e!10204)))

(assert (=> d!12277 (= res!8281 (not (is-CC!26 ys!117)))))

(assert (=> d!12277 (= (balanced!26 ys!117) e!10204)))

(declare-fun b!19297 () Bool)

(declare-fun res!8279 () Bool)

(declare-fun e!10205 () Bool)

(assert (=> b!19297 (=> (not res!8279) (not e!10205))))

(declare-fun level!24 (Conc!27) Int)

(assert (=> b!19297 (= res!8279 (<= (- (level!24 (left!671 ys!117)) (level!24 (right!674 ys!117))) 1))))

(declare-fun b!19296 () Bool)

(assert (=> b!19296 (= e!10204 e!10205)))

(declare-fun res!8278 () Bool)

(assert (=> b!19296 (=> (not res!8278) (not e!10205))))

(assert (=> b!19296 (= res!8278 (>= (- (level!24 (left!671 ys!117)) (level!24 (right!674 ys!117))) (- 1)))))

(declare-fun b!19299 () Bool)

(assert (=> b!19299 (= e!10205 (balanced!26 (right!674 ys!117)))))

(declare-fun b!19298 () Bool)

(declare-fun res!8280 () Bool)

(assert (=> b!19298 (=> (not res!8280) (not e!10205))))

(assert (=> b!19298 (= res!8280 (balanced!26 (left!671 ys!117)))))

(assert (= (and d!12277 (not res!8281)) b!19296))

(assert (= (and b!19296 res!8278) b!19297))

(assert (= (and b!19297 res!8279) b!19298))

(assert (= (and b!19298 res!8280) b!19299))

(declare-fun m!21651 () Bool)

(assert (=> b!19297 m!21651))

(declare-fun m!21653 () Bool)

(assert (=> b!19297 m!21653))

(assert (=> b!19296 m!21651))

(assert (=> b!19296 m!21653))

(declare-fun m!21655 () Bool)

(assert (=> b!19299 m!21655))

(declare-fun m!21657 () Bool)

(assert (=> b!19298 m!21657))

(assert (=> b!19268 d!12277))

(declare-fun lt!2875 () Conc!27)

(declare-fun b!19330 () Bool)

(declare-fun e!10224 () Bool)

(declare-datatypes () ((List!333 (Cons!327 (h!241 T!1745) (t!4328 List!333)) (Nil!328))))

(declare-fun toList!93 (Conc!27) List!333)

(declare-fun insertAtIndex!6 (List!333 Int T!1745) List!333)

(assert (=> b!19330 (= e!10224 (= (toList!93 lt!2875) (insertAtIndex!6 (toList!93 (right!674 xs!604)) (- i!298 (size!215 (left!671 xs!604))) y!824)))))

(declare-fun b!19331 () Bool)

(declare-fun e!10223 () Bool)

(assert (=> b!19331 (= e!10223 (balanced!26 lt!2875))))

(declare-fun b!19332 () Bool)

(declare-fun e!10226 () Conc!27)

(assert (=> b!19332 (= e!10226 (Single!26 y!824))))

(declare-fun b!19333 () Bool)

(declare-fun res!8303 () Bool)

(assert (=> b!19333 (=> (not res!8303) (not e!10224))))

(assert (=> b!19333 (= res!8303 (not (isEmpty!289 lt!2875)))))

(declare-fun b!19334 () Bool)

(declare-fun res!8301 () Bool)

(declare-fun e!10221 () Bool)

(assert (=> b!19334 (=> (not res!8301) (not e!10221))))

(assert (=> b!19334 (= res!8301 (>= (- i!298 (size!215 (left!671 xs!604))) 0))))

(declare-fun e!10225 () Conc!27)

(declare-fun b!19335 () Bool)

(declare-fun concatNonEmpty!8 (Conc!27 Conc!27) Conc!27)

(assert (=> b!19335 (= e!10225 (concatNonEmpty!8 (insert!17 (left!671 (right!674 xs!604)) (- i!298 (size!215 (left!671 xs!604))) y!824) (right!674 (right!674 xs!604))))))

(declare-fun b!19336 () Bool)

(declare-fun e!10222 () Conc!27)

(assert (=> b!19336 (= e!10222 e!10225)))

(declare-fun c!4712 () Bool)

(assert (=> b!19336 (= c!4712 (< (- i!298 (size!215 (left!671 xs!604))) (size!215 (left!671 (right!674 xs!604)))))))

(declare-fun b!19337 () Bool)

(assert (=> b!19337 (= e!10221 (<= (- i!298 (size!215 (left!671 xs!604))) (size!215 (right!674 xs!604))))))

(declare-fun b!19338 () Bool)

(assert (=> b!19338 (= e!10222 (ite (= (- i!298 (size!215 (left!671 xs!604))) 0) (CC!26 (Single!26 y!824) (right!674 xs!604)) (CC!26 (right!674 xs!604) (Single!26 y!824))))))

(declare-fun b!19339 () Bool)

(declare-fun res!8309 () Bool)

(assert (=> b!19339 (=> (not res!8309) (not e!10224))))

(declare-fun insertAppendAxiomInst!8 (Conc!27 Int T!1745) Bool)

(assert (=> b!19339 (= res!8309 (insertAppendAxiomInst!8 (right!674 xs!604) (- i!298 (size!215 (left!671 xs!604))) y!824))))

(declare-fun d!12279 () Bool)

(assert (=> d!12279 e!10224))

(declare-fun res!8307 () Bool)

(assert (=> d!12279 (=> (not res!8307) (not e!10224))))

(assert (=> d!12279 (= res!8307 e!10223)))

(declare-fun res!8305 () Bool)

(assert (=> d!12279 (=> (not res!8305) (not e!10223))))

(assert (=> d!12279 (= res!8305 (concInv!25 lt!2875))))

(assert (=> d!12279 (= lt!2875 e!10226)))

(declare-fun c!4713 () Bool)

(assert (=> d!12279 (= c!4713 (is-Empty!37 (right!674 xs!604)))))

(assert (=> d!12279 e!10221))

(declare-fun res!8308 () Bool)

(assert (=> d!12279 (=> (not res!8308) (not e!10221))))

(declare-fun e!10220 () Bool)

(assert (=> d!12279 (= res!8308 e!10220)))

(declare-fun res!8302 () Bool)

(assert (=> d!12279 (=> (not res!8302) (not e!10220))))

(assert (=> d!12279 (= res!8302 (concInv!25 (right!674 xs!604)))))

(assert (=> d!12279 (= (insert!17 (right!674 xs!604) (- i!298 (size!215 (left!671 xs!604))) y!824) lt!2875)))

(declare-fun b!19340 () Bool)

(assert (=> b!19340 (= e!10225 (concatNonEmpty!8 (left!671 (right!674 xs!604)) (insert!17 (right!674 (right!674 xs!604)) (- (- i!298 (size!215 (left!671 xs!604))) (size!215 (left!671 (right!674 xs!604)))) y!824)))))

(declare-fun b!19341 () Bool)

(declare-fun res!8304 () Bool)

(assert (=> b!19341 (=> (not res!8304) (not e!10224))))

(assert (=> b!19341 (= res!8304 (>= (level!24 lt!2875) (level!24 (right!674 xs!604))))))

(declare-fun b!19342 () Bool)

(assert (=> b!19342 (= e!10220 (balanced!26 (right!674 xs!604)))))

(declare-fun b!19343 () Bool)

(declare-fun res!8306 () Bool)

(assert (=> b!19343 (=> (not res!8306) (not e!10224))))

(assert (=> b!19343 (= res!8306 (<= (- (level!24 lt!2875) (level!24 (right!674 xs!604))) 1))))

(declare-fun b!19344 () Bool)

(assert (=> b!19344 (= e!10226 e!10222)))

(declare-fun c!4714 () Bool)

(assert (=> b!19344 (= c!4714 (is-Single!26 (right!674 xs!604)))))

(assert (= (and d!12279 res!8302) b!19342))

(assert (= (and d!12279 res!8308) b!19334))

(assert (= (and b!19334 res!8301) b!19337))

(assert (= (and b!19336 c!4712) b!19335))

(assert (= (and b!19336 (not c!4712)) b!19340))

(assert (= (and b!19344 c!4714) b!19338))

(assert (= (and b!19344 (not c!4714)) b!19336))

(assert (= (and d!12279 c!4713) b!19332))

(assert (= (and d!12279 (not c!4713)) b!19344))

(assert (= (and d!12279 res!8305) b!19331))

(assert (= (and d!12279 res!8307) b!19343))

(assert (= (and b!19343 res!8306) b!19341))

(assert (= (and b!19341 res!8304) b!19333))

(assert (= (and b!19333 res!8303) b!19339))

(assert (= (and b!19339 res!8309) b!19330))

(declare-fun m!21659 () Bool)

(assert (=> b!19337 m!21659))

(declare-fun m!21661 () Bool)

(assert (=> b!19340 m!21661))

(declare-fun m!21663 () Bool)

(assert (=> b!19340 m!21663))

(assert (=> b!19340 m!21663))

(declare-fun m!21665 () Bool)

(assert (=> b!19340 m!21665))

(declare-fun m!21667 () Bool)

(assert (=> b!19330 m!21667))

(declare-fun m!21669 () Bool)

(assert (=> b!19330 m!21669))

(assert (=> b!19330 m!21669))

(declare-fun m!21671 () Bool)

(assert (=> b!19330 m!21671))

(declare-fun m!21673 () Bool)

(assert (=> d!12279 m!21673))

(declare-fun m!21675 () Bool)

(assert (=> d!12279 m!21675))

(declare-fun m!21677 () Bool)

(assert (=> b!19343 m!21677))

(declare-fun m!21679 () Bool)

(assert (=> b!19343 m!21679))

(declare-fun m!21681 () Bool)

(assert (=> b!19335 m!21681))

(assert (=> b!19335 m!21681))

(declare-fun m!21683 () Bool)

(assert (=> b!19335 m!21683))

(assert (=> b!19336 m!21661))

(assert (=> b!19341 m!21677))

(assert (=> b!19341 m!21679))

(declare-fun m!21685 () Bool)

(assert (=> b!19342 m!21685))

(declare-fun m!21687 () Bool)

(assert (=> b!19333 m!21687))

(declare-fun m!21689 () Bool)

(assert (=> b!19331 m!21689))

(declare-fun m!21691 () Bool)

(assert (=> b!19339 m!21691))

(assert (=> b!19258 d!12279))

(declare-fun b!19356 () Bool)

(declare-fun e!10231 () Int)

(assert (=> b!19356 (= e!10231 (+ (size!215 (left!671 (left!671 xs!604))) (size!215 (right!674 (left!671 xs!604)))))))

(declare-fun b!19355 () Bool)

(assert (=> b!19355 (= e!10231 1)))

(declare-fun d!12281 () Bool)

(declare-fun lt!2878 () Int)

(assert (=> d!12281 (>= lt!2878 0)))

(declare-fun e!10232 () Int)

(assert (=> d!12281 (= lt!2878 e!10232)))

(declare-fun c!4720 () Bool)

(assert (=> d!12281 (= c!4720 (is-Empty!37 (left!671 xs!604)))))

(assert (=> d!12281 (= (size!215 (left!671 xs!604)) lt!2878)))

(declare-fun b!19354 () Bool)

(assert (=> b!19354 (= e!10232 e!10231)))

(declare-fun c!4719 () Bool)

(assert (=> b!19354 (= c!4719 (is-Single!26 (left!671 xs!604)))))

(declare-fun b!19353 () Bool)

(assert (=> b!19353 (= e!10232 0)))

(assert (= (and b!19354 c!4719) b!19355))

(assert (= (and b!19354 (not c!4719)) b!19356))

(assert (= (and d!12281 c!4720) b!19353))

(assert (= (and d!12281 (not c!4720)) b!19354))

(declare-fun m!21693 () Bool)

(assert (=> b!19356 m!21693))

(declare-fun m!21695 () Bool)

(assert (=> b!19356 m!21695))

(assert (=> b!19258 d!12281))

(declare-fun d!12283 () Bool)

(declare-fun res!8313 () Bool)

(declare-fun e!10233 () Bool)

(assert (=> d!12283 (=> res!8313 e!10233)))

(assert (=> d!12283 (= res!8313 (not (is-CC!26 xs!604)))))

(assert (=> d!12283 (= (balanced!26 xs!604) e!10233)))

(declare-fun b!19358 () Bool)

(declare-fun res!8311 () Bool)

(declare-fun e!10234 () Bool)

(assert (=> b!19358 (=> (not res!8311) (not e!10234))))

(assert (=> b!19358 (= res!8311 (<= (- (level!24 (left!671 xs!604)) (level!24 (right!674 xs!604))) 1))))

(declare-fun b!19357 () Bool)

(assert (=> b!19357 (= e!10233 e!10234)))

(declare-fun res!8310 () Bool)

(assert (=> b!19357 (=> (not res!8310) (not e!10234))))

(assert (=> b!19357 (= res!8310 (>= (- (level!24 (left!671 xs!604)) (level!24 (right!674 xs!604))) (- 1)))))

(declare-fun b!19360 () Bool)

(assert (=> b!19360 (= e!10234 (balanced!26 (right!674 xs!604)))))

(declare-fun b!19359 () Bool)

(declare-fun res!8312 () Bool)

(assert (=> b!19359 (=> (not res!8312) (not e!10234))))

(assert (=> b!19359 (= res!8312 (balanced!26 (left!671 xs!604)))))

(assert (= (and d!12283 (not res!8313)) b!19357))

(assert (= (and b!19357 res!8310) b!19358))

(assert (= (and b!19358 res!8311) b!19359))

(assert (= (and b!19359 res!8312) b!19360))

(declare-fun m!21697 () Bool)

(assert (=> b!19358 m!21697))

(assert (=> b!19358 m!21679))

(assert (=> b!19357 m!21697))

(assert (=> b!19357 m!21679))

(assert (=> b!19360 m!21685))

(declare-fun m!21699 () Bool)

(assert (=> b!19359 m!21699))

(assert (=> b!19260 d!12283))

(declare-fun d!12285 () Bool)

(assert (=> d!12285 (= (isEmpty!289 ys!117) (= ys!117 Empty!37))))

(assert (=> b!19257 d!12285))

(assert (=> b!19274 d!12281))

(declare-fun b!19364 () Bool)

(declare-fun e!10235 () Int)

(assert (=> b!19364 (= e!10235 (+ (size!215 (left!671 xs!604)) (size!215 (right!674 xs!604))))))

(declare-fun b!19363 () Bool)

(assert (=> b!19363 (= e!10235 1)))

(declare-fun d!12287 () Bool)

(declare-fun lt!2879 () Int)

(assert (=> d!12287 (>= lt!2879 0)))

(declare-fun e!10236 () Int)

(assert (=> d!12287 (= lt!2879 e!10236)))

(declare-fun c!4722 () Bool)

(assert (=> d!12287 (= c!4722 (is-Empty!37 xs!604))))

(assert (=> d!12287 (= (size!215 xs!604) lt!2879)))

(declare-fun b!19362 () Bool)

(assert (=> b!19362 (= e!10236 e!10235)))

(declare-fun c!4721 () Bool)

(assert (=> b!19362 (= c!4721 (is-Single!26 xs!604))))

(declare-fun b!19361 () Bool)

(assert (=> b!19361 (= e!10236 0)))

(assert (= (and b!19362 c!4721) b!19363))

(assert (= (and b!19362 (not c!4721)) b!19364))

(assert (= (and d!12287 c!4722) b!19361))

(assert (= (and d!12287 (not c!4722)) b!19362))

(assert (=> b!19364 m!21623))

(assert (=> b!19364 m!21659))

(assert (=> b!19271 d!12287))

(declare-fun b!19368 () Bool)

(declare-fun e!10237 () Bool)

(assert (=> b!19368 (= e!10237 (concInv!25 (right!674 xs!617)))))

(declare-fun d!12289 () Bool)

(declare-fun res!8317 () Bool)

(declare-fun e!10238 () Bool)

(assert (=> d!12289 (=> res!8317 e!10238)))

(assert (=> d!12289 (= res!8317 (not (is-CC!26 xs!617)))))

(assert (=> d!12289 (= (concInv!25 xs!617) e!10238)))

(declare-fun b!19366 () Bool)

(declare-fun res!8315 () Bool)

(assert (=> b!19366 (=> (not res!8315) (not e!10237))))

(assert (=> b!19366 (= res!8315 (not (isEmpty!289 (right!674 xs!617))))))

(declare-fun b!19367 () Bool)

(declare-fun res!8314 () Bool)

(assert (=> b!19367 (=> (not res!8314) (not e!10237))))

(assert (=> b!19367 (= res!8314 (concInv!25 (left!671 xs!617)))))

(declare-fun b!19365 () Bool)

(assert (=> b!19365 (= e!10238 e!10237)))

(declare-fun res!8316 () Bool)

(assert (=> b!19365 (=> (not res!8316) (not e!10237))))

(assert (=> b!19365 (= res!8316 (not (isEmpty!289 (left!671 xs!617))))))

(assert (= (and d!12289 (not res!8317)) b!19365))

(assert (= (and b!19365 res!8316) b!19366))

(assert (= (and b!19366 res!8315) b!19367))

(assert (= (and b!19367 res!8314) b!19368))

(declare-fun m!21701 () Bool)

(assert (=> b!19368 m!21701))

(declare-fun m!21703 () Bool)

(assert (=> b!19366 m!21703))

(declare-fun m!21705 () Bool)

(assert (=> b!19367 m!21705))

(declare-fun m!21707 () Bool)

(assert (=> b!19365 m!21707))

(assert (=> b!19264 d!12289))

(declare-fun d!12291 () Bool)

(declare-fun res!8321 () Bool)

(declare-fun e!10239 () Bool)

(assert (=> d!12291 (=> res!8321 e!10239)))

(assert (=> d!12291 (= res!8321 (not (is-CC!26 xs!617)))))

(assert (=> d!12291 (= (balanced!26 xs!617) e!10239)))

(declare-fun b!19370 () Bool)

(declare-fun res!8319 () Bool)

(declare-fun e!10240 () Bool)

(assert (=> b!19370 (=> (not res!8319) (not e!10240))))

(assert (=> b!19370 (= res!8319 (<= (- (level!24 (left!671 xs!617)) (level!24 (right!674 xs!617))) 1))))

(declare-fun b!19369 () Bool)

(assert (=> b!19369 (= e!10239 e!10240)))

(declare-fun res!8318 () Bool)

(assert (=> b!19369 (=> (not res!8318) (not e!10240))))

(assert (=> b!19369 (= res!8318 (>= (- (level!24 (left!671 xs!617)) (level!24 (right!674 xs!617))) (- 1)))))

(declare-fun b!19372 () Bool)

(assert (=> b!19372 (= e!10240 (balanced!26 (right!674 xs!617)))))

(declare-fun b!19371 () Bool)

(declare-fun res!8320 () Bool)

(assert (=> b!19371 (=> (not res!8320) (not e!10240))))

(assert (=> b!19371 (= res!8320 (balanced!26 (left!671 xs!617)))))

(assert (= (and d!12291 (not res!8321)) b!19369))

(assert (= (and b!19369 res!8318) b!19370))

(assert (= (and b!19370 res!8319) b!19371))

(assert (= (and b!19371 res!8320) b!19372))

(declare-fun m!21709 () Bool)

(assert (=> b!19370 m!21709))

(declare-fun m!21711 () Bool)

(assert (=> b!19370 m!21711))

(assert (=> b!19369 m!21709))

(assert (=> b!19369 m!21711))

(declare-fun m!21713 () Bool)

(assert (=> b!19372 m!21713))

(declare-fun m!21715 () Bool)

(assert (=> b!19371 m!21715))

(assert (=> b!19259 d!12291))

(declare-fun b!19376 () Bool)

(declare-fun e!10241 () Bool)

(assert (=> b!19376 (= e!10241 (concInv!25 (right!674 xs!604)))))

(declare-fun d!12293 () Bool)

(declare-fun res!8325 () Bool)

(declare-fun e!10242 () Bool)

(assert (=> d!12293 (=> res!8325 e!10242)))

(assert (=> d!12293 (= res!8325 (not (is-CC!26 xs!604)))))

(assert (=> d!12293 (= (concInv!25 xs!604) e!10242)))

(declare-fun b!19374 () Bool)

(declare-fun res!8323 () Bool)

(assert (=> b!19374 (=> (not res!8323) (not e!10241))))

(assert (=> b!19374 (= res!8323 (not (isEmpty!289 (right!674 xs!604))))))

(declare-fun b!19375 () Bool)

(declare-fun res!8322 () Bool)

(assert (=> b!19375 (=> (not res!8322) (not e!10241))))

(assert (=> b!19375 (= res!8322 (concInv!25 (left!671 xs!604)))))

(declare-fun b!19373 () Bool)

(assert (=> b!19373 (= e!10242 e!10241)))

(declare-fun res!8324 () Bool)

(assert (=> b!19373 (=> (not res!8324) (not e!10241))))

(assert (=> b!19373 (= res!8324 (not (isEmpty!289 (left!671 xs!604))))))

(assert (= (and d!12293 (not res!8325)) b!19373))

(assert (= (and b!19373 res!8324) b!19374))

(assert (= (and b!19374 res!8323) b!19375))

(assert (= (and b!19375 res!8322) b!19376))

(assert (=> b!19376 m!21675))

(declare-fun m!21717 () Bool)

(assert (=> b!19374 m!21717))

(declare-fun m!21719 () Bool)

(assert (=> b!19375 m!21719))

(declare-fun m!21721 () Bool)

(assert (=> b!19373 m!21721))

(assert (=> start!3338 d!12293))

(declare-fun d!12295 () Bool)

(assert (=> d!12295 (= (isEmpty!289 xs!617) (= xs!617 Empty!37))))

(assert (=> b!19262 d!12295))

(declare-fun b!19383 () Bool)

(declare-fun e!10245 () Bool)

(declare-fun tp!4507 () Bool)

(declare-fun tp!4508 () Bool)

(assert (=> b!19383 (= e!10245 (and tp!4507 tp!4508))))

(declare-fun b!19384 () Bool)

(assert (=> b!19384 (= e!10245 tp_is_empty!89)))

(assert (=> b!19265 (= tp!4500 e!10245)))

(assert (= (and b!19265 (is-CC!26 (left!671 ys!117))) b!19383))

(assert (= (and b!19265 (is-Single!26 (left!671 ys!117))) b!19384))

(declare-fun b!19385 () Bool)

(declare-fun e!10246 () Bool)

(declare-fun tp!4509 () Bool)

(declare-fun tp!4510 () Bool)

(assert (=> b!19385 (= e!10246 (and tp!4509 tp!4510))))

(declare-fun b!19386 () Bool)

(assert (=> b!19386 (= e!10246 tp_is_empty!89)))

(assert (=> b!19265 (= tp!4498 e!10246)))

(assert (= (and b!19265 (is-CC!26 (right!674 ys!117))) b!19385))

(assert (= (and b!19265 (is-Single!26 (right!674 ys!117))) b!19386))

(declare-fun b!19387 () Bool)

(declare-fun e!10247 () Bool)

(declare-fun tp!4511 () Bool)

(declare-fun tp!4512 () Bool)

(assert (=> b!19387 (= e!10247 (and tp!4511 tp!4512))))

(declare-fun b!19388 () Bool)

(assert (=> b!19388 (= e!10247 tp_is_empty!89)))

(assert (=> b!19267 (= tp!4499 e!10247)))

(assert (= (and b!19267 (is-CC!26 (left!671 xs!604))) b!19387))

(assert (= (and b!19267 (is-Single!26 (left!671 xs!604))) b!19388))

(declare-fun b!19389 () Bool)

(declare-fun e!10248 () Bool)

(declare-fun tp!4513 () Bool)

(declare-fun tp!4514 () Bool)

(assert (=> b!19389 (= e!10248 (and tp!4513 tp!4514))))

(declare-fun b!19390 () Bool)

(assert (=> b!19390 (= e!10248 tp_is_empty!89)))

(assert (=> b!19267 (= tp!4497 e!10248)))

(assert (= (and b!19267 (is-CC!26 (right!674 xs!604))) b!19389))

(assert (= (and b!19267 (is-Single!26 (right!674 xs!604))) b!19390))

(declare-fun b!19391 () Bool)

(declare-fun e!10249 () Bool)

(declare-fun tp!4515 () Bool)

(declare-fun tp!4516 () Bool)

(assert (=> b!19391 (= e!10249 (and tp!4515 tp!4516))))

(declare-fun b!19392 () Bool)

(assert (=> b!19392 (= e!10249 tp_is_empty!89)))

(assert (=> b!19266 (= tp!4502 e!10249)))

(assert (= (and b!19266 (is-CC!26 (left!671 xs!617))) b!19391))

(assert (= (and b!19266 (is-Single!26 (left!671 xs!617))) b!19392))

(declare-fun b!19393 () Bool)

(declare-fun e!10250 () Bool)

(declare-fun tp!4517 () Bool)

(declare-fun tp!4518 () Bool)

(assert (=> b!19393 (= e!10250 (and tp!4517 tp!4518))))

(declare-fun b!19394 () Bool)

(assert (=> b!19394 (= e!10250 tp_is_empty!89)))

(assert (=> b!19266 (= tp!4501 e!10250)))

(assert (= (and b!19266 (is-CC!26 (right!674 xs!617))) b!19393))

(assert (= (and b!19266 (is-Single!26 (right!674 xs!617))) b!19394))

(push 1)

(assert (not b!19371))

(assert (not b!19331))

(assert (not b!19391))

(assert (not b!19385))

(assert (not b!19358))

(assert (not b!19337))

(assert (not b!19336))

(assert (not b!19299))

(assert (not b!19285))

(assert (not b!19342))

(assert (not b!19360))

(assert (not b!19372))

(assert (not b!19343))

(assert (not b!19369))

(assert (not b!19364))

(assert (not b!19296))

(assert (not b!19284))

(assert (not b!19366))

(assert (not b!19367))

(assert (not b!19335))

(assert (not b!19357))

(assert (not b!19297))

(assert (not b!19383))

(assert (not b!19370))

(assert (not b!19374))

(assert (not b!19330))

(assert (not b!19368))

(assert (not b!19339))

(assert (not b!19298))

(assert (not b!19375))

(assert (not d!12279))

(assert (not b!19340))

(assert (not b!19286))

(assert (not b!19393))

(assert tp_is_empty!89)

(assert (not b!19376))

(assert (not b!19365))

(assert (not b!19389))

(assert (not b!19373))

(assert (not b!19359))

(assert (not b!19287))

(assert (not b!19387))

(assert (not b!19341))

(assert (not b!19356))

(assert (not b!19333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

