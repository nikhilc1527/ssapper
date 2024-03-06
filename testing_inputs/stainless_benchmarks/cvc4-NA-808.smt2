; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6102 () Bool)

(assert start!6102)

(declare-fun b!45415 () Bool)

(declare-datatypes () ((Unit!534 (Unit!535))))

(declare-fun e!23561 () Unit!534)

(declare-fun Unit!536 () Unit!534)

(assert (=> b!45415 (= e!23561 Unit!536)))

(declare-datatypes () ((Nat!169 (Zero!153) (Succ!150 (n!1301 Nat!169)))))

(declare-fun n1!385 () Nat!169)

(declare-fun n2!401 () Nat!169)

(declare-fun /!2 (Nat!169 Nat!169) Nat!169)

(declare-fun *!4 (Nat!169 Nat!169) Nat!169)

(assert (=> b!45415 (= (/!2 (*!4 n1!385 n2!401) n2!401) n1!385)))

(declare-fun res!21466 () Bool)

(declare-fun e!23560 () Bool)

(assert (=> start!6102 (=> (not res!21466) (not e!23560))))

(declare-fun >!2 (Nat!169 Nat!169) Bool)

(assert (=> start!6102 (= res!21466 (>!2 n2!401 Zero!153))))

(assert (=> start!6102 e!23560))

(assert (=> start!6102 true))

(declare-fun b!45416 () Bool)

(declare-fun Unit!537 () Unit!534)

(assert (=> b!45416 (= e!23561 Unit!537)))

(declare-fun b!45417 () Bool)

(assert (=> b!45417 (= e!23560 (not (= (/!2 (*!4 n1!385 n2!401) n2!401) n1!385)))))

(declare-fun b!45418 () Bool)

(declare-fun res!21465 () Bool)

(assert (=> b!45418 (=> (not res!21465) (not e!23560))))

(declare-fun t!5183 () Unit!534)

(declare-fun x$63!38 () Unit!534)

(declare-fun res!17769 () Unit!534)

(assert (=> b!45418 (= res!21465 (and (= res!17769 t!5183) (= x$63!38 res!17769)))))

(declare-fun b!45419 () Bool)

(declare-fun res!21464 () Bool)

(assert (=> b!45419 (=> (not res!21464) (not e!23560))))

(assert (=> b!45419 (= res!21464 (= t!5183 e!23561))))

(declare-fun c!9621 () Bool)

(assert (=> b!45419 (= c!9621 (is-Succ!150 n1!385))))

(assert (= (and start!6102 res!21466) b!45419))

(assert (= (and b!45419 c!9621) b!45415))

(assert (= (and b!45419 (not c!9621)) b!45416))

(assert (= (and b!45419 res!21464) b!45418))

(assert (= (and b!45418 res!21465) b!45417))

(declare-fun m!48469 () Bool)

(assert (=> b!45415 m!48469))

(assert (=> b!45415 m!48469))

(declare-fun m!48471 () Bool)

(assert (=> b!45415 m!48471))

(declare-fun m!48473 () Bool)

(assert (=> start!6102 m!48473))

(assert (=> b!45417 m!48469))

(assert (=> b!45417 m!48469))

(assert (=> b!45417 m!48471))

(push 1)

(assert (not b!45415))

(assert (not b!45417))

