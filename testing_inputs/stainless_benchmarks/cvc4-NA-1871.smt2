; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12546 () Bool)

(assert start!12546)

(declare-fun res!48596 () Bool)

(declare-fun e!50571 () Bool)

(assert (=> start!12546 (=> (not res!48596) (not e!50571))))

(declare-datatypes () ((IntSet!65 (IntSetExt!3 (__x!366 Int)) (Empty!204) (Node!185 (left!1970 IntSet!65) (elem!356 (_ BitVec 32)) (right!1976 IntSet!65)))))

(declare-fun thiss!10999 () IntSet!65)

(declare-datatypes () ((Unit!1406 (Unit!1407))))

(declare-fun x$1!1278 () Unit!1406)

(declare-fun Unit!1408 () Unit!1406)

(assert (=> start!12546 (= res!48596 (and (not (is-IntSetExt!3 thiss!10999)) (= x$1!1278 Unit!1408)))))

(assert (=> start!12546 e!50571))

(assert (=> start!12546 true))

(declare-fun b!92376 () Bool)

(declare-fun res!48597 () Bool)

(assert (=> b!92376 (=> (not res!48597) (not e!50571))))

(declare-fun x!33968 () (_ BitVec 32))

(declare-fun t1!35 () IntSet!65)

(declare-fun t2!39 () IntSet!65)

(declare-fun contains!21 (IntSet!65 (_ BitVec 32)) Bool)

(declare-fun union!4 (IntSet!65 IntSet!65) IntSet!65)

(assert (=> b!92376 (= res!48597 (not (= (contains!21 (union!4 t1!35 t2!39) x!33968) (contains!21 t1!35 x!33968))))))

(declare-fun b!92377 () Bool)

(assert (=> b!92377 (= e!50571 (not (contains!21 t2!39 x!33968)))))

(assert (= (and start!12546 res!48596) b!92376))

(assert (= (and b!92376 res!48597) b!92377))

(declare-fun m!88082 () Bool)

(assert (=> b!92376 m!88082))

(assert (=> b!92376 m!88082))

(declare-fun m!88084 () Bool)

(assert (=> b!92376 m!88084))

(declare-fun m!88086 () Bool)

(assert (=> b!92376 m!88086))

(declare-fun m!88088 () Bool)

(assert (=> b!92377 m!88088))

(push 1)

(assert (not b!92377))

(assert (not b!92376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!92388 () Bool)

(declare-fun e!50579 () Bool)

(declare-fun lt!20875 () Bool)

(assert (=> b!92388 (= e!50579 (contains!21 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39)) x!33968))))

(declare-fun lt!20874 () Bool)

(declare-fun b!92389 () Bool)

(declare-fun e!50578 () Bool)

(assert (=> b!92389 (= e!50578 (ite lt!20875 lt!20874 (or (not (bvsgt x!33968 (elem!356 t2!39))) lt!20874)))))

(assert (=> b!92389 (= lt!20874 e!50579)))

(declare-fun c!22487 () Bool)

(assert (=> b!92389 (= c!22487 (or lt!20875 (bvsgt x!33968 (elem!356 t2!39))))))

(assert (=> b!92389 (= lt!20875 (bvslt x!33968 (elem!356 t2!39)))))

(declare-fun b!92390 () Bool)

(declare-fun e!50580 () Bool)

(declare-fun contains!74 (IntSet!65 (_ BitVec 32)) Bool)

(assert (=> b!92390 (= e!50580 (contains!74 t2!39 x!33968))))

(declare-fun b!92391 () Bool)

(declare-fun res!48606 () Bool)

(assert (=> b!92391 (= e!50579 res!48606)))

(assert (=> b!92391 true))

(assert (=> b!92391 true))

(declare-fun b!92392 () Bool)

(assert (=> b!92392 (= e!50580 e!50578)))

(declare-fun res!48605 () Bool)

(assert (=> b!92392 (=> (not res!48605) (not e!50578))))

(assert (=> b!92392 (= res!48605 (not (is-Empty!204 t2!39)))))

