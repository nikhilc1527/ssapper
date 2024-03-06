; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9364 () Bool)

(assert start!9364)

(declare-fun res!32264 () Bool)

(declare-fun e!36470 () Bool)

(assert (=> start!9364 (=> (not res!32264) (not e!36470))))

(declare-datatypes () ((Formula!33 (And!38 (lhs!902 Formula!33) (rhs!902 Formula!33)) (Literal!32 (id!4813 Int)) (Implies!38 (lhs!903 Formula!33) (rhs!903 Formula!33)) (Or!38 (lhs!904 Formula!33) (rhs!904 Formula!33)) (Not!38 (f!4156 Formula!33)))))

(declare-fun f!3724 () Formula!33)

(declare-fun isNNF!1 (Formula!33) Bool)

(assert (=> start!9364 (= res!32264 (isNNF!1 f!3724))))

(assert (=> start!9364 e!36470))

(assert (=> start!9364 true))

(declare-fun b!67381 () Bool)

(declare-fun res!32265 () Bool)

(assert (=> b!67381 (=> (not res!32265) (not e!36470))))

(assert (=> b!67381 (= res!32265 (and (not (is-And!38 f!3724)) (not (is-Literal!32 f!3724)) (not (is-Implies!38 f!3724)) (not (is-Or!38 f!3724))))))

(declare-fun b!67382 () Bool)

(declare-fun res!32266 () Bool)

(assert (=> b!67382 (=> (not res!32266) (not e!36470))))

(declare-fun inductVal!300 () Bool)

(declare-fun simplifyPreservesNNF!0 (Formula!33) Bool)

(assert (=> b!67382 (= res!32266 (= inductVal!300 (simplifyPreservesNNF!0 (f!4156 f!3724))))))

(declare-fun b!67383 () Bool)

(declare-fun simplify!1 (Formula!33) Formula!33)

(assert (=> b!67383 (= e!36470 (not (isNNF!1 (simplify!1 f!3724))))))

(assert (= (and start!9364 res!32264) b!67381))

(assert (= (and b!67381 res!32265) b!67382))

(assert (= (and b!67382 res!32266) b!67383))

(declare-fun m!69957 () Bool)

(assert (=> start!9364 m!69957))

(declare-fun m!69959 () Bool)

(assert (=> b!67382 m!69959))

(declare-fun m!69961 () Bool)

(assert (=> b!67383 m!69961))

(assert (=> b!67383 m!69961))

(declare-fun m!69963 () Bool)

(assert (=> b!67383 m!69963))

(push 1)

(assert (not b!67382))

(assert (not start!9364))

(assert (not b!67383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67416 () Bool)

(declare-fun e!36487 () Bool)

(declare-fun e!36493 () Bool)

(assert (=> b!67416 (= e!36487 e!36493)))

(declare-fun c!15512 () Bool)

(declare-fun lt!13422 () Bool)

(assert (=> b!67416 (= c!15512 (or lt!13422 (and (not lt!13422) (is-Or!38 (f!4156 f!3724)))))))

(declare-fun d!53482 () Bool)

(declare-fun e!36489 () Bool)

(assert (=> d!53482 e!36489))

(declare-fun c!15515 () Bool)

(declare-fun lt!13425 () Bool)

(assert (=> d!53482 (= c!15515 (or lt!13425 (is-Literal!32 (f!4156 f!3724))))))

(declare-fun lt!13423 () Formula!33)

(declare-fun e!36491 () Formula!33)

(assert (=> d!53482 (= lt!13423 e!36491)))

(declare-fun c!15511 () Bool)

(assert (=> d!53482 (= c!15511 (or lt!13425 (is-Literal!32 (f!4156 f!3724))))))

(declare-fun lt!13421 () Bool)

(declare-fun e!36488 () Bool)

(assert (=> d!53482 (= lt!13421 e!36488)))

(declare-fun c!15514 () Bool)

(assert (=> d!53482 (= c!15514 (or lt!13425 (and (not (is-Literal!32 (f!4156 f!3724))) (or (is-Implies!38 (f!4156 f!3724)) (is-Or!38 (f!4156 f!3724))))))))

(declare-fun lt!13426 () Bool)

(declare-fun e!36494 () Bool)

(assert (=> d!53482 (= lt!13426 e!36494)))

(declare-fun c!15510 () Bool)

(assert (=> d!53482 (= c!15510 (or lt!13425 (not (is-Literal!32 (f!4156 f!3724)))))))

(assert (=> d!53482 (= lt!13425 (is-And!38 (f!4156 f!3724)))))

(assert (=> d!53482 (isNNF!1 (f!4156 f!3724))))

(assert (=> d!53482 (= (simplifyPreservesNNF!0 (f!4156 f!3724)) true)))

(declare-fun b!67417 () Bool)

(declare-fun res!32307 () Bool)

(assert (=> b!67417 (= e!36494 res!32307)))

(assert (=> b!67417 true))

(declare-fun b!67418 () Bool)

(assert (=> b!67418 (= e!36487 (isNNF!1 (simplify!1 (f!4156 f!3724))))))

(declare-fun b!67419 () Bool)

(assert (=> b!67419 (= e!36491 (simplify!1 (f!4156 f!3724)))))

(declare-fun b!67420 () Bool)

(declare-fun lt!13424 () Formula!33)

(assert (=> b!67420 (= e!36493 (isNNF!1 lt!13424))))

(declare-fun b!67421 () Bool)

(declare-fun e!36490 () Bool)

(assert (=> b!67421 (= e!36490 (isNNF!1 lt!13423))))

(declare-fun b!67422 () Bool)

(declare-fun res!32308 () Bool)

(assert (=> b!67422 (= e!36490 res!32308)))

(assert (=> b!67422 true))

(declare-fun b!67423 () Bool)

(assert (=> b!67423 (= e!36494 (simplifyPreservesNNF!0 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))

(declare-fun b!67424 () Bool)

(declare-fun res!32310 () Bool)

(assert (=> b!67424 (= e!36488 res!32310)))

(assert (=> b!67424 true))

(declare-fun b!67425 () Bool)

(assert (=> b!67425 (= e!36488 (simplifyPreservesNNF!0 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))

(declare-fun b!67426 () Bool)

(declare-fun e!36492 () Formula!33)

(assert (=> b!67426 (= e!36492 (simplify!1 (f!4156 f!3724)))))

(declare-fun b!67427 () Bool)

(assert (=> b!67427 (= e!36489 e!36487)))

(declare-fun c!15513 () Bool)

(assert (=> b!67427 (= c!15513 (or lt!13422 (is-Or!38 (f!4156 f!3724))))))

(assert (=> b!67427 (= lt!13424 e!36492)))

(declare-fun c!15509 () Bool)

(assert (=> b!67427 (= c!15509 (or lt!13422 (is-Or!38 (f!4156 f!3724))))))

(assert (=> b!67427 (= lt!13422 (is-Implies!38 (f!4156 f!3724)))))

(declare-fun b!67428 () Bool)

(assert (=> b!67428 (= e!36489 e!36490)))

(declare-fun c!15508 () Bool)

(assert (=> b!67428 (= c!15508 (or lt!13425 (and (not lt!13425) (is-Literal!32 (f!4156 f!3724)))))))

(declare-fun b!67429 () Bool)

(declare-fun res!32311 () Formula!33)

(assert (=> b!67429 (= e!36492 res!32311)))

(assert (=> b!67429 true))

(declare-fun b!67430 () Bool)

(declare-fun res!32309 () Bool)

(assert (=> b!67430 (= e!36493 res!32309)))

(assert (=> b!67430 true))

(assert (=> b!67430 true))

(declare-fun b!67431 () Bool)

(declare-fun res!32306 () Formula!33)

(assert (=> b!67431 (= e!36491 res!32306)))

(assert (=> b!67431 true))

(assert (= (and d!53482 c!15510) b!67423))

(assert (= (and d!53482 (not c!15510)) b!67417))

(assert (= (and d!53482 c!15514) b!67425))

(assert (= (and d!53482 (not c!15514)) b!67424))

(assert (= (and d!53482 c!15511) b!67419))

(assert (= (and d!53482 (not c!15511)) b!67431))

(assert (= (and b!67428 c!15508) b!67421))

(assert (= (and b!67428 (not c!15508)) b!67422))

(assert (= (and b!67427 c!15509) b!67426))

(assert (= (and b!67427 (not c!15509)) b!67429))

(assert (= (and b!67416 c!15512) b!67420))

(assert (= (and b!67416 (not c!15512)) b!67430))

(assert (= (and b!67427 c!15513) b!67416))

(assert (= (and b!67427 (not c!15513)) b!67418))

(assert (= (and d!53482 c!15515) b!67428))

(assert (= (and d!53482 (not c!15515)) b!67427))

(declare-fun m!69965 () Bool)

(assert (=> d!53482 m!69965))

(declare-fun m!69967 () Bool)

(assert (=> b!67423 m!69967))

(declare-fun m!69969 () Bool)

(assert (=> b!67425 m!69969))

(declare-fun m!69971 () Bool)

(assert (=> b!67421 m!69971))

(declare-fun m!69973 () Bool)

(assert (=> b!67419 m!69973))

(declare-fun m!69975 () Bool)

(assert (=> b!67420 m!69975))

(assert (=> b!67418 m!69973))

(assert (=> b!67418 m!69973))

(declare-fun m!69977 () Bool)

(assert (=> b!67418 m!69977))

(assert (=> b!67426 m!69973))

(assert (=> b!67382 d!53482))

(declare-fun b!67446 () Bool)

(declare-fun e!36505 () Bool)

(declare-fun e!36504 () Bool)

(assert (=> b!67446 (= e!36505 e!36504)))

(declare-fun res!32326 () Bool)

(assert (=> b!67446 (=> (not res!32326) (not e!36504))))

(declare-fun lt!13433 () Bool)

(assert (=> b!67446 (= res!32326 lt!13433)))

(declare-fun b!67447 () Bool)

(declare-fun e!36503 () Bool)

(declare-fun lt!13435 () Bool)

(assert (=> b!67447 (= e!36503 (isNNF!1 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))))))

(declare-fun b!67448 () Bool)

(declare-fun e!36506 () Bool)

(assert (=> b!67448 (= e!36504 e!36506)))

(declare-fun lt!13434 () Bool)

(declare-fun c!15523 () Bool)

(assert (=> b!67448 (= c!15523 (or lt!13434 (and (not lt!13435) (is-Or!38 f!3724) lt!13433)))))

(declare-fun b!67449 () Bool)

(assert (=> b!67449 (= e!36505 (and (not (is-Implies!38 f!3724)) (or (and (is-Not!38 f!3724) (is-Literal!32 (f!4156 f!3724))) (not (is-Not!38 f!3724)))))))

(declare-fun b!67450 () Bool)

(assert (=> b!67450 (= e!36506 (isNNF!1 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))))))

(declare-fun b!67451 () Bool)

(declare-fun res!32325 () Bool)

(assert (=> b!67451 (= e!36503 res!32325)))

(assert (=> b!67451 true))

(declare-fun b!67452 () Bool)

(declare-fun res!32324 () Bool)

(assert (=> b!67452 (= e!36506 res!32324)))

(assert (=> b!67452 true))

(assert (=> b!67452 true))

(declare-fun d!53484 () Bool)

(declare-fun c!15524 () Bool)

(assert (=> d!53484 (= c!15524 (or lt!13435 (is-Or!38 f!3724)))))

(assert (=> d!53484 (= lt!13434 (and lt!13435 lt!13433))))

(assert (=> d!53484 (= lt!13433 e!36503)))

(declare-fun c!15522 () Bool)

(assert (=> d!53484 (= c!15522 (or lt!13435 (is-Or!38 f!3724)))))

(assert (=> d!53484 (= lt!13435 (is-And!38 f!3724))))

(assert (=> d!53484 (= (isNNF!1 f!3724) e!36505)))

(assert (= (and d!53484 c!15522) b!67447))

(assert (= (and d!53484 (not c!15522)) b!67451))

(assert (= (and b!67446 res!32326) b!67448))

(assert (= (and b!67448 c!15523) b!67450))

(assert (= (and b!67448 (not c!15523)) b!67452))

(assert (= (and d!53484 c!15524) b!67446))

(assert (= (and d!53484 (not c!15524)) b!67449))

(declare-fun m!69979 () Bool)

(assert (=> b!67447 m!69979))

(declare-fun m!69981 () Bool)

(assert (=> b!67450 m!69981))

(assert (=> start!9364 d!53484))

(declare-fun b!67453 () Bool)

(declare-fun e!36509 () Bool)

(declare-fun e!36508 () Bool)

(assert (=> b!67453 (= e!36509 e!36508)))

(declare-fun res!32329 () Bool)

(assert (=> b!67453 (=> (not res!32329) (not e!36508))))

(declare-fun lt!13436 () Bool)

(assert (=> b!67453 (= res!32329 lt!13436)))

(declare-fun b!67454 () Bool)

(declare-fun e!36507 () Bool)

(declare-fun lt!13438 () Bool)

(assert (=> b!67454 (= e!36507 (isNNF!1 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))))))