(assert (not start!6102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!8301 () Nat!169)

(declare-fun e!23569 () Bool)

(declare-fun b!45430 () Bool)

(declare-fun repr!0 (Nat!169) Int)

(assert (=> b!45430 (= e!23569 (< (repr!0 lt!8301) (repr!0 (*!4 n1!385 n2!401))))))

(declare-fun b!45431 () Bool)

(declare-fun res!21476 () Bool)

(assert (=> b!45431 (=> res!21476 e!23569)))

(assert (=> b!45431 (= res!21476 (not (>!2 n2!401 (Succ!150 Zero!153))))))

(declare-fun d!31956 () Bool)

(declare-fun e!23570 () Bool)

(assert (=> d!31956 e!23570))

(declare-fun res!21475 () Bool)

(assert (=> d!31956 (=> (not res!21475) (not e!23570))))

(assert (=> d!31956 (= res!21475 (<= (repr!0 lt!8301) (repr!0 (*!4 n1!385 n2!401))))))

(declare-fun e!23568 () Nat!169)

(assert (=> d!31956 (= lt!8301 e!23568)))

(declare-fun c!9624 () Bool)

(declare-fun <!2 (Nat!169 Nat!169) Bool)

(assert (=> d!31956 (= c!9624 (<!2 (*!4 n1!385 n2!401) n2!401))))

(assert (=> d!31956 (>!2 n2!401 Zero!153)))

(assert (=> d!31956 (= (/!2 (*!4 n1!385 n2!401) n2!401) lt!8301)))

(declare-fun b!45432 () Bool)

(declare-fun -!4 (Nat!169 Nat!169) Nat!169)

(assert (=> b!45432 (= e!23568 (Succ!150 (/!2 (-!4 (*!4 n1!385 n2!401) n2!401) n2!401)))))

(declare-fun b!45433 () Bool)

(assert (=> b!45433 (= e!23570 e!23569)))

(declare-fun res!21474 () Bool)

(assert (=> b!45433 (=> res!21474 e!23569)))

(assert (=> b!45433 (= res!21474 (not (>!2 (*!4 n1!385 n2!401) Zero!153)))))

(declare-fun b!45434 () Bool)

(assert (=> b!45434 (= e!23568 Zero!153)))

(assert (= (and d!31956 c!9624) b!45434))

(assert (= (and d!31956 (not c!9624)) b!45432))

(assert (= (and d!31956 res!21475) b!45433))

(assert (= (and b!45433 (not res!21474)) b!45431))

(assert (= (and b!45431 (not res!21476)) b!45430))

(assert (=> b!45432 m!48469))

(declare-fun m!48475 () Bool)

(assert (=> b!45432 m!48475))

(assert (=> b!45432 m!48475))

(declare-fun m!48477 () Bool)

(assert (=> b!45432 m!48477))

(declare-fun m!48479 () Bool)

(assert (=> b!45431 m!48479))

(declare-fun m!48481 () Bool)

(assert (=> d!31956 m!48481))

(assert (=> d!31956 m!48469))

(declare-fun m!48483 () Bool)

(assert (=> d!31956 m!48483))

(assert (=> d!31956 m!48469))

(declare-fun m!48485 () Bool)

(assert (=> d!31956 m!48485))

(assert (=> d!31956 m!48473))

(assert (=> b!45433 m!48469))

(declare-fun m!48487 () Bool)

(assert (=> b!45433 m!48487))

(assert (=> b!45430 m!48481))

(assert (=> b!45430 m!48469))

(assert (=> b!45430 m!48483))

(assert (=> b!45415 d!31956))

(declare-fun d!31958 () Bool)

(declare-fun c!9627 () Bool)

(assert (=> d!31958 (= c!9627 (is-Zero!153 n1!385))))

(declare-fun e!23573 () Nat!169)

(assert (=> d!31958 (= (*!4 n1!385 n2!401) e!23573)))

(declare-fun b!45439 () Bool)

(assert (=> b!45439 (= e!23573 Zero!153)))

(declare-fun b!45440 () Bool)

(declare-fun +!5 (Nat!169 Nat!169) Nat!169)

(assert (=> b!45440 (= e!23573 (+!5 (*!4 (n!1301 n1!385) n2!401) n2!401))))

(assert (= (and d!31958 c!9627) b!45439))

(assert (= (and d!31958 (not c!9627)) b!45440))

(declare-fun m!48489 () Bool)

(assert (=> b!45440 m!48489))

(assert (=> b!45440 m!48489))

(declare-fun m!48491 () Bool)

(assert (=> b!45440 m!48491))

(assert (=> b!45415 d!31958))

(assert (=> b!45417 d!31956))

(assert (=> b!45417 d!31958))

(declare-fun d!31960 () Bool)

(declare-fun res!21479 () Bool)

(declare-fun e!23576 () Bool)

(assert (=> d!31960 (=> (not res!21479) (not e!23576))))

(assert (=> d!31960 (= res!21479 (not (<!2 n2!401 Zero!153)))))

(assert (=> d!31960 (= (>!2 n2!401 Zero!153) e!23576)))

(declare-fun b!45443 () Bool)

(assert (=> b!45443 (= e!23576 (not (= n2!401 Zero!153)))))

(assert (= (and d!31960 res!21479) b!45443))

(declare-fun m!48493 () Bool)

(assert (=> d!31960 m!48493))

(assert (=> start!6102 d!31960))

(push 1)

(assert (not d!31956))

(assert (not d!31960))

(assert (not b!45433))

(assert (not b!45432))

(assert (not b!45430))

(assert (not b!45440))

(assert (not b!45431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31962 () Bool)

(declare-fun res!21480 () Bool)

(declare-fun e!23577 () Bool)

(assert (=> d!31962 (=> (not res!21480) (not e!23577))))

(assert (=> d!31962 (= res!21480 (not (<!2 (*!4 n1!385 n2!401) Zero!153)))))

(assert (=> d!31962 (= (>!2 (*!4 n1!385 n2!401) Zero!153) e!23577)))

(declare-fun b!45444 () Bool)

(assert (=> b!45444 (= e!23577 (not (= (*!4 n1!385 n2!401) Zero!153)))))

(assert (= (and d!31962 res!21480) b!45444))

(assert (=> d!31962 m!48469))

(declare-fun m!48495 () Bool)

(assert (=> d!31962 m!48495))

(assert (=> b!45433 d!31962))

(declare-fun d!31964 () Bool)

(declare-fun lt!8304 () Int)

(assert (=> d!31964 (>= lt!8304 0)))

(declare-fun e!23580 () Int)

(assert (=> d!31964 (= lt!8304 e!23580)))

(declare-fun c!9630 () Bool)

(assert (=> d!31964 (= c!9630 (is-Zero!153 lt!8301))))

(assert (=> d!31964 (= (repr!0 lt!8301) lt!8304)))

(declare-fun b!45449 () Bool)

(assert (=> b!45449 (= e!23580 0)))

(declare-fun b!45450 () Bool)

(assert (=> b!45450 (= e!23580 (+ (repr!0 (n!1301 lt!8301)) 1))))

(assert (= (and d!31964 c!9630) b!45449))

(assert (= (and d!31964 (not c!9630)) b!45450))

(declare-fun m!48497 () Bool)

(assert (=> b!45450 m!48497))

(assert (=> d!31956 d!31964))

(declare-fun d!31966 () Bool)

(declare-fun lt!8305 () Int)

(assert (=> d!31966 (>= lt!8305 0)))

(declare-fun e!23581 () Int)

(assert (=> d!31966 (= lt!8305 e!23581)))

(declare-fun c!9631 () Bool)

(assert (=> d!31966 (= c!9631 (is-Zero!153 (*!4 n1!385 n2!401)))))

(assert (=> d!31966 (= (repr!0 (*!4 n1!385 n2!401)) lt!8305)))

(declare-fun b!45451 () Bool)

(assert (=> b!45451 (= e!23581 0)))

(declare-fun b!45452 () Bool)

(assert (=> b!45452 (= e!23581 (+ (repr!0 (n!1301 (*!4 n1!385 n2!401))) 1))))

(assert (= (and d!31966 c!9631) b!45451))

(assert (= (and d!31966 (not c!9631)) b!45452))

(declare-fun m!48499 () Bool)

(assert (=> b!45452 m!48499))

(assert (=> d!31956 d!31966))

(declare-fun d!31968 () Bool)

(declare-fun lt!8308 () Bool)

(assert (=> d!31968 (= lt!8308 (< (repr!0 (*!4 n1!385 n2!401)) (repr!0 n2!401)))))

(declare-fun e!23584 () Bool)

(assert (=> d!31968 (= lt!8308 e!23584)))

(declare-fun c!9634 () Bool)

(assert (=> d!31968 (= c!9634 (and (is-Succ!150 (*!4 n1!385 n2!401)) (is-Succ!150 n2!401)))))

(assert (=> d!31968 (= (<!2 (*!4 n1!385 n2!401) n2!401) lt!8308)))

(declare-fun b!45457 () Bool)

(assert (=> b!45457 (= e!23584 (<!2 (n!1301 (*!4 n1!385 n2!401)) (n!1301 n2!401)))))

(declare-fun b!45458 () Bool)

(assert (=> b!45458 (= e!23584 (and (is-Zero!153 (*!4 n1!385 n2!401)) (is-Succ!150 n2!401)))))

(assert (= (and d!31968 c!9634) b!45457))

(assert (= (and d!31968 (not c!9634)) b!45458))

(assert (=> d!31968 m!48469))

(assert (=> d!31968 m!48483))

(declare-fun m!48501 () Bool)

(assert (=> d!31968 m!48501))

(declare-fun m!48503 () Bool)

(assert (=> b!45457 m!48503))

(assert (=> d!31956 d!31968))

(assert (=> d!31956 d!31960))

(declare-fun d!31970 () Bool)

(declare-fun lt!8309 () Bool)

(assert (=> d!31970 (= lt!8309 (< (repr!0 n2!401) (repr!0 Zero!153)))))

(declare-fun e!23585 () Bool)

(assert (=> d!31970 (= lt!8309 e!23585)))

(declare-fun c!9635 () Bool)

(assert (=> d!31970 (= c!9635 (and (is-Succ!150 n2!401) (is-Succ!150 Zero!153)))))

(assert (=> d!31970 (= (<!2 n2!401 Zero!153) lt!8309)))

(declare-fun b!45459 () Bool)

(assert (=> b!45459 (= e!23585 (<!2 (n!1301 n2!401) (n!1301 Zero!153)))))

(declare-fun b!45460 () Bool)

(assert (=> b!45460 (= e!23585 (and (is-Zero!153 n2!401) (is-Succ!150 Zero!153)))))

(assert (= (and d!31970 c!9635) b!45459))

(assert (= (and d!31970 (not c!9635)) b!45460))

(assert (=> d!31970 m!48501))

(declare-fun m!48505 () Bool)

(assert (=> d!31970 m!48505))

(declare-fun m!48507 () Bool)

(assert (=> b!45459 m!48507))

(assert (=> d!31960 d!31970))

(declare-fun e!23587 () Bool)

(declare-fun b!45461 () Bool)

(declare-fun lt!8310 () Nat!169)

(assert (=> b!45461 (= e!23587 (< (repr!0 lt!8310) (repr!0 (-!4 (*!4 n1!385 n2!401) n2!401))))))

(declare-fun b!45462 () Bool)

(declare-fun res!21483 () Bool)

(assert (=> b!45462 (=> res!21483 e!23587)))

(assert (=> b!45462 (= res!21483 (not (>!2 n2!401 (Succ!150 Zero!153))))))

(declare-fun d!31972 () Bool)

(declare-fun e!23588 () Bool)

(assert (=> d!31972 e!23588))

(declare-fun res!21482 () Bool)

(assert (=> d!31972 (=> (not res!21482) (not e!23588))))

(assert (=> d!31972 (= res!21482 (<= (repr!0 lt!8310) (repr!0 (-!4 (*!4 n1!385 n2!401) n2!401))))))

(declare-fun e!23586 () Nat!169)

(assert (=> d!31972 (= lt!8310 e!23586)))

(declare-fun c!9636 () Bool)

(assert (=> d!31972 (= c!9636 (<!2 (-!4 (*!4 n1!385 n2!401) n2!401) n2!401))))

(assert (=> d!31972 (>!2 n2!401 Zero!153)))

(assert (=> d!31972 (= (/!2 (-!4 (*!4 n1!385 n2!401) n2!401) n2!401) lt!8310)))

(declare-fun b!45463 () Bool)

(assert (=> b!45463 (= e!23586 (Succ!150 (/!2 (-!4 (-!4 (*!4 n1!385 n2!401) n2!401) n2!401) n2!401)))))

(declare-fun b!45464 () Bool)

(assert (=> b!45464 (= e!23588 e!23587)))

(declare-fun res!21481 () Bool)

(assert (=> b!45464 (=> res!21481 e!23587)))

(assert (=> b!45464 (= res!21481 (not (>!2 (-!4 (*!4 n1!385 n2!401) n2!401) Zero!153)))))

(declare-fun b!45465 () Bool)

(assert (=> b!45465 (= e!23586 Zero!153)))

(assert (= (and d!31972 c!9636) b!45465))

(assert (= (and d!31972 (not c!9636)) b!45463))

(assert (= (and d!31972 res!21482) b!45464))

(assert (= (and b!45464 (not res!21481)) b!45462))

(assert (= (and b!45462 (not res!21483)) b!45461))

(assert (=> b!45463 m!48475))

(declare-fun m!48509 () Bool)

(assert (=> b!45463 m!48509))

(assert (=> b!45463 m!48509))

(declare-fun m!48511 () Bool)

(assert (=> b!45463 m!48511))

(assert (=> b!45462 m!48479))

(declare-fun m!48513 () Bool)

(assert (=> d!31972 m!48513))

(assert (=> d!31972 m!48475))

(declare-fun m!48515 () Bool)

(assert (=> d!31972 m!48515))

(assert (=> d!31972 m!48475))

(declare-fun m!48517 () Bool)

(assert (=> d!31972 m!48517))

(assert (=> d!31972 m!48473))

(assert (=> b!45464 m!48475))

(declare-fun m!48519 () Bool)

(assert (=> b!45464 m!48519))

(assert (=> b!45461 m!48513))

(assert (=> b!45461 m!48475))

(assert (=> b!45461 m!48515))

(assert (=> b!45432 d!31972))

(declare-fun b!45476 () Bool)

(declare-fun res!21493 () Bool)

(declare-fun e!23597 () Bool)

(assert (=> b!45476 (=> res!21493 e!23597)))

(assert (=> b!45476 (= res!21493 (not (>!2 n2!401 Zero!153)))))

(declare-fun b!45477 () Bool)

(declare-fun e!23596 () Bool)

(assert (=> b!45477 (= e!23596 e!23597)))

(declare-fun res!21491 () Bool)

(assert (=> b!45477 (=> res!21491 e!23597)))

(assert (=> b!45477 (= res!21491 (not (>!2 (*!4 n1!385 n2!401) Zero!153)))))

(declare-fun d!31974 () Bool)

(assert (=> d!31974 e!23596))

(declare-fun res!21492 () Bool)

(assert (=> d!31974 (=> (not res!21492) (not e!23596))))

(declare-fun lt!8313 () Nat!169)

(assert (=> d!31974 (= res!21492 (<= (repr!0 lt!8313) (repr!0 (*!4 n1!385 n2!401))))))

(declare-fun e!23595 () Nat!169)

(assert (=> d!31974 (= lt!8313 e!23595)))

(declare-fun c!9639 () Bool)

(assert (=> d!31974 (= c!9639 (and (is-Succ!150 (*!4 n1!385 n2!401)) (is-Succ!150 n2!401)))))

(assert (=> d!31974 (= (-!4 (*!4 n1!385 n2!401) n2!401) lt!8313)))

(declare-fun b!45478 () Bool)

(assert (=> b!45478 (= e!23595 (-!4 (n!1301 (*!4 n1!385 n2!401)) (n!1301 n2!401)))))

(declare-fun b!45479 () Bool)

(assert (=> b!45479 (= e!23595 (*!4 n1!385 n2!401))))

(declare-fun b!45480 () Bool)

(assert (=> b!45480 (= e!23597 (< (repr!0 lt!8313) (repr!0 (*!4 n1!385 n2!401))))))

(assert (= (and d!31974 c!9639) b!45478))

(assert (= (and d!31974 (not c!9639)) b!45479))

(assert (= (and d!31974 res!21492) b!45477))

(assert (= (and b!45477 (not res!21491)) b!45476))

(assert (= (and b!45476 (not res!21493)) b!45480))

(declare-fun m!48521 () Bool)

(assert (=> b!45480 m!48521))

(assert (=> b!45480 m!48469))

(assert (=> b!45480 m!48483))

(assert (=> d!31974 m!48521))

(assert (=> d!31974 m!48469))

(assert (=> d!31974 m!48483))

(declare-fun m!48523 () Bool)

(assert (=> b!45478 m!48523))

(assert (=> b!45476 m!48473))

(assert (=> b!45477 m!48469))

(assert (=> b!45477 m!48487))

(assert (=> b!45432 d!31974))

(declare-fun d!31976 () Bool)

(declare-fun res!21494 () Bool)

(declare-fun e!23598 () Bool)

(assert (=> d!31976 (=> (not res!21494) (not e!23598))))

(assert (=> d!31976 (= res!21494 (not (<!2 n2!401 (Succ!150 Zero!153))))))

(assert (=> d!31976 (= (>!2 n2!401 (Succ!150 Zero!153)) e!23598)))

(declare-fun b!45481 () Bool)

(assert (=> b!45481 (= e!23598 (not (= n2!401 (Succ!150 Zero!153))))))

(assert (= (and d!31976 res!21494) b!45481))

(declare-fun m!48525 () Bool)

(assert (=> d!31976 m!48525))

(assert (=> b!45431 d!31976))

(declare-fun d!31978 () Bool)

(declare-fun c!9642 () Bool)

(assert (=> d!31978 (= c!9642 (is-Zero!153 (*!4 (n!1301 n1!385) n2!401)))))

(declare-fun e!23601 () Nat!169)

(assert (=> d!31978 (= (+!5 (*!4 (n!1301 n1!385) n2!401) n2!401) e!23601)))

(declare-fun b!45486 () Bool)

(assert (=> b!45486 (= e!23601 n2!401)))

(declare-fun b!45487 () Bool)

(assert (=> b!45487 (= e!23601 (Succ!150 (+!5 (n!1301 (*!4 (n!1301 n1!385) n2!401)) n2!401)))))

(assert (= (and d!31978 c!9642) b!45486))

(assert (= (and d!31978 (not c!9642)) b!45487))

(declare-fun m!48527 () Bool)

(assert (=> b!45487 m!48527))

(assert (=> b!45440 d!31978))

(declare-fun d!31980 () Bool)

(declare-fun c!9643 () Bool)

(assert (=> d!31980 (= c!9643 (is-Zero!153 (n!1301 n1!385)))))

(declare-fun e!23602 () Nat!169)

(assert (=> d!31980 (= (*!4 (n!1301 n1!385) n2!401) e!23602)))

(declare-fun b!45488 () Bool)

(assert (=> b!45488 (= e!23602 Zero!153)))

(declare-fun b!45489 () Bool)

(assert (=> b!45489 (= e!23602 (+!5 (*!4 (n!1301 (n!1301 n1!385)) n2!401) n2!401))))

(assert (= (and d!31980 c!9643) b!45488))

(assert (= (and d!31980 (not c!9643)) b!45489))

(declare-fun m!48529 () Bool)

(assert (=> b!45489 m!48529))

(assert (=> b!45489 m!48529))

(declare-fun m!48531 () Bool)

(assert (=> b!45489 m!48531))

(assert (=> b!45440 d!31980))

(assert (=> b!45430 d!31964))

(assert (=> b!45430 d!31966))

(push 1)

(assert (not b!45450))

(assert (not b!45489))

(assert (not d!31976))

(assert (not b!45457))

(assert (not b!45459))

(assert (not d!31962))

(assert (not b!45462))

(assert (not b!45477))

(assert (not d!31970))

(assert (not b!45476))

(assert (not b!45487))

(assert (not d!31974))

(assert (not b!45452))

(assert (not d!31968))

(assert (not b!45480))

(assert (not b!45463))

(assert (not b!45478))

(assert (not d!31972))

(assert (not b!45461))

(assert (not b!45464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