(declare-fun d!60586 () Bool)

(declare-fun c!22488 () Bool)

(assert (=> d!60586 (= c!22488 (is-IntSetExt!3 t2!39))))

(assert (=> d!60586 (= (contains!21 t2!39 x!33968) e!50580)))

(assert (= (and b!92392 res!48605) b!92389))

(assert (= (and b!92389 c!22487) b!92388))

(assert (= (and b!92389 (not c!22487)) b!92391))

(assert (= (and d!60586 c!22488) b!92390))

(assert (= (and d!60586 (not c!22488)) b!92392))

(declare-fun m!88090 () Bool)

(assert (=> b!92388 m!88090))

(declare-fun m!88092 () Bool)

(assert (=> b!92390 m!88092))

(assert (=> b!92377 d!60586))

(declare-fun b!92393 () Bool)

(declare-fun lt!20877 () Bool)

(declare-fun e!50582 () Bool)

(assert (=> b!92393 (= e!50582 (contains!21 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39))) x!33968))))

(declare-fun b!92394 () Bool)

(declare-fun e!50581 () Bool)

(declare-fun lt!20876 () Bool)

(assert (=> b!92394 (= e!50581 (ite lt!20877 lt!20876 (or (not (bvsgt x!33968 (elem!356 (union!4 t1!35 t2!39)))) lt!20876)))))

(assert (=> b!92394 (= lt!20876 e!50582)))

(declare-fun c!22489 () Bool)

(assert (=> b!92394 (= c!22489 (or lt!20877 (bvsgt x!33968 (elem!356 (union!4 t1!35 t2!39)))))))

(assert (=> b!92394 (= lt!20877 (bvslt x!33968 (elem!356 (union!4 t1!35 t2!39))))))

(declare-fun b!92395 () Bool)

(declare-fun e!50583 () Bool)

(assert (=> b!92395 (= e!50583 (contains!74 (union!4 t1!35 t2!39) x!33968))))

(declare-fun b!92396 () Bool)

(declare-fun res!48608 () Bool)

(assert (=> b!92396 (= e!50582 res!48608)))

(assert (=> b!92396 true))

(assert (=> b!92396 true))

(declare-fun b!92397 () Bool)

(assert (=> b!92397 (= e!50583 e!50581)))

(declare-fun res!48607 () Bool)

(assert (=> b!92397 (=> (not res!48607) (not e!50581))))

(assert (=> b!92397 (= res!48607 (not (is-Empty!204 (union!4 t1!35 t2!39))))))

(declare-fun d!60588 () Bool)

(declare-fun c!22490 () Bool)

(assert (=> d!60588 (= c!22490 (is-IntSetExt!3 (union!4 t1!35 t2!39)))))

(assert (=> d!60588 (= (contains!21 (union!4 t1!35 t2!39) x!33968) e!50583)))

(assert (= (and b!92397 res!48607) b!92394))

(assert (= (and b!92394 c!22489) b!92393))

(assert (= (and b!92394 (not c!22489)) b!92396))

(assert (= (and d!60588 c!22490) b!92395))

(assert (= (and d!60588 (not c!22490)) b!92397))

(declare-fun m!88094 () Bool)

(assert (=> b!92393 m!88094))

(assert (=> b!92395 m!88082))

(declare-fun m!88096 () Bool)

(assert (=> b!92395 m!88096))

(assert (=> b!92376 d!60588))

(declare-fun b!92407 () Bool)

(declare-fun e!50588 () IntSet!65)

(declare-fun e!50589 () IntSet!65)

(assert (=> b!92407 (= e!50588 e!50589)))

(declare-fun c!22496 () Bool)

(assert (=> b!92407 (= c!22496 (is-Empty!204 t1!35))))

(declare-fun b!92406 () Bool)

(declare-fun union!603 (IntSet!65 IntSet!65) IntSet!65)

(assert (=> b!92406 (= e!50588 (union!603 t1!35 t2!39))))