(declare-fun b!67455 () Bool)

(declare-fun e!36510 () Bool)

(assert (=> b!67455 (= e!36508 e!36510)))

(declare-fun c!15526 () Bool)

(declare-fun lt!13437 () Bool)

(assert (=> b!67455 (= c!15526 (or lt!13437 (and (not lt!13438) (is-Or!38 (simplify!1 f!3724)) lt!13436)))))

(declare-fun b!67456 () Bool)

(assert (=> b!67456 (= e!36509 (and (not (is-Implies!38 (simplify!1 f!3724))) (or (and (is-Not!38 (simplify!1 f!3724)) (is-Literal!32 (f!4156 (simplify!1 f!3724)))) (not (is-Not!38 (simplify!1 f!3724))))))))

(declare-fun b!67457 () Bool)

(assert (=> b!67457 (= e!36510 (isNNF!1 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))))))

(declare-fun b!67458 () Bool)

(declare-fun res!32328 () Bool)

(assert (=> b!67458 (= e!36507 res!32328)))

(assert (=> b!67458 true))

(declare-fun b!67459 () Bool)

(declare-fun res!32327 () Bool)

(assert (=> b!67459 (= e!36510 res!32327)))

(assert (=> b!67459 true))

(assert (=> b!67459 true))

(declare-fun d!53486 () Bool)

(declare-fun c!15527 () Bool)

(assert (=> d!53486 (= c!15527 (or lt!13438 (is-Or!38 (simplify!1 f!3724))))))

(assert (=> d!53486 (= lt!13437 (and lt!13438 lt!13436))))

(assert (=> d!53486 (= lt!13436 e!36507)))

(declare-fun c!15525 () Bool)

(assert (=> d!53486 (= c!15525 (or lt!13438 (is-Or!38 (simplify!1 f!3724))))))

(assert (=> d!53486 (= lt!13438 (is-And!38 (simplify!1 f!3724)))))

(assert (=> d!53486 (= (isNNF!1 (simplify!1 f!3724)) e!36509)))

(assert (= (and d!53486 c!15525) b!67454))

(assert (= (and d!53486 (not c!15525)) b!67458))

(assert (= (and b!67453 res!32329) b!67455))

(assert (= (and b!67455 c!15526) b!67457))

(assert (= (and b!67455 (not c!15526)) b!67459))

(assert (= (and d!53486 c!15527) b!67453))

(assert (= (and d!53486 (not c!15527)) b!67456))

(declare-fun m!69983 () Bool)

(assert (=> b!67454 m!69983))

(declare-fun m!69985 () Bool)

(assert (=> b!67457 m!69985))

(assert (=> b!67383 d!53486))

(declare-fun b!67488 () Bool)

(declare-fun e!36531 () Formula!33)

(declare-fun lt!13461 () Formula!33)

(assert (=> b!67488 (= e!36531 lt!13461)))

(declare-fun b!67489 () Bool)

(declare-fun e!36529 () Formula!33)

(declare-fun res!32359 () Formula!33)

(assert (=> b!67489 (= e!36529 res!32359)))

(assert (=> b!67489 true))

(declare-fun d!53488 () Bool)

(declare-fun lt!13459 () Formula!33)

(declare-fun isSimplified!1 (Formula!33) Bool)

(assert (=> d!53488 (isSimplified!1 lt!13459)))

(declare-fun e!36528 () Formula!33)

(assert (=> d!53488 (= lt!13459 e!36528)))

(declare-fun c!15548 () Bool)

(declare-fun lt!13463 () Bool)

(assert (=> d!53488 (= c!15548 lt!13463)))

(declare-fun lt!13458 () Formula!33)

(declare-fun e!36530 () Formula!33)

(assert (=> d!53488 (= lt!13458 e!36530)))

(declare-fun c!15542 () Bool)

(assert (=> d!53488 (= c!15542 (or lt!13463 (is-Or!38 f!3724) (is-Implies!38 f!3724)))))

(declare-fun lt!13464 () Formula!33)

(declare-fun e!36526 () Formula!33)

(assert (=> d!53488 (= lt!13464 e!36526)))

(declare-fun c!15547 () Bool)

(assert (=> d!53488 (= c!15547 (or lt!13463 (is-Or!38 f!3724) (is-Implies!38 f!3724) (is-Not!38 f!3724)))))

(assert (=> d!53488 (= lt!13463 (is-And!38 f!3724))))

(assert (=> d!53488 (= (simplify!1 f!3724) lt!13459)))

(declare-fun b!67490 () Bool)

(assert (=> b!67490 (= e!36529 lt!13458)))

(declare-fun b!67491 () Bool)

(declare-fun e!36525 () Formula!33)

(declare-fun res!32355 () Formula!33)

(assert (=> b!67491 (= e!36525 res!32355)))

(assert (=> b!67491 true))

(declare-fun b!67492 () Bool)

(declare-fun e!36527 () Formula!33)

(assert (=> b!67492 (= e!36528 e!36527)))

(declare-fun c!15543 () Bool)

(declare-fun lt!13457 () Bool)

(assert (=> b!67492 (= c!15543 lt!13457)))

(declare-fun lt!13460 () Formula!33)

(assert (=> b!67492 (= lt!13460 e!36529)))

(declare-fun c!15546 () Bool)

(assert (=> b!67492 (= c!15546 (or lt!13457 (is-Implies!38 f!3724)))))

(assert (=> b!67492 (= lt!13461 e!36525)))

(declare-fun c!15545 () Bool)

(assert (=> b!67492 (= c!15545 (or lt!13457 (is-Implies!38 f!3724) (is-Not!38 f!3724)))))

(assert (=> b!67492 (= lt!13457 (is-Or!38 f!3724))))

(declare-fun b!67493 () Bool)

(declare-fun res!32358 () Formula!33)

(assert (=> b!67493 (= e!36531 res!32358)))

(assert (=> b!67493 true))

(assert (=> b!67493 true))

(declare-fun b!67494 () Bool)

(assert (=> b!67494 (= e!36527 (Or!38 lt!13461 lt!13460))))

(declare-fun b!67495 () Bool)

(assert (=> b!67495 (= e!36525 lt!13464)))

(declare-fun b!67496 () Bool)

(declare-fun res!32357 () Formula!33)

(assert (=> b!67496 (= e!36526 res!32357)))

(assert (=> b!67496 true))

(declare-fun b!67497 () Bool)

(declare-fun res!32356 () Formula!33)

(assert (=> b!67497 (= e!36530 res!32356)))

(assert (=> b!67497 true))

(declare-fun b!67498 () Bool)

(assert (=> b!67498 (= e!36528 (And!38 lt!13464 lt!13458))))

(declare-fun lt!13465 () Formula!33)

(declare-fun b!67499 () Bool)

(declare-fun lt!13462 () Bool)

(assert (=> b!67499 (= e!36527 (ite lt!13462 (Or!38 (Not!38 lt!13465) lt!13460) (ite (is-Not!38 f!3724) (Not!38 lt!13465) f!3724)))))

(assert (=> b!67499 (= lt!13465 e!36531)))

(declare-fun c!15544 () Bool)

(assert (=> b!67499 (= c!15544 (or lt!13462 (is-Not!38 f!3724)))))

(assert (=> b!67499 (= lt!13462 (is-Implies!38 f!3724))))

(declare-fun b!67500 () Bool)

(assert (=> b!67500 (= e!36530 (simplify!1 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))))))

(declare-fun b!67501 () Bool)

(assert (=> b!67501 (= e!36526 (simplify!1 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))))))

(assert (= (and d!53488 c!15547) b!67501))

(assert (= (and d!53488 (not c!15547)) b!67496))

(assert (= (and d!53488 c!15542) b!67500))

(assert (= (and d!53488 (not c!15542)) b!67497))

(assert (= (and b!67492 c!15545) b!67495))

(assert (= (and b!67492 (not c!15545)) b!67491))

(assert (= (and b!67492 c!15546) b!67490))

(assert (= (and b!67492 (not c!15546)) b!67489))

(assert (= (and b!67499 c!15544) b!67488))

(assert (= (and b!67499 (not c!15544)) b!67493))

(assert (= (and b!67492 c!15543) b!67494))

(assert (= (and b!67492 (not c!15543)) b!67499))

(assert (= (and d!53488 c!15548) b!67498))

(assert (= (and d!53488 (not c!15548)) b!67492))

(declare-fun m!69987 () Bool)

(assert (=> d!53488 m!69987))

(declare-fun m!69989 () Bool)

(assert (=> b!67500 m!69989))

(declare-fun m!69991 () Bool)

(assert (=> b!67501 m!69991))

(assert (=> b!67383 d!53488))

(push 1)

(assert (not b!67426))

(assert (not b!67418))

(assert (not b!67421))

(assert (not b!67457))

(assert (not d!53488))

(assert (not b!67420))

(assert (not b!67447))

(assert (not b!67501))

(assert (not b!67450))

