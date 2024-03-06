; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5130 () Bool)

(assert start!5130)

(declare-fun b!39371 () Bool)

(declare-datatypes () ((Unit!355 (Unit!356))))

(declare-fun e!20302 () Unit!355)

(declare-fun e!20300 () Unit!355)

(assert (=> b!39371 (= e!20302 e!20300)))

(declare-fun c!8379 () Bool)

(declare-datatypes () ((Nat!81 (Zero!65) (Succ!62 (n!1164 Nat!81)))))

(declare-fun n3!65 () Nat!81)

(declare-fun n1!376 () Nat!81)

(assert (=> b!39371 (= c!8379 (and (is-Succ!62 n3!65) (= n1!376 n3!65)))))

(declare-fun n2!392 () Nat!81)

(declare-fun b!39372 () Bool)

(declare-fun n4!3 () Nat!81)

(declare-fun succ_<!0 (Nat!81 Nat!81) Unit!355)

(declare-fun +!5 (Nat!81 Nat!81) Nat!81)

(assert (=> b!39372 (= e!20300 (succ_<!0 (+!5 n1!376 n2!392) (+!5 (n!1164 n3!65) n4!3)))))

(declare-fun lt!7604 () Unit!355)

(declare-fun plus_<!1 (Nat!81 Nat!81 Nat!81 Nat!81) Unit!355)

(assert (=> b!39372 (= lt!7604 (plus_<!1 n1!376 n2!392 (n!1164 n3!65) n4!3))))

(declare-fun lt!7603 () Unit!355)

(declare-fun pred_<!0 (Nat!81 Nat!81) Unit!355)

(assert (=> b!39372 (= lt!7603 (pred_<!0 n1!376 n3!65))))

(declare-fun b!39373 () Bool)

(declare-fun plus_<!0 (Nat!81 Nat!81 Nat!81) Unit!355)

(assert (=> b!39373 (= e!20300 (plus_<!0 n1!376 n2!392 n4!3))))

(declare-fun b!39374 () Bool)

(declare-fun res!18877 () Bool)

(declare-fun e!20301 () Bool)

(assert (=> b!39374 (=> (not res!18877) (not e!20301))))

(declare-fun res!17761 () Unit!355)

(declare-fun x$50!26 () Unit!355)

(declare-fun t!5177 () Unit!355)

(assert (=> b!39374 (= res!18877 (and (= res!17761 t!5177) (= x$50!26 res!17761)))))

(declare-fun b!39375 () Bool)

(declare-fun res!18874 () Bool)

(assert (=> b!39375 (=> (not res!18874) (not e!20301))))

(assert (=> b!39375 (= res!18874 (= t!5177 e!20302))))

(declare-fun c!8378 () Bool)

(assert (=> b!39375 (= c!8378 (or (is-Zero!65 n3!65) (and (is-Succ!62 n3!65) (= n1!376 n3!65) (= n2!392 n4!3))))))

(declare-fun res!18875 () Bool)

(assert (=> start!5130 (=> (not res!18875) (not e!20301))))

(declare-fun <=!2 (Nat!81 Nat!81) Bool)

(assert (=> start!5130 (= res!18875 (<=!2 n1!376 n3!65))))

(assert (=> start!5130 e!20301))

(assert (=> start!5130 true))

(declare-fun b!39376 () Bool)

(declare-fun res!18876 () Bool)

(assert (=> b!39376 (=> (not res!18876) (not e!20301))))

(assert (=> b!39376 (= res!18876 (<=!2 n2!392 n4!3))))

(declare-fun b!39377 () Bool)

(assert (=> b!39377 (= e!20301 (not (<=!2 (+!5 n1!376 n2!392) (+!5 n3!65 n4!3))))))

(declare-fun b!39378 () Bool)

(declare-fun Unit!357 () Unit!355)

(assert (=> b!39378 (= e!20302 Unit!357)))

(assert (= (and start!5130 res!18875) b!39376))

