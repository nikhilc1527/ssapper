; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11190 () Bool)

(assert start!11190)

(assert (=> start!11190 true))

(declare-fun bs!41029 () Bool)

(declare-fun b!85490 () Bool)

(assert (= bs!41029 (and b!85490 start!11190)))

(declare-fun lambda!10743 () Int)

(declare-fun lambda!10742 () Int)

(assert (=> bs!41029 (not (= lambda!10743 lambda!10742))))

(assert (=> b!85490 true))

(declare-fun res!44397 () Bool)

(declare-fun e!46344 () Bool)

(assert (=> start!11190 (=> (not res!44397) (not e!46344))))

(declare-datatypes () ((List!707 (Cons!664 (h!1037 Int) (t!48152 List!707)) (Nil!666))))

(declare-fun ls!69 () List!707)

(declare-fun forall!55 (List!707 Int) Bool)

(assert (=> start!11190 (= res!44397 (forall!55 ls!69 lambda!10742))))

(assert (=> start!11190 e!46344))

(assert (=> start!11190 true))

(declare-fun b!85488 () Bool)

(declare-fun res!44398 () Bool)

(assert (=> b!85488 (=> (not res!44398) (not e!46344))))

(assert (=> b!85488 (= res!44398 (is-Cons!664 ls!69))))

(declare-fun b!85489 () Bool)

(declare-fun res!44399 () Bool)

(assert (=> b!85489 (=> (not res!44399) (not e!46344))))

(declare-fun x!29270 () Int)

(declare-fun inductVal!911 () Bool)

(declare-fun forall_eq_implies_le!0 (List!707 Int) Bool)

(assert (=> b!85489 (= res!44399 (= inductVal!911 (forall_eq_implies_le!0 (t!48152 ls!69) x!29270)))))

(assert (=> b!85490 (= e!46344 (not (forall!55 ls!69 lambda!10743)))))

(assert (= (and start!11190 res!44397) b!85488))

(assert (= (and b!85488 res!44398) b!85489))

(assert (= (and b!85489 res!44399) b!85490))

(declare-fun m!81312 () Bool)

(assert (=> start!11190 m!81312))

(declare-fun m!81314 () Bool)

(assert (=> b!85489 m!81314))

(declare-fun m!81316 () Bool)

(assert (=> b!85490 m!81316))

(push 1)

(assert (not b!85490))

(assert (not start!11190))