(declare-fun b!92409 () Bool)

(declare-fun incl!4 (IntSet!65 (_ BitVec 32)) IntSet!65)

(assert (=> b!92409 (= e!50589 (incl!4 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)) (elem!356 t1!35)))))

(declare-fun b!92408 () Bool)

(assert (=> b!92408 (= e!50589 t2!39)))

(declare-fun d!60590 () Bool)

(declare-fun c!22495 () Bool)

(assert (=> d!60590 (= c!22495 (is-IntSetExt!3 t1!35))))

(assert (=> d!60590 (= (union!4 t1!35 t2!39) e!50588)))

(assert (= (and b!92407 c!22496) b!92408))

(assert (= (and b!92407 (not c!22496)) b!92409))

(assert (= (and d!60590 c!22495) b!92406))

(assert (= (and d!60590 (not c!22495)) b!92407))

(declare-fun m!88098 () Bool)

(assert (=> b!92406 m!88098))

(declare-fun m!88100 () Bool)

(assert (=> b!92409 m!88100))

(assert (=> b!92409 m!88100))

(declare-fun m!88102 () Bool)

(assert (=> b!92409 m!88102))

(assert (=> b!92409 m!88102))

(declare-fun m!88104 () Bool)

(assert (=> b!92409 m!88104))

(assert (=> b!92376 d!60590))

(declare-fun b!92410 () Bool)

(declare-fun e!50591 () Bool)

(declare-fun lt!20879 () Bool)

(assert (=> b!92410 (= e!50591 (contains!21 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35)) x!33968))))

(declare-fun e!50590 () Bool)

(declare-fun b!92411 () Bool)

(declare-fun lt!20878 () Bool)

(assert (=> b!92411 (= e!50590 (ite lt!20879 lt!20878 (or (not (bvsgt x!33968 (elem!356 t1!35))) lt!20878)))))

(assert (=> b!92411 (= lt!20878 e!50591)))

(declare-fun c!22497 () Bool)

(assert (=> b!92411 (= c!22497 (or lt!20879 (bvsgt x!33968 (elem!356 t1!35))))))

(assert (=> b!92411 (= lt!20879 (bvslt x!33968 (elem!356 t1!35)))))

(declare-fun b!92412 () Bool)

(declare-fun e!50592 () Bool)

(assert (=> b!92412 (= e!50592 (contains!74 t1!35 x!33968))))

(declare-fun b!92413 () Bool)

(declare-fun res!48610 () Bool)

(assert (=> b!92413 (= e!50591 res!48610)))

(assert (=> b!92413 true))

(assert (=> b!92413 true))

(declare-fun b!92414 () Bool)

(assert (=> b!92414 (= e!50592 e!50590)))

(declare-fun res!48609 () Bool)

(assert (=> b!92414 (=> (not res!48609) (not e!50590))))

(assert (=> b!92414 (= res!48609 (not (is-Empty!204 t1!35)))))

(declare-fun d!60592 () Bool)

(declare-fun c!22498 () Bool)

(assert (=> d!60592 (= c!22498 (is-IntSetExt!3 t1!35))))

(assert (=> d!60592 (= (contains!21 t1!35 x!33968) e!50592)))

(assert (= (and b!92414 res!48609) b!92411))

(assert (= (and b!92411 c!22497) b!92410))

(assert (= (and b!92411 (not c!22497)) b!92413))

(assert (= (and d!60592 c!22498) b!92412))

(assert (= (and d!60592 (not c!22498)) b!92414))

(declare-fun m!88106 () Bool)

(assert (=> b!92410 m!88106))

(declare-fun m!88108 () Bool)

(assert (=> b!92412 m!88108))

(assert (=> b!92376 d!60592))

(push 1)

(assert (not b!92393))

(assert (not b!92395))

(assert (not b!92410))

(assert (not b!92406))

(assert (not b!92412))

(assert (not b!92390))

(assert (not b!92409))