(assert (= (and b!39376 res!18876) b!39375))

(assert (= (and b!39371 c!8379) b!39373))

(assert (= (and b!39371 (not c!8379)) b!39372))

(assert (= (and b!39375 c!8378) b!39378))

(assert (= (and b!39375 (not c!8378)) b!39371))

(assert (= (and b!39375 res!18874) b!39374))

(assert (= (and b!39374 res!18877) b!39377))

(declare-fun m!40515 () Bool)

(assert (=> b!39372 m!40515))

(declare-fun m!40517 () Bool)

(assert (=> b!39372 m!40517))

(declare-fun m!40519 () Bool)

(assert (=> b!39372 m!40519))

(declare-fun m!40521 () Bool)

(assert (=> b!39372 m!40521))

(assert (=> b!39372 m!40521))

(assert (=> b!39372 m!40515))

(declare-fun m!40523 () Bool)

(assert (=> b!39372 m!40523))

(declare-fun m!40525 () Bool)

(assert (=> start!5130 m!40525))

(declare-fun m!40527 () Bool)

(assert (=> b!39376 m!40527))

(declare-fun m!40529 () Bool)

(assert (=> b!39373 m!40529))

(assert (=> b!39377 m!40521))

(declare-fun m!40531 () Bool)

(assert (=> b!39377 m!40531))

(assert (=> b!39377 m!40521))

(assert (=> b!39377 m!40531))

(declare-fun m!40533 () Bool)

(assert (=> b!39377 m!40533))

(push 1)

(assert (not start!5130))

(assert (not b!39376))

(assert (not b!39373))

(assert (not b!39372))