(assert (not b!85489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57359 () Bool)

(declare-fun res!44404 () Bool)

(declare-fun e!46349 () Bool)

(assert (=> d!57359 (=> res!44404 e!46349)))

(assert (=> d!57359 (= res!44404 (is-Nil!666 ls!69))))

(assert (=> d!57359 (= (forall!55 ls!69 lambda!10743) e!46349)))

(declare-fun b!85497 () Bool)

(declare-fun e!46350 () Bool)

(assert (=> b!85497 (= e!46349 e!46350)))

(declare-fun res!44405 () Bool)

(assert (=> b!85497 (=> (not res!44405) (not e!46350))))

(declare-fun dynLambda!1016 (Int Int) Bool)

(assert (=> b!85497 (= res!44405 (dynLambda!1016 lambda!10743 (h!1037 ls!69)))))

(declare-fun b!85498 () Bool)

(assert (=> b!85498 (= e!46350 (forall!55 (t!48152 ls!69) lambda!10743))))

(assert (= (and d!57359 (not res!44404)) b!85497))

(assert (= (and b!85497 res!44405) b!85498))

(declare-fun b_lambda!16843 () Bool)

(assert (=> (not b_lambda!16843) (not b!85497)))

(declare-fun m!81318 () Bool)

(assert (=> b!85497 m!81318))

(declare-fun m!81320 () Bool)

(assert (=> b!85498 m!81320))

(assert (=> b!85490 d!57359))

(declare-fun d!57361 () Bool)

(declare-fun res!44406 () Bool)

(declare-fun e!46351 () Bool)

(assert (=> d!57361 (=> res!44406 e!46351)))

(assert (=> d!57361 (= res!44406 (is-Nil!666 ls!69))))

(assert (=> d!57361 (= (forall!55 ls!69 lambda!10742) e!46351)))

(declare-fun b!85499 () Bool)

(declare-fun e!46352 () Bool)

(assert (=> b!85499 (= e!46351 e!46352)))

(declare-fun res!44407 () Bool)

(assert (=> b!85499 (=> (not res!44407) (not e!46352))))

(assert (=> b!85499 (= res!44407 (dynLambda!1016 lambda!10742 (h!1037 ls!69)))))

(declare-fun b!85500 () Bool)

(assert (=> b!85500 (= e!46352 (forall!55 (t!48152 ls!69) lambda!10742))))

(assert (= (and d!57361 (not res!44406)) b!85499))

(assert (= (and b!85499 res!44407) b!85500))

(declare-fun b_lambda!16845 () Bool)

(assert (=> (not b_lambda!16845) (not b!85499)))

(declare-fun m!81322 () Bool)

(assert (=> b!85499 m!81322))

(declare-fun m!81324 () Bool)

(assert (=> b!85500 m!81324))

(assert (=> start!11190 d!57361))

(declare-fun bs!41030 () Bool)

(declare-fun d!57363 () Bool)

(assert (= bs!41030 (and d!57363 start!11190)))

(declare-fun lambda!10750 () Int)

(assert (=> bs!41030 (= lambda!10750 lambda!10742)))

(declare-fun bs!41031 () Bool)

(assert (= bs!41031 (and d!57363 b!85490)))

(assert (=> bs!41031 (not (= lambda!10750 lambda!10743))))

(assert (=> d!57363 true))

(declare-fun bs!41032 () Bool)

(declare-fun b!85505 () Bool)

(assert (= bs!41032 (and b!85505 start!11190)))

(declare-fun lambda!10751 () Int)

(assert (=> bs!41032 (not (= lambda!10751 lambda!10742))))

(declare-fun bs!41033 () Bool)

(assert (= bs!41033 (and b!85505 b!85490)))

(assert (=> bs!41033 (= lambda!10751 lambda!10743)))

(declare-fun bs!41034 () Bool)

(assert (= bs!41034 (and b!85505 d!57363)))

(assert (=> bs!41034 (not (= lambda!10751 lambda!10750))))

(assert (=> b!85505 true))

(declare-fun bs!41035 () Bool)

(declare-fun b!85506 () Bool)

(assert (= bs!41035 (and b!85506 start!11190)))

(declare-fun lambda!10752 () Int)

(assert (=> bs!41035 (not (= lambda!10752 lambda!10742))))

(declare-fun bs!41036 () Bool)

(assert (= bs!41036 (and b!85506 b!85490)))

(assert (=> bs!41036 (= lambda!10752 lambda!10743)))

(declare-fun bs!41037 () Bool)

(assert (= bs!41037 (and b!85506 d!57363)))

(assert (=> bs!41037 (not (= lambda!10752 lambda!10750))))

(declare-fun bs!41038 () Bool)

(assert (= bs!41038 (and b!85506 b!85505)))

(assert (=> bs!41038 (= lambda!10752 lambda!10751)))

(assert (=> b!85506 true))

(declare-fun e!46355 () Bool)

(assert (=> d!57363 e!46355))

(declare-fun c!21226 () Bool)

(assert (=> d!57363 (= c!21226 (is-Cons!664 (t!48152 ls!69)))))

(assert (=> d!57363 (forall!55 (t!48152 ls!69) lambda!10750)))

(assert (=> d!57363 (= (forall_eq_implies_le!0 (t!48152 ls!69) x!29270) true)))

(assert (=> b!85505 (= e!46355 (forall!55 (t!48152 ls!69) lambda!10751))))

(declare-fun lt!19913 () Bool)

(assert (=> b!85505 (= lt!19913 (forall_eq_implies_le!0 (t!48152 (t!48152 ls!69)) x!29270))))

(assert (=> b!85506 (= e!46355 (forall!55 (t!48152 ls!69) lambda!10752))))

(assert (= (and d!57363 c!21226) b!85505))

(assert (= (and d!57363 (not c!21226)) b!85506))

(declare-fun m!81326 () Bool)

(assert (=> d!57363 m!81326))

(declare-fun m!81328 () Bool)

(assert (=> b!85505 m!81328))

(declare-fun m!81330 () Bool)

(assert (=> b!85505 m!81330))

(declare-fun m!81332 () Bool)

(assert (=> b!85506 m!81332))

(assert (=> b!85489 d!57363))

(declare-fun b_lambda!16847 () Bool)

(assert (= b_lambda!16845 (or start!11190 b_lambda!16847)))

(declare-fun bs!41039 () Bool)

(declare-fun d!57365 () Bool)

(assert (= bs!41039 (and d!57365 start!11190)))

(assert (=> bs!41039 (= (dynLambda!1016 lambda!10742 (h!1037 ls!69)) (= (h!1037 ls!69) x!29270))))

(assert (=> b!85499 d!57365))

(declare-fun b_lambda!16849 () Bool)

(assert (= b_lambda!16843 (or b!85490 b_lambda!16849)))

(declare-fun bs!41040 () Bool)

(declare-fun d!57367 () Bool)

(assert (= bs!41040 (and d!57367 b!85490)))

(assert (=> bs!41040 (= (dynLambda!1016 lambda!10743 (h!1037 ls!69)) (<= (h!1037 ls!69) x!29270))))

(assert (=> b!85497 d!57367))

(push 1)

(assert (not d!57363))

(assert (not b_lambda!16847))

(assert (not b!85500))

(assert (not b!85498))

(assert (not b!85506))

(assert (not b!85505))

(assert (not b_lambda!16849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

