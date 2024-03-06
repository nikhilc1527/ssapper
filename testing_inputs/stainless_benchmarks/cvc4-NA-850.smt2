; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6372 () Bool)

(assert start!6372)

(declare-fun b!47439 () Bool)

(declare-fun res!22274 () Bool)

(declare-fun e!24731 () Bool)

(assert (=> b!47439 (=> (not res!22274) (not e!24731))))

(declare-datatypes () ((Nat!211 (Zero!195) (Succ!192 (n!1348 Nat!211)))))

(declare-fun thiss!5481 () Nat!211)

(declare-fun that!1096 () Nat!211)

(declare-fun res!17683 () Nat!211)

(declare-fun -!4 (Nat!211 Nat!211) Nat!211)

(assert (=> b!47439 (= res!22274 (= res!17683 (-!4 (n!1348 thiss!5481) (n!1348 that!1096))))))

(declare-fun b!47440 () Bool)

(declare-fun res!22273 () Bool)

(declare-fun e!24733 () Bool)

(assert (=> b!47440 (=> (not res!22273) (not e!24733))))

(declare-fun >!2 (Nat!211 Nat!211) Bool)

(assert (=> b!47440 (= res!22273 (>!2 that!1096 Zero!195))))

(declare-fun b!47441 () Bool)

(declare-fun e!24732 () Bool)

(assert (=> b!47441 (= e!24732 e!24733)))

(declare-fun res!22275 () Bool)

(assert (=> b!47441 (=> (not res!22275) (not e!24733))))

(assert (=> b!47441 (= res!22275 (>!2 thiss!5481 Zero!195))))

(declare-fun b!47442 () Bool)

(declare-fun repr!0 (Nat!211) Int)

(assert (=> b!47442 (= e!24733 (>= (repr!0 res!17683) (repr!0 thiss!5481)))))

(declare-fun res!22277 () Bool)

(assert (=> start!6372 (=> (not res!22277) (not e!24731))))

(assert (=> start!6372 (= res!22277 (and (is-Succ!192 thiss!5481) (is-Succ!192 that!1096)))))

(assert (=> start!6372 e!24731))

(assert (=> start!6372 true))

(declare-fun b!47443 () Bool)

(assert (=> b!47443 (= e!24731 e!24732)))

(declare-fun res!22276 () Bool)

(assert (=> b!47443 (=> res!22276 e!24732)))

(assert (=> b!47443 (= res!22276 (> (repr!0 res!17683) (repr!0 thiss!5481)))))

(assert (= (and start!6372 res!22277) b!47439))

(assert (= (and b!47439 res!22274) b!47443))

(assert (= (and b!47443 (not res!22276)) b!47441))

(assert (= (and b!47441 res!22275) b!47440))

(assert (= (and b!47440 res!22273) b!47442))

(declare-fun m!50357 () Bool)

(assert (=> b!47442 m!50357))

(declare-fun m!50359 () Bool)

(assert (=> b!47442 m!50359))

(assert (=> b!47443 m!50357))

(assert (=> b!47443 m!50359))

(declare-fun m!50361 () Bool)

(assert (=> b!47441 m!50361))

(declare-fun m!50363 () Bool)

(assert (=> b!47440 m!50363))

(declare-fun m!50365 () Bool)

(assert (=> b!47439 m!50365))

(push 1)

(assert (not b!47443))

(assert (not b!47442))

(assert (not b!47439))

(assert (not b!47441))