(assert (not b!39377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19960 () Bool)

(declare-fun res!18880 () Bool)

(declare-fun e!20305 () Bool)

(assert (=> d!19960 (=> res!18880 e!20305)))

(declare-fun <!2 (Nat!81 Nat!81) Bool)

(assert (=> d!19960 (= res!18880 (<!2 (+!5 n1!376 n2!392) (+!5 n3!65 n4!3)))))

(assert (=> d!19960 (= (<=!2 (+!5 n1!376 n2!392) (+!5 n3!65 n4!3)) e!20305)))

(declare-fun b!39381 () Bool)

(assert (=> b!39381 (= e!20305 (= (+!5 n1!376 n2!392) (+!5 n3!65 n4!3)))))

(assert (= (and d!19960 (not res!18880)) b!39381))

(assert (=> d!19960 m!40521))

(assert (=> d!19960 m!40531))

(declare-fun m!40535 () Bool)

(assert (=> d!19960 m!40535))

(assert (=> b!39377 d!19960))

(declare-fun d!19962 () Bool)

(declare-fun c!8382 () Bool)

(assert (=> d!19962 (= c!8382 (is-Zero!65 n1!376))))

(declare-fun e!20308 () Nat!81)

(assert (=> d!19962 (= (+!5 n1!376 n2!392) e!20308)))

(declare-fun b!39386 () Bool)

(assert (=> b!39386 (= e!20308 n2!392)))

(declare-fun b!39387 () Bool)

(assert (=> b!39387 (= e!20308 (Succ!62 (+!5 (n!1164 n1!376) n2!392)))))

(assert (= (and d!19962 c!8382) b!39386))

(assert (= (and d!19962 (not c!8382)) b!39387))

(declare-fun m!40537 () Bool)

(assert (=> b!39387 m!40537))

(assert (=> b!39377 d!19962))

(declare-fun d!19964 () Bool)

(declare-fun c!8383 () Bool)

(assert (=> d!19964 (= c!8383 (is-Zero!65 n3!65))))

(declare-fun e!20309 () Nat!81)

(assert (=> d!19964 (= (+!5 n3!65 n4!3) e!20309)))

(declare-fun b!39388 () Bool)

(assert (=> b!39388 (= e!20309 n4!3)))

(declare-fun b!39389 () Bool)

(assert (=> b!39389 (= e!20309 (Succ!62 (+!5 (n!1164 n3!65) n4!3)))))

(assert (= (and d!19964 c!8383) b!39388))

(assert (= (and d!19964 (not c!8383)) b!39389))

(assert (=> b!39389 m!40515))

(assert (=> b!39377 d!19964))

(declare-fun d!19966 () Bool)

(assert (=> d!19966 (<!2 (+!5 n1!376 n2!392) (+!5 n1!376 n4!3))))

(assert (=> d!19966 true))

(declare-fun x$49!30 () Unit!355)

(assert (=> d!19966 (= (plus_<!0 n1!376 n2!392 n4!3) x$49!30)))

(declare-fun bs!12075 () Bool)

(assert (= bs!12075 d!19966))

(assert (=> bs!12075 m!40521))

(declare-fun m!40539 () Bool)

(assert (=> bs!12075 m!40539))

(assert (=> bs!12075 m!40521))

(assert (=> bs!12075 m!40539))

(declare-fun m!40541 () Bool)

(assert (=> bs!12075 m!40541))

(assert (=> b!39373 d!19966))

(declare-fun d!19968 () Bool)

(declare-fun res!18881 () Bool)

(declare-fun e!20310 () Bool)

(assert (=> d!19968 (=> res!18881 e!20310)))

(assert (=> d!19968 (= res!18881 (<!2 n1!376 n3!65))))

(assert (=> d!19968 (= (<=!2 n1!376 n3!65) e!20310)))

(declare-fun b!39390 () Bool)

(assert (=> b!39390 (= e!20310 (= n1!376 n3!65))))

(assert (= (and d!19968 (not res!18881)) b!39390))

(declare-fun m!40543 () Bool)

(assert (=> d!19968 m!40543))

(assert (=> start!5130 d!19968))

(assert (=> b!39372 d!19962))

(declare-fun d!19970 () Bool)

(declare-fun c!8384 () Bool)

(assert (=> d!19970 (= c!8384 (is-Zero!65 (n!1164 n3!65)))))

(declare-fun e!20311 () Nat!81)

(assert (=> d!19970 (= (+!5 (n!1164 n3!65) n4!3) e!20311)))

(declare-fun b!39391 () Bool)

(assert (=> b!39391 (= e!20311 n4!3)))

(declare-fun b!39392 () Bool)

(assert (=> b!39392 (= e!20311 (Succ!62 (+!5 (n!1164 (n!1164 n3!65)) n4!3)))))

(assert (= (and d!19970 c!8384) b!39391))

(assert (= (and d!19970 (not c!8384)) b!39392))

(declare-fun m!40545 () Bool)

(assert (=> b!39392 m!40545))

(assert (=> b!39372 d!19970))

(declare-fun d!19972 () Bool)

(declare-fun e!20314 () Bool)

(assert (=> d!19972 e!20314))

(declare-fun res!18884 () Bool)

(assert (=> d!19972 (=> res!18884 e!20314)))

(declare-fun lt!7607 () Nat!81)

(assert (=> d!19972 (= res!18884 (= n1!376 lt!7607))))

(assert (=> d!19972 (= lt!7607 (n!1164 n3!65))))

(assert (=> d!19972 true))

(declare-fun x$45!66 () Unit!355)

(assert (=> d!19972 (= (pred_<!0 n1!376 n3!65) x$45!66)))

(declare-fun b!39395 () Bool)

(assert (=> b!39395 (= e!20314 (<!2 n1!376 lt!7607))))

(assert (= (and d!19972 (not res!18884)) b!39395))

(declare-fun m!40547 () Bool)

(assert (=> b!39395 m!40547))

(assert (=> b!39372 d!19972))

(declare-fun d!19974 () Bool)

(assert (=> d!19974 (<=!2 (+!5 n1!376 n2!392) (+!5 (n!1164 n3!65) n4!3))))

(assert (=> d!19974 true))

(declare-fun x$50!32 () Unit!355)

(assert (=> d!19974 (= (plus_<!1 n1!376 n2!392 (n!1164 n3!65) n4!3) x$50!32)))

(declare-fun bs!12076 () Bool)

(assert (= bs!12076 d!19974))

(assert (=> bs!12076 m!40521))

(assert (=> bs!12076 m!40515))

(assert (=> bs!12076 m!40521))

(assert (=> bs!12076 m!40515))

(declare-fun m!40549 () Bool)

(assert (=> bs!12076 m!40549))

(assert (=> b!39372 d!19974))

(declare-fun d!19976 () Bool)

(assert (=> d!19976 (<!2 (+!5 n1!376 n2!392) (Succ!62 (+!5 (n!1164 n3!65) n4!3)))))

(assert (=> d!19976 true))

(declare-fun x$43!40 () Unit!355)

(assert (=> d!19976 (= (succ_<!0 (+!5 n1!376 n2!392) (+!5 (n!1164 n3!65) n4!3)) x$43!40)))

(declare-fun bs!12077 () Bool)

(assert (= bs!12077 d!19976))

(assert (=> bs!12077 m!40521))

(declare-fun m!40551 () Bool)

(assert (=> bs!12077 m!40551))

(assert (=> b!39372 d!19976))

(declare-fun d!19978 () Bool)

(declare-fun res!18885 () Bool)

(declare-fun e!20315 () Bool)

(assert (=> d!19978 (=> res!18885 e!20315)))

(assert (=> d!19978 (= res!18885 (<!2 n2!392 n4!3))))

(assert (=> d!19978 (= (<=!2 n2!392 n4!3) e!20315)))

(declare-fun b!39396 () Bool)

(assert (=> b!39396 (= e!20315 (= n2!392 n4!3))))

(assert (= (and d!19978 (not res!18885)) b!39396))

(declare-fun m!40553 () Bool)

(assert (=> d!19978 m!40553))

(assert (=> b!39376 d!19978))

(push 1)

(assert (not d!19968))

(assert (not d!19966))

(assert (not d!19960))

(assert (not b!39389))

(assert (not d!19978))

(assert (not b!39387))

(assert (not b!39395))

(assert (not b!39392))

(assert (not d!19976))

(assert (not d!19974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19980 () Bool)

(declare-fun lt!7610 () Bool)

(declare-fun repr!0 (Nat!81) Int)

(assert (=> d!19980 (= lt!7610 (< (repr!0 n1!376) (repr!0 n3!65)))))

(declare-fun e!20318 () Bool)

(assert (=> d!19980 (= lt!7610 e!20318)))

(declare-fun c!8387 () Bool)

(assert (=> d!19980 (= c!8387 (and (is-Succ!62 n1!376) (is-Succ!62 n3!65)))))

(assert (=> d!19980 (= (<!2 n1!376 n3!65) lt!7610)))

(declare-fun b!39401 () Bool)

(assert (=> b!39401 (= e!20318 (<!2 (n!1164 n1!376) (n!1164 n3!65)))))

(declare-fun b!39402 () Bool)

(assert (=> b!39402 (= e!20318 (and (is-Zero!65 n1!376) (is-Succ!62 n3!65)))))

(assert (= (and d!19980 c!8387) b!39401))

(assert (= (and d!19980 (not c!8387)) b!39402))

(declare-fun m!40555 () Bool)

(assert (=> d!19980 m!40555))

(declare-fun m!40557 () Bool)

(assert (=> d!19980 m!40557))

(declare-fun m!40559 () Bool)

(assert (=> b!39401 m!40559))

(assert (=> d!19968 d!19980))

(declare-fun d!19982 () Bool)

(declare-fun c!8388 () Bool)

(assert (=> d!19982 (= c!8388 (is-Zero!65 (n!1164 n1!376)))))

(declare-fun e!20319 () Nat!81)

(assert (=> d!19982 (= (+!5 (n!1164 n1!376) n2!392) e!20319)))

(declare-fun b!39403 () Bool)

(assert (=> b!39403 (= e!20319 n2!392)))

(declare-fun b!39404 () Bool)

(assert (=> b!39404 (= e!20319 (Succ!62 (+!5 (n!1164 (n!1164 n1!376)) n2!392)))))

(assert (= (and d!19982 c!8388) b!39403))

(assert (= (and d!19982 (not c!8388)) b!39404))

(declare-fun m!40561 () Bool)

(assert (=> b!39404 m!40561))

(assert (=> b!39387 d!19982))

(declare-fun d!19984 () Bool)

(declare-fun c!8389 () Bool)

(assert (=> d!19984 (= c!8389 (is-Zero!65 (n!1164 (n!1164 n3!65))))))

(declare-fun e!20320 () Nat!81)

(assert (=> d!19984 (= (+!5 (n!1164 (n!1164 n3!65)) n4!3) e!20320)))

(declare-fun b!39405 () Bool)

(assert (=> b!39405 (= e!20320 n4!3)))

(declare-fun b!39406 () Bool)

(assert (=> b!39406 (= e!20320 (Succ!62 (+!5 (n!1164 (n!1164 (n!1164 n3!65))) n4!3)))))

(assert (= (and d!19984 c!8389) b!39405))

(assert (= (and d!19984 (not c!8389)) b!39406))

(declare-fun m!40563 () Bool)

(assert (=> b!39406 m!40563))

(assert (=> b!39392 d!19984))

(declare-fun lt!7611 () Bool)

(declare-fun d!19986 () Bool)

(assert (=> d!19986 (= lt!7611 (< (repr!0 (+!5 n1!376 n2!392)) (repr!0 (+!5 n1!376 n4!3))))))

(declare-fun e!20321 () Bool)

(assert (=> d!19986 (= lt!7611 e!20321)))

(declare-fun c!8390 () Bool)

(assert (=> d!19986 (= c!8390 (and (is-Succ!62 (+!5 n1!376 n2!392)) (is-Succ!62 (+!5 n1!376 n4!3))))))

(assert (=> d!19986 (= (<!2 (+!5 n1!376 n2!392) (+!5 n1!376 n4!3)) lt!7611)))

(declare-fun b!39407 () Bool)

(assert (=> b!39407 (= e!20321 (<!2 (n!1164 (+!5 n1!376 n2!392)) (n!1164 (+!5 n1!376 n4!3))))))

(declare-fun b!39408 () Bool)

(assert (=> b!39408 (= e!20321 (and (is-Zero!65 (+!5 n1!376 n2!392)) (is-Succ!62 (+!5 n1!376 n4!3))))))

(assert (= (and d!19986 c!8390) b!39407))

(assert (= (and d!19986 (not c!8390)) b!39408))

(assert (=> d!19986 m!40521))

(declare-fun m!40565 () Bool)

(assert (=> d!19986 m!40565))

(assert (=> d!19986 m!40539))

(declare-fun m!40567 () Bool)

(assert (=> d!19986 m!40567))

(declare-fun m!40569 () Bool)

(assert (=> b!39407 m!40569))

(assert (=> d!19966 d!19986))

(assert (=> d!19966 d!19962))

(declare-fun d!19988 () Bool)

(declare-fun c!8391 () Bool)

(assert (=> d!19988 (= c!8391 (is-Zero!65 n1!376))))

(declare-fun e!20322 () Nat!81)

(assert (=> d!19988 (= (+!5 n1!376 n4!3) e!20322)))

(declare-fun b!39409 () Bool)

(assert (=> b!39409 (= e!20322 n4!3)))

(declare-fun b!39410 () Bool)

(assert (=> b!39410 (= e!20322 (Succ!62 (+!5 (n!1164 n1!376) n4!3)))))

(assert (= (and d!19988 c!8391) b!39409))

(assert (= (and d!19988 (not c!8391)) b!39410))

(declare-fun m!40571 () Bool)

(assert (=> b!39410 m!40571))

(assert (=> d!19966 d!19988))

(declare-fun d!19990 () Bool)

(declare-fun lt!7612 () Bool)

(assert (=> d!19990 (= lt!7612 (< (repr!0 (+!5 n1!376 n2!392)) (repr!0 (+!5 n3!65 n4!3))))))

(declare-fun e!20323 () Bool)

(assert (=> d!19990 (= lt!7612 e!20323)))

(declare-fun c!8392 () Bool)

(assert (=> d!19990 (= c!8392 (and (is-Succ!62 (+!5 n1!376 n2!392)) (is-Succ!62 (+!5 n3!65 n4!3))))))

(assert (=> d!19990 (= (<!2 (+!5 n1!376 n2!392) (+!5 n3!65 n4!3)) lt!7612)))

(declare-fun b!39411 () Bool)

(assert (=> b!39411 (= e!20323 (<!2 (n!1164 (+!5 n1!376 n2!392)) (n!1164 (+!5 n3!65 n4!3))))))

(declare-fun b!39412 () Bool)

(assert (=> b!39412 (= e!20323 (and (is-Zero!65 (+!5 n1!376 n2!392)) (is-Succ!62 (+!5 n3!65 n4!3))))))

(assert (= (and d!19990 c!8392) b!39411))

(assert (= (and d!19990 (not c!8392)) b!39412))

(assert (=> d!19990 m!40521))

(assert (=> d!19990 m!40565))

(assert (=> d!19990 m!40531))

(declare-fun m!40573 () Bool)

(assert (=> d!19990 m!40573))

(declare-fun m!40575 () Bool)

(assert (=> b!39411 m!40575))

(assert (=> d!19960 d!19990))

(declare-fun d!19992 () Bool)

(declare-fun lt!7613 () Bool)

(assert (=> d!19992 (= lt!7613 (< (repr!0 n2!392) (repr!0 n4!3)))))

(declare-fun e!20324 () Bool)

(assert (=> d!19992 (= lt!7613 e!20324)))

(declare-fun c!8393 () Bool)

(assert (=> d!19992 (= c!8393 (and (is-Succ!62 n2!392) (is-Succ!62 n4!3)))))

(assert (=> d!19992 (= (<!2 n2!392 n4!3) lt!7613)))

(declare-fun b!39413 () Bool)

(assert (=> b!39413 (= e!20324 (<!2 (n!1164 n2!392) (n!1164 n4!3)))))

(declare-fun b!39414 () Bool)

(assert (=> b!39414 (= e!20324 (and (is-Zero!65 n2!392) (is-Succ!62 n4!3)))))

(assert (= (and d!19992 c!8393) b!39413))

(assert (= (and d!19992 (not c!8393)) b!39414))

(declare-fun m!40577 () Bool)

(assert (=> d!19992 m!40577))

(declare-fun m!40579 () Bool)

(assert (=> d!19992 m!40579))

(declare-fun m!40581 () Bool)

(assert (=> b!39413 m!40581))

(assert (=> d!19978 d!19992))

(declare-fun lt!7614 () Bool)

(declare-fun d!19994 () Bool)

(assert (=> d!19994 (= lt!7614 (< (repr!0 (+!5 n1!376 n2!392)) (repr!0 (Succ!62 (+!5 (n!1164 n3!65) n4!3)))))))

(declare-fun e!20325 () Bool)

(assert (=> d!19994 (= lt!7614 e!20325)))

(declare-fun c!8394 () Bool)

(assert (=> d!19994 (= c!8394 (and (is-Succ!62 (+!5 n1!376 n2!392)) (is-Succ!62 (Succ!62 (+!5 (n!1164 n3!65) n4!3)))))))

(assert (=> d!19994 (= (<!2 (+!5 n1!376 n2!392) (Succ!62 (+!5 (n!1164 n3!65) n4!3))) lt!7614)))

(declare-fun b!39415 () Bool)

(assert (=> b!39415 (= e!20325 (<!2 (n!1164 (+!5 n1!376 n2!392)) (n!1164 (Succ!62 (+!5 (n!1164 n3!65) n4!3)))))))

(declare-fun b!39416 () Bool)

(assert (=> b!39416 (= e!20325 (and (is-Zero!65 (+!5 n1!376 n2!392)) (is-Succ!62 (Succ!62 (+!5 (n!1164 n3!65) n4!3)))))))

(assert (= (and d!19994 c!8394) b!39415))

(assert (= (and d!19994 (not c!8394)) b!39416))

(assert (=> d!19994 m!40521))

(assert (=> d!19994 m!40565))

(declare-fun m!40583 () Bool)

(assert (=> d!19994 m!40583))

(declare-fun m!40585 () Bool)

(assert (=> b!39415 m!40585))

(assert (=> d!19976 d!19994))

(declare-fun d!19996 () Bool)

(declare-fun res!18886 () Bool)

(declare-fun e!20326 () Bool)

(assert (=> d!19996 (=> res!18886 e!20326)))

(assert (=> d!19996 (= res!18886 (<!2 (+!5 n1!376 n2!392) (+!5 (n!1164 n3!65) n4!3)))))

(assert (=> d!19996 (= (<=!2 (+!5 n1!376 n2!392) (+!5 (n!1164 n3!65) n4!3)) e!20326)))

(declare-fun b!39417 () Bool)

(assert (=> b!39417 (= e!20326 (= (+!5 n1!376 n2!392) (+!5 (n!1164 n3!65) n4!3)))))

(assert (= (and d!19996 (not res!18886)) b!39417))

(assert (=> d!19996 m!40521))

(assert (=> d!19996 m!40515))

(declare-fun m!40587 () Bool)

(assert (=> d!19996 m!40587))

(assert (=> d!19974 d!19996))

(assert (=> d!19974 d!19962))

(assert (=> d!19974 d!19970))

(assert (=> b!39389 d!19970))

(declare-fun d!19998 () Bool)

(declare-fun lt!7615 () Bool)

(assert (=> d!19998 (= lt!7615 (< (repr!0 n1!376) (repr!0 lt!7607)))))

(declare-fun e!20327 () Bool)

(assert (=> d!19998 (= lt!7615 e!20327)))

(declare-fun c!8395 () Bool)

(assert (=> d!19998 (= c!8395 (and (is-Succ!62 n1!376) (is-Succ!62 lt!7607)))))

(assert (=> d!19998 (= (<!2 n1!376 lt!7607) lt!7615)))

(declare-fun b!39418 () Bool)

(assert (=> b!39418 (= e!20327 (<!2 (n!1164 n1!376) (n!1164 lt!7607)))))

(declare-fun b!39419 () Bool)

(assert (=> b!39419 (= e!20327 (and (is-Zero!65 n1!376) (is-Succ!62 lt!7607)))))

(assert (= (and d!19998 c!8395) b!39418))

(assert (= (and d!19998 (not c!8395)) b!39419))

(assert (=> d!19998 m!40555))

(declare-fun m!40589 () Bool)

(assert (=> d!19998 m!40589))

(declare-fun m!40591 () Bool)

(assert (=> b!39418 m!40591))

(assert (=> b!39395 d!19998))

(push 1)

(assert (not d!19998))

(assert (not d!19980))

(assert (not d!19992))

(assert (not b!39401))

(assert (not b!39415))

(assert (not b!39410))

(assert (not b!39407))

(assert (not d!19996))

(assert (not b!39418))

(assert (not b!39413))

(assert (not b!39404))

(assert (not d!19986))

(assert (not b!39406))

(assert (not d!19990))

(assert (not d!19994))

(assert (not b!39411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