(assert (not b!67454))

(assert (not b!67425))

(assert (not b!67419))

(assert (not d!53482))

(assert (not b!67500))

(assert (not b!67423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67528 () Bool)

(declare-fun e!36555 () Bool)

(declare-fun e!36548 () Bool)

(assert (=> b!67528 (= e!36555 e!36548)))

(declare-fun res!32388 () Bool)

(assert (=> b!67528 (=> (not res!32388) (not e!36548))))

(declare-fun lt!13480 () Bool)

(assert (=> b!67528 (= res!32388 (not lt!13480))))

(declare-fun b!67529 () Bool)

(declare-fun e!36549 () Bool)

(declare-fun res!32390 () Bool)

(assert (=> b!67529 (= e!36549 res!32390)))

(assert (=> b!67529 true))

(declare-fun b!67530 () Bool)

(declare-fun e!36551 () Bool)

(declare-fun lt!13486 () Bool)

(assert (=> b!67530 (= e!36551 (isSimplified!1 (ite lt!13486 (rhs!902 lt!13459) (rhs!904 lt!13459))))))

(declare-fun b!67531 () Bool)

(declare-fun e!36553 () Bool)

(declare-fun res!32387 () Bool)

(assert (=> b!67531 (= e!36553 res!32387)))

(assert (=> b!67531 true))

(assert (=> b!67531 true))

(declare-fun b!67532 () Bool)

(declare-fun res!32386 () Bool)

(assert (=> b!67532 (= e!36551 res!32386)))

(assert (=> b!67532 true))

(declare-fun b!67533 () Bool)

(declare-fun e!36554 () Bool)

(assert (=> b!67533 (= e!36548 e!36554)))

(declare-fun res!32391 () Bool)

(assert (=> b!67533 (=> (not res!32391) (not e!36554))))

(declare-fun lt!13483 () Bool)

(assert (=> b!67533 (= res!32391 lt!13483)))

(assert (=> b!67533 (= lt!13483 (is-Or!38 lt!13459))))

(declare-fun b!67534 () Bool)

(declare-fun e!36550 () Bool)

(assert (=> b!67534 (= e!36550 (isSimplified!1 (ite lt!13480 (lhs!902 lt!13459) (ite (is-Or!38 lt!13459) (lhs!904 lt!13459) (f!4156 lt!13459)))))))

(declare-fun b!67535 () Bool)

(assert (=> b!67535 (= e!36554 e!36549)))

(declare-fun c!15559 () Bool)

(assert (=> b!67535 (= c!15559 (or lt!13483 (and (not (is-Implies!38 lt!13459)) (is-Not!38 lt!13459))))))

(declare-fun d!53490 () Bool)

(declare-fun c!15560 () Bool)

(assert (=> d!53490 (= c!15560 lt!13480)))

(declare-fun lt!13485 () Bool)

(assert (=> d!53490 (= lt!13485 e!36551)))

(declare-fun c!15562 () Bool)

(assert (=> d!53490 (= c!15562 e!36555)))

(declare-fun res!32389 () Bool)

(assert (=> d!53490 (=> res!32389 e!36555)))

(assert (=> d!53490 (= res!32389 lt!13486)))

(declare-fun lt!13481 () Bool)

(assert (=> d!53490 (= lt!13486 (and lt!13480 lt!13481))))

(assert (=> d!53490 (= lt!13481 e!36550)))

(declare-fun c!15563 () Bool)

(assert (=> d!53490 (= c!15563 (or lt!13480 (is-Or!38 lt!13459) (and (not (is-Implies!38 lt!13459)) (is-Not!38 lt!13459))))))

(assert (=> d!53490 (= lt!13480 (is-And!38 lt!13459))))

(declare-fun e!36552 () Bool)

(assert (=> d!53490 (= (isSimplified!1 lt!13459) e!36552)))

(declare-fun b!67536 () Bool)

(assert (=> b!67536 (= e!36552 (and lt!13481 lt!13485))))

(declare-fun b!67537 () Bool)

(assert (=> b!67537 (= e!36553 lt!13481)))

(declare-fun b!67538 () Bool)

(assert (=> b!67538 (= e!36549 lt!13481)))

(declare-fun b!67539 () Bool)

(declare-fun res!32385 () Bool)

(assert (=> b!67539 (= e!36550 res!32385)))

(assert (=> b!67539 true))

(declare-fun b!67540 () Bool)

(declare-fun lt!13482 () Bool)

(declare-fun lt!13484 () Bool)

(assert (=> b!67540 (= e!36552 (ite lt!13484 (and lt!13482 lt!13485) (and (not (is-Implies!38 lt!13459)) (or (not (is-Not!38 lt!13459)) lt!13482))))))

(assert (=> b!67540 (= lt!13482 e!36553)))

(declare-fun c!15561 () Bool)

(assert (=> b!67540 (= c!15561 (or lt!13484 (and (not (is-Implies!38 lt!13459)) (is-Not!38 lt!13459))))))

(assert (=> b!67540 (= lt!13484 (is-Or!38 lt!13459))))

(assert (= (and d!53490 c!15563) b!67534))

(assert (= (and d!53490 (not c!15563)) b!67539))

(assert (= (and d!53490 (not res!32389)) b!67528))

(assert (= (and b!67528 res!32388) b!67533))

(assert (= (and b!67533 res!32391) b!67535))

(assert (= (and b!67535 c!15559) b!67538))

(assert (= (and b!67535 (not c!15559)) b!67529))

(assert (= (and d!53490 c!15562) b!67530))

(assert (= (and d!53490 (not c!15562)) b!67532))

(assert (= (and b!67540 c!15561) b!67537))

(assert (= (and b!67540 (not c!15561)) b!67531))

(assert (= (and d!53490 c!15560) b!67536))

(assert (= (and d!53490 (not c!15560)) b!67540))

(declare-fun m!69993 () Bool)

(assert (=> b!67530 m!69993))

(declare-fun m!69995 () Bool)

(assert (=> b!67534 m!69995))

(assert (=> d!53488 d!53490))

(declare-fun b!67541 () Bool)

(declare-fun e!36556 () Bool)

(declare-fun e!36562 () Bool)

(assert (=> b!67541 (= e!36556 e!36562)))

(declare-fun lt!13488 () Bool)

(declare-fun c!15568 () Bool)

(assert (=> b!67541 (= c!15568 (or lt!13488 (and (not lt!13488) (is-Or!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))))

(declare-fun d!53492 () Bool)

(declare-fun e!36558 () Bool)

(assert (=> d!53492 e!36558))

(declare-fun c!15571 () Bool)

(declare-fun lt!13491 () Bool)

(assert (=> d!53492 (= c!15571 (or lt!13491 (is-Literal!32 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))

(declare-fun lt!13489 () Formula!33)

(declare-fun e!36560 () Formula!33)

(assert (=> d!53492 (= lt!13489 e!36560)))

(declare-fun c!15567 () Bool)

(assert (=> d!53492 (= c!15567 (or lt!13491 (is-Literal!32 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))

(declare-fun lt!13487 () Bool)

(declare-fun e!36557 () Bool)

(assert (=> d!53492 (= lt!13487 e!36557)))

(declare-fun c!15570 () Bool)

(assert (=> d!53492 (= c!15570 (or lt!13491 (and (not (is-Literal!32 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))) (or (is-Implies!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (is-Or!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))))

(declare-fun lt!13492 () Bool)

(declare-fun e!36563 () Bool)

(assert (=> d!53492 (= lt!13492 e!36563)))

(declare-fun c!15566 () Bool)

(assert (=> d!53492 (= c!15566 (or lt!13491 (not (is-Literal!32 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))))

(assert (=> d!53492 (= lt!13491 (is-And!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))

(assert (=> d!53492 (isNNF!1 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))

(assert (=> d!53492 (= (simplifyPreservesNNF!0 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) true)))

(declare-fun b!67542 () Bool)

(declare-fun res!32393 () Bool)

(assert (=> b!67542 (= e!36563 res!32393)))

(assert (=> b!67542 true))

(declare-fun b!67543 () Bool)

(assert (=> b!67543 (= e!36556 (isNNF!1 (simplify!1 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))

(declare-fun b!67544 () Bool)

(assert (=> b!67544 (= e!36560 (simplify!1 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))

(declare-fun b!67545 () Bool)

(declare-fun lt!13490 () Formula!33)

(assert (=> b!67545 (= e!36562 (isNNF!1 lt!13490))))

(declare-fun b!67546 () Bool)

(declare-fun e!36559 () Bool)

(assert (=> b!67546 (= e!36559 (isNNF!1 lt!13489))))

(declare-fun b!67547 () Bool)

(declare-fun res!32394 () Bool)

(assert (=> b!67547 (= e!36559 res!32394)))

(assert (=> b!67547 true))

(declare-fun b!67548 () Bool)

(assert (=> b!67548 (= e!36563 (simplifyPreservesNNF!0 (ite lt!13491 (rhs!902 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (ite (is-Implies!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (rhs!903 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (ite (is-Or!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (rhs!904 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (f!4156 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))))))

(declare-fun b!67549 () Bool)

(declare-fun res!32396 () Bool)

(assert (=> b!67549 (= e!36557 res!32396)))

(assert (=> b!67549 true))

(declare-fun b!67550 () Bool)

(assert (=> b!67550 (= e!36557 (simplifyPreservesNNF!0 (ite lt!13491 (lhs!902 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (ite (is-Implies!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (lhs!903 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))) (lhs!904 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))))

(declare-fun b!67551 () Bool)

(declare-fun e!36561 () Formula!33)

(assert (=> b!67551 (= e!36561 (simplify!1 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))

(declare-fun b!67552 () Bool)

(assert (=> b!67552 (= e!36558 e!36556)))

(declare-fun c!15569 () Bool)

(assert (=> b!67552 (= c!15569 (or lt!13488 (is-Or!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))

(assert (=> b!67552 (= lt!13490 e!36561)))

(declare-fun c!15565 () Bool)

(assert (=> b!67552 (= c!15565 (or lt!13488 (is-Or!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724))))))))))

(assert (=> b!67552 (= lt!13488 (is-Implies!38 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))

(declare-fun b!67553 () Bool)

(assert (=> b!67553 (= e!36558 e!36559)))

(declare-fun c!15564 () Bool)

(assert (=> b!67553 (= c!15564 (or lt!13491 (and (not lt!13491) (is-Literal!32 (ite lt!13425 (rhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))))

(declare-fun b!67554 () Bool)

(declare-fun res!32397 () Formula!33)

(assert (=> b!67554 (= e!36561 res!32397)))

(assert (=> b!67554 true))

(declare-fun b!67555 () Bool)

(declare-fun res!32395 () Bool)

(assert (=> b!67555 (= e!36562 res!32395)))

(assert (=> b!67555 true))

(assert (=> b!67555 true))

(declare-fun b!67556 () Bool)

(declare-fun res!32392 () Formula!33)

(assert (=> b!67556 (= e!36560 res!32392)))

(assert (=> b!67556 true))

(assert (= (and d!53492 c!15566) b!67548))

(assert (= (and d!53492 (not c!15566)) b!67542))

(assert (= (and d!53492 c!15570) b!67550))

(assert (= (and d!53492 (not c!15570)) b!67549))

(assert (= (and d!53492 c!15567) b!67544))

(assert (= (and d!53492 (not c!15567)) b!67556))

(assert (= (and b!67553 c!15564) b!67546))

(assert (= (and b!67553 (not c!15564)) b!67547))

(assert (= (and b!67552 c!15565) b!67551))

(assert (= (and b!67552 (not c!15565)) b!67554))

(assert (= (and b!67541 c!15568) b!67545))

(assert (= (and b!67541 (not c!15568)) b!67555))

(assert (= (and b!67552 c!15569) b!67541))

(assert (= (and b!67552 (not c!15569)) b!67543))

(assert (= (and d!53492 c!15571) b!67553))

(assert (= (and d!53492 (not c!15571)) b!67552))

(declare-fun m!69997 () Bool)

(assert (=> d!53492 m!69997))

(declare-fun m!69999 () Bool)

(assert (=> b!67548 m!69999))

(declare-fun m!70001 () Bool)

(assert (=> b!67550 m!70001))

(declare-fun m!70003 () Bool)

(assert (=> b!67546 m!70003))

(declare-fun m!70005 () Bool)

(assert (=> b!67544 m!70005))

(declare-fun m!70007 () Bool)

(assert (=> b!67545 m!70007))

(assert (=> b!67543 m!70005))

(assert (=> b!67543 m!70005))

(declare-fun m!70009 () Bool)

(assert (=> b!67543 m!70009))

(assert (=> b!67551 m!70005))

(assert (=> b!67423 d!53492))

(declare-fun b!67557 () Bool)

(declare-fun e!36566 () Bool)

(declare-fun e!36565 () Bool)

(assert (=> b!67557 (= e!36566 e!36565)))

(declare-fun res!32400 () Bool)

(assert (=> b!67557 (=> (not res!32400) (not e!36565))))

(declare-fun lt!13493 () Bool)

(assert (=> b!67557 (= res!32400 lt!13493)))

(declare-fun lt!13495 () Bool)

(declare-fun e!36564 () Bool)

(declare-fun b!67558 () Bool)

(assert (=> b!67558 (= e!36564 (isNNF!1 (ite lt!13495 (lhs!902 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))) (lhs!904 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))))))))

(declare-fun b!67559 () Bool)

(declare-fun e!36567 () Bool)

(assert (=> b!67559 (= e!36565 e!36567)))

(declare-fun lt!13494 () Bool)

(declare-fun c!15573 () Bool)

(assert (=> b!67559 (= c!15573 (or lt!13494 (and (not lt!13495) (is-Or!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))) lt!13493)))))

(declare-fun b!67560 () Bool)

(assert (=> b!67560 (= e!36566 (and (not (is-Implies!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724))))) (or (and (is-Not!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))) (is-Literal!32 (f!4156 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))))) (not (is-Not!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724))))))))))

(declare-fun b!67561 () Bool)

(assert (=> b!67561 (= e!36567 (isNNF!1 (ite lt!13494 (rhs!902 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))) (rhs!904 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))))))))

(declare-fun b!67562 () Bool)

(declare-fun res!32399 () Bool)

(assert (=> b!67562 (= e!36564 res!32399)))

(assert (=> b!67562 true))

(declare-fun b!67563 () Bool)

(declare-fun res!32398 () Bool)

(assert (=> b!67563 (= e!36567 res!32398)))

(assert (=> b!67563 true))

(assert (=> b!67563 true))

(declare-fun d!53494 () Bool)

(declare-fun c!15574 () Bool)

(assert (=> d!53494 (= c!15574 (or lt!13495 (is-Or!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724))))))))

(assert (=> d!53494 (= lt!13494 (and lt!13495 lt!13493))))

(assert (=> d!53494 (= lt!13493 e!36564)))

(declare-fun c!15572 () Bool)

(assert (=> d!53494 (= c!15572 (or lt!13495 (is-Or!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724))))))))

(assert (=> d!53494 (= lt!13495 (is-And!38 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))))))

(assert (=> d!53494 (= (isNNF!1 (ite lt!13438 (lhs!902 (simplify!1 f!3724)) (lhs!904 (simplify!1 f!3724)))) e!36566)))

(assert (= (and d!53494 c!15572) b!67558))

(assert (= (and d!53494 (not c!15572)) b!67562))

(assert (= (and b!67557 res!32400) b!67559))

(assert (= (and b!67559 c!15573) b!67561))

(assert (= (and b!67559 (not c!15573)) b!67563))

(assert (= (and d!53494 c!15574) b!67557))

(assert (= (and d!53494 (not c!15574)) b!67560))

(declare-fun m!70011 () Bool)

(assert (=> b!67558 m!70011))

(declare-fun m!70013 () Bool)

(assert (=> b!67561 m!70013))

(assert (=> b!67454 d!53494))

(declare-fun b!67564 () Bool)

(declare-fun e!36570 () Bool)

(declare-fun e!36569 () Bool)

(assert (=> b!67564 (= e!36570 e!36569)))

(declare-fun res!32403 () Bool)

(assert (=> b!67564 (=> (not res!32403) (not e!36569))))

(declare-fun lt!13496 () Bool)

(assert (=> b!67564 (= res!32403 lt!13496)))

(declare-fun lt!13498 () Bool)

(declare-fun b!67565 () Bool)

(declare-fun e!36568 () Bool)

(assert (=> b!67565 (= e!36568 (isNNF!1 (ite lt!13498 (lhs!902 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))) (lhs!904 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))))))))

(declare-fun b!67566 () Bool)

(declare-fun e!36571 () Bool)

(assert (=> b!67566 (= e!36569 e!36571)))

(declare-fun c!15576 () Bool)

(declare-fun lt!13497 () Bool)

(assert (=> b!67566 (= c!15576 (or lt!13497 (and (not lt!13498) (is-Or!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))) lt!13496)))))

(declare-fun b!67567 () Bool)

(assert (=> b!67567 (= e!36570 (and (not (is-Implies!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724)))) (or (and (is-Not!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))) (is-Literal!32 (f!4156 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))))) (not (is-Not!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724)))))))))