(assert (not b!92388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!20881 () Bool)

(declare-fun b!92415 () Bool)

(declare-fun e!50594 () Bool)

(assert (=> b!92415 (= e!50594 (contains!21 (ite lt!20881 (left!1970 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39)))) (right!1976 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39))))) x!33968))))

(declare-fun e!50593 () Bool)

(declare-fun b!92416 () Bool)

(declare-fun lt!20880 () Bool)

(assert (=> b!92416 (= e!50593 (ite lt!20881 lt!20880 (or (not (bvsgt x!33968 (elem!356 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39)))))) lt!20880)))))

(assert (=> b!92416 (= lt!20880 e!50594)))

(declare-fun c!22499 () Bool)

(assert (=> b!92416 (= c!22499 (or lt!20881 (bvsgt x!33968 (elem!356 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39)))))))))

(assert (=> b!92416 (= lt!20881 (bvslt x!33968 (elem!356 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39))))))))

(declare-fun e!50595 () Bool)

(declare-fun b!92417 () Bool)

(assert (=> b!92417 (= e!50595 (contains!74 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39))) x!33968))))

(declare-fun b!92418 () Bool)

(declare-fun res!48612 () Bool)

(assert (=> b!92418 (= e!50594 res!48612)))

(assert (=> b!92418 true))

(assert (=> b!92418 true))

(declare-fun b!92419 () Bool)

(assert (=> b!92419 (= e!50595 e!50593)))

(declare-fun res!48611 () Bool)

(assert (=> b!92419 (=> (not res!48611) (not e!50593))))

(assert (=> b!92419 (= res!48611 (not (is-Empty!204 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39))))))))

(declare-fun d!60594 () Bool)

(declare-fun c!22500 () Bool)

(assert (=> d!60594 (= c!22500 (is-IntSetExt!3 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39)))))))

(assert (=> d!60594 (= (contains!21 (ite lt!20877 (left!1970 (union!4 t1!35 t2!39)) (right!1976 (union!4 t1!35 t2!39))) x!33968) e!50595)))

(assert (= (and b!92419 res!48611) b!92416))

(assert (= (and b!92416 c!22499) b!92415))

(assert (= (and b!92416 (not c!22499)) b!92418))

(assert (= (and d!60594 c!22500) b!92417))

(assert (= (and d!60594 (not c!22500)) b!92419))

(declare-fun m!88110 () Bool)

(assert (=> b!92415 m!88110))

(declare-fun m!88112 () Bool)

(assert (=> b!92417 m!88112))

(assert (=> b!92393 d!60594))

(declare-fun d!60596 () Bool)

(assert (=> d!60596 true))

(assert (=> d!60596 true))

(declare-fun res!48615 () Bool)

(assert (=> d!60596 (= (contains!74 t1!35 x!33968) res!48615)))

(assert (=> b!92412 d!60596))

(declare-fun d!60598 () Bool)

(assert (=> d!60598 true))

(assert (=> d!60598 true))

(declare-fun res!48616 () Bool)

(assert (=> d!60598 (= (contains!74 (union!4 t1!35 t2!39) x!33968) res!48616)))

(assert (=> b!92395 d!60598))

(declare-fun b!92420 () Bool)

(declare-fun e!50597 () Bool)

(declare-fun lt!20883 () Bool)

(assert (=> b!92420 (= e!50597 (contains!21 (ite lt!20883 (left!1970 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39))) (right!1976 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39)))) x!33968))))

(declare-fun b!92421 () Bool)

(declare-fun lt!20882 () Bool)

(declare-fun e!50596 () Bool)

(assert (=> b!92421 (= e!50596 (ite lt!20883 lt!20882 (or (not (bvsgt x!33968 (elem!356 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39))))) lt!20882)))))

(assert (=> b!92421 (= lt!20882 e!50597)))

(declare-fun c!22501 () Bool)

(assert (=> b!92421 (= c!22501 (or lt!20883 (bvsgt x!33968 (elem!356 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39))))))))

(assert (=> b!92421 (= lt!20883 (bvslt x!33968 (elem!356 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39)))))))

