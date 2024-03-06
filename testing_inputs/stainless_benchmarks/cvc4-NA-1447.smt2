; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9960 () Bool)

(assert start!9960)

(declare-fun res!35319 () Bool)

(declare-fun e!39115 () Bool)

(assert (=> start!9960 (=> (not res!35319) (not e!39115))))

(declare-datatypes () ((List!606 (Nil!564) (Cons!563 (head!973 Int) (tail!994 List!606)))))

(declare-fun res!34922 () List!606)

(declare-fun list!773 () List!606)

(declare-fun x!28593 () Int)

(assert (=> start!9960 (= res!35319 (and (not (is-Cons!563 list!773)) (= res!34922 (Cons!563 x!28593 Nil!564))))))

(assert (=> start!9960 e!39115))

(assert (=> start!9960 true))

(declare-fun b!72344 () Bool)

(declare-fun e!39114 () Bool)

(assert (=> b!72344 (= e!39115 (not e!39114))))

(declare-fun res!35318 () Bool)

(assert (=> b!72344 (=> (not res!35318) (not e!39114))))

(declare-datatypes () ((Option!511 (Some!487 (x!28623 Int)) (None!488))))

(declare-fun lastOption!1 (List!606) Option!511)

(assert (=> b!72344 (= res!35318 (= (lastOption!1 res!34922) (Some!487 x!28593)))))

(assert (=> b!72344 (is-Cons!563 res!34922)))

(declare-fun b!72345 () Bool)

(declare-fun res!35317 () Bool)

(assert (=> b!72345 (=> (not res!35317) (not e!39114))))

(declare-fun init!2 (List!606) List!606)

(assert (=> b!72345 (= res!35317 (= (init!2 res!34922) list!773))))

(declare-fun b!72346 () Bool)

(declare-fun size!4 (List!606) Int)

(assert (=> b!72346 (= e!39114 (= (+ (size!4 list!773) 1) (size!4 res!34922)))))

(assert (= (and start!9960 res!35319) b!72344))

(assert (= (and b!72344 res!35318) b!72345))

(assert (= (and b!72345 res!35317) b!72346))

(declare-fun m!72338 () Bool)

(assert (=> b!72344 m!72338))

(declare-fun m!72340 () Bool)

(assert (=> b!72345 m!72340))

(declare-fun m!72342 () Bool)

(assert (=> b!72346 m!72342))

(declare-fun m!72344 () Bool)

(assert (=> b!72346 m!72344))

(push 1)

(assert (not b!72346))

(assert (not b!72345))

(assert (not b!72344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54553 () Bool)

(declare-fun lt!15340 () Int)

(assert (=> d!54553 (>= lt!15340 0)))

(declare-fun e!39118 () Int)

(assert (=> d!54553 (= lt!15340 e!39118)))

(declare-fun c!17408 () Bool)

(assert (=> d!54553 (= c!17408 (is-Nil!564 list!773))))

(assert (=> d!54553 (= (size!4 list!773) lt!15340)))

(declare-fun b!72351 () Bool)

(assert (=> b!72351 (= e!39118 0)))

(declare-fun b!72352 () Bool)

(assert (=> b!72352 (= e!39118 (+ 1 (size!4 (tail!994 list!773))))))

(assert (= (and d!54553 c!17408) b!72351))

(assert (= (and d!54553 (not c!17408)) b!72352))

(declare-fun m!72346 () Bool)

(assert (=> b!72352 m!72346))

(assert (=> b!72346 d!54553))

(declare-fun d!54555 () Bool)

(declare-fun lt!15341 () Int)

(assert (=> d!54555 (>= lt!15341 0)))

(declare-fun e!39119 () Int)

(assert (=> d!54555 (= lt!15341 e!39119)))

(declare-fun c!17409 () Bool)

(assert (=> d!54555 (= c!17409 (is-Nil!564 res!34922))))

(assert (=> d!54555 (= (size!4 res!34922) lt!15341)))

(declare-fun b!72353 () Bool)

(assert (=> b!72353 (= e!39119 0)))

(declare-fun b!72354 () Bool)

(assert (=> b!72354 (= e!39119 (+ 1 (size!4 (tail!994 res!34922))))))

(assert (= (and d!54555 c!17409) b!72353))

(assert (= (and d!54555 (not c!17409)) b!72354))

(declare-fun m!72348 () Bool)

(assert (=> b!72354 m!72348))

(assert (=> b!72346 d!54555))

(declare-fun b!72366 () Bool)

(declare-fun e!39125 () List!606)

(assert (=> b!72366 (= e!39125 Nil!564)))

(declare-fun b!72365 () Bool)

(assert (=> b!72365 (= e!39125 (Cons!563 (head!973 res!34922) (init!2 (tail!994 res!34922))))))

(declare-fun d!54557 () Bool)

(declare-fun c!17414 () Bool)

(assert (=> d!54557 (= c!17414 (and (is-Cons!563 res!34922) (is-Nil!564 (tail!994 res!34922))))))

(declare-fun e!39124 () List!606)

(assert (=> d!54557 (= (init!2 res!34922) e!39124)))

(declare-fun b!72363 () Bool)

(assert (=> b!72363 (= e!39124 Nil!564)))

(declare-fun b!72364 () Bool)

(assert (=> b!72364 (= e!39124 e!39125)))

(declare-fun c!17415 () Bool)

(assert (=> b!72364 (= c!17415 (is-Cons!563 res!34922))))

(assert (= (and b!72364 c!17415) b!72365))

(assert (= (and b!72364 (not c!17415)) b!72366))

(assert (= (and d!54557 c!17414) b!72363))

(assert (= (and d!54557 (not c!17414)) b!72364))

(declare-fun m!72350 () Bool)

(assert (=> b!72365 m!72350))

(assert (=> b!72345 d!54557))

(declare-fun b!72375 () Bool)

(declare-fun e!39130 () Option!511)

(assert (=> b!72375 (= e!39130 (Some!487 (head!973 res!34922)))))

(declare-fun d!54559 () Bool)

(declare-fun c!17420 () Bool)

(assert (=> d!54559 (= c!17420 (and (is-Cons!563 res!34922) (is-Nil!564 (tail!994 res!34922))))))

(assert (=> d!54559 (= (lastOption!1 res!34922) e!39130)))

(declare-fun b!72378 () Bool)

(declare-fun e!39131 () Option!511)

(assert (=> b!72378 (= e!39131 None!488)))

(declare-fun b!72376 () Bool)

(assert (=> b!72376 (= e!39130 e!39131)))

(declare-fun c!17421 () Bool)

(assert (=> b!72376 (= c!17421 (is-Cons!563 res!34922))))

(declare-fun b!72377 () Bool)

(assert (=> b!72377 (= e!39131 (lastOption!1 (tail!994 res!34922)))))

(assert (= (and b!72376 c!17421) b!72377))

(assert (= (and b!72376 (not c!17421)) b!72378))

(assert (= (and d!54559 c!17420) b!72375))

(assert (= (and d!54559 (not c!17420)) b!72376))

(declare-fun m!72352 () Bool)

(assert (=> b!72377 m!72352))

(assert (=> b!72344 d!54559))

(push 1)

(assert (not b!72377))

(assert (not b!72352))

(assert (not b!72365))

(assert (not b!72354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