(declare-fun b!67568 () Bool)

(assert (=> b!67568 (= e!36571 (isNNF!1 (ite lt!13497 (rhs!902 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))) (rhs!904 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))))))))

(declare-fun b!67569 () Bool)

(declare-fun res!32402 () Bool)

(assert (=> b!67569 (= e!36568 res!32402)))

(assert (=> b!67569 true))

(declare-fun b!67570 () Bool)

(declare-fun res!32401 () Bool)

(assert (=> b!67570 (= e!36571 res!32401)))

(assert (=> b!67570 true))

(assert (=> b!67570 true))

(declare-fun c!15577 () Bool)

(declare-fun d!53496 () Bool)

(assert (=> d!53496 (= c!15577 (or lt!13498 (is-Or!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724)))))))

(assert (=> d!53496 (= lt!13497 (and lt!13498 lt!13496))))

(assert (=> d!53496 (= lt!13496 e!36568)))

(declare-fun c!15575 () Bool)

(assert (=> d!53496 (= c!15575 (or lt!13498 (is-Or!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724)))))))

(assert (=> d!53496 (= lt!13498 (is-And!38 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))))))

(assert (=> d!53496 (= (isNNF!1 (ite lt!13434 (rhs!902 f!3724) (rhs!904 f!3724))) e!36570)))

(assert (= (and d!53496 c!15575) b!67565))

(assert (= (and d!53496 (not c!15575)) b!67569))

(assert (= (and b!67564 res!32403) b!67566))

(assert (= (and b!67566 c!15576) b!67568))

(assert (= (and b!67566 (not c!15576)) b!67570))

(assert (= (and d!53496 c!15577) b!67564))

(assert (= (and d!53496 (not c!15577)) b!67567))

(declare-fun m!70015 () Bool)

(assert (=> b!67565 m!70015))

(declare-fun m!70017 () Bool)

(assert (=> b!67568 m!70017))

(assert (=> b!67450 d!53496))

(declare-fun b!67571 () Bool)

(declare-fun e!36578 () Formula!33)

(declare-fun lt!13503 () Formula!33)

(assert (=> b!67571 (= e!36578 lt!13503)))

(declare-fun b!67572 () Bool)

(declare-fun e!36576 () Formula!33)

(declare-fun res!32408 () Formula!33)

(assert (=> b!67572 (= e!36576 res!32408)))

(assert (=> b!67572 true))

(declare-fun d!53498 () Bool)

(declare-fun lt!13501 () Formula!33)

(assert (=> d!53498 (isSimplified!1 lt!13501)))

(declare-fun e!36575 () Formula!33)

(assert (=> d!53498 (= lt!13501 e!36575)))

(declare-fun c!15584 () Bool)

(declare-fun lt!13505 () Bool)

(assert (=> d!53498 (= c!15584 lt!13505)))

(declare-fun lt!13500 () Formula!33)

(declare-fun e!36577 () Formula!33)

(assert (=> d!53498 (= lt!13500 e!36577)))

(declare-fun c!15578 () Bool)