(declare-fun b!92422 () Bool)

(declare-fun e!50598 () Bool)

(assert (=> b!92422 (= e!50598 (contains!74 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39)) x!33968))))

(declare-fun b!92423 () Bool)

(declare-fun res!48618 () Bool)

(assert (=> b!92423 (= e!50597 res!48618)))

(assert (=> b!92423 true))

(assert (=> b!92423 true))

(declare-fun b!92424 () Bool)

(assert (=> b!92424 (= e!50598 e!50596)))

(declare-fun res!48617 () Bool)

(assert (=> b!92424 (=> (not res!48617) (not e!50596))))

(assert (=> b!92424 (= res!48617 (not (is-Empty!204 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39)))))))

(declare-fun d!60600 () Bool)

(declare-fun c!22502 () Bool)

(assert (=> d!60600 (= c!22502 (is-IntSetExt!3 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39))))))

(assert (=> d!60600 (= (contains!21 (ite lt!20875 (left!1970 t2!39) (right!1976 t2!39)) x!33968) e!50598)))

(assert (= (and b!92424 res!48617) b!92421))

(assert (= (and b!92421 c!22501) b!92420))

(assert (= (and b!92421 (not c!22501)) b!92423))

(assert (= (and d!60600 c!22502) b!92422))

(assert (= (and d!60600 (not c!22502)) b!92424))

(declare-fun m!88114 () Bool)

(assert (=> b!92420 m!88114))

(declare-fun m!88116 () Bool)

(assert (=> b!92422 m!88116))

(assert (=> b!92388 d!60600))

(declare-fun b!92425 () Bool)

(declare-fun lt!20885 () Bool)

(declare-fun e!50600 () Bool)

(assert (=> b!92425 (= e!50600 (contains!21 (ite lt!20885 (left!1970 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35))) (right!1976 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35)))) x!33968))))

(declare-fun e!50599 () Bool)

(declare-fun lt!20884 () Bool)

(declare-fun b!92426 () Bool)

(assert (=> b!92426 (= e!50599 (ite lt!20885 lt!20884 (or (not (bvsgt x!33968 (elem!356 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35))))) lt!20884)))))

(assert (=> b!92426 (= lt!20884 e!50600)))

(declare-fun c!22503 () Bool)

(assert (=> b!92426 (= c!22503 (or lt!20885 (bvsgt x!33968 (elem!356 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35))))))))

(assert (=> b!92426 (= lt!20885 (bvslt x!33968 (elem!356 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35)))))))

(declare-fun b!92427 () Bool)

(declare-fun e!50601 () Bool)

(assert (=> b!92427 (= e!50601 (contains!74 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35)) x!33968))))

(declare-fun b!92428 () Bool)

(declare-fun res!48620 () Bool)

(assert (=> b!92428 (= e!50600 res!48620)))

(assert (=> b!92428 true))

(assert (=> b!92428 true))

(declare-fun b!92429 () Bool)

(assert (=> b!92429 (= e!50601 e!50599)))

(declare-fun res!48619 () Bool)

(assert (=> b!92429 (=> (not res!48619) (not e!50599))))

(assert (=> b!92429 (= res!48619 (not (is-Empty!204 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35)))))))

(declare-fun d!60602 () Bool)

(declare-fun c!22504 () Bool)

(assert (=> d!60602 (= c!22504 (is-IntSetExt!3 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35))))))

(assert (=> d!60602 (= (contains!21 (ite lt!20879 (left!1970 t1!35) (right!1976 t1!35)) x!33968) e!50601)))

(assert (= (and b!92429 res!48619) b!92426))

(assert (= (and b!92426 c!22503) b!92425))

(assert (= (and b!92426 (not c!22503)) b!92428))

(assert (= (and d!60602 c!22504) b!92427))

(assert (= (and d!60602 (not c!22504)) b!92429))

(declare-fun m!88118 () Bool)

(assert (=> b!92425 m!88118))

(declare-fun m!88120 () Bool)

(assert (=> b!92427 m!88120))