(assert (not b!47440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33306 () Bool)

(declare-fun lt!8652 () Int)

(assert (=> d!33306 (>= lt!8652 0)))

(declare-fun e!24736 () Int)

(assert (=> d!33306 (= lt!8652 e!24736)))

(declare-fun c!10011 () Bool)

(assert (=> d!33306 (= c!10011 (is-Zero!195 res!17683))))

(assert (=> d!33306 (= (repr!0 res!17683) lt!8652)))

(declare-fun b!47448 () Bool)

(assert (=> b!47448 (= e!24736 0)))

(declare-fun b!47449 () Bool)

(assert (=> b!47449 (= e!24736 (+ (repr!0 (n!1348 res!17683)) 1))))

(assert (= (and d!33306 c!10011) b!47448))

(assert (= (and d!33306 (not c!10011)) b!47449))

(declare-fun m!50367 () Bool)

(assert (=> b!47449 m!50367))

(assert (=> b!47443 d!33306))

(declare-fun d!33308 () Bool)

(declare-fun lt!8653 () Int)

(assert (=> d!33308 (>= lt!8653 0)))

(declare-fun e!24737 () Int)

(assert (=> d!33308 (= lt!8653 e!24737)))

(declare-fun c!10012 () Bool)

(assert (=> d!33308 (= c!10012 (is-Zero!195 thiss!5481))))

(assert (=> d!33308 (= (repr!0 thiss!5481) lt!8653)))

(declare-fun b!47450 () Bool)

(assert (=> b!47450 (= e!24737 0)))

(declare-fun b!47451 () Bool)

(assert (=> b!47451 (= e!24737 (+ (repr!0 (n!1348 thiss!5481)) 1))))

(assert (= (and d!33308 c!10012) b!47450))

(assert (= (and d!33308 (not c!10012)) b!47451))

(declare-fun m!50369 () Bool)

(assert (=> b!47451 m!50369))

(assert (=> b!47443 d!33308))

(declare-fun d!33310 () Bool)

(declare-fun res!22280 () Bool)

(declare-fun e!24740 () Bool)

(assert (=> d!33310 (=> (not res!22280) (not e!24740))))

(declare-fun <!2 (Nat!211 Nat!211) Bool)

(assert (=> d!33310 (= res!22280 (not (<!2 that!1096 Zero!195)))))

(assert (=> d!33310 (= (>!2 that!1096 Zero!195) e!24740)))

(declare-fun b!47454 () Bool)

(assert (=> b!47454 (= e!24740 (not (= that!1096 Zero!195)))))

(assert (= (and d!33310 res!22280) b!47454))

(declare-fun m!50371 () Bool)

(assert (=> d!33310 m!50371))

(assert (=> b!47440 d!33310))

(declare-fun d!33312 () Bool)

(declare-fun res!22281 () Bool)

(declare-fun e!24741 () Bool)

(assert (=> d!33312 (=> (not res!22281) (not e!24741))))

(assert (=> d!33312 (= res!22281 (not (<!2 thiss!5481 Zero!195)))))

(assert (=> d!33312 (= (>!2 thiss!5481 Zero!195) e!24741)))

(declare-fun b!47455 () Bool)

(assert (=> b!47455 (= e!24741 (not (= thiss!5481 Zero!195)))))

(assert (= (and d!33312 res!22281) b!47455))

(declare-fun m!50373 () Bool)

(assert (=> d!33312 m!50373))

(assert (=> b!47441 d!33312))

(declare-fun d!33314 () Bool)

(declare-fun e!24749 () Bool)

(assert (=> d!33314 e!24749))

(declare-fun res!22289 () Bool)

(assert (=> d!33314 (=> (not res!22289) (not e!24749))))

(declare-fun lt!8656 () Nat!211)

(assert (=> d!33314 (= res!22289 (<= (repr!0 lt!8656) (repr!0 (n!1348 thiss!5481))))))

(declare-fun e!24750 () Nat!211)

(assert (=> d!33314 (= lt!8656 e!24750)))

(declare-fun c!10015 () Bool)

(assert (=> d!33314 (= c!10015 (and (is-Succ!192 (n!1348 thiss!5481)) (is-Succ!192 (n!1348 that!1096))))))

(assert (=> d!33314 (= (-!4 (n!1348 thiss!5481) (n!1348 that!1096)) lt!8656)))

(declare-fun b!47466 () Bool)

(declare-fun e!24748 () Bool)

(assert (=> b!47466 (= e!24749 e!24748)))

(declare-fun res!22291 () Bool)

(assert (=> b!47466 (=> res!22291 e!24748)))

(assert (=> b!47466 (= res!22291 (not (>!2 (n!1348 thiss!5481) Zero!195)))))

(declare-fun b!47467 () Bool)

(declare-fun res!22290 () Bool)

(assert (=> b!47467 (=> res!22290 e!24748)))

(assert (=> b!47467 (= res!22290 (not (>!2 (n!1348 that!1096) Zero!195)))))

(declare-fun b!47468 () Bool)

(assert (=> b!47468 (= e!24748 (< (repr!0 lt!8656) (repr!0 (n!1348 thiss!5481))))))

(declare-fun b!47469 () Bool)

(assert (=> b!47469 (= e!24750 (-!4 (n!1348 (n!1348 thiss!5481)) (n!1348 (n!1348 that!1096))))))

(declare-fun b!47470 () Bool)

(assert (=> b!47470 (= e!24750 (n!1348 thiss!5481))))

(assert (= (and d!33314 c!10015) b!47469))

(assert (= (and d!33314 (not c!10015)) b!47470))

(assert (= (and d!33314 res!22289) b!47466))

(assert (= (and b!47466 (not res!22291)) b!47467))

(assert (= (and b!47467 (not res!22290)) b!47468))

(declare-fun m!50375 () Bool)

(assert (=> b!47469 m!50375))

(declare-fun m!50377 () Bool)

(assert (=> b!47467 m!50377))

(declare-fun m!50379 () Bool)

(assert (=> b!47466 m!50379))

(declare-fun m!50381 () Bool)

(assert (=> d!33314 m!50381))

(assert (=> d!33314 m!50369))

(assert (=> b!47468 m!50381))

(assert (=> b!47468 m!50369))

(assert (=> b!47439 d!33314))

(assert (=> b!47442 d!33306))

(assert (=> b!47442 d!33308))

(push 1)

(assert (not b!47466))

(assert (not d!33310))

(assert (not b!47451))

(assert (not d!33312))

(assert (not d!33314))

(assert (not b!47469))

(assert (not b!47467))

(assert (not b!47449))

(assert (not b!47468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