(assert (=> d!53498 (= c!15578 (or lt!13505 (is-Or!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (is-Implies!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))

(declare-fun lt!13506 () Formula!33)

(declare-fun e!36573 () Formula!33)

(assert (=> d!53498 (= lt!13506 e!36573)))

(declare-fun c!15583 () Bool)

(assert (=> d!53498 (= c!15583 (or lt!13505 (is-Or!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (is-Implies!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (is-Not!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))

(assert (=> d!53498 (= lt!13505 (is-And!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))))))

(assert (=> d!53498 (= (simplify!1 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) lt!13501)))

(declare-fun b!67573 () Bool)

(assert (=> b!67573 (= e!36576 lt!13500)))

(declare-fun b!67574 () Bool)

(declare-fun e!36572 () Formula!33)

(declare-fun res!32404 () Formula!33)

(assert (=> b!67574 (= e!36572 res!32404)))

(assert (=> b!67574 true))

(declare-fun b!67575 () Bool)

(declare-fun e!36574 () Formula!33)

(assert (=> b!67575 (= e!36575 e!36574)))

(declare-fun c!15579 () Bool)

(declare-fun lt!13499 () Bool)

(assert (=> b!67575 (= c!15579 lt!13499)))

(declare-fun lt!13502 () Formula!33)

(assert (=> b!67575 (= lt!13502 e!36576)))

(declare-fun c!15582 () Bool)

(assert (=> b!67575 (= c!15582 (or lt!13499 (is-Implies!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))

(assert (=> b!67575 (= lt!13503 e!36572)))

(declare-fun c!15581 () Bool)

(assert (=> b!67575 (= c!15581 (or lt!13499 (is-Implies!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (is-Not!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))

(assert (=> b!67575 (= lt!13499 (is-Or!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))))))

(declare-fun b!67576 () Bool)

(declare-fun res!32407 () Formula!33)

(assert (=> b!67576 (= e!36578 res!32407)))

(assert (=> b!67576 true))

(assert (=> b!67576 true))

(declare-fun b!67577 () Bool)

(assert (=> b!67577 (= e!36574 (Or!38 lt!13503 lt!13502))))

(declare-fun b!67578 () Bool)

(assert (=> b!67578 (= e!36572 lt!13506)))

(declare-fun b!67579 () Bool)

(declare-fun res!32406 () Formula!33)

(assert (=> b!67579 (= e!36573 res!32406)))

(assert (=> b!67579 true))

(declare-fun b!67580 () Bool)

(declare-fun res!32405 () Formula!33)

(assert (=> b!67580 (= e!36577 res!32405)))

(assert (=> b!67580 true))

(declare-fun b!67581 () Bool)

(assert (=> b!67581 (= e!36575 (And!38 lt!13506 lt!13500))))

(declare-fun b!67582 () Bool)

(declare-fun lt!13504 () Bool)

(declare-fun lt!13507 () Formula!33)

(assert (=> b!67582 (= e!36574 (ite lt!13504 (Or!38 (Not!38 lt!13507) lt!13502) (ite (is-Not!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (Not!38 lt!13507) (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))

(assert (=> b!67582 (= lt!13507 e!36578)))

(declare-fun c!15580 () Bool)

(assert (=> b!67582 (= c!15580 (or lt!13504 (is-Not!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))

(assert (=> b!67582 (= lt!13504 (is-Implies!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))))))

(declare-fun b!67583 () Bool)

(assert (=> b!67583 (= e!36577 (simplify!1 (ite lt!13505 (rhs!902 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (ite (is-Or!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (rhs!904 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (rhs!903 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724))))))))))

(declare-fun b!67584 () Bool)

(assert (=> b!67584 (= e!36573 (simplify!1 (ite lt!13505 (lhs!902 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (ite (is-Or!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (lhs!904 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (ite (is-Implies!38 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (lhs!903 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))) (f!4156 (ite lt!13463 (rhs!902 f!3724) (ite (is-Or!38 f!3724) (rhs!904 f!3724) (rhs!903 f!3724)))))))))))

(assert (= (and d!53498 c!15583) b!67584))

(assert (= (and d!53498 (not c!15583)) b!67579))

(assert (= (and d!53498 c!15578) b!67583))

(assert (= (and d!53498 (not c!15578)) b!67580))

(assert (= (and b!67575 c!15581) b!67578))

(assert (= (and b!67575 (not c!15581)) b!67574))

(assert (= (and b!67575 c!15582) b!67573))

(assert (= (and b!67575 (not c!15582)) b!67572))

(assert (= (and b!67582 c!15580) b!67571))

(assert (= (and b!67582 (not c!15580)) b!67576))

(assert (= (and b!67575 c!15579) b!67577))

(assert (= (and b!67575 (not c!15579)) b!67582))

(assert (= (and d!53498 c!15584) b!67581))

(assert (= (and d!53498 (not c!15584)) b!67575))

(declare-fun m!70019 () Bool)

(assert (=> d!53498 m!70019))

(declare-fun m!70021 () Bool)

(assert (=> b!67583 m!70021))

(declare-fun m!70023 () Bool)

(assert (=> b!67584 m!70023))

(assert (=> b!67500 d!53498))

(declare-fun b!67585 () Bool)

(declare-fun e!36579 () Bool)

(declare-fun e!36585 () Bool)

(assert (=> b!67585 (= e!36579 e!36585)))

(declare-fun c!15589 () Bool)

(declare-fun lt!13509 () Bool)

(assert (=> b!67585 (= c!15589 (or lt!13509 (and (not lt!13509) (is-Or!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))))

(declare-fun d!53500 () Bool)

(declare-fun e!36581 () Bool)

(assert (=> d!53500 e!36581))

(declare-fun lt!13512 () Bool)

(declare-fun c!15592 () Bool)

(assert (=> d!53500 (= c!15592 (or lt!13512 (is-Literal!32 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))

(declare-fun lt!13510 () Formula!33)

(declare-fun e!36583 () Formula!33)

(assert (=> d!53500 (= lt!13510 e!36583)))

(declare-fun c!15588 () Bool)

(assert (=> d!53500 (= c!15588 (or lt!13512 (is-Literal!32 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))

(declare-fun lt!13508 () Bool)

(declare-fun e!36580 () Bool)

(assert (=> d!53500 (= lt!13508 e!36580)))

(declare-fun c!15591 () Bool)

(assert (=> d!53500 (= c!15591 (or lt!13512 (and (not (is-Literal!32 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))) (or (is-Implies!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (is-Or!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))))

(declare-fun lt!13513 () Bool)

(declare-fun e!36586 () Bool)

(assert (=> d!53500 (= lt!13513 e!36586)))

(declare-fun c!15587 () Bool)

(assert (=> d!53500 (= c!15587 (or lt!13512 (not (is-Literal!32 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))))

(assert (=> d!53500 (= lt!13512 (is-And!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))

(assert (=> d!53500 (isNNF!1 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))

(assert (=> d!53500 (= (simplifyPreservesNNF!0 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) true)))

(declare-fun b!67586 () Bool)

(declare-fun res!32410 () Bool)

(assert (=> b!67586 (= e!36586 res!32410)))

(assert (=> b!67586 true))

(declare-fun b!67587 () Bool)

(assert (=> b!67587 (= e!36579 (isNNF!1 (simplify!1 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))

(declare-fun b!67588 () Bool)

(assert (=> b!67588 (= e!36583 (simplify!1 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))

(declare-fun b!67589 () Bool)

(declare-fun lt!13511 () Formula!33)

(assert (=> b!67589 (= e!36585 (isNNF!1 lt!13511))))

(declare-fun b!67590 () Bool)

(declare-fun e!36582 () Bool)

(assert (=> b!67590 (= e!36582 (isNNF!1 lt!13510))))

(declare-fun b!67591 () Bool)

(declare-fun res!32411 () Bool)

(assert (=> b!67591 (= e!36582 res!32411)))

(assert (=> b!67591 true))

(declare-fun b!67592 () Bool)

(assert (=> b!67592 (= e!36586 (simplifyPreservesNNF!0 (ite lt!13512 (rhs!902 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (ite (is-Implies!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (rhs!903 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (ite (is-Or!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (rhs!904 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (f!4156 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))))))

(declare-fun b!67593 () Bool)

(declare-fun res!32413 () Bool)

(assert (=> b!67593 (= e!36580 res!32413)))

(assert (=> b!67593 true))

(declare-fun b!67594 () Bool)

(assert (=> b!67594 (= e!36580 (simplifyPreservesNNF!0 (ite lt!13512 (lhs!902 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (ite (is-Implies!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (lhs!903 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))) (lhs!904 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))))

(declare-fun b!67595 () Bool)

(declare-fun e!36584 () Formula!33)

(assert (=> b!67595 (= e!36584 (simplify!1 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))

(declare-fun b!67596 () Bool)

(assert (=> b!67596 (= e!36581 e!36579)))

(declare-fun c!15590 () Bool)

(assert (=> b!67596 (= c!15590 (or lt!13509 (is-Or!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))

(assert (=> b!67596 (= lt!13511 e!36584)))

(declare-fun c!15586 () Bool)

(assert (=> b!67596 (= c!15586 (or lt!13509 (is-Or!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))))

(assert (=> b!67596 (= lt!13509 (is-Implies!38 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))

(declare-fun b!67597 () Bool)

(assert (=> b!67597 (= e!36581 e!36582)))

(declare-fun c!15585 () Bool)

(assert (=> b!67597 (= c!15585 (or lt!13512 (and (not lt!13512) (is-Literal!32 (ite lt!13425 (lhs!902 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724))))))))))

(declare-fun b!67598 () Bool)

(declare-fun res!32414 () Formula!33)

(assert (=> b!67598 (= e!36584 res!32414)))

(assert (=> b!67598 true))

(declare-fun b!67599 () Bool)

(declare-fun res!32412 () Bool)

(assert (=> b!67599 (= e!36585 res!32412)))

(assert (=> b!67599 true))

(assert (=> b!67599 true))

(declare-fun b!67600 () Bool)

(declare-fun res!32409 () Formula!33)

(assert (=> b!67600 (= e!36583 res!32409)))

(assert (=> b!67600 true))

(assert (= (and d!53500 c!15587) b!67592))

(assert (= (and d!53500 (not c!15587)) b!67586))

(assert (= (and d!53500 c!15591) b!67594))

(assert (= (and d!53500 (not c!15591)) b!67593))

(assert (= (and d!53500 c!15588) b!67588))

(assert (= (and d!53500 (not c!15588)) b!67600))

(assert (= (and b!67597 c!15585) b!67590))

(assert (= (and b!67597 (not c!15585)) b!67591))

(assert (= (and b!67596 c!15586) b!67595))

(assert (= (and b!67596 (not c!15586)) b!67598))

(assert (= (and b!67585 c!15589) b!67589))

(assert (= (and b!67585 (not c!15589)) b!67599))

(assert (= (and b!67596 c!15590) b!67585))

(assert (= (and b!67596 (not c!15590)) b!67587))

(assert (= (and d!53500 c!15592) b!67597))

(assert (= (and d!53500 (not c!15592)) b!67596))

(declare-fun m!70025 () Bool)

(assert (=> d!53500 m!70025))

(declare-fun m!70027 () Bool)

(assert (=> b!67592 m!70027))

(declare-fun m!70029 () Bool)

(assert (=> b!67594 m!70029))

(declare-fun m!70031 () Bool)

(assert (=> b!67590 m!70031))

(declare-fun m!70033 () Bool)

(assert (=> b!67588 m!70033))

(declare-fun m!70035 () Bool)

(assert (=> b!67589 m!70035))

(assert (=> b!67587 m!70033))

(assert (=> b!67587 m!70033))

(declare-fun m!70037 () Bool)

(assert (=> b!67587 m!70037))

(assert (=> b!67595 m!70033))

(assert (=> b!67425 d!53500))

(declare-fun b!67601 () Bool)

(declare-fun e!36593 () Formula!33)

(declare-fun lt!13518 () Formula!33)

(assert (=> b!67601 (= e!36593 lt!13518)))

(declare-fun b!67602 () Bool)

(declare-fun e!36591 () Formula!33)

(declare-fun res!32419 () Formula!33)

(assert (=> b!67602 (= e!36591 res!32419)))

(assert (=> b!67602 true))

(declare-fun d!53502 () Bool)

(declare-fun lt!13516 () Formula!33)

(assert (=> d!53502 (isSimplified!1 lt!13516)))

(declare-fun e!36590 () Formula!33)

(assert (=> d!53502 (= lt!13516 e!36590)))

(declare-fun c!15599 () Bool)

(declare-fun lt!13520 () Bool)

(assert (=> d!53502 (= c!15599 lt!13520)))

(declare-fun lt!13515 () Formula!33)

(declare-fun e!36592 () Formula!33)

(assert (=> d!53502 (= lt!13515 e!36592)))

(declare-fun c!15593 () Bool)

(assert (=> d!53502 (= c!15593 (or lt!13520 (is-Or!38 (f!4156 f!3724)) (is-Implies!38 (f!4156 f!3724))))))

(declare-fun lt!13521 () Formula!33)

(declare-fun e!36588 () Formula!33)

(assert (=> d!53502 (= lt!13521 e!36588)))

(declare-fun c!15598 () Bool)

(assert (=> d!53502 (= c!15598 (or lt!13520 (is-Or!38 (f!4156 f!3724)) (is-Implies!38 (f!4156 f!3724)) (is-Not!38 (f!4156 f!3724))))))

(assert (=> d!53502 (= lt!13520 (is-And!38 (f!4156 f!3724)))))

(assert (=> d!53502 (= (simplify!1 (f!4156 f!3724)) lt!13516)))

(declare-fun b!67603 () Bool)

(assert (=> b!67603 (= e!36591 lt!13515)))

(declare-fun b!67604 () Bool)

(declare-fun e!36587 () Formula!33)

(declare-fun res!32415 () Formula!33)

(assert (=> b!67604 (= e!36587 res!32415)))

(assert (=> b!67604 true))

(declare-fun b!67605 () Bool)

(declare-fun e!36589 () Formula!33)

(assert (=> b!67605 (= e!36590 e!36589)))

(declare-fun c!15594 () Bool)

(declare-fun lt!13514 () Bool)

(assert (=> b!67605 (= c!15594 lt!13514)))

(declare-fun lt!13517 () Formula!33)

(assert (=> b!67605 (= lt!13517 e!36591)))

(declare-fun c!15597 () Bool)

(assert (=> b!67605 (= c!15597 (or lt!13514 (is-Implies!38 (f!4156 f!3724))))))

(assert (=> b!67605 (= lt!13518 e!36587)))

(declare-fun c!15596 () Bool)

(assert (=> b!67605 (= c!15596 (or lt!13514 (is-Implies!38 (f!4156 f!3724)) (is-Not!38 (f!4156 f!3724))))))

(assert (=> b!67605 (= lt!13514 (is-Or!38 (f!4156 f!3724)))))

(declare-fun b!67606 () Bool)

(declare-fun res!32418 () Formula!33)

(assert (=> b!67606 (= e!36593 res!32418)))

(assert (=> b!67606 true))

(assert (=> b!67606 true))

(declare-fun b!67607 () Bool)

(assert (=> b!67607 (= e!36589 (Or!38 lt!13518 lt!13517))))

(declare-fun b!67608 () Bool)

(assert (=> b!67608 (= e!36587 lt!13521)))

(declare-fun b!67609 () Bool)

(declare-fun res!32417 () Formula!33)

(assert (=> b!67609 (= e!36588 res!32417)))

(assert (=> b!67609 true))

(declare-fun b!67610 () Bool)

(declare-fun res!32416 () Formula!33)

(assert (=> b!67610 (= e!36592 res!32416)))

(assert (=> b!67610 true))

(declare-fun b!67611 () Bool)

(assert (=> b!67611 (= e!36590 (And!38 lt!13521 lt!13515))))

(declare-fun lt!13519 () Bool)

(declare-fun b!67612 () Bool)

(declare-fun lt!13522 () Formula!33)

(assert (=> b!67612 (= e!36589 (ite lt!13519 (Or!38 (Not!38 lt!13522) lt!13517) (ite (is-Not!38 (f!4156 f!3724)) (Not!38 lt!13522) (f!4156 f!3724))))))

(assert (=> b!67612 (= lt!13522 e!36593)))

(declare-fun c!15595 () Bool)

(assert (=> b!67612 (= c!15595 (or lt!13519 (is-Not!38 (f!4156 f!3724))))))

(assert (=> b!67612 (= lt!13519 (is-Implies!38 (f!4156 f!3724)))))

(declare-fun b!67613 () Bool)

(assert (=> b!67613 (= e!36592 (simplify!1 (ite lt!13520 (rhs!902 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)) (rhs!903 (f!4156 f!3724))))))))

(declare-fun b!67614 () Bool)

(assert (=> b!67614 (= e!36588 (simplify!1 (ite lt!13520 (lhs!902 (f!4156 f!3724)) (ite (is-Or!38 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)) (ite (is-Implies!38 (f!4156 f!3724)) (lhs!903 (f!4156 f!3724)) (f!4156 (f!4156 f!3724)))))))))

(assert (= (and d!53502 c!15598) b!67614))

(assert (= (and d!53502 (not c!15598)) b!67609))

(assert (= (and d!53502 c!15593) b!67613))

(assert (= (and d!53502 (not c!15593)) b!67610))

(assert (= (and b!67605 c!15596) b!67608))

(assert (= (and b!67605 (not c!15596)) b!67604))

(assert (= (and b!67605 c!15597) b!67603))

(assert (= (and b!67605 (not c!15597)) b!67602))

(assert (= (and b!67612 c!15595) b!67601))

(assert (= (and b!67612 (not c!15595)) b!67606))

(assert (= (and b!67605 c!15594) b!67607))

(assert (= (and b!67605 (not c!15594)) b!67612))

(assert (= (and d!53502 c!15599) b!67611))

(assert (= (and d!53502 (not c!15599)) b!67605))

(declare-fun m!70039 () Bool)

(assert (=> d!53502 m!70039))

(declare-fun m!70041 () Bool)

(assert (=> b!67613 m!70041))

(declare-fun m!70043 () Bool)

(assert (=> b!67614 m!70043))

(assert (=> b!67419 d!53502))

(declare-fun b!67615 () Bool)

(declare-fun e!36596 () Bool)

(declare-fun e!36595 () Bool)

(assert (=> b!67615 (= e!36596 e!36595)))

(declare-fun res!32422 () Bool)

(assert (=> b!67615 (=> (not res!32422) (not e!36595))))

(declare-fun lt!13523 () Bool)

(assert (=> b!67615 (= res!32422 lt!13523)))

(declare-fun lt!13525 () Bool)

(declare-fun e!36594 () Bool)

(declare-fun b!67616 () Bool)

(assert (=> b!67616 (= e!36594 (isNNF!1 (ite lt!13525 (lhs!902 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))) (lhs!904 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))))))))

(declare-fun b!67617 () Bool)

(declare-fun e!36597 () Bool)

(assert (=> b!67617 (= e!36595 e!36597)))

(declare-fun lt!13524 () Bool)

(declare-fun c!15601 () Bool)

(assert (=> b!67617 (= c!15601 (or lt!13524 (and (not lt!13525) (is-Or!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))) lt!13523)))))

(declare-fun b!67618 () Bool)

(assert (=> b!67618 (= e!36596 (and (not (is-Implies!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724))))) (or (and (is-Not!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))) (is-Literal!32 (f!4156 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))))) (not (is-Not!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724))))))))))

(declare-fun b!67619 () Bool)

(assert (=> b!67619 (= e!36597 (isNNF!1 (ite lt!13524 (rhs!902 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))) (rhs!904 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))))))))

(declare-fun b!67620 () Bool)

(declare-fun res!32421 () Bool)

(assert (=> b!67620 (= e!36594 res!32421)))

(assert (=> b!67620 true))

(declare-fun b!67621 () Bool)

(declare-fun res!32420 () Bool)

(assert (=> b!67621 (= e!36597 res!32420)))

(assert (=> b!67621 true))

(assert (=> b!67621 true))

(declare-fun d!53504 () Bool)

(declare-fun c!15602 () Bool)

(assert (=> d!53504 (= c!15602 (or lt!13525 (is-Or!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724))))))))

(assert (=> d!53504 (= lt!13524 (and lt!13525 lt!13523))))

(assert (=> d!53504 (= lt!13523 e!36594)))

(declare-fun c!15600 () Bool)

(assert (=> d!53504 (= c!15600 (or lt!13525 (is-Or!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724))))))))

(assert (=> d!53504 (= lt!13525 (is-And!38 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))))))

(assert (=> d!53504 (= (isNNF!1 (ite lt!13437 (rhs!902 (simplify!1 f!3724)) (rhs!904 (simplify!1 f!3724)))) e!36596)))

(assert (= (and d!53504 c!15600) b!67616))

(assert (= (and d!53504 (not c!15600)) b!67620))

(assert (= (and b!67615 res!32422) b!67617))

(assert (= (and b!67617 c!15601) b!67619))

(assert (= (and b!67617 (not c!15601)) b!67621))

(assert (= (and d!53504 c!15602) b!67615))

(assert (= (and d!53504 (not c!15602)) b!67618))

(declare-fun m!70045 () Bool)

(assert (=> b!67616 m!70045))

(declare-fun m!70047 () Bool)

(assert (=> b!67619 m!70047))

(assert (=> b!67457 d!53504))

(declare-fun b!67622 () Bool)

(declare-fun e!36600 () Bool)

(declare-fun e!36599 () Bool)

(assert (=> b!67622 (= e!36600 e!36599)))

(declare-fun res!32425 () Bool)

(assert (=> b!67622 (=> (not res!32425) (not e!36599))))

(declare-fun lt!13526 () Bool)

(assert (=> b!67622 (= res!32425 lt!13526)))

(declare-fun b!67623 () Bool)

(declare-fun e!36598 () Bool)

(declare-fun lt!13528 () Bool)

(assert (=> b!67623 (= e!36598 (isNNF!1 (ite lt!13528 (lhs!902 (simplify!1 (f!4156 f!3724))) (lhs!904 (simplify!1 (f!4156 f!3724))))))))

(declare-fun b!67624 () Bool)

(declare-fun e!36601 () Bool)

(assert (=> b!67624 (= e!36599 e!36601)))

(declare-fun c!15604 () Bool)

(declare-fun lt!13527 () Bool)

(assert (=> b!67624 (= c!15604 (or lt!13527 (and (not lt!13528) (is-Or!38 (simplify!1 (f!4156 f!3724))) lt!13526)))))

(declare-fun b!67625 () Bool)

(assert (=> b!67625 (= e!36600 (and (not (is-Implies!38 (simplify!1 (f!4156 f!3724)))) (or (and (is-Not!38 (simplify!1 (f!4156 f!3724))) (is-Literal!32 (f!4156 (simplify!1 (f!4156 f!3724))))) (not (is-Not!38 (simplify!1 (f!4156 f!3724)))))))))

(declare-fun b!67626 () Bool)

(assert (=> b!67626 (= e!36601 (isNNF!1 (ite lt!13527 (rhs!902 (simplify!1 (f!4156 f!3724))) (rhs!904 (simplify!1 (f!4156 f!3724))))))))

(declare-fun b!67627 () Bool)

(declare-fun res!32424 () Bool)

(assert (=> b!67627 (= e!36598 res!32424)))

(assert (=> b!67627 true))

(declare-fun b!67628 () Bool)

(declare-fun res!32423 () Bool)

(assert (=> b!67628 (= e!36601 res!32423)))

(assert (=> b!67628 true))

(assert (=> b!67628 true))

(declare-fun d!53506 () Bool)

(declare-fun c!15605 () Bool)

(assert (=> d!53506 (= c!15605 (or lt!13528 (is-Or!38 (simplify!1 (f!4156 f!3724)))))))

(assert (=> d!53506 (= lt!13527 (and lt!13528 lt!13526))))

(assert (=> d!53506 (= lt!13526 e!36598)))

(declare-fun c!15603 () Bool)

(assert (=> d!53506 (= c!15603 (or lt!13528 (is-Or!38 (simplify!1 (f!4156 f!3724)))))))

(assert (=> d!53506 (= lt!13528 (is-And!38 (simplify!1 (f!4156 f!3724))))))

(assert (=> d!53506 (= (isNNF!1 (simplify!1 (f!4156 f!3724))) e!36600)))

(assert (= (and d!53506 c!15603) b!67623))

(assert (= (and d!53506 (not c!15603)) b!67627))

(assert (= (and b!67622 res!32425) b!67624))

(assert (= (and b!67624 c!15604) b!67626))

(assert (= (and b!67624 (not c!15604)) b!67628))

(assert (= (and d!53506 c!15605) b!67622))

(assert (= (and d!53506 (not c!15605)) b!67625))

(declare-fun m!70049 () Bool)

(assert (=> b!67623 m!70049))

(declare-fun m!70051 () Bool)

(assert (=> b!67626 m!70051))

(assert (=> b!67418 d!53506))

(assert (=> b!67418 d!53502))

(declare-fun b!67629 () Bool)

(declare-fun e!36604 () Bool)

(declare-fun e!36603 () Bool)

(assert (=> b!67629 (= e!36604 e!36603)))

(declare-fun res!32428 () Bool)

(assert (=> b!67629 (=> (not res!32428) (not e!36603))))

(declare-fun lt!13529 () Bool)

(assert (=> b!67629 (= res!32428 lt!13529)))

(declare-fun b!67630 () Bool)

(declare-fun e!36602 () Bool)

(declare-fun lt!13531 () Bool)

(assert (=> b!67630 (= e!36602 (isNNF!1 (ite lt!13531 (lhs!902 lt!13423) (lhs!904 lt!13423))))))

(declare-fun b!67631 () Bool)

(declare-fun e!36605 () Bool)

(assert (=> b!67631 (= e!36603 e!36605)))

(declare-fun c!15607 () Bool)

(declare-fun lt!13530 () Bool)

(assert (=> b!67631 (= c!15607 (or lt!13530 (and (not lt!13531) (is-Or!38 lt!13423) lt!13529)))))

(declare-fun b!67632 () Bool)

(assert (=> b!67632 (= e!36604 (and (not (is-Implies!38 lt!13423)) (or (and (is-Not!38 lt!13423) (is-Literal!32 (f!4156 lt!13423))) (not (is-Not!38 lt!13423)))))))

(declare-fun b!67633 () Bool)

(assert (=> b!67633 (= e!36605 (isNNF!1 (ite lt!13530 (rhs!902 lt!13423) (rhs!904 lt!13423))))))

(declare-fun b!67634 () Bool)

(declare-fun res!32427 () Bool)

(assert (=> b!67634 (= e!36602 res!32427)))

(assert (=> b!67634 true))

(declare-fun b!67635 () Bool)

(declare-fun res!32426 () Bool)

(assert (=> b!67635 (= e!36605 res!32426)))

(assert (=> b!67635 true))

(assert (=> b!67635 true))

(declare-fun d!53508 () Bool)

(declare-fun c!15608 () Bool)

(assert (=> d!53508 (= c!15608 (or lt!13531 (is-Or!38 lt!13423)))))

(assert (=> d!53508 (= lt!13530 (and lt!13531 lt!13529))))

(assert (=> d!53508 (= lt!13529 e!36602)))

(declare-fun c!15606 () Bool)

(assert (=> d!53508 (= c!15606 (or lt!13531 (is-Or!38 lt!13423)))))

(assert (=> d!53508 (= lt!13531 (is-And!38 lt!13423))))

(assert (=> d!53508 (= (isNNF!1 lt!13423) e!36604)))

(assert (= (and d!53508 c!15606) b!67630))

(assert (= (and d!53508 (not c!15606)) b!67634))

(assert (= (and b!67629 res!32428) b!67631))

(assert (= (and b!67631 c!15607) b!67633))

(assert (= (and b!67631 (not c!15607)) b!67635))

(assert (= (and d!53508 c!15608) b!67629))

(assert (= (and d!53508 (not c!15608)) b!67632))

(declare-fun m!70053 () Bool)

(assert (=> b!67630 m!70053))

(declare-fun m!70055 () Bool)

(assert (=> b!67633 m!70055))

(assert (=> b!67421 d!53508))

(assert (=> b!67426 d!53502))

(declare-fun b!67636 () Bool)

(declare-fun e!36612 () Formula!33)

(declare-fun lt!13536 () Formula!33)

(assert (=> b!67636 (= e!36612 lt!13536)))

(declare-fun b!67637 () Bool)

(declare-fun e!36610 () Formula!33)

(declare-fun res!32433 () Formula!33)

(assert (=> b!67637 (= e!36610 res!32433)))

(assert (=> b!67637 true))

(declare-fun d!53510 () Bool)

(declare-fun lt!13534 () Formula!33)

(assert (=> d!53510 (isSimplified!1 lt!13534)))

(declare-fun e!36609 () Formula!33)

(assert (=> d!53510 (= lt!13534 e!36609)))

(declare-fun c!15615 () Bool)

(declare-fun lt!13538 () Bool)

(assert (=> d!53510 (= c!15615 lt!13538)))

(declare-fun lt!13533 () Formula!33)

(declare-fun e!36611 () Formula!33)

(assert (=> d!53510 (= lt!13533 e!36611)))

(declare-fun c!15609 () Bool)

(assert (=> d!53510 (= c!15609 (or lt!13538 (is-Or!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (is-Implies!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))

(declare-fun lt!13539 () Formula!33)

(declare-fun e!36607 () Formula!33)

(assert (=> d!53510 (= lt!13539 e!36607)))

(declare-fun c!15614 () Bool)

(assert (=> d!53510 (= c!15614 (or lt!13538 (is-Or!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (is-Implies!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (is-Not!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))

(assert (=> d!53510 (= lt!13538 (is-And!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))))))

(assert (=> d!53510 (= (simplify!1 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) lt!13534)))

(declare-fun b!67638 () Bool)

(assert (=> b!67638 (= e!36610 lt!13533)))

(declare-fun b!67639 () Bool)

(declare-fun e!36606 () Formula!33)

(declare-fun res!32429 () Formula!33)

(assert (=> b!67639 (= e!36606 res!32429)))

(assert (=> b!67639 true))

(declare-fun b!67640 () Bool)

(declare-fun e!36608 () Formula!33)

(assert (=> b!67640 (= e!36609 e!36608)))

(declare-fun c!15610 () Bool)

(declare-fun lt!13532 () Bool)

(assert (=> b!67640 (= c!15610 lt!13532)))

(declare-fun lt!13535 () Formula!33)

(assert (=> b!67640 (= lt!13535 e!36610)))

(declare-fun c!15613 () Bool)

(assert (=> b!67640 (= c!15613 (or lt!13532 (is-Implies!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))

(assert (=> b!67640 (= lt!13536 e!36606)))

(declare-fun c!15612 () Bool)

(assert (=> b!67640 (= c!15612 (or lt!13532 (is-Implies!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (is-Not!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))

(assert (=> b!67640 (= lt!13532 (is-Or!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))))))

(declare-fun b!67641 () Bool)

(declare-fun res!32432 () Formula!33)

(assert (=> b!67641 (= e!36612 res!32432)))

(assert (=> b!67641 true))

(assert (=> b!67641 true))

(declare-fun b!67642 () Bool)

(assert (=> b!67642 (= e!36608 (Or!38 lt!13536 lt!13535))))

(declare-fun b!67643 () Bool)

(assert (=> b!67643 (= e!36606 lt!13539)))

(declare-fun b!67644 () Bool)

(declare-fun res!32431 () Formula!33)

(assert (=> b!67644 (= e!36607 res!32431)))

(assert (=> b!67644 true))

(declare-fun b!67645 () Bool)

(declare-fun res!32430 () Formula!33)

(assert (=> b!67645 (= e!36611 res!32430)))

(assert (=> b!67645 true))

(declare-fun b!67646 () Bool)

(assert (=> b!67646 (= e!36609 (And!38 lt!13539 lt!13533))))

(declare-fun lt!13540 () Formula!33)

(declare-fun lt!13537 () Bool)

(declare-fun b!67647 () Bool)

(assert (=> b!67647 (= e!36608 (ite lt!13537 (Or!38 (Not!38 lt!13540) lt!13535) (ite (is-Not!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (Not!38 lt!13540) (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))

(assert (=> b!67647 (= lt!13540 e!36612)))

(declare-fun c!15611 () Bool)

(assert (=> b!67647 (= c!15611 (or lt!13537 (is-Not!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))

(assert (=> b!67647 (= lt!13537 (is-Implies!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))))))

(declare-fun b!67648 () Bool)

(assert (=> b!67648 (= e!36611 (simplify!1 (ite lt!13538 (rhs!902 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (ite (is-Or!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (rhs!904 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (rhs!903 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724)))))))))))

(declare-fun b!67649 () Bool)

(assert (=> b!67649 (= e!36607 (simplify!1 (ite lt!13538 (lhs!902 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (ite (is-Or!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (lhs!904 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (ite (is-Implies!38 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (lhs!903 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))) (f!4156 (ite lt!13463 (lhs!902 f!3724) (ite (is-Or!38 f!3724) (lhs!904 f!3724) (ite (is-Implies!38 f!3724) (lhs!903 f!3724) (f!4156 f!3724))))))))))))

(assert (= (and d!53510 c!15614) b!67649))

(assert (= (and d!53510 (not c!15614)) b!67644))

(assert (= (and d!53510 c!15609) b!67648))

(assert (= (and d!53510 (not c!15609)) b!67645))

(assert (= (and b!67640 c!15612) b!67643))

(assert (= (and b!67640 (not c!15612)) b!67639))

(assert (= (and b!67640 c!15613) b!67638))

(assert (= (and b!67640 (not c!15613)) b!67637))

(assert (= (and b!67647 c!15611) b!67636))

(assert (= (and b!67647 (not c!15611)) b!67641))

(assert (= (and b!67640 c!15610) b!67642))

(assert (= (and b!67640 (not c!15610)) b!67647))

(assert (= (and d!53510 c!15615) b!67646))

(assert (= (and d!53510 (not c!15615)) b!67640))

(declare-fun m!70057 () Bool)

(assert (=> d!53510 m!70057))

(declare-fun m!70059 () Bool)

(assert (=> b!67648 m!70059))

(declare-fun m!70061 () Bool)

(assert (=> b!67649 m!70061))

(assert (=> b!67501 d!53510))

(declare-fun b!67650 () Bool)

(declare-fun e!36615 () Bool)

(declare-fun e!36614 () Bool)

(assert (=> b!67650 (= e!36615 e!36614)))

(declare-fun res!32436 () Bool)

(assert (=> b!67650 (=> (not res!32436) (not e!36614))))

(declare-fun lt!13541 () Bool)

(assert (=> b!67650 (= res!32436 lt!13541)))

(declare-fun b!67651 () Bool)

(declare-fun e!36613 () Bool)

(declare-fun lt!13543 () Bool)

(assert (=> b!67651 (= e!36613 (isNNF!1 (ite lt!13543 (lhs!902 lt!13424) (lhs!904 lt!13424))))))

(declare-fun b!67652 () Bool)

(declare-fun e!36616 () Bool)

(assert (=> b!67652 (= e!36614 e!36616)))

(declare-fun c!15617 () Bool)

(declare-fun lt!13542 () Bool)

(assert (=> b!67652 (= c!15617 (or lt!13542 (and (not lt!13543) (is-Or!38 lt!13424) lt!13541)))))

(declare-fun b!67653 () Bool)

(assert (=> b!67653 (= e!36615 (and (not (is-Implies!38 lt!13424)) (or (and (is-Not!38 lt!13424) (is-Literal!32 (f!4156 lt!13424))) (not (is-Not!38 lt!13424)))))))

(declare-fun b!67654 () Bool)

(assert (=> b!67654 (= e!36616 (isNNF!1 (ite lt!13542 (rhs!902 lt!13424) (rhs!904 lt!13424))))))

(declare-fun b!67655 () Bool)

(declare-fun res!32435 () Bool)

(assert (=> b!67655 (= e!36613 res!32435)))

(assert (=> b!67655 true))

(declare-fun b!67656 () Bool)

(declare-fun res!32434 () Bool)

(assert (=> b!67656 (= e!36616 res!32434)))

(assert (=> b!67656 true))

(assert (=> b!67656 true))

(declare-fun d!53512 () Bool)

(declare-fun c!15618 () Bool)

(assert (=> d!53512 (= c!15618 (or lt!13543 (is-Or!38 lt!13424)))))

(assert (=> d!53512 (= lt!13542 (and lt!13543 lt!13541))))

(assert (=> d!53512 (= lt!13541 e!36613)))

(declare-fun c!15616 () Bool)

(assert (=> d!53512 (= c!15616 (or lt!13543 (is-Or!38 lt!13424)))))

(assert (=> d!53512 (= lt!13543 (is-And!38 lt!13424))))

(assert (=> d!53512 (= (isNNF!1 lt!13424) e!36615)))

(assert (= (and d!53512 c!15616) b!67651))

(assert (= (and d!53512 (not c!15616)) b!67655))

(assert (= (and b!67650 res!32436) b!67652))

(assert (= (and b!67652 c!15617) b!67654))

(assert (= (and b!67652 (not c!15617)) b!67656))

(assert (= (and d!53512 c!15618) b!67650))

(assert (= (and d!53512 (not c!15618)) b!67653))

(declare-fun m!70063 () Bool)

(assert (=> b!67651 m!70063))

(declare-fun m!70065 () Bool)

(assert (=> b!67654 m!70065))

(assert (=> b!67420 d!53512))

(declare-fun b!67657 () Bool)

(declare-fun e!36619 () Bool)

(declare-fun e!36618 () Bool)

(assert (=> b!67657 (= e!36619 e!36618)))

(declare-fun res!32439 () Bool)

(assert (=> b!67657 (=> (not res!32439) (not e!36618))))

(declare-fun lt!13544 () Bool)

(assert (=> b!67657 (= res!32439 lt!13544)))

(declare-fun b!67658 () Bool)

(declare-fun e!36617 () Bool)

(declare-fun lt!13546 () Bool)

(assert (=> b!67658 (= e!36617 (isNNF!1 (ite lt!13546 (lhs!902 (f!4156 f!3724)) (lhs!904 (f!4156 f!3724)))))))

(declare-fun b!67659 () Bool)

(declare-fun e!36620 () Bool)

(assert (=> b!67659 (= e!36618 e!36620)))

(declare-fun lt!13545 () Bool)

(declare-fun c!15620 () Bool)

(assert (=> b!67659 (= c!15620 (or lt!13545 (and (not lt!13546) (is-Or!38 (f!4156 f!3724)) lt!13544)))))

(declare-fun b!67660 () Bool)

(assert (=> b!67660 (= e!36619 (and (not (is-Implies!38 (f!4156 f!3724))) (or (and (is-Not!38 (f!4156 f!3724)) (is-Literal!32 (f!4156 (f!4156 f!3724)))) (not (is-Not!38 (f!4156 f!3724))))))))

(declare-fun b!67661 () Bool)

(assert (=> b!67661 (= e!36620 (isNNF!1 (ite lt!13545 (rhs!902 (f!4156 f!3724)) (rhs!904 (f!4156 f!3724)))))))

(declare-fun b!67662 () Bool)

(declare-fun res!32438 () Bool)

(assert (=> b!67662 (= e!36617 res!32438)))

(assert (=> b!67662 true))

(declare-fun b!67663 () Bool)

(declare-fun res!32437 () Bool)

(assert (=> b!67663 (= e!36620 res!32437)))

(assert (=> b!67663 true))

(assert (=> b!67663 true))

(declare-fun d!53514 () Bool)

(declare-fun c!15621 () Bool)

(assert (=> d!53514 (= c!15621 (or lt!13546 (is-Or!38 (f!4156 f!3724))))))

(assert (=> d!53514 (= lt!13545 (and lt!13546 lt!13544))))

(assert (=> d!53514 (= lt!13544 e!36617)))

(declare-fun c!15619 () Bool)

(assert (=> d!53514 (= c!15619 (or lt!13546 (is-Or!38 (f!4156 f!3724))))))

(assert (=> d!53514 (= lt!13546 (is-And!38 (f!4156 f!3724)))))

(assert (=> d!53514 (= (isNNF!1 (f!4156 f!3724)) e!36619)))

(assert (= (and d!53514 c!15619) b!67658))

(assert (= (and d!53514 (not c!15619)) b!67662))

(assert (= (and b!67657 res!32439) b!67659))

(assert (= (and b!67659 c!15620) b!67661))

(assert (= (and b!67659 (not c!15620)) b!67663))

(assert (= (and d!53514 c!15621) b!67657))

(assert (= (and d!53514 (not c!15621)) b!67660))

(declare-fun m!70067 () Bool)

(assert (=> b!67658 m!70067))

(declare-fun m!70069 () Bool)

(assert (=> b!67661 m!70069))

(assert (=> d!53482 d!53514))

(declare-fun b!67664 () Bool)

(declare-fun e!36623 () Bool)

(declare-fun e!36622 () Bool)

(assert (=> b!67664 (= e!36623 e!36622)))

(declare-fun res!32442 () Bool)

(assert (=> b!67664 (=> (not res!32442) (not e!36622))))

(declare-fun lt!13547 () Bool)

(assert (=> b!67664 (= res!32442 lt!13547)))

(declare-fun e!36621 () Bool)

(declare-fun b!67665 () Bool)

(declare-fun lt!13549 () Bool)

(assert (=> b!67665 (= e!36621 (isNNF!1 (ite lt!13549 (lhs!902 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))) (lhs!904 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))))))))

(declare-fun b!67666 () Bool)

(declare-fun e!36624 () Bool)

(assert (=> b!67666 (= e!36622 e!36624)))

(declare-fun lt!13548 () Bool)

(declare-fun c!15623 () Bool)

(assert (=> b!67666 (= c!15623 (or lt!13548 (and (not lt!13549) (is-Or!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))) lt!13547)))))

(declare-fun b!67667 () Bool)

(assert (=> b!67667 (= e!36623 (and (not (is-Implies!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724)))) (or (and (is-Not!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))) (is-Literal!32 (f!4156 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))))) (not (is-Not!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724)))))))))

(declare-fun b!67668 () Bool)

(assert (=> b!67668 (= e!36624 (isNNF!1 (ite lt!13548 (rhs!902 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))) (rhs!904 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))))))))

(declare-fun b!67669 () Bool)

(declare-fun res!32441 () Bool)

(assert (=> b!67669 (= e!36621 res!32441)))

(assert (=> b!67669 true))

(declare-fun b!67670 () Bool)

(declare-fun res!32440 () Bool)

(assert (=> b!67670 (= e!36624 res!32440)))

(assert (=> b!67670 true))

(assert (=> b!67670 true))

(declare-fun d!53516 () Bool)

(declare-fun c!15624 () Bool)

(assert (=> d!53516 (= c!15624 (or lt!13549 (is-Or!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724)))))))

(assert (=> d!53516 (= lt!13548 (and lt!13549 lt!13547))))

(assert (=> d!53516 (= lt!13547 e!36621)))

(declare-fun c!15622 () Bool)

(assert (=> d!53516 (= c!15622 (or lt!13549 (is-Or!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724)))))))

(assert (=> d!53516 (= lt!13549 (is-And!38 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))))))

(assert (=> d!53516 (= (isNNF!1 (ite lt!13435 (lhs!902 f!3724) (lhs!904 f!3724))) e!36623)))

(assert (= (and d!53516 c!15622) b!67665))

(assert (= (and d!53516 (not c!15622)) b!67669))

(assert (= (and b!67664 res!32442) b!67666))

(assert (= (and b!67666 c!15623) b!67668))

(assert (= (and b!67666 (not c!15623)) b!67670))

(assert (= (and d!53516 c!15624) b!67664))

(assert (= (and d!53516 (not c!15624)) b!67667))

(declare-fun m!70071 () Bool)

(assert (=> b!67665 m!70071))

(declare-fun m!70073 () Bool)

(assert (=> b!67668 m!70073))

(assert (=> b!67447 d!53516))

(push 1)

(assert (not b!67544))

(assert (not b!67543))

(assert (not b!67623))

(assert (not b!67613))

(assert (not b!67588))

(assert (not b!67568))

(assert (not b!67558))

(assert (not b!67614))

(assert (not d!53502))

(assert (not b!67583))

(assert (not d!53498))

(assert (not d!53500))

(assert (not b!67654))

(assert (not b!67587))

(assert (not b!67530))

(assert (not b!67630))

(assert (not b!67546))

(assert (not b!67661))

(assert (not b!67649))

(assert (not b!67594))

(assert (not b!67584))

(assert (not b!67565))

(assert (not b!67550))

(assert (not b!67665))

(assert (not b!67651))

(assert (not b!67595))

(assert (not b!67589))

(assert (not b!67548))

(assert (not b!67616))

(assert (not b!67626))

(assert (not b!67561))

(assert (not b!67668))

(assert (not b!67658))

(assert (not b!67545))

(assert (not b!67551))

(assert (not b!67619))

(assert (not b!67648))

(assert (not d!53492))

(assert (not b!67534))

(assert (not b!67592))

(assert (not d!53510))

(assert (not b!67590))

(assert (not b!67633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