(assert (=> b!92410 d!60602))

(declare-fun d!60604 () Bool)

(assert (=> d!60604 true))

(assert (=> d!60604 true))

(declare-fun res!48623 () IntSet!65)

(assert (=> d!60604 (= (union!603 t1!35 t2!39) res!48623)))

(assert (=> b!92406 d!60604))

(declare-fun d!60606 () Bool)

(assert (=> d!60606 true))

(assert (=> d!60606 true))

(declare-fun res!48624 () Bool)

(assert (=> d!60606 (= (contains!74 t2!39 x!33968) res!48624)))

(assert (=> b!92390 d!60606))

(declare-fun b!92442 () Bool)

(declare-fun e!50609 () IntSet!65)

(declare-fun incl!7 (IntSet!65 (_ BitVec 32)) IntSet!65)

(assert (=> b!92442 (= e!50609 (incl!7 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)) (elem!356 t1!35)))))

(declare-fun d!60608 () Bool)

(declare-fun c!22513 () Bool)

(assert (=> d!60608 (= c!22513 (is-IntSetExt!3 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))))))

(assert (=> d!60608 (= (incl!4 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)) (elem!356 t1!35)) e!50609)))

(declare-fun e!50608 () IntSet!65)

(declare-fun lt!20890 () Bool)

(declare-fun b!92443 () Bool)

(declare-fun lt!20891 () IntSet!65)

(assert (=> b!92443 (= e!50608 (ite lt!20890 (Node!185 lt!20891 (elem!356 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))) (right!1976 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)))) (ite (bvsgt (elem!356 t1!35) (elem!356 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)))) (Node!185 (left!1970 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))) (elem!356 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))) lt!20891) (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)))))))

(declare-fun e!50610 () IntSet!65)

(assert (=> b!92443 (= lt!20891 e!50610)))

(declare-fun c!22511 () Bool)

(assert (=> b!92443 (= c!22511 (or lt!20890 (bvsgt (elem!356 t1!35) (elem!356 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))))))))

(assert (=> b!92443 (= lt!20890 (bvslt (elem!356 t1!35) (elem!356 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)))))))

(declare-fun b!92444 () Bool)

(declare-fun res!48630 () IntSet!65)

(assert (=> b!92444 (= e!50610 res!48630)))

(assert (=> b!92444 true))

(assert (=> b!92444 true))

(declare-fun b!92445 () Bool)

(assert (=> b!92445 (= e!50610 (incl!4 (ite lt!20890 (left!1970 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))) (right!1976 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)))) (elem!356 t1!35)))))

(declare-fun b!92446 () Bool)

(assert (=> b!92446 (= e!50609 e!50608)))

(declare-fun c!22512 () Bool)

(assert (=> b!92446 (= c!22512 (is-Empty!204 (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39))))))

(declare-fun b!92447 () Bool)

(assert (=> b!92447 (= e!50608 (Node!185 Empty!204 (elem!356 t1!35) Empty!204))))

(assert (= (and b!92443 c!22511) b!92445))

(assert (= (and b!92443 (not c!22511)) b!92444))

(assert (= (and b!92446 c!22512) b!92447))

(assert (= (and b!92446 (not c!22512)) b!92443))

(assert (= (and d!60608 c!22513) b!92442))

(assert (= (and d!60608 (not c!22513)) b!92446))

(assert (=> b!92442 m!88102))

(declare-fun m!88122 () Bool)

(assert (=> b!92442 m!88122))

(declare-fun m!88124 () Bool)

(assert (=> b!92445 m!88124))

(assert (=> b!92409 d!60608))

(declare-fun b!92449 () Bool)

(declare-fun e!50611 () IntSet!65)

(declare-fun e!50612 () IntSet!65)

(assert (=> b!92449 (= e!50611 e!50612)))

(declare-fun c!22515 () Bool)

(assert (=> b!92449 (= c!22515 (is-Empty!204 (left!1970 t1!35)))))

(declare-fun b!92448 () Bool)

(assert (=> b!92448 (= e!50611 (union!603 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)))))

(declare-fun b!92451 () Bool)

(assert (=> b!92451 (= e!50612 (incl!4 (union!4 (left!1970 (left!1970 t1!35)) (union!4 (right!1976 (left!1970 t1!35)) (union!4 (right!1976 t1!35) t2!39))) (elem!356 (left!1970 t1!35))))))

(declare-fun b!92450 () Bool)

(assert (=> b!92450 (= e!50612 (union!4 (right!1976 t1!35) t2!39))))

(declare-fun d!60610 () Bool)

(declare-fun c!22514 () Bool)

(assert (=> d!60610 (= c!22514 (is-IntSetExt!3 (left!1970 t1!35)))))

(assert (=> d!60610 (= (union!4 (left!1970 t1!35) (union!4 (right!1976 t1!35) t2!39)) e!50611)))

(assert (= (and b!92449 c!22515) b!92450))

(assert (= (and b!92449 (not c!22515)) b!92451))

(assert (= (and d!60610 c!22514) b!92448))

(assert (= (and d!60610 (not c!22514)) b!92449))

(assert (=> b!92448 m!88100))

(declare-fun m!88126 () Bool)

(assert (=> b!92448 m!88126))

(assert (=> b!92451 m!88100))

(declare-fun m!88128 () Bool)

(assert (=> b!92451 m!88128))

(assert (=> b!92451 m!88128))

(declare-fun m!88130 () Bool)

(assert (=> b!92451 m!88130))

(assert (=> b!92451 m!88130))

(declare-fun m!88132 () Bool)

(assert (=> b!92451 m!88132))

(assert (=> b!92409 d!60610))

(declare-fun b!92453 () Bool)

(declare-fun e!50613 () IntSet!65)

(declare-fun e!50614 () IntSet!65)

(assert (=> b!92453 (= e!50613 e!50614)))

(declare-fun c!22517 () Bool)

(assert (=> b!92453 (= c!22517 (is-Empty!204 (right!1976 t1!35)))))

(declare-fun b!92452 () Bool)

(assert (=> b!92452 (= e!50613 (union!603 (right!1976 t1!35) t2!39))))

(declare-fun b!92455 () Bool)

(assert (=> b!92455 (= e!50614 (incl!4 (union!4 (left!1970 (right!1976 t1!35)) (union!4 (right!1976 (right!1976 t1!35)) t2!39)) (elem!356 (right!1976 t1!35))))))

(declare-fun b!92454 () Bool)

(assert (=> b!92454 (= e!50614 t2!39)))

(declare-fun d!60612 () Bool)

(declare-fun c!22516 () Bool)

(assert (=> d!60612 (= c!22516 (is-IntSetExt!3 (right!1976 t1!35)))))

(assert (=> d!60612 (= (union!4 (right!1976 t1!35) t2!39) e!50613)))

(assert (= (and b!92453 c!22517) b!92454))

(assert (= (and b!92453 (not c!22517)) b!92455))

(assert (= (and d!60612 c!22516) b!92452))

(assert (= (and d!60612 (not c!22516)) b!92453))

(declare-fun m!88134 () Bool)

(assert (=> b!92452 m!88134))

(declare-fun m!88136 () Bool)

(assert (=> b!92455 m!88136))

(assert (=> b!92455 m!88136))

(declare-fun m!88138 () Bool)

(assert (=> b!92455 m!88138))

(assert (=> b!92455 m!88138))

(declare-fun m!88140 () Bool)

(assert (=> b!92455 m!88140))

(assert (=> b!92409 d!60612))

(push 1)

(assert (not b!92417))

(assert (not b!92442))

(assert (not b!92445))

(assert (not b!92415))

(assert (not b!92425))

(assert (not b!92420))

(assert (not b!92422))

(assert (not b!92448))

(assert (not b!92451))

(assert (not b!92455))

(assert (not b!92427))

(assert (not b!92452))

(check-sat)

(get-model)

(pop 1)

