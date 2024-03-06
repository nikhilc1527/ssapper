; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3100 () Bool)

(assert start!3100)

(declare-fun b!15476 () Bool)

(declare-fun res!6287 () Bool)

(declare-fun e!8462 () Bool)

(assert (=> b!15476 (=> res!6287 e!8462)))

(declare-datatypes () ((T!1711 (T!1712 (val!28 Int)))))

(declare-datatypes () ((Conc!10 (CC!9 (left!654 Conc!10) (right!657 Conc!10)) (Single!9 (x!8704 T!1711)) (Empty!20))))

(declare-fun xs!637 () Conc!10)

(declare-fun n!315 () Int)

(declare-fun instSplitAxiom!7 (Conc!10 Int) Bool)

(assert (=> b!15476 (= res!6287 (not (instSplitAxiom!7 xs!637 n!315)))))

(declare-fun b!15477 () Bool)

(declare-fun res!6290 () Bool)

(assert (=> b!15477 (=> res!6290 e!8462)))

(declare-datatypes () ((tuple2!104 (tuple2!105 (_1!52 Conc!10) (_2!52 Conc!10)))))

(declare-fun res!5659 () tuple2!104)

(declare-fun level!9 (Conc!10) Int)

(assert (=> b!15477 (= res!6290 (< (level!9 xs!637) (level!9 (_2!52 res!5659))))))

(declare-fun b!15478 () Bool)

(declare-fun e!8463 () Bool)

(declare-fun tp_is_empty!55 () Bool)

(assert (=> b!15478 (= e!8463 tp_is_empty!55)))

(declare-fun b!15479 () Bool)

(declare-fun res!6291 () Bool)

(declare-fun e!8464 () Bool)

(assert (=> b!15479 (=> (not res!6291) (not e!8464))))

(assert (=> b!15479 (= res!6291 (and (not (is-Empty!20 xs!637)) (is-Single!9 xs!637) (> n!315 0) (= res!5659 (tuple2!105 xs!637 Empty!20))))))

(declare-fun b!15480 () Bool)

(declare-fun res!6288 () Bool)

(assert (=> b!15480 (=> res!6288 e!8462)))

(assert (=> b!15480 (= res!6288 (< (level!9 xs!637) (level!9 (_1!52 res!5659))))))

(declare-fun b!15481 () Bool)

(declare-fun res!6292 () Bool)

(assert (=> b!15481 (=> res!6292 e!8462)))

(declare-fun balanced!10 (Conc!10) Bool)

(assert (=> b!15481 (= res!6292 (not (balanced!10 (_1!52 res!5659))))))

(declare-fun b!15482 () Bool)

(declare-fun e!8461 () Bool)

(declare-fun tp!3756 () Bool)

(declare-fun tp!3754 () Bool)

(assert (=> b!15482 (= e!8461 (and tp!3756 tp!3754))))

(declare-fun b!15483 () Bool)

(assert (=> b!15483 (= e!8464 e!8462)))

(declare-fun res!6295 () Bool)

(assert (=> b!15483 (=> res!6295 e!8462)))

(declare-fun concInv!9 (Conc!10) Bool)

(assert (=> b!15483 (= res!6295 (not (concInv!9 (_1!52 res!5659))))))

(declare-fun res!6286 () Bool)

(assert (=> start!3100 (=> (not res!6286) (not e!8464))))

(assert (=> start!3100 (= res!6286 (concInv!9 xs!637))))

(assert (=> start!3100 e!8464))

(declare-fun e!8460 () Bool)

(assert (=> start!3100 e!8460))

(assert (=> start!3100 true))

(assert (=> start!3100 (and e!8461 e!8463)))

(declare-fun b!15484 () Bool)

(declare-fun splitCorrectness!5 (tuple2!104 Conc!10 Int) Bool)

(assert (=> b!15484 (= e!8462 (not (splitCorrectness!5 res!5659 xs!637 n!315)))))

(declare-fun b!15485 () Bool)

(assert (=> b!15485 (= e!8460 tp_is_empty!55)))

(declare-fun b!15486 () Bool)

(declare-fun tp!3755 () Bool)

(declare-fun tp!3751 () Bool)

(assert (=> b!15486 (= e!8463 (and tp!3755 tp!3751))))

(declare-fun b!15487 () Bool)

(declare-fun res!6289 () Bool)

(assert (=> b!15487 (=> res!6289 e!8462)))

(assert (=> b!15487 (= res!6289 (not (concInv!9 (_2!52 res!5659))))))

(declare-fun b!15488 () Bool)

(declare-fun tp!3752 () Bool)

(declare-fun tp!3753 () Bool)

(assert (=> b!15488 (= e!8460 (and tp!3752 tp!3753))))

(declare-fun b!15489 () Bool)

(declare-fun res!6293 () Bool)

(assert (=> b!15489 (=> (not res!6293) (not e!8464))))

(assert (=> b!15489 (= res!6293 (balanced!10 xs!637))))

(declare-fun b!15490 () Bool)

(assert (=> b!15490 (= e!8461 tp_is_empty!55)))

(declare-fun b!15491 () Bool)

(declare-fun res!6294 () Bool)

(assert (=> b!15491 (=> res!6294 e!8462)))

(assert (=> b!15491 (= res!6294 (not (balanced!10 (_2!52 res!5659))))))

(assert (= (and start!3100 res!6286) b!15489))

(assert (= (and b!15489 res!6293) b!15479))

(assert (= (and b!15479 res!6291) b!15483))

(assert (= (and b!15483 (not res!6295)) b!15481))

(assert (= (and b!15481 (not res!6292)) b!15487))

(assert (= (and b!15487 (not res!6289)) b!15491))

(assert (= (and b!15491 (not res!6294)) b!15480))

(assert (= (and b!15480 (not res!6288)) b!15477))

(assert (= (and b!15477 (not res!6290)) b!15476))

(assert (= (and b!15476 (not res!6287)) b!15484))

(assert (= (and start!3100 (is-CC!9 xs!637)) b!15488))

(assert (= (and start!3100 (is-Single!9 xs!637)) b!15485))

(assert (= (and start!3100 (is-CC!9 (_1!52 res!5659))) b!15482))

(assert (= (and start!3100 (is-Single!9 (_1!52 res!5659))) b!15490))

(assert (= (and start!3100 (is-CC!9 (_2!52 res!5659))) b!15486))

(assert (= (and start!3100 (is-Single!9 (_2!52 res!5659))) b!15478))

(declare-fun m!18921 () Bool)

(assert (=> b!15483 m!18921))

(declare-fun m!18923 () Bool)

(assert (=> start!3100 m!18923))

(declare-fun m!18925 () Bool)

(assert (=> b!15480 m!18925))

(declare-fun m!18927 () Bool)

(assert (=> b!15480 m!18927))

(declare-fun m!18929 () Bool)

(assert (=> b!15487 m!18929))

(declare-fun m!18931 () Bool)

(assert (=> b!15484 m!18931))

(assert (=> b!15477 m!18925))

(declare-fun m!18933 () Bool)

(assert (=> b!15477 m!18933))

(declare-fun m!18935 () Bool)

(assert (=> b!15476 m!18935))

(declare-fun m!18937 () Bool)

(assert (=> b!15489 m!18937))

(declare-fun m!18939 () Bool)

(assert (=> b!15491 m!18939))

(declare-fun m!18941 () Bool)

(assert (=> b!15481 m!18941))

(push 1)

(assert (not b!15488))

(assert tp_is_empty!55)

(assert (not b!15486))

(assert (not b!15480))

(assert (not b!15484))

(assert (not b!15481))

(assert (not start!3100))

(assert (not b!15491))

(assert (not b!15482))

(assert (not b!15483))

(assert (not b!15487))

(assert (not b!15477))

(assert (not b!15476))

(assert (not b!15489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!11495 () Bool)

(declare-fun e!8467 () Bool)

(assert (=> d!11495 e!8467))

(declare-fun res!6298 () Bool)

(assert (=> d!11495 (=> res!6298 e!8467)))

(assert (=> d!11495 (= res!6298 (not (is-CC!9 xs!637)))))

(assert (=> d!11495 (= (instSplitAxiom!7 xs!637 n!315) true)))

(declare-fun b!15494 () Bool)

(declare-datatypes () ((List!323 (Cons!317 (h!231 T!1711) (t!4283 List!323)) (Nil!318))))

(declare-fun appendTakeDrop!4 (List!323 List!323 Int) Bool)

(declare-fun toList!83 (Conc!10) List!323)

(assert (=> b!15494 (= e!8467 (appendTakeDrop!4 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)) n!315))))

(assert (= (and d!11495 (not res!6298)) b!15494))

(declare-fun m!18943 () Bool)

(assert (=> b!15494 m!18943))

(declare-fun m!18945 () Bool)

(assert (=> b!15494 m!18945))

(assert (=> b!15494 m!18943))

(assert (=> b!15494 m!18945))

(declare-fun m!18947 () Bool)

(assert (=> b!15494 m!18947))

(assert (=> b!15476 d!11495))

(declare-fun b!15503 () Bool)

(declare-fun e!8472 () Bool)

(declare-fun e!8473 () Bool)

(assert (=> b!15503 (= e!8472 e!8473)))

(declare-fun res!6310 () Bool)

(assert (=> b!15503 (=> (not res!6310) (not e!8473))))

(declare-fun isEmpty!274 (Conc!10) Bool)

(assert (=> b!15503 (= res!6310 (not (isEmpty!274 (left!654 (_1!52 res!5659)))))))

(declare-fun d!11497 () Bool)

(declare-fun res!6307 () Bool)

(assert (=> d!11497 (=> res!6307 e!8472)))

(assert (=> d!11497 (= res!6307 (not (is-CC!9 (_1!52 res!5659))))))

(assert (=> d!11497 (= (concInv!9 (_1!52 res!5659)) e!8472)))

(declare-fun b!15505 () Bool)

(declare-fun res!6309 () Bool)

(assert (=> b!15505 (=> (not res!6309) (not e!8473))))

(assert (=> b!15505 (= res!6309 (concInv!9 (left!654 (_1!52 res!5659))))))

(declare-fun b!15504 () Bool)

(declare-fun res!6308 () Bool)

(assert (=> b!15504 (=> (not res!6308) (not e!8473))))

(assert (=> b!15504 (= res!6308 (not (isEmpty!274 (right!657 (_1!52 res!5659)))))))

(declare-fun b!15506 () Bool)

(assert (=> b!15506 (= e!8473 (concInv!9 (right!657 (_1!52 res!5659))))))

(assert (= (and d!11497 (not res!6307)) b!15503))

(assert (= (and b!15503 res!6310) b!15504))

(assert (= (and b!15504 res!6308) b!15505))

(assert (= (and b!15505 res!6309) b!15506))

(declare-fun m!18949 () Bool)

(assert (=> b!15503 m!18949))

(declare-fun m!18951 () Bool)

(assert (=> b!15505 m!18951))

(declare-fun m!18953 () Bool)

(assert (=> b!15504 m!18953))

(declare-fun m!18955 () Bool)

(assert (=> b!15506 m!18955))

(assert (=> b!15483 d!11497))

(declare-fun b!15515 () Bool)

(declare-fun e!8479 () Bool)

(declare-fun e!8478 () Bool)

(assert (=> b!15515 (= e!8479 e!8478)))

(declare-fun res!6319 () Bool)

(assert (=> b!15515 (=> (not res!6319) (not e!8478))))

(assert (=> b!15515 (= res!6319 (>= (- (level!9 (left!654 (_2!52 res!5659))) (level!9 (right!657 (_2!52 res!5659)))) (- 1)))))

(declare-fun b!15518 () Bool)

(assert (=> b!15518 (= e!8478 (balanced!10 (right!657 (_2!52 res!5659))))))

(declare-fun b!15516 () Bool)

(declare-fun res!6322 () Bool)

(assert (=> b!15516 (=> (not res!6322) (not e!8478))))

(assert (=> b!15516 (= res!6322 (<= (- (level!9 (left!654 (_2!52 res!5659))) (level!9 (right!657 (_2!52 res!5659)))) 1))))

(declare-fun d!11499 () Bool)

(declare-fun res!6321 () Bool)

(assert (=> d!11499 (=> res!6321 e!8479)))

(assert (=> d!11499 (= res!6321 (not (is-CC!9 (_2!52 res!5659))))))

(assert (=> d!11499 (= (balanced!10 (_2!52 res!5659)) e!8479)))

(declare-fun b!15517 () Bool)

(declare-fun res!6320 () Bool)

(assert (=> b!15517 (=> (not res!6320) (not e!8478))))

(assert (=> b!15517 (= res!6320 (balanced!10 (left!654 (_2!52 res!5659))))))

(assert (= (and d!11499 (not res!6321)) b!15515))

(assert (= (and b!15515 res!6319) b!15516))

(assert (= (and b!15516 res!6322) b!15517))

(assert (= (and b!15517 res!6320) b!15518))

(declare-fun m!18957 () Bool)

(assert (=> b!15515 m!18957))

(declare-fun m!18959 () Bool)

(assert (=> b!15515 m!18959))

(declare-fun m!18961 () Bool)

(assert (=> b!15518 m!18961))

(assert (=> b!15516 m!18957))

(assert (=> b!15516 m!18959))

(declare-fun m!18963 () Bool)

(assert (=> b!15517 m!18963))

(assert (=> b!15491 d!11499))

(declare-fun b!15519 () Bool)

(declare-fun e!8480 () Bool)

(declare-fun e!8481 () Bool)

(assert (=> b!15519 (= e!8480 e!8481)))

(declare-fun res!6326 () Bool)

(assert (=> b!15519 (=> (not res!6326) (not e!8481))))

(assert (=> b!15519 (= res!6326 (not (isEmpty!274 (left!654 (_2!52 res!5659)))))))

(declare-fun d!11501 () Bool)

(declare-fun res!6323 () Bool)

(assert (=> d!11501 (=> res!6323 e!8480)))

(assert (=> d!11501 (= res!6323 (not (is-CC!9 (_2!52 res!5659))))))

(assert (=> d!11501 (= (concInv!9 (_2!52 res!5659)) e!8480)))

(declare-fun b!15521 () Bool)

(declare-fun res!6325 () Bool)

(assert (=> b!15521 (=> (not res!6325) (not e!8481))))

(assert (=> b!15521 (= res!6325 (concInv!9 (left!654 (_2!52 res!5659))))))

(declare-fun b!15520 () Bool)

(declare-fun res!6324 () Bool)

(assert (=> b!15520 (=> (not res!6324) (not e!8481))))

(assert (=> b!15520 (= res!6324 (not (isEmpty!274 (right!657 (_2!52 res!5659)))))))

(declare-fun b!15522 () Bool)

(assert (=> b!15522 (= e!8481 (concInv!9 (right!657 (_2!52 res!5659))))))

(assert (= (and d!11501 (not res!6323)) b!15519))

(assert (= (and b!15519 res!6326) b!15520))

(assert (= (and b!15520 res!6324) b!15521))

(assert (= (and b!15521 res!6325) b!15522))

(declare-fun m!18965 () Bool)

(assert (=> b!15519 m!18965))

(declare-fun m!18967 () Bool)

(assert (=> b!15521 m!18967))

(declare-fun m!18969 () Bool)

(assert (=> b!15520 m!18969))

(declare-fun m!18971 () Bool)

(assert (=> b!15522 m!18971))

(assert (=> b!15487 d!11501))

(declare-fun d!11503 () Bool)

(declare-fun res!6329 () Bool)

(declare-fun e!8484 () Bool)

(assert (=> d!11503 (=> (not res!6329) (not e!8484))))

(declare-fun take!8 (List!323 Int) List!323)

(assert (=> d!11503 (= res!6329 (= (toList!83 (_1!52 res!5659)) (take!8 (toList!83 xs!637) n!315)))))

(assert (=> d!11503 (= (splitCorrectness!5 res!5659 xs!637 n!315) e!8484)))

(declare-fun b!15525 () Bool)

(declare-fun drop!6 (List!323 Int) List!323)

(assert (=> b!15525 (= e!8484 (= (toList!83 (_2!52 res!5659)) (drop!6 (toList!83 xs!637) n!315)))))

(assert (= (and d!11503 res!6329) b!15525))

(declare-fun m!18973 () Bool)

(assert (=> d!11503 m!18973))

(declare-fun m!18975 () Bool)

(assert (=> d!11503 m!18975))

(assert (=> d!11503 m!18975))

(declare-fun m!18977 () Bool)

(assert (=> d!11503 m!18977))

(declare-fun m!18979 () Bool)

(assert (=> b!15525 m!18979))

(assert (=> b!15525 m!18975))

(assert (=> b!15525 m!18975))

(declare-fun m!18981 () Bool)

(assert (=> b!15525 m!18981))

(assert (=> b!15484 d!11503))

(declare-fun b!15526 () Bool)

(declare-fun e!8485 () Bool)

(declare-fun e!8486 () Bool)

(assert (=> b!15526 (= e!8485 e!8486)))

(declare-fun res!6333 () Bool)

(assert (=> b!15526 (=> (not res!6333) (not e!8486))))

(assert (=> b!15526 (= res!6333 (not (isEmpty!274 (left!654 xs!637))))))

(declare-fun d!11505 () Bool)

(declare-fun res!6330 () Bool)

(assert (=> d!11505 (=> res!6330 e!8485)))

(assert (=> d!11505 (= res!6330 (not (is-CC!9 xs!637)))))

(assert (=> d!11505 (= (concInv!9 xs!637) e!8485)))

(declare-fun b!15528 () Bool)

(declare-fun res!6332 () Bool)

(assert (=> b!15528 (=> (not res!6332) (not e!8486))))

(assert (=> b!15528 (= res!6332 (concInv!9 (left!654 xs!637)))))

(declare-fun b!15527 () Bool)

(declare-fun res!6331 () Bool)

(assert (=> b!15527 (=> (not res!6331) (not e!8486))))

(assert (=> b!15527 (= res!6331 (not (isEmpty!274 (right!657 xs!637))))))

(declare-fun b!15529 () Bool)

(assert (=> b!15529 (= e!8486 (concInv!9 (right!657 xs!637)))))

(assert (= (and d!11505 (not res!6330)) b!15526))

(assert (= (and b!15526 res!6333) b!15527))

(assert (= (and b!15527 res!6331) b!15528))

(assert (= (and b!15528 res!6332) b!15529))

(declare-fun m!18983 () Bool)

(assert (=> b!15526 m!18983))

(declare-fun m!18985 () Bool)

(assert (=> b!15528 m!18985))

(declare-fun m!18987 () Bool)

(assert (=> b!15527 m!18987))

(declare-fun m!18989 () Bool)

(assert (=> b!15529 m!18989))

(assert (=> start!3100 d!11505))

(declare-fun b!15535 () Bool)

(declare-fun e!8489 () Int)

(declare-fun lt!2192 () Int)

(declare-fun lt!2191 () Int)

(assert (=> b!15535 (= e!8489 (+ 1 (ite (>= lt!2192 lt!2191) lt!2192 lt!2191)))))

(assert (=> b!15535 (= lt!2191 (level!9 (right!657 xs!637)))))

(assert (=> b!15535 (= lt!2192 (level!9 (left!654 xs!637)))))

(declare-fun d!11507 () Bool)

(declare-fun lt!2193 () Int)

(assert (=> d!11507 (>= lt!2193 0)))

(assert (=> d!11507 (= lt!2193 e!8489)))

(declare-fun c!4097 () Bool)

(assert (=> d!11507 (= c!4097 (or (is-Empty!20 xs!637) (is-Single!9 xs!637)))))

(assert (=> d!11507 (= (level!9 xs!637) lt!2193)))

(declare-fun b!15534 () Bool)

(assert (=> b!15534 (= e!8489 0)))

(assert (= (and d!11507 c!4097) b!15534))

(assert (= (and d!11507 (not c!4097)) b!15535))

(declare-fun m!18991 () Bool)

(assert (=> b!15535 m!18991))

(declare-fun m!18993 () Bool)

(assert (=> b!15535 m!18993))

(assert (=> b!15477 d!11507))

(declare-fun b!15537 () Bool)

(declare-fun e!8490 () Int)

(declare-fun lt!2195 () Int)

(declare-fun lt!2194 () Int)

(assert (=> b!15537 (= e!8490 (+ 1 (ite (>= lt!2195 lt!2194) lt!2195 lt!2194)))))

(assert (=> b!15537 (= lt!2194 (level!9 (right!657 (_2!52 res!5659))))))

(assert (=> b!15537 (= lt!2195 (level!9 (left!654 (_2!52 res!5659))))))

(declare-fun d!11509 () Bool)

(declare-fun lt!2196 () Int)

(assert (=> d!11509 (>= lt!2196 0)))

(assert (=> d!11509 (= lt!2196 e!8490)))

(declare-fun c!4098 () Bool)

(assert (=> d!11509 (= c!4098 (or (is-Empty!20 (_2!52 res!5659)) (is-Single!9 (_2!52 res!5659))))))

(assert (=> d!11509 (= (level!9 (_2!52 res!5659)) lt!2196)))

(declare-fun b!15536 () Bool)

(assert (=> b!15536 (= e!8490 0)))

(assert (= (and d!11509 c!4098) b!15536))

(assert (= (and d!11509 (not c!4098)) b!15537))

(assert (=> b!15537 m!18959))

(assert (=> b!15537 m!18957))

(assert (=> b!15477 d!11509))

(assert (=> b!15480 d!11507))

(declare-fun b!15539 () Bool)

(declare-fun e!8491 () Int)

(declare-fun lt!2198 () Int)

(declare-fun lt!2197 () Int)

(assert (=> b!15539 (= e!8491 (+ 1 (ite (>= lt!2198 lt!2197) lt!2198 lt!2197)))))

(assert (=> b!15539 (= lt!2197 (level!9 (right!657 (_1!52 res!5659))))))

(assert (=> b!15539 (= lt!2198 (level!9 (left!654 (_1!52 res!5659))))))

(declare-fun d!11511 () Bool)

(declare-fun lt!2199 () Int)

(assert (=> d!11511 (>= lt!2199 0)))

(assert (=> d!11511 (= lt!2199 e!8491)))

(declare-fun c!4099 () Bool)

(assert (=> d!11511 (= c!4099 (or (is-Empty!20 (_1!52 res!5659)) (is-Single!9 (_1!52 res!5659))))))

(assert (=> d!11511 (= (level!9 (_1!52 res!5659)) lt!2199)))

(declare-fun b!15538 () Bool)

(assert (=> b!15538 (= e!8491 0)))

(assert (= (and d!11511 c!4099) b!15538))

(assert (= (and d!11511 (not c!4099)) b!15539))

(declare-fun m!18995 () Bool)

(assert (=> b!15539 m!18995))

(declare-fun m!18997 () Bool)

(assert (=> b!15539 m!18997))

(assert (=> b!15480 d!11511))

(declare-fun b!15540 () Bool)

(declare-fun e!8493 () Bool)

(declare-fun e!8492 () Bool)

(assert (=> b!15540 (= e!8493 e!8492)))

(declare-fun res!6334 () Bool)

(assert (=> b!15540 (=> (not res!6334) (not e!8492))))

(assert (=> b!15540 (= res!6334 (>= (- (level!9 (left!654 (_1!52 res!5659))) (level!9 (right!657 (_1!52 res!5659)))) (- 1)))))

(declare-fun b!15543 () Bool)

(assert (=> b!15543 (= e!8492 (balanced!10 (right!657 (_1!52 res!5659))))))

(declare-fun b!15541 () Bool)

(declare-fun res!6337 () Bool)

(assert (=> b!15541 (=> (not res!6337) (not e!8492))))

(assert (=> b!15541 (= res!6337 (<= (- (level!9 (left!654 (_1!52 res!5659))) (level!9 (right!657 (_1!52 res!5659)))) 1))))

(declare-fun d!11513 () Bool)

(declare-fun res!6336 () Bool)

(assert (=> d!11513 (=> res!6336 e!8493)))

(assert (=> d!11513 (= res!6336 (not (is-CC!9 (_1!52 res!5659))))))

(assert (=> d!11513 (= (balanced!10 (_1!52 res!5659)) e!8493)))

(declare-fun b!15542 () Bool)

(declare-fun res!6335 () Bool)

(assert (=> b!15542 (=> (not res!6335) (not e!8492))))

(assert (=> b!15542 (= res!6335 (balanced!10 (left!654 (_1!52 res!5659))))))

(assert (= (and d!11513 (not res!6336)) b!15540))

(assert (= (and b!15540 res!6334) b!15541))

(assert (= (and b!15541 res!6337) b!15542))

(assert (= (and b!15542 res!6335) b!15543))

(assert (=> b!15540 m!18997))

(assert (=> b!15540 m!18995))

(declare-fun m!18999 () Bool)

(assert (=> b!15543 m!18999))

(assert (=> b!15541 m!18997))

(assert (=> b!15541 m!18995))

(declare-fun m!19001 () Bool)

(assert (=> b!15542 m!19001))

(assert (=> b!15481 d!11513))

(declare-fun b!15544 () Bool)

(declare-fun e!8495 () Bool)

(declare-fun e!8494 () Bool)

(assert (=> b!15544 (= e!8495 e!8494)))

(declare-fun res!6338 () Bool)

(assert (=> b!15544 (=> (not res!6338) (not e!8494))))

(assert (=> b!15544 (= res!6338 (>= (- (level!9 (left!654 xs!637)) (level!9 (right!657 xs!637))) (- 1)))))

(declare-fun b!15547 () Bool)

(assert (=> b!15547 (= e!8494 (balanced!10 (right!657 xs!637)))))

(declare-fun b!15545 () Bool)

(declare-fun res!6341 () Bool)

(assert (=> b!15545 (=> (not res!6341) (not e!8494))))

(assert (=> b!15545 (= res!6341 (<= (- (level!9 (left!654 xs!637)) (level!9 (right!657 xs!637))) 1))))

(declare-fun d!11515 () Bool)

(declare-fun res!6340 () Bool)

(assert (=> d!11515 (=> res!6340 e!8495)))

(assert (=> d!11515 (= res!6340 (not (is-CC!9 xs!637)))))

(assert (=> d!11515 (= (balanced!10 xs!637) e!8495)))

(declare-fun b!15546 () Bool)

(declare-fun res!6339 () Bool)

(assert (=> b!15546 (=> (not res!6339) (not e!8494))))

(assert (=> b!15546 (= res!6339 (balanced!10 (left!654 xs!637)))))

(assert (= (and d!11515 (not res!6340)) b!15544))

(assert (= (and b!15544 res!6338) b!15545))

(assert (= (and b!15545 res!6341) b!15546))

(assert (= (and b!15546 res!6339) b!15547))

(assert (=> b!15544 m!18993))

(assert (=> b!15544 m!18991))

(declare-fun m!19003 () Bool)

(assert (=> b!15547 m!19003))

(assert (=> b!15545 m!18993))

(assert (=> b!15545 m!18991))

(declare-fun m!19005 () Bool)

(assert (=> b!15546 m!19005))

(assert (=> b!15489 d!11515))

(declare-fun b!15554 () Bool)

(declare-fun e!8498 () Bool)

(declare-fun tp!3761 () Bool)

(declare-fun tp!3762 () Bool)

(assert (=> b!15554 (= e!8498 (and tp!3761 tp!3762))))

(declare-fun b!15555 () Bool)

(assert (=> b!15555 (= e!8498 tp_is_empty!55)))

(assert (=> b!15482 (= tp!3756 e!8498)))

(assert (= (and b!15482 (is-CC!9 (left!654 (_1!52 res!5659)))) b!15554))

(assert (= (and b!15482 (is-Single!9 (left!654 (_1!52 res!5659)))) b!15555))

(declare-fun b!15556 () Bool)

(declare-fun e!8499 () Bool)

(declare-fun tp!3763 () Bool)

(declare-fun tp!3764 () Bool)

(assert (=> b!15556 (= e!8499 (and tp!3763 tp!3764))))

(declare-fun b!15557 () Bool)

(assert (=> b!15557 (= e!8499 tp_is_empty!55)))

(assert (=> b!15482 (= tp!3754 e!8499)))

(assert (= (and b!15482 (is-CC!9 (right!657 (_1!52 res!5659)))) b!15556))

(assert (= (and b!15482 (is-Single!9 (right!657 (_1!52 res!5659)))) b!15557))

(declare-fun b!15558 () Bool)

(declare-fun e!8500 () Bool)

(declare-fun tp!3765 () Bool)

(declare-fun tp!3766 () Bool)

(assert (=> b!15558 (= e!8500 (and tp!3765 tp!3766))))

(declare-fun b!15559 () Bool)

(assert (=> b!15559 (= e!8500 tp_is_empty!55)))

(assert (=> b!15486 (= tp!3755 e!8500)))

(assert (= (and b!15486 (is-CC!9 (left!654 (_2!52 res!5659)))) b!15558))

(assert (= (and b!15486 (is-Single!9 (left!654 (_2!52 res!5659)))) b!15559))

(declare-fun b!15560 () Bool)

(declare-fun e!8501 () Bool)

(declare-fun tp!3767 () Bool)

(declare-fun tp!3768 () Bool)

(assert (=> b!15560 (= e!8501 (and tp!3767 tp!3768))))

(declare-fun b!15561 () Bool)

(assert (=> b!15561 (= e!8501 tp_is_empty!55)))

(assert (=> b!15486 (= tp!3751 e!8501)))

(assert (= (and b!15486 (is-CC!9 (right!657 (_2!52 res!5659)))) b!15560))

(assert (= (and b!15486 (is-Single!9 (right!657 (_2!52 res!5659)))) b!15561))

(declare-fun b!15562 () Bool)

(declare-fun e!8502 () Bool)

(declare-fun tp!3769 () Bool)

(declare-fun tp!3770 () Bool)

(assert (=> b!15562 (= e!8502 (and tp!3769 tp!3770))))

(declare-fun b!15563 () Bool)

(assert (=> b!15563 (= e!8502 tp_is_empty!55)))

(assert (=> b!15488 (= tp!3752 e!8502)))

(assert (= (and b!15488 (is-CC!9 (left!654 xs!637))) b!15562))

(assert (= (and b!15488 (is-Single!9 (left!654 xs!637))) b!15563))

(declare-fun b!15564 () Bool)

(declare-fun e!8503 () Bool)

(declare-fun tp!3771 () Bool)

(declare-fun tp!3772 () Bool)

(assert (=> b!15564 (= e!8503 (and tp!3771 tp!3772))))

(declare-fun b!15565 () Bool)

(assert (=> b!15565 (= e!8503 tp_is_empty!55)))

(assert (=> b!15488 (= tp!3753 e!8503)))

(assert (= (and b!15488 (is-CC!9 (right!657 xs!637))) b!15564))

(assert (= (and b!15488 (is-Single!9 (right!657 xs!637))) b!15565))

(push 1)

(assert (not b!15558))

(assert (not b!15518))

(assert tp_is_empty!55)

(assert (not b!15546))

(assert (not b!15539))

(assert (not b!15544))

(assert (not b!15537))

(assert (not b!15503))

(assert (not b!15522))

(assert (not b!15526))

(assert (not b!15554))

(assert (not b!15516))

(assert (not b!15521))

(assert (not b!15541))

(assert (not b!15517))

(assert (not b!15545))

(assert (not b!15505))

(assert (not b!15562))

(assert (not b!15515))

(assert (not b!15535))

(assert (not b!15543))

(assert (not b!15556))

(assert (not b!15560))

(assert (not b!15525))

(assert (not b!15547))

(assert (not b!15494))

(assert (not b!15504))

(assert (not b!15520))

(assert (not b!15528))

(assert (not b!15506))

(assert (not b!15564))

(assert (not d!11503))

(assert (not b!15527))

(assert (not b!15519))

(assert (not b!15542))

(assert (not b!15540))

(assert (not b!15529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!15567 () Bool)

(declare-fun e!8504 () Int)

(declare-fun lt!2201 () Int)

(declare-fun lt!2200 () Int)

(assert (=> b!15567 (= e!8504 (+ 1 (ite (>= lt!2201 lt!2200) lt!2201 lt!2200)))))

(assert (=> b!15567 (= lt!2200 (level!9 (right!657 (left!654 (_2!52 res!5659)))))))

(assert (=> b!15567 (= lt!2201 (level!9 (left!654 (left!654 (_2!52 res!5659)))))))

(declare-fun d!11517 () Bool)

(declare-fun lt!2202 () Int)

(assert (=> d!11517 (>= lt!2202 0)))

(assert (=> d!11517 (= lt!2202 e!8504)))

(declare-fun c!4100 () Bool)

(assert (=> d!11517 (= c!4100 (or (is-Empty!20 (left!654 (_2!52 res!5659))) (is-Single!9 (left!654 (_2!52 res!5659)))))))

(assert (=> d!11517 (= (level!9 (left!654 (_2!52 res!5659))) lt!2202)))

(declare-fun b!15566 () Bool)

(assert (=> b!15566 (= e!8504 0)))

(assert (= (and d!11517 c!4100) b!15566))

(assert (= (and d!11517 (not c!4100)) b!15567))

(declare-fun m!19007 () Bool)

(assert (=> b!15567 m!19007))

(declare-fun m!19009 () Bool)

(assert (=> b!15567 m!19009))

(assert (=> b!15515 d!11517))

(declare-fun b!15569 () Bool)

(declare-fun e!8505 () Int)

(declare-fun lt!2204 () Int)

(declare-fun lt!2203 () Int)

(assert (=> b!15569 (= e!8505 (+ 1 (ite (>= lt!2204 lt!2203) lt!2204 lt!2203)))))

(assert (=> b!15569 (= lt!2203 (level!9 (right!657 (right!657 (_2!52 res!5659)))))))

(assert (=> b!15569 (= lt!2204 (level!9 (left!654 (right!657 (_2!52 res!5659)))))))

(declare-fun d!11519 () Bool)

(declare-fun lt!2205 () Int)

(assert (=> d!11519 (>= lt!2205 0)))

(assert (=> d!11519 (= lt!2205 e!8505)))

(declare-fun c!4101 () Bool)

(assert (=> d!11519 (= c!4101 (or (is-Empty!20 (right!657 (_2!52 res!5659))) (is-Single!9 (right!657 (_2!52 res!5659)))))))

(assert (=> d!11519 (= (level!9 (right!657 (_2!52 res!5659))) lt!2205)))

(declare-fun b!15568 () Bool)

(assert (=> b!15568 (= e!8505 0)))

(assert (= (and d!11519 c!4101) b!15568))

(assert (= (and d!11519 (not c!4101)) b!15569))

(declare-fun m!19011 () Bool)

(assert (=> b!15569 m!19011))

(declare-fun m!19013 () Bool)

(assert (=> b!15569 m!19013))

(assert (=> b!15515 d!11519))

(declare-fun b!15570 () Bool)

(declare-fun e!8506 () Bool)

(declare-fun e!8507 () Bool)

(assert (=> b!15570 (= e!8506 e!8507)))

(declare-fun res!6345 () Bool)

(assert (=> b!15570 (=> (not res!6345) (not e!8507))))

(assert (=> b!15570 (= res!6345 (not (isEmpty!274 (left!654 (right!657 xs!637)))))))

(declare-fun d!11521 () Bool)

(declare-fun res!6342 () Bool)

(assert (=> d!11521 (=> res!6342 e!8506)))

(assert (=> d!11521 (= res!6342 (not (is-CC!9 (right!657 xs!637))))))

(assert (=> d!11521 (= (concInv!9 (right!657 xs!637)) e!8506)))

(declare-fun b!15572 () Bool)

(declare-fun res!6344 () Bool)

(assert (=> b!15572 (=> (not res!6344) (not e!8507))))

(assert (=> b!15572 (= res!6344 (concInv!9 (left!654 (right!657 xs!637))))))

(declare-fun b!15571 () Bool)

(declare-fun res!6343 () Bool)

(assert (=> b!15571 (=> (not res!6343) (not e!8507))))

(assert (=> b!15571 (= res!6343 (not (isEmpty!274 (right!657 (right!657 xs!637)))))))

(declare-fun b!15573 () Bool)

(assert (=> b!15573 (= e!8507 (concInv!9 (right!657 (right!657 xs!637))))))

(assert (= (and d!11521 (not res!6342)) b!15570))

(assert (= (and b!15570 res!6345) b!15571))

(assert (= (and b!15571 res!6343) b!15572))

(assert (= (and b!15572 res!6344) b!15573))

(declare-fun m!19015 () Bool)

(assert (=> b!15570 m!19015))

(declare-fun m!19017 () Bool)

(assert (=> b!15572 m!19017))

(declare-fun m!19019 () Bool)

(assert (=> b!15571 m!19019))

(declare-fun m!19021 () Bool)

(assert (=> b!15573 m!19021))

(assert (=> b!15529 d!11521))

(declare-fun b!15575 () Bool)

(declare-fun e!8508 () Int)

(declare-fun lt!2207 () Int)

(declare-fun lt!2206 () Int)

(assert (=> b!15575 (= e!8508 (+ 1 (ite (>= lt!2207 lt!2206) lt!2207 lt!2206)))))

(assert (=> b!15575 (= lt!2206 (level!9 (right!657 (left!654 (_1!52 res!5659)))))))

(assert (=> b!15575 (= lt!2207 (level!9 (left!654 (left!654 (_1!52 res!5659)))))))

(declare-fun d!11523 () Bool)

(declare-fun lt!2208 () Int)

(assert (=> d!11523 (>= lt!2208 0)))

(assert (=> d!11523 (= lt!2208 e!8508)))

(declare-fun c!4102 () Bool)

(assert (=> d!11523 (= c!4102 (or (is-Empty!20 (left!654 (_1!52 res!5659))) (is-Single!9 (left!654 (_1!52 res!5659)))))))

(assert (=> d!11523 (= (level!9 (left!654 (_1!52 res!5659))) lt!2208)))

(declare-fun b!15574 () Bool)

(assert (=> b!15574 (= e!8508 0)))

(assert (= (and d!11523 c!4102) b!15574))

(assert (= (and d!11523 (not c!4102)) b!15575))

(declare-fun m!19023 () Bool)

(assert (=> b!15575 m!19023))

(declare-fun m!19025 () Bool)

(assert (=> b!15575 m!19025))

(assert (=> b!15540 d!11523))

(declare-fun b!15577 () Bool)

(declare-fun e!8509 () Int)

(declare-fun lt!2210 () Int)

(declare-fun lt!2209 () Int)

(assert (=> b!15577 (= e!8509 (+ 1 (ite (>= lt!2210 lt!2209) lt!2210 lt!2209)))))

(assert (=> b!15577 (= lt!2209 (level!9 (right!657 (right!657 (_1!52 res!5659)))))))

(assert (=> b!15577 (= lt!2210 (level!9 (left!654 (right!657 (_1!52 res!5659)))))))

(declare-fun d!11525 () Bool)

(declare-fun lt!2211 () Int)

(assert (=> d!11525 (>= lt!2211 0)))

(assert (=> d!11525 (= lt!2211 e!8509)))

(declare-fun c!4103 () Bool)

(assert (=> d!11525 (= c!4103 (or (is-Empty!20 (right!657 (_1!52 res!5659))) (is-Single!9 (right!657 (_1!52 res!5659)))))))

(assert (=> d!11525 (= (level!9 (right!657 (_1!52 res!5659))) lt!2211)))

(declare-fun b!15576 () Bool)

(assert (=> b!15576 (= e!8509 0)))

(assert (= (and d!11525 c!4103) b!15576))

(assert (= (and d!11525 (not c!4103)) b!15577))

(declare-fun m!19027 () Bool)

(assert (=> b!15577 m!19027))

(declare-fun m!19029 () Bool)

(assert (=> b!15577 m!19029))

(assert (=> b!15540 d!11525))

(declare-fun b!15578 () Bool)

(declare-fun e!8510 () Bool)

(declare-fun e!8511 () Bool)

(assert (=> b!15578 (= e!8510 e!8511)))

(declare-fun res!6349 () Bool)

(assert (=> b!15578 (=> (not res!6349) (not e!8511))))

(assert (=> b!15578 (= res!6349 (not (isEmpty!274 (left!654 (right!657 (_2!52 res!5659))))))))

(declare-fun d!11527 () Bool)

(declare-fun res!6346 () Bool)

(assert (=> d!11527 (=> res!6346 e!8510)))

(assert (=> d!11527 (= res!6346 (not (is-CC!9 (right!657 (_2!52 res!5659)))))))

(assert (=> d!11527 (= (concInv!9 (right!657 (_2!52 res!5659))) e!8510)))

(declare-fun b!15580 () Bool)

(declare-fun res!6348 () Bool)

(assert (=> b!15580 (=> (not res!6348) (not e!8511))))

(assert (=> b!15580 (= res!6348 (concInv!9 (left!654 (right!657 (_2!52 res!5659)))))))

(declare-fun b!15579 () Bool)

(declare-fun res!6347 () Bool)

(assert (=> b!15579 (=> (not res!6347) (not e!8511))))

(assert (=> b!15579 (= res!6347 (not (isEmpty!274 (right!657 (right!657 (_2!52 res!5659))))))))

(declare-fun b!15581 () Bool)

(assert (=> b!15581 (= e!8511 (concInv!9 (right!657 (right!657 (_2!52 res!5659)))))))

(assert (= (and d!11527 (not res!6346)) b!15578))

(assert (= (and b!15578 res!6349) b!15579))

(assert (= (and b!15579 res!6347) b!15580))

(assert (= (and b!15580 res!6348) b!15581))

(declare-fun m!19031 () Bool)

(assert (=> b!15578 m!19031))

(declare-fun m!19033 () Bool)

(assert (=> b!15580 m!19033))

(declare-fun m!19035 () Bool)

(assert (=> b!15579 m!19035))

(declare-fun m!19037 () Bool)

(assert (=> b!15581 m!19037))

(assert (=> b!15522 d!11527))

(declare-fun b!15583 () Bool)

(declare-fun e!8512 () Int)

(declare-fun lt!2213 () Int)

(declare-fun lt!2212 () Int)

(assert (=> b!15583 (= e!8512 (+ 1 (ite (>= lt!2213 lt!2212) lt!2213 lt!2212)))))

(assert (=> b!15583 (= lt!2212 (level!9 (right!657 (left!654 xs!637))))))

(assert (=> b!15583 (= lt!2213 (level!9 (left!654 (left!654 xs!637))))))

(declare-fun d!11529 () Bool)

(declare-fun lt!2214 () Int)

(assert (=> d!11529 (>= lt!2214 0)))

(assert (=> d!11529 (= lt!2214 e!8512)))

(declare-fun c!4104 () Bool)

(assert (=> d!11529 (= c!4104 (or (is-Empty!20 (left!654 xs!637)) (is-Single!9 (left!654 xs!637))))))

(assert (=> d!11529 (= (level!9 (left!654 xs!637)) lt!2214)))

(declare-fun b!15582 () Bool)

(assert (=> b!15582 (= e!8512 0)))

(assert (= (and d!11529 c!4104) b!15582))

(assert (= (and d!11529 (not c!4104)) b!15583))

(declare-fun m!19039 () Bool)

(assert (=> b!15583 m!19039))

(declare-fun m!19041 () Bool)

(assert (=> b!15583 m!19041))

(assert (=> b!15545 d!11529))

(declare-fun b!15585 () Bool)

(declare-fun e!8513 () Int)

(declare-fun lt!2216 () Int)

(declare-fun lt!2215 () Int)

(assert (=> b!15585 (= e!8513 (+ 1 (ite (>= lt!2216 lt!2215) lt!2216 lt!2215)))))

(assert (=> b!15585 (= lt!2215 (level!9 (right!657 (right!657 xs!637))))))

(assert (=> b!15585 (= lt!2216 (level!9 (left!654 (right!657 xs!637))))))

(declare-fun d!11531 () Bool)

(declare-fun lt!2217 () Int)

(assert (=> d!11531 (>= lt!2217 0)))

(assert (=> d!11531 (= lt!2217 e!8513)))

(declare-fun c!4105 () Bool)

(assert (=> d!11531 (= c!4105 (or (is-Empty!20 (right!657 xs!637)) (is-Single!9 (right!657 xs!637))))))

(assert (=> d!11531 (= (level!9 (right!657 xs!637)) lt!2217)))

(declare-fun b!15584 () Bool)

(assert (=> b!15584 (= e!8513 0)))

(assert (= (and d!11531 c!4105) b!15584))

(assert (= (and d!11531 (not c!4105)) b!15585))

(declare-fun m!19043 () Bool)

(assert (=> b!15585 m!19043))

(declare-fun m!19045 () Bool)

(assert (=> b!15585 m!19045))

(assert (=> b!15545 d!11531))

(declare-fun b!15586 () Bool)

(declare-fun e!8515 () Bool)

(declare-fun e!8514 () Bool)

(assert (=> b!15586 (= e!8515 e!8514)))

(declare-fun res!6350 () Bool)

(assert (=> b!15586 (=> (not res!6350) (not e!8514))))

(assert (=> b!15586 (= res!6350 (>= (- (level!9 (left!654 (right!657 xs!637))) (level!9 (right!657 (right!657 xs!637)))) (- 1)))))

(declare-fun b!15589 () Bool)

(assert (=> b!15589 (= e!8514 (balanced!10 (right!657 (right!657 xs!637))))))

(declare-fun b!15587 () Bool)

(declare-fun res!6353 () Bool)

(assert (=> b!15587 (=> (not res!6353) (not e!8514))))

(assert (=> b!15587 (= res!6353 (<= (- (level!9 (left!654 (right!657 xs!637))) (level!9 (right!657 (right!657 xs!637)))) 1))))

(declare-fun d!11533 () Bool)

(declare-fun res!6352 () Bool)

(assert (=> d!11533 (=> res!6352 e!8515)))

(assert (=> d!11533 (= res!6352 (not (is-CC!9 (right!657 xs!637))))))

(assert (=> d!11533 (= (balanced!10 (right!657 xs!637)) e!8515)))

(declare-fun b!15588 () Bool)

(declare-fun res!6351 () Bool)

(assert (=> b!15588 (=> (not res!6351) (not e!8514))))

(assert (=> b!15588 (= res!6351 (balanced!10 (left!654 (right!657 xs!637))))))

(assert (= (and d!11533 (not res!6352)) b!15586))

(assert (= (and b!15586 res!6350) b!15587))

(assert (= (and b!15587 res!6353) b!15588))

(assert (= (and b!15588 res!6351) b!15589))

(assert (=> b!15586 m!19045))

(assert (=> b!15586 m!19043))

(declare-fun m!19047 () Bool)

(assert (=> b!15589 m!19047))

(assert (=> b!15587 m!19045))

(assert (=> b!15587 m!19043))

(declare-fun m!19049 () Bool)

(assert (=> b!15588 m!19049))

(assert (=> b!15547 d!11533))

(declare-fun b!15590 () Bool)

(declare-fun e!8517 () Bool)

(declare-fun e!8516 () Bool)

(assert (=> b!15590 (= e!8517 e!8516)))

(declare-fun res!6354 () Bool)

(assert (=> b!15590 (=> (not res!6354) (not e!8516))))

(assert (=> b!15590 (= res!6354 (>= (- (level!9 (left!654 (left!654 (_2!52 res!5659)))) (level!9 (right!657 (left!654 (_2!52 res!5659))))) (- 1)))))

(declare-fun b!15593 () Bool)

(assert (=> b!15593 (= e!8516 (balanced!10 (right!657 (left!654 (_2!52 res!5659)))))))

(declare-fun b!15591 () Bool)

(declare-fun res!6357 () Bool)

(assert (=> b!15591 (=> (not res!6357) (not e!8516))))

(assert (=> b!15591 (= res!6357 (<= (- (level!9 (left!654 (left!654 (_2!52 res!5659)))) (level!9 (right!657 (left!654 (_2!52 res!5659))))) 1))))

(declare-fun d!11535 () Bool)

(declare-fun res!6356 () Bool)

(assert (=> d!11535 (=> res!6356 e!8517)))

(assert (=> d!11535 (= res!6356 (not (is-CC!9 (left!654 (_2!52 res!5659)))))))

(assert (=> d!11535 (= (balanced!10 (left!654 (_2!52 res!5659))) e!8517)))

(declare-fun b!15592 () Bool)

(declare-fun res!6355 () Bool)

(assert (=> b!15592 (=> (not res!6355) (not e!8516))))

(assert (=> b!15592 (= res!6355 (balanced!10 (left!654 (left!654 (_2!52 res!5659)))))))

(assert (= (and d!11535 (not res!6356)) b!15590))

(assert (= (and b!15590 res!6354) b!15591))

(assert (= (and b!15591 res!6357) b!15592))

(assert (= (and b!15592 res!6355) b!15593))

(assert (=> b!15590 m!19009))

(assert (=> b!15590 m!19007))

(declare-fun m!19051 () Bool)

(assert (=> b!15593 m!19051))

(assert (=> b!15591 m!19009))

(assert (=> b!15591 m!19007))

(declare-fun m!19053 () Bool)

(assert (=> b!15592 m!19053))

(assert (=> b!15517 d!11535))

(declare-fun b!15594 () Bool)

(declare-fun e!8518 () Bool)

(declare-fun e!8519 () Bool)

(assert (=> b!15594 (= e!8518 e!8519)))

(declare-fun res!6361 () Bool)

(assert (=> b!15594 (=> (not res!6361) (not e!8519))))

(assert (=> b!15594 (= res!6361 (not (isEmpty!274 (left!654 (right!657 (_1!52 res!5659))))))))

(declare-fun d!11537 () Bool)

(declare-fun res!6358 () Bool)

(assert (=> d!11537 (=> res!6358 e!8518)))

(assert (=> d!11537 (= res!6358 (not (is-CC!9 (right!657 (_1!52 res!5659)))))))

(assert (=> d!11537 (= (concInv!9 (right!657 (_1!52 res!5659))) e!8518)))

(declare-fun b!15596 () Bool)

(declare-fun res!6360 () Bool)

(assert (=> b!15596 (=> (not res!6360) (not e!8519))))

(assert (=> b!15596 (= res!6360 (concInv!9 (left!654 (right!657 (_1!52 res!5659)))))))

(declare-fun b!15595 () Bool)

(declare-fun res!6359 () Bool)

(assert (=> b!15595 (=> (not res!6359) (not e!8519))))

(assert (=> b!15595 (= res!6359 (not (isEmpty!274 (right!657 (right!657 (_1!52 res!5659))))))))

(declare-fun b!15597 () Bool)

(assert (=> b!15597 (= e!8519 (concInv!9 (right!657 (right!657 (_1!52 res!5659)))))))

(assert (= (and d!11537 (not res!6358)) b!15594))

(assert (= (and b!15594 res!6361) b!15595))

(assert (= (and b!15595 res!6359) b!15596))

(assert (= (and b!15596 res!6360) b!15597))

(declare-fun m!19055 () Bool)

(assert (=> b!15594 m!19055))

(declare-fun m!19057 () Bool)

(assert (=> b!15596 m!19057))

(declare-fun m!19059 () Bool)

(assert (=> b!15595 m!19059))

(declare-fun m!19061 () Bool)

(assert (=> b!15597 m!19061))

(assert (=> b!15506 d!11537))

(declare-fun d!11539 () Bool)

(assert (=> d!11539 (= (isEmpty!274 (right!657 xs!637)) (= (right!657 xs!637) Empty!20))))

(assert (=> b!15527 d!11539))

(declare-fun b!15598 () Bool)

(declare-fun e!8521 () Bool)

(declare-fun e!8520 () Bool)

(assert (=> b!15598 (= e!8521 e!8520)))

(declare-fun res!6362 () Bool)

(assert (=> b!15598 (=> (not res!6362) (not e!8520))))

(assert (=> b!15598 (= res!6362 (>= (- (level!9 (left!654 (right!657 (_2!52 res!5659)))) (level!9 (right!657 (right!657 (_2!52 res!5659))))) (- 1)))))

(declare-fun b!15601 () Bool)

(assert (=> b!15601 (= e!8520 (balanced!10 (right!657 (right!657 (_2!52 res!5659)))))))

(declare-fun b!15599 () Bool)

(declare-fun res!6365 () Bool)

(assert (=> b!15599 (=> (not res!6365) (not e!8520))))

(assert (=> b!15599 (= res!6365 (<= (- (level!9 (left!654 (right!657 (_2!52 res!5659)))) (level!9 (right!657 (right!657 (_2!52 res!5659))))) 1))))

(declare-fun d!11541 () Bool)

(declare-fun res!6364 () Bool)

(assert (=> d!11541 (=> res!6364 e!8521)))

(assert (=> d!11541 (= res!6364 (not (is-CC!9 (right!657 (_2!52 res!5659)))))))

(assert (=> d!11541 (= (balanced!10 (right!657 (_2!52 res!5659))) e!8521)))

(declare-fun b!15600 () Bool)

(declare-fun res!6363 () Bool)

(assert (=> b!15600 (=> (not res!6363) (not e!8520))))

(assert (=> b!15600 (= res!6363 (balanced!10 (left!654 (right!657 (_2!52 res!5659)))))))

(assert (= (and d!11541 (not res!6364)) b!15598))

(assert (= (and b!15598 res!6362) b!15599))

(assert (= (and b!15599 res!6365) b!15600))

(assert (= (and b!15600 res!6363) b!15601))

(assert (=> b!15598 m!19013))

(assert (=> b!15598 m!19011))

(declare-fun m!19063 () Bool)

(assert (=> b!15601 m!19063))

(assert (=> b!15599 m!19013))

(assert (=> b!15599 m!19011))

(declare-fun m!19065 () Bool)

(assert (=> b!15600 m!19065))

(assert (=> b!15518 d!11541))

(declare-fun d!11543 () Bool)

(assert (=> d!11543 (= (isEmpty!274 (left!654 (_1!52 res!5659))) (= (left!654 (_1!52 res!5659)) Empty!20))))

(assert (=> b!15503 d!11543))

(declare-fun b!15613 () Bool)

(declare-fun e!8527 () List!323)

(declare-fun ++!8 (List!323 List!323) List!323)

(assert (=> b!15613 (= e!8527 (++!8 (toList!83 (left!654 (_1!52 res!5659))) (toList!83 (right!657 (_1!52 res!5659)))))))

(declare-fun b!15610 () Bool)

(declare-fun e!8526 () List!323)

(assert (=> b!15610 (= e!8526 Nil!318)))

(declare-fun b!15611 () Bool)

(assert (=> b!15611 (= e!8526 e!8527)))

(declare-fun c!4111 () Bool)

(assert (=> b!15611 (= c!4111 (is-Single!9 (_1!52 res!5659)))))

(declare-fun b!15612 () Bool)

(assert (=> b!15612 (= e!8527 (Cons!317 (x!8704 (_1!52 res!5659)) Nil!318))))

(declare-fun d!11545 () Bool)

(declare-fun lt!2220 () List!323)

(declare-fun size!190 (List!323) Int)

(declare-fun size!191 (Conc!10) Int)

(assert (=> d!11545 (= (size!190 lt!2220) (size!191 (_1!52 res!5659)))))

(assert (=> d!11545 (= lt!2220 e!8526)))

(declare-fun c!4110 () Bool)

(assert (=> d!11545 (= c!4110 (is-Empty!20 (_1!52 res!5659)))))

(assert (=> d!11545 (= (toList!83 (_1!52 res!5659)) lt!2220)))

(assert (= (and b!15611 c!4111) b!15612))

(assert (= (and b!15611 (not c!4111)) b!15613))

(assert (= (and d!11545 c!4110) b!15610))

(assert (= (and d!11545 (not c!4110)) b!15611))

(declare-fun m!19067 () Bool)

(assert (=> b!15613 m!19067))

(declare-fun m!19069 () Bool)

(assert (=> b!15613 m!19069))

(assert (=> b!15613 m!19067))

(assert (=> b!15613 m!19069))

(declare-fun m!19071 () Bool)

(assert (=> b!15613 m!19071))

(declare-fun m!19073 () Bool)

(assert (=> d!11545 m!19073))

(declare-fun m!19075 () Bool)

(assert (=> d!11545 m!19075))

(assert (=> d!11503 d!11545))

(declare-fun b!15628 () Bool)

(declare-fun e!8538 () Bool)

(declare-fun lt!2223 () List!323)

(declare-fun e!8537 () Int)

(assert (=> b!15628 (= e!8538 (= (size!190 lt!2223) e!8537))))

(declare-fun c!4120 () Bool)

(assert (=> b!15628 (= c!4120 (<= n!315 0))))

(declare-fun b!15629 () Bool)

(declare-fun e!8539 () Int)

(assert (=> b!15629 (= e!8539 (size!190 (toList!83 xs!637)))))

(declare-fun b!15630 () Bool)

(assert (=> b!15630 (= e!8537 0)))

(declare-fun b!15631 () Bool)

(assert (=> b!15631 (= e!8539 n!315)))

(declare-fun b!15632 () Bool)

(declare-fun e!8536 () List!323)

(assert (=> b!15632 (= e!8536 Nil!318)))

(declare-fun d!11547 () Bool)

(assert (=> d!11547 e!8538))

(declare-fun res!6370 () Bool)

(assert (=> d!11547 (=> (not res!6370) (not e!8538))))

(declare-fun content!53 (List!323) (Set T!1711))

(assert (=> d!11547 (= res!6370 (subset (content!53 lt!2223) (content!53 (toList!83 xs!637))))))

(assert (=> d!11547 (= lt!2223 e!8536)))

(declare-fun c!4118 () Bool)

(assert (=> d!11547 (= c!4118 (or (is-Nil!318 (toList!83 xs!637)) (<= n!315 0)))))

(assert (=> d!11547 (= (take!8 (toList!83 xs!637) n!315) lt!2223)))

(declare-fun b!15633 () Bool)

(assert (=> b!15633 (= e!8536 (Cons!317 (h!231 (toList!83 xs!637)) (take!8 (t!4283 (toList!83 xs!637)) (- n!315 1))))))

(declare-fun b!15634 () Bool)

(assert (=> b!15634 (= e!8537 e!8539)))

(declare-fun c!4119 () Bool)

(assert (=> b!15634 (= c!4119 (>= n!315 (size!190 (toList!83 xs!637))))))

(assert (= (and d!11547 c!4118) b!15632))

(assert (= (and d!11547 (not c!4118)) b!15633))

(assert (= (and d!11547 res!6370) b!15628))

(assert (= (and b!15634 c!4119) b!15629))

(assert (= (and b!15634 (not c!4119)) b!15631))

(assert (= (and b!15628 c!4120) b!15630))

(assert (= (and b!15628 (not c!4120)) b!15634))

(assert (=> b!15634 m!18975))

(declare-fun m!19077 () Bool)

(assert (=> b!15634 m!19077))

(declare-fun m!19079 () Bool)

(assert (=> d!11547 m!19079))

(assert (=> d!11547 m!18975))

(declare-fun m!19081 () Bool)

(assert (=> d!11547 m!19081))

(assert (=> b!15629 m!18975))

(assert (=> b!15629 m!19077))

(declare-fun m!19083 () Bool)

(assert (=> b!15628 m!19083))

(declare-fun m!19085 () Bool)

(assert (=> b!15633 m!19085))

(assert (=> d!11503 d!11547))

(declare-fun b!15638 () Bool)

(declare-fun e!8541 () List!323)

(assert (=> b!15638 (= e!8541 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))))))

(declare-fun b!15635 () Bool)

(declare-fun e!8540 () List!323)

(assert (=> b!15635 (= e!8540 Nil!318)))

(declare-fun b!15636 () Bool)

(assert (=> b!15636 (= e!8540 e!8541)))

(declare-fun c!4122 () Bool)

(assert (=> b!15636 (= c!4122 (is-Single!9 xs!637))))

(declare-fun b!15637 () Bool)

(assert (=> b!15637 (= e!8541 (Cons!317 (x!8704 xs!637) Nil!318))))

(declare-fun d!11549 () Bool)

(declare-fun lt!2224 () List!323)

(assert (=> d!11549 (= (size!190 lt!2224) (size!191 xs!637))))

(assert (=> d!11549 (= lt!2224 e!8540)))

(declare-fun c!4121 () Bool)

(assert (=> d!11549 (= c!4121 (is-Empty!20 xs!637))))

(assert (=> d!11549 (= (toList!83 xs!637) lt!2224)))

(assert (= (and b!15636 c!4122) b!15637))

(assert (= (and b!15636 (not c!4122)) b!15638))

(assert (= (and d!11549 c!4121) b!15635))

(assert (= (and d!11549 (not c!4121)) b!15636))

(assert (=> b!15638 m!18943))

(assert (=> b!15638 m!18945))

(assert (=> b!15638 m!18943))

(assert (=> b!15638 m!18945))

(declare-fun m!19087 () Bool)

(assert (=> b!15638 m!19087))

(declare-fun m!19089 () Bool)

(assert (=> d!11549 m!19089))

(declare-fun m!19091 () Bool)

(assert (=> d!11549 m!19091))

(assert (=> d!11503 d!11549))

(assert (=> b!15544 d!11529))

(assert (=> b!15544 d!11531))

(declare-fun d!11551 () Bool)

(assert (=> d!11551 (= (isEmpty!274 (right!657 (_2!52 res!5659))) (= (right!657 (_2!52 res!5659)) Empty!20))))

(assert (=> b!15520 d!11551))

(declare-fun d!11553 () Bool)

(assert (=> d!11553 (= (isEmpty!274 (left!654 xs!637)) (= (left!654 xs!637) Empty!20))))

(assert (=> b!15526 d!11553))

(declare-fun d!11555 () Bool)

(assert (=> d!11555 (= (isEmpty!274 (right!657 (_1!52 res!5659))) (= (right!657 (_1!52 res!5659)) Empty!20))))

(assert (=> b!15504 d!11555))

(declare-fun b!15639 () Bool)

(declare-fun e!8542 () Bool)

(declare-fun e!8543 () Bool)

(assert (=> b!15639 (= e!8542 e!8543)))

(declare-fun res!6374 () Bool)

(assert (=> b!15639 (=> (not res!6374) (not e!8543))))

(assert (=> b!15639 (= res!6374 (not (isEmpty!274 (left!654 (left!654 (_2!52 res!5659))))))))

(declare-fun d!11557 () Bool)

(declare-fun res!6371 () Bool)

(assert (=> d!11557 (=> res!6371 e!8542)))

(assert (=> d!11557 (= res!6371 (not (is-CC!9 (left!654 (_2!52 res!5659)))))))

(assert (=> d!11557 (= (concInv!9 (left!654 (_2!52 res!5659))) e!8542)))

(declare-fun b!15641 () Bool)

(declare-fun res!6373 () Bool)

(assert (=> b!15641 (=> (not res!6373) (not e!8543))))

(assert (=> b!15641 (= res!6373 (concInv!9 (left!654 (left!654 (_2!52 res!5659)))))))

(declare-fun b!15640 () Bool)

(declare-fun res!6372 () Bool)

(assert (=> b!15640 (=> (not res!6372) (not e!8543))))

(assert (=> b!15640 (= res!6372 (not (isEmpty!274 (right!657 (left!654 (_2!52 res!5659))))))))

(declare-fun b!15642 () Bool)

(assert (=> b!15642 (= e!8543 (concInv!9 (right!657 (left!654 (_2!52 res!5659)))))))

(assert (= (and d!11557 (not res!6371)) b!15639))

(assert (= (and b!15639 res!6374) b!15640))

(assert (= (and b!15640 res!6372) b!15641))

(assert (= (and b!15641 res!6373) b!15642))

(declare-fun m!19093 () Bool)

(assert (=> b!15639 m!19093))

(declare-fun m!19095 () Bool)

(assert (=> b!15641 m!19095))

(declare-fun m!19097 () Bool)

(assert (=> b!15640 m!19097))

(declare-fun m!19099 () Bool)

(assert (=> b!15642 m!19099))

(assert (=> b!15521 d!11557))

(assert (=> b!15535 d!11531))

(assert (=> b!15535 d!11529))

(declare-fun b!15646 () Bool)

(declare-fun e!8545 () List!323)

(assert (=> b!15646 (= e!8545 (++!8 (toList!83 (left!654 (_2!52 res!5659))) (toList!83 (right!657 (_2!52 res!5659)))))))

(declare-fun b!15643 () Bool)

(declare-fun e!8544 () List!323)

(assert (=> b!15643 (= e!8544 Nil!318)))

(declare-fun b!15644 () Bool)

(assert (=> b!15644 (= e!8544 e!8545)))

(declare-fun c!4124 () Bool)

(assert (=> b!15644 (= c!4124 (is-Single!9 (_2!52 res!5659)))))

(declare-fun b!15645 () Bool)

(assert (=> b!15645 (= e!8545 (Cons!317 (x!8704 (_2!52 res!5659)) Nil!318))))

(declare-fun d!11559 () Bool)

(declare-fun lt!2225 () List!323)

(assert (=> d!11559 (= (size!190 lt!2225) (size!191 (_2!52 res!5659)))))

(assert (=> d!11559 (= lt!2225 e!8544)))

(declare-fun c!4123 () Bool)

(assert (=> d!11559 (= c!4123 (is-Empty!20 (_2!52 res!5659)))))

(assert (=> d!11559 (= (toList!83 (_2!52 res!5659)) lt!2225)))

(assert (= (and b!15644 c!4124) b!15645))

(assert (= (and b!15644 (not c!4124)) b!15646))

(assert (= (and d!11559 c!4123) b!15643))

(assert (= (and d!11559 (not c!4123)) b!15644))

(declare-fun m!19101 () Bool)

(assert (=> b!15646 m!19101))

(declare-fun m!19103 () Bool)

(assert (=> b!15646 m!19103))

(assert (=> b!15646 m!19101))

(assert (=> b!15646 m!19103))

(declare-fun m!19105 () Bool)

(assert (=> b!15646 m!19105))

(declare-fun m!19107 () Bool)

(assert (=> d!11559 m!19107))

(declare-fun m!19109 () Bool)

(assert (=> d!11559 m!19109))

(assert (=> b!15525 d!11559))

(declare-fun d!11561 () Bool)

(declare-fun e!8556 () Bool)

(assert (=> d!11561 e!8556))

(declare-fun res!6381 () Bool)

(assert (=> d!11561 (=> (not res!6381) (not e!8556))))

(declare-fun lt!2230 () List!323)

(assert (=> d!11561 (= res!6381 (subset (content!53 lt!2230) (content!53 (toList!83 xs!637))))))

(declare-fun e!8557 () List!323)

(assert (=> d!11561 (= lt!2230 e!8557)))

(declare-fun c!4135 () Bool)

(assert (=> d!11561 (= c!4135 (is-Nil!318 (toList!83 xs!637)))))

(assert (=> d!11561 (= (drop!6 (toList!83 xs!637) n!315) lt!2230)))

(declare-fun b!15665 () Bool)

(declare-fun e!8558 () List!323)

(assert (=> b!15665 (= e!8557 e!8558)))

(declare-fun c!4136 () Bool)

(assert (=> b!15665 (= c!4136 (<= n!315 0))))

(declare-fun b!15666 () Bool)

(declare-fun e!8559 () Int)

(declare-fun lt!2231 () Int)

(assert (=> b!15666 (= e!8559 lt!2231)))

(declare-fun b!15667 () Bool)

(declare-fun e!8560 () Int)

(assert (=> b!15667 (= e!8559 e!8560)))

(declare-fun c!4133 () Bool)

(assert (=> b!15667 (= c!4133 (>= n!315 lt!2231))))

(declare-fun b!15668 () Bool)

(assert (=> b!15668 (= e!8558 (Cons!317 (h!231 (toList!83 xs!637)) (t!4283 (toList!83 xs!637))))))

(declare-fun b!15669 () Bool)

(assert (=> b!15669 (= e!8560 0)))

(declare-fun b!15670 () Bool)

(assert (=> b!15670 (= e!8556 (= (size!190 lt!2230) e!8559))))

(declare-fun c!4134 () Bool)

(assert (=> b!15670 (= c!4134 (<= n!315 0))))

(assert (=> b!15670 (= lt!2231 (size!190 (toList!83 xs!637)))))

(declare-fun b!15671 () Bool)

(assert (=> b!15671 (= e!8557 Nil!318)))

(declare-fun b!15672 () Bool)

(assert (=> b!15672 (= e!8558 (drop!6 (t!4283 (toList!83 xs!637)) (- n!315 1)))))

(declare-fun b!15673 () Bool)

(assert (=> b!15673 (= e!8560 (- (size!190 (toList!83 xs!637)) n!315))))

(assert (= (and b!15665 c!4136) b!15668))

(assert (= (and b!15665 (not c!4136)) b!15672))

(assert (= (and d!11561 c!4135) b!15671))

(assert (= (and d!11561 (not c!4135)) b!15665))

(assert (= (and d!11561 res!6381) b!15670))

(assert (= (and b!15667 c!4133) b!15669))

(assert (= (and b!15667 (not c!4133)) b!15673))

(assert (= (and b!15670 c!4134) b!15666))

(assert (= (and b!15670 (not c!4134)) b!15667))

(declare-fun m!19111 () Bool)

(assert (=> d!11561 m!19111))

(assert (=> d!11561 m!18975))

(assert (=> d!11561 m!19081))

(declare-fun m!19113 () Bool)

(assert (=> b!15670 m!19113))

(assert (=> b!15670 m!18975))

(assert (=> b!15670 m!19077))

(declare-fun m!19115 () Bool)

(assert (=> b!15672 m!19115))

(assert (=> b!15673 m!18975))

(assert (=> b!15673 m!19077))

(assert (=> b!15525 d!11561))

(assert (=> b!15525 d!11549))

(declare-fun b!15694 () Bool)

(declare-fun e!8575 () List!323)

(declare-fun e!8576 () List!323)

(assert (=> b!15694 (= e!8575 e!8576)))

(declare-fun c!4147 () Bool)

(assert (=> b!15694 (= c!4147 (> n!315 (size!190 (toList!83 (left!654 xs!637)))))))

(declare-fun b!15695 () Bool)

(declare-fun e!8574 () Bool)

(assert (=> b!15695 (= e!8574 (appendTakeDrop!4 (t!4283 (toList!83 (left!654 xs!637))) (toList!83 (right!657 xs!637)) (- n!315 1)))))

(declare-fun d!11563 () Bool)

(declare-fun e!8578 () Bool)

(assert (=> d!11563 e!8578))

(declare-fun res!6394 () Bool)

(assert (=> d!11563 (=> (not res!6394) (not e!8578))))

(declare-fun e!8577 () List!323)

(assert (=> d!11563 (= res!6394 (= (take!8 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))) n!315) e!8577))))

(declare-fun c!4145 () Bool)

(assert (=> d!11563 (= c!4145 (< n!315 (size!190 (toList!83 (left!654 xs!637)))))))

(declare-fun lt!2234 () Bool)

(assert (=> d!11563 (= lt!2234 e!8574)))

(declare-fun res!6393 () Bool)

(assert (=> d!11563 (=> res!6393 e!8574)))

(assert (=> d!11563 (= res!6393 (or (is-Nil!318 (toList!83 (left!654 xs!637))) (<= n!315 0)))))

(assert (=> d!11563 (= (appendTakeDrop!4 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)) n!315) true)))

(declare-fun b!15696 () Bool)

(declare-fun e!8573 () List!323)

(assert (=> b!15696 (= e!8573 (++!8 (toList!83 (left!654 xs!637)) (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637)))))))))

(declare-fun b!15697 () Bool)

(assert (=> b!15697 (= e!8578 (= (drop!6 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))) n!315) e!8575))))

(declare-fun c!4148 () Bool)

(assert (=> b!15697 (= c!4148 (< n!315 (size!190 (toList!83 (left!654 xs!637)))))))

(declare-fun b!15698 () Bool)

(assert (=> b!15698 (= e!8573 (toList!83 (left!654 xs!637)))))

(declare-fun b!15699 () Bool)

(assert (=> b!15699 (= e!8577 e!8573)))

(declare-fun c!4146 () Bool)

(assert (=> b!15699 (= c!4146 (> n!315 (size!190 (toList!83 (left!654 xs!637)))))))

(declare-fun b!15700 () Bool)

(assert (=> b!15700 (= e!8575 (++!8 (drop!6 (toList!83 (left!654 xs!637)) n!315) (toList!83 (right!657 xs!637))))))

(declare-fun b!15701 () Bool)

(assert (=> b!15701 (= e!8576 (toList!83 (right!657 xs!637)))))

(declare-fun b!15702 () Bool)

(assert (=> b!15702 (= e!8577 (take!8 (toList!83 (left!654 xs!637)) n!315))))

(declare-fun b!15703 () Bool)

(assert (=> b!15703 (= e!8576 (drop!6 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637))))))))

(assert (= (and d!11563 (not res!6393)) b!15695))

(assert (= (and b!15699 c!4146) b!15696))

(assert (= (and b!15699 (not c!4146)) b!15698))

(assert (= (and d!11563 c!4145) b!15702))

(assert (= (and d!11563 (not c!4145)) b!15699))

(assert (= (and d!11563 res!6394) b!15697))

(assert (= (and b!15694 c!4147) b!15703))

(assert (= (and b!15694 (not c!4147)) b!15701))

(assert (= (and b!15697 c!4148) b!15700))

(assert (= (and b!15697 (not c!4148)) b!15694))

(assert (=> b!15703 m!18943))

(declare-fun m!19117 () Bool)

(assert (=> b!15703 m!19117))

(assert (=> b!15703 m!18945))

(declare-fun m!19119 () Bool)

(assert (=> b!15703 m!19119))

(assert (=> b!15699 m!18943))

(assert (=> b!15699 m!19117))

(assert (=> b!15695 m!18945))

(declare-fun m!19121 () Bool)

(assert (=> b!15695 m!19121))

(assert (=> b!15700 m!18943))

(declare-fun m!19123 () Bool)

(assert (=> b!15700 m!19123))

(assert (=> b!15700 m!19123))

(assert (=> b!15700 m!18945))

(declare-fun m!19125 () Bool)

(assert (=> b!15700 m!19125))

(assert (=> b!15696 m!18943))

(assert (=> b!15696 m!19117))

(assert (=> b!15696 m!18945))

(declare-fun m!19127 () Bool)

(assert (=> b!15696 m!19127))

(assert (=> b!15696 m!18943))

(assert (=> b!15696 m!19127))

(declare-fun m!19129 () Bool)

(assert (=> b!15696 m!19129))

(assert (=> b!15697 m!18943))

(assert (=> b!15697 m!18945))

(assert (=> b!15697 m!19087))

(assert (=> b!15697 m!19087))

(declare-fun m!19131 () Bool)

(assert (=> b!15697 m!19131))

(assert (=> b!15697 m!18943))

(assert (=> b!15697 m!19117))

(assert (=> b!15702 m!18943))

(declare-fun m!19133 () Bool)

(assert (=> b!15702 m!19133))

(assert (=> d!11563 m!18943))

(assert (=> d!11563 m!18945))

(assert (=> d!11563 m!19087))

(assert (=> d!11563 m!19087))

(declare-fun m!19135 () Bool)

(assert (=> d!11563 m!19135))

(assert (=> d!11563 m!18943))

(assert (=> d!11563 m!19117))

(assert (=> b!15694 m!18943))

(assert (=> b!15694 m!19117))

(assert (=> b!15494 d!11563))

(declare-fun b!15707 () Bool)

(declare-fun e!8580 () List!323)

(assert (=> b!15707 (= e!8580 (++!8 (toList!83 (left!654 (left!654 xs!637))) (toList!83 (right!657 (left!654 xs!637)))))))

(declare-fun b!15704 () Bool)

(declare-fun e!8579 () List!323)

(assert (=> b!15704 (= e!8579 Nil!318)))

(declare-fun b!15705 () Bool)

(assert (=> b!15705 (= e!8579 e!8580)))

(declare-fun c!4150 () Bool)

(assert (=> b!15705 (= c!4150 (is-Single!9 (left!654 xs!637)))))

(declare-fun b!15706 () Bool)

(assert (=> b!15706 (= e!8580 (Cons!317 (x!8704 (left!654 xs!637)) Nil!318))))

(declare-fun d!11565 () Bool)

(declare-fun lt!2235 () List!323)

(assert (=> d!11565 (= (size!190 lt!2235) (size!191 (left!654 xs!637)))))

(assert (=> d!11565 (= lt!2235 e!8579)))

(declare-fun c!4149 () Bool)

(assert (=> d!11565 (= c!4149 (is-Empty!20 (left!654 xs!637)))))

(assert (=> d!11565 (= (toList!83 (left!654 xs!637)) lt!2235)))

(assert (= (and b!15705 c!4150) b!15706))

(assert (= (and b!15705 (not c!4150)) b!15707))

(assert (= (and d!11565 c!4149) b!15704))

(assert (= (and d!11565 (not c!4149)) b!15705))

(declare-fun m!19137 () Bool)

(assert (=> b!15707 m!19137))

(declare-fun m!19139 () Bool)

(assert (=> b!15707 m!19139))

(assert (=> b!15707 m!19137))

(assert (=> b!15707 m!19139))

(declare-fun m!19141 () Bool)

(assert (=> b!15707 m!19141))

(declare-fun m!19143 () Bool)

(assert (=> d!11565 m!19143))

(declare-fun m!19145 () Bool)

(assert (=> d!11565 m!19145))

(assert (=> b!15494 d!11565))

(declare-fun b!15711 () Bool)

(declare-fun e!8582 () List!323)

(assert (=> b!15711 (= e!8582 (++!8 (toList!83 (left!654 (right!657 xs!637))) (toList!83 (right!657 (right!657 xs!637)))))))

(declare-fun b!15708 () Bool)

(declare-fun e!8581 () List!323)

(assert (=> b!15708 (= e!8581 Nil!318)))

(declare-fun b!15709 () Bool)

(assert (=> b!15709 (= e!8581 e!8582)))

(declare-fun c!4152 () Bool)

(assert (=> b!15709 (= c!4152 (is-Single!9 (right!657 xs!637)))))

(declare-fun b!15710 () Bool)

(assert (=> b!15710 (= e!8582 (Cons!317 (x!8704 (right!657 xs!637)) Nil!318))))

(declare-fun d!11567 () Bool)

(declare-fun lt!2236 () List!323)

(assert (=> d!11567 (= (size!190 lt!2236) (size!191 (right!657 xs!637)))))

(assert (=> d!11567 (= lt!2236 e!8581)))

(declare-fun c!4151 () Bool)

(assert (=> d!11567 (= c!4151 (is-Empty!20 (right!657 xs!637)))))

(assert (=> d!11567 (= (toList!83 (right!657 xs!637)) lt!2236)))

(assert (= (and b!15709 c!4152) b!15710))

(assert (= (and b!15709 (not c!4152)) b!15711))

(assert (= (and d!11567 c!4151) b!15708))

(assert (= (and d!11567 (not c!4151)) b!15709))

(declare-fun m!19147 () Bool)

(assert (=> b!15711 m!19147))

(declare-fun m!19149 () Bool)

(assert (=> b!15711 m!19149))

(assert (=> b!15711 m!19147))

(assert (=> b!15711 m!19149))

(declare-fun m!19151 () Bool)

(assert (=> b!15711 m!19151))

(declare-fun m!19153 () Bool)

(assert (=> d!11567 m!19153))

(declare-fun m!19155 () Bool)

(assert (=> d!11567 m!19155))

(assert (=> b!15494 d!11567))

(declare-fun b!15712 () Bool)

(declare-fun e!8583 () Bool)

(declare-fun e!8584 () Bool)

(assert (=> b!15712 (= e!8583 e!8584)))

(declare-fun res!6398 () Bool)

(assert (=> b!15712 (=> (not res!6398) (not e!8584))))

(assert (=> b!15712 (= res!6398 (not (isEmpty!274 (left!654 (left!654 (_1!52 res!5659))))))))

(declare-fun d!11569 () Bool)

(declare-fun res!6395 () Bool)

(assert (=> d!11569 (=> res!6395 e!8583)))

(assert (=> d!11569 (= res!6395 (not (is-CC!9 (left!654 (_1!52 res!5659)))))))

(assert (=> d!11569 (= (concInv!9 (left!654 (_1!52 res!5659))) e!8583)))

(declare-fun b!15714 () Bool)

(declare-fun res!6397 () Bool)

(assert (=> b!15714 (=> (not res!6397) (not e!8584))))

(assert (=> b!15714 (= res!6397 (concInv!9 (left!654 (left!654 (_1!52 res!5659)))))))

(declare-fun b!15713 () Bool)

(declare-fun res!6396 () Bool)

(assert (=> b!15713 (=> (not res!6396) (not e!8584))))

(assert (=> b!15713 (= res!6396 (not (isEmpty!274 (right!657 (left!654 (_1!52 res!5659))))))))

(declare-fun b!15715 () Bool)

(assert (=> b!15715 (= e!8584 (concInv!9 (right!657 (left!654 (_1!52 res!5659)))))))

(assert (= (and d!11569 (not res!6395)) b!15712))

(assert (= (and b!15712 res!6398) b!15713))

(assert (= (and b!15713 res!6396) b!15714))

(assert (= (and b!15714 res!6397) b!15715))

(declare-fun m!19157 () Bool)

(assert (=> b!15712 m!19157))

(declare-fun m!19159 () Bool)

(assert (=> b!15714 m!19159))

(declare-fun m!19161 () Bool)

(assert (=> b!15713 m!19161))

(declare-fun m!19163 () Bool)

(assert (=> b!15715 m!19163))

(assert (=> b!15505 d!11569))

(declare-fun b!15716 () Bool)

(declare-fun e!8586 () Bool)

(declare-fun e!8585 () Bool)

(assert (=> b!15716 (= e!8586 e!8585)))

(declare-fun res!6399 () Bool)

(assert (=> b!15716 (=> (not res!6399) (not e!8585))))

(assert (=> b!15716 (= res!6399 (>= (- (level!9 (left!654 (left!654 (_1!52 res!5659)))) (level!9 (right!657 (left!654 (_1!52 res!5659))))) (- 1)))))

(declare-fun b!15719 () Bool)

(assert (=> b!15719 (= e!8585 (balanced!10 (right!657 (left!654 (_1!52 res!5659)))))))

(declare-fun b!15717 () Bool)

(declare-fun res!6402 () Bool)

(assert (=> b!15717 (=> (not res!6402) (not e!8585))))

(assert (=> b!15717 (= res!6402 (<= (- (level!9 (left!654 (left!654 (_1!52 res!5659)))) (level!9 (right!657 (left!654 (_1!52 res!5659))))) 1))))

(declare-fun d!11571 () Bool)

(declare-fun res!6401 () Bool)

(assert (=> d!11571 (=> res!6401 e!8586)))

(assert (=> d!11571 (= res!6401 (not (is-CC!9 (left!654 (_1!52 res!5659)))))))

(assert (=> d!11571 (= (balanced!10 (left!654 (_1!52 res!5659))) e!8586)))

(declare-fun b!15718 () Bool)

(declare-fun res!6400 () Bool)

(assert (=> b!15718 (=> (not res!6400) (not e!8585))))

(assert (=> b!15718 (= res!6400 (balanced!10 (left!654 (left!654 (_1!52 res!5659)))))))

(assert (= (and d!11571 (not res!6401)) b!15716))

(assert (= (and b!15716 res!6399) b!15717))

(assert (= (and b!15717 res!6402) b!15718))

(assert (= (and b!15718 res!6400) b!15719))

(assert (=> b!15716 m!19025))

(assert (=> b!15716 m!19023))

(declare-fun m!19165 () Bool)

(assert (=> b!15719 m!19165))

(assert (=> b!15717 m!19025))

(assert (=> b!15717 m!19023))

(declare-fun m!19167 () Bool)

(assert (=> b!15718 m!19167))

(assert (=> b!15542 d!11571))

(declare-fun b!15720 () Bool)

(declare-fun e!8588 () Bool)

(declare-fun e!8587 () Bool)

(assert (=> b!15720 (= e!8588 e!8587)))

(declare-fun res!6403 () Bool)

(assert (=> b!15720 (=> (not res!6403) (not e!8587))))

(assert (=> b!15720 (= res!6403 (>= (- (level!9 (left!654 (left!654 xs!637))) (level!9 (right!657 (left!654 xs!637)))) (- 1)))))

(declare-fun b!15723 () Bool)

(assert (=> b!15723 (= e!8587 (balanced!10 (right!657 (left!654 xs!637))))))

(declare-fun b!15721 () Bool)

(declare-fun res!6406 () Bool)

(assert (=> b!15721 (=> (not res!6406) (not e!8587))))

(assert (=> b!15721 (= res!6406 (<= (- (level!9 (left!654 (left!654 xs!637))) (level!9 (right!657 (left!654 xs!637)))) 1))))

(declare-fun d!11573 () Bool)

(declare-fun res!6405 () Bool)

(assert (=> d!11573 (=> res!6405 e!8588)))

(assert (=> d!11573 (= res!6405 (not (is-CC!9 (left!654 xs!637))))))

(assert (=> d!11573 (= (balanced!10 (left!654 xs!637)) e!8588)))

(declare-fun b!15722 () Bool)

(declare-fun res!6404 () Bool)

(assert (=> b!15722 (=> (not res!6404) (not e!8587))))

(assert (=> b!15722 (= res!6404 (balanced!10 (left!654 (left!654 xs!637))))))

(assert (= (and d!11573 (not res!6405)) b!15720))

(assert (= (and b!15720 res!6403) b!15721))

(assert (= (and b!15721 res!6406) b!15722))

(assert (= (and b!15722 res!6404) b!15723))

(assert (=> b!15720 m!19041))

(assert (=> b!15720 m!19039))

(declare-fun m!19169 () Bool)

(assert (=> b!15723 m!19169))

(assert (=> b!15721 m!19041))

(assert (=> b!15721 m!19039))

(declare-fun m!19171 () Bool)

(assert (=> b!15722 m!19171))

(assert (=> b!15546 d!11573))

(assert (=> b!15541 d!11523))

(assert (=> b!15541 d!11525))

(assert (=> b!15539 d!11525))

(assert (=> b!15539 d!11523))

(declare-fun d!11575 () Bool)

(assert (=> d!11575 (= (isEmpty!274 (left!654 (_2!52 res!5659))) (= (left!654 (_2!52 res!5659)) Empty!20))))

(assert (=> b!15519 d!11575))

(assert (=> b!15537 d!11519))

(assert (=> b!15537 d!11517))

(declare-fun b!15724 () Bool)

(declare-fun e!8590 () Bool)

(declare-fun e!8589 () Bool)

(assert (=> b!15724 (= e!8590 e!8589)))

(declare-fun res!6407 () Bool)

(assert (=> b!15724 (=> (not res!6407) (not e!8589))))

(assert (=> b!15724 (= res!6407 (>= (- (level!9 (left!654 (right!657 (_1!52 res!5659)))) (level!9 (right!657 (right!657 (_1!52 res!5659))))) (- 1)))))

(declare-fun b!15727 () Bool)

(assert (=> b!15727 (= e!8589 (balanced!10 (right!657 (right!657 (_1!52 res!5659)))))))

(declare-fun b!15725 () Bool)

(declare-fun res!6410 () Bool)

(assert (=> b!15725 (=> (not res!6410) (not e!8589))))

(assert (=> b!15725 (= res!6410 (<= (- (level!9 (left!654 (right!657 (_1!52 res!5659)))) (level!9 (right!657 (right!657 (_1!52 res!5659))))) 1))))

(declare-fun d!11577 () Bool)

(declare-fun res!6409 () Bool)

(assert (=> d!11577 (=> res!6409 e!8590)))

(assert (=> d!11577 (= res!6409 (not (is-CC!9 (right!657 (_1!52 res!5659)))))))

(assert (=> d!11577 (= (balanced!10 (right!657 (_1!52 res!5659))) e!8590)))

(declare-fun b!15726 () Bool)

(declare-fun res!6408 () Bool)

(assert (=> b!15726 (=> (not res!6408) (not e!8589))))

(assert (=> b!15726 (= res!6408 (balanced!10 (left!654 (right!657 (_1!52 res!5659)))))))

(assert (= (and d!11577 (not res!6409)) b!15724))

(assert (= (and b!15724 res!6407) b!15725))

(assert (= (and b!15725 res!6410) b!15726))

(assert (= (and b!15726 res!6408) b!15727))

(assert (=> b!15724 m!19029))

(assert (=> b!15724 m!19027))

(declare-fun m!19173 () Bool)

(assert (=> b!15727 m!19173))

(assert (=> b!15725 m!19029))

(assert (=> b!15725 m!19027))

(declare-fun m!19175 () Bool)

(assert (=> b!15726 m!19175))

(assert (=> b!15543 d!11577))

(declare-fun b!15728 () Bool)

(declare-fun e!8591 () Bool)

(declare-fun e!8592 () Bool)

(assert (=> b!15728 (= e!8591 e!8592)))

(declare-fun res!6414 () Bool)

(assert (=> b!15728 (=> (not res!6414) (not e!8592))))

(assert (=> b!15728 (= res!6414 (not (isEmpty!274 (left!654 (left!654 xs!637)))))))

(declare-fun d!11579 () Bool)

(declare-fun res!6411 () Bool)

(assert (=> d!11579 (=> res!6411 e!8591)))

(assert (=> d!11579 (= res!6411 (not (is-CC!9 (left!654 xs!637))))))

(assert (=> d!11579 (= (concInv!9 (left!654 xs!637)) e!8591)))

(declare-fun b!15730 () Bool)

(declare-fun res!6413 () Bool)

(assert (=> b!15730 (=> (not res!6413) (not e!8592))))

(assert (=> b!15730 (= res!6413 (concInv!9 (left!654 (left!654 xs!637))))))

(declare-fun b!15729 () Bool)

(declare-fun res!6412 () Bool)

(assert (=> b!15729 (=> (not res!6412) (not e!8592))))

(assert (=> b!15729 (= res!6412 (not (isEmpty!274 (right!657 (left!654 xs!637)))))))

(declare-fun b!15731 () Bool)

(assert (=> b!15731 (= e!8592 (concInv!9 (right!657 (left!654 xs!637))))))

(assert (= (and d!11579 (not res!6411)) b!15728))

(assert (= (and b!15728 res!6414) b!15729))

(assert (= (and b!15729 res!6412) b!15730))

(assert (= (and b!15730 res!6413) b!15731))

(declare-fun m!19177 () Bool)

(assert (=> b!15728 m!19177))

(declare-fun m!19179 () Bool)

(assert (=> b!15730 m!19179))

(declare-fun m!19181 () Bool)

(assert (=> b!15729 m!19181))

(declare-fun m!19183 () Bool)

(assert (=> b!15731 m!19183))

(assert (=> b!15528 d!11579))

(assert (=> b!15516 d!11517))

(assert (=> b!15516 d!11519))

(declare-fun b!15732 () Bool)

(declare-fun e!8593 () Bool)

(declare-fun tp!3773 () Bool)

(declare-fun tp!3774 () Bool)

(assert (=> b!15732 (= e!8593 (and tp!3773 tp!3774))))

(declare-fun b!15733 () Bool)

(assert (=> b!15733 (= e!8593 tp_is_empty!55)))

(assert (=> b!15564 (= tp!3771 e!8593)))

(assert (= (and b!15564 (is-CC!9 (left!654 (right!657 xs!637)))) b!15732))

(assert (= (and b!15564 (is-Single!9 (left!654 (right!657 xs!637)))) b!15733))

(declare-fun b!15734 () Bool)

(declare-fun e!8594 () Bool)

(declare-fun tp!3775 () Bool)

(declare-fun tp!3776 () Bool)

(assert (=> b!15734 (= e!8594 (and tp!3775 tp!3776))))

(declare-fun b!15735 () Bool)

(assert (=> b!15735 (= e!8594 tp_is_empty!55)))

(assert (=> b!15564 (= tp!3772 e!8594)))

(assert (= (and b!15564 (is-CC!9 (right!657 (right!657 xs!637)))) b!15734))

(assert (= (and b!15564 (is-Single!9 (right!657 (right!657 xs!637)))) b!15735))

(declare-fun b!15736 () Bool)

(declare-fun e!8595 () Bool)

(declare-fun tp!3777 () Bool)

(declare-fun tp!3778 () Bool)

(assert (=> b!15736 (= e!8595 (and tp!3777 tp!3778))))

(declare-fun b!15737 () Bool)

(assert (=> b!15737 (= e!8595 tp_is_empty!55)))

(assert (=> b!15556 (= tp!3763 e!8595)))

(assert (= (and b!15556 (is-CC!9 (left!654 (right!657 (_1!52 res!5659))))) b!15736))

(assert (= (and b!15556 (is-Single!9 (left!654 (right!657 (_1!52 res!5659))))) b!15737))

(declare-fun b!15738 () Bool)

(declare-fun e!8596 () Bool)

(declare-fun tp!3779 () Bool)

(declare-fun tp!3780 () Bool)

(assert (=> b!15738 (= e!8596 (and tp!3779 tp!3780))))

(declare-fun b!15739 () Bool)

(assert (=> b!15739 (= e!8596 tp_is_empty!55)))

(assert (=> b!15556 (= tp!3764 e!8596)))

(assert (= (and b!15556 (is-CC!9 (right!657 (right!657 (_1!52 res!5659))))) b!15738))

(assert (= (and b!15556 (is-Single!9 (right!657 (right!657 (_1!52 res!5659))))) b!15739))

(declare-fun b!15740 () Bool)

(declare-fun e!8597 () Bool)

(declare-fun tp!3781 () Bool)

(declare-fun tp!3782 () Bool)

(assert (=> b!15740 (= e!8597 (and tp!3781 tp!3782))))

(declare-fun b!15741 () Bool)

(assert (=> b!15741 (= e!8597 tp_is_empty!55)))

(assert (=> b!15562 (= tp!3769 e!8597)))

(assert (= (and b!15562 (is-CC!9 (left!654 (left!654 xs!637)))) b!15740))

(assert (= (and b!15562 (is-Single!9 (left!654 (left!654 xs!637)))) b!15741))

(declare-fun b!15742 () Bool)

(declare-fun e!8598 () Bool)

(declare-fun tp!3783 () Bool)

(declare-fun tp!3784 () Bool)

(assert (=> b!15742 (= e!8598 (and tp!3783 tp!3784))))

(declare-fun b!15743 () Bool)

(assert (=> b!15743 (= e!8598 tp_is_empty!55)))

(assert (=> b!15562 (= tp!3770 e!8598)))

(assert (= (and b!15562 (is-CC!9 (right!657 (left!654 xs!637)))) b!15742))

(assert (= (and b!15562 (is-Single!9 (right!657 (left!654 xs!637)))) b!15743))

(declare-fun b!15744 () Bool)

(declare-fun e!8599 () Bool)

(declare-fun tp!3785 () Bool)

(declare-fun tp!3786 () Bool)

(assert (=> b!15744 (= e!8599 (and tp!3785 tp!3786))))

(declare-fun b!15745 () Bool)

(assert (=> b!15745 (= e!8599 tp_is_empty!55)))

(assert (=> b!15560 (= tp!3767 e!8599)))

(assert (= (and b!15560 (is-CC!9 (left!654 (right!657 (_2!52 res!5659))))) b!15744))

(assert (= (and b!15560 (is-Single!9 (left!654 (right!657 (_2!52 res!5659))))) b!15745))

(declare-fun b!15746 () Bool)

(declare-fun e!8600 () Bool)

(declare-fun tp!3787 () Bool)

(declare-fun tp!3788 () Bool)

(assert (=> b!15746 (= e!8600 (and tp!3787 tp!3788))))

(declare-fun b!15747 () Bool)

(assert (=> b!15747 (= e!8600 tp_is_empty!55)))

(assert (=> b!15560 (= tp!3768 e!8600)))

(assert (= (and b!15560 (is-CC!9 (right!657 (right!657 (_2!52 res!5659))))) b!15746))

(assert (= (and b!15560 (is-Single!9 (right!657 (right!657 (_2!52 res!5659))))) b!15747))

(declare-fun b!15748 () Bool)

(declare-fun e!8601 () Bool)

(declare-fun tp!3789 () Bool)

(declare-fun tp!3790 () Bool)

(assert (=> b!15748 (= e!8601 (and tp!3789 tp!3790))))

(declare-fun b!15749 () Bool)

(assert (=> b!15749 (= e!8601 tp_is_empty!55)))

(assert (=> b!15554 (= tp!3761 e!8601)))

(assert (= (and b!15554 (is-CC!9 (left!654 (left!654 (_1!52 res!5659))))) b!15748))

(assert (= (and b!15554 (is-Single!9 (left!654 (left!654 (_1!52 res!5659))))) b!15749))

(declare-fun b!15750 () Bool)

(declare-fun e!8602 () Bool)

(declare-fun tp!3791 () Bool)

(declare-fun tp!3792 () Bool)

(assert (=> b!15750 (= e!8602 (and tp!3791 tp!3792))))

(declare-fun b!15751 () Bool)

(assert (=> b!15751 (= e!8602 tp_is_empty!55)))

(assert (=> b!15554 (= tp!3762 e!8602)))

(assert (= (and b!15554 (is-CC!9 (right!657 (left!654 (_1!52 res!5659))))) b!15750))

(assert (= (and b!15554 (is-Single!9 (right!657 (left!654 (_1!52 res!5659))))) b!15751))

(declare-fun b!15752 () Bool)

(declare-fun e!8603 () Bool)

(declare-fun tp!3793 () Bool)

(declare-fun tp!3794 () Bool)

(assert (=> b!15752 (= e!8603 (and tp!3793 tp!3794))))

(declare-fun b!15753 () Bool)

(assert (=> b!15753 (= e!8603 tp_is_empty!55)))

(assert (=> b!15558 (= tp!3765 e!8603)))

(assert (= (and b!15558 (is-CC!9 (left!654 (left!654 (_2!52 res!5659))))) b!15752))

(assert (= (and b!15558 (is-Single!9 (left!654 (left!654 (_2!52 res!5659))))) b!15753))

(declare-fun b!15754 () Bool)

(declare-fun e!8604 () Bool)

(declare-fun tp!3795 () Bool)

(declare-fun tp!3796 () Bool)

(assert (=> b!15754 (= e!8604 (and tp!3795 tp!3796))))

(declare-fun b!15755 () Bool)

(assert (=> b!15755 (= e!8604 tp_is_empty!55)))

(assert (=> b!15558 (= tp!3766 e!8604)))

(assert (= (and b!15558 (is-CC!9 (right!657 (left!654 (_2!52 res!5659))))) b!15754))

(assert (= (and b!15558 (is-Single!9 (right!657 (left!654 (_2!52 res!5659))))) b!15755))

(push 1)

(assert (not b!15696))

(assert tp_is_empty!55)

(assert (not b!15726))

(assert (not b!15641))

(assert (not b!15730))

(assert (not b!15573))

(assert (not b!15585))

(assert (not b!15581))

(assert (not b!15727))

(assert (not b!15613))

(assert (not b!15744))

(assert (not b!15736))

(assert (not b!15586))

(assert (not d!11547))

(assert (not b!15734))

(assert (not b!15595))

(assert (not b!15587))

(assert (not b!15601))

(assert (not b!15600))

(assert (not b!15720))

(assert (not b!15732))

(assert (not b!15721))

(assert (not b!15699))

(assert (not b!15640))

(assert (not b!15591))

(assert (not b!15724))

(assert (not b!15588))

(assert (not b!15594))

(assert (not d!11559))

(assert (not b!15702))

(assert (not b!15567))

(assert (not b!15583))

(assert (not b!15580))

(assert (not b!15742))

(assert (not b!15593))

(assert (not b!15725))

(assert (not b!15711))

(assert (not d!11549))

(assert (not b!15695))

(assert (not b!15750))

(assert (not b!15575))

(assert (not b!15670))

(assert (not d!11545))

(assert (not b!15729))

(assert (not b!15752))

(assert (not b!15589))

(assert (not b!15638))

(assert (not b!15722))

(assert (not b!15646))

(assert (not b!15571))

(assert (not d!11563))

(assert (not b!15717))

(assert (not d!11565))

(assert (not b!15715))

(assert (not b!15577))

(assert (not b!15673))

(assert (not b!15629))

(assert (not b!15707))

(assert (not b!15746))

(assert (not b!15728))

(assert (not b!15700))

(assert (not b!15672))

(assert (not b!15740))

(assert (not b!15590))

(assert (not b!15578))

(assert (not d!11567))

(assert (not b!15703))

(assert (not d!11561))

(assert (not b!15738))

(assert (not b!15713))

(assert (not b!15597))

(assert (not b!15697))

(assert (not b!15642))

(assert (not b!15714))

(assert (not b!15754))

(assert (not b!15639))

(assert (not b!15598))

(assert (not b!15628))

(assert (not b!15712))

(assert (not b!15634))

(assert (not b!15596))

(assert (not b!15748))

(assert (not b!15719))

(assert (not b!15718))

(assert (not b!15592))

(assert (not b!15572))

(assert (not b!15599))

(assert (not b!15723))

(assert (not b!15570))

(assert (not b!15633))

(assert (not b!15579))

(assert (not b!15694))

(assert (not b!15716))

(assert (not b!15569))

(assert (not b!15731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!15756 () Bool)

(declare-fun e!8605 () Bool)

(declare-fun e!8606 () Bool)

(assert (=> b!15756 (= e!8605 e!8606)))

(declare-fun res!6418 () Bool)

(assert (=> b!15756 (=> (not res!6418) (not e!8606))))

(assert (=> b!15756 (= res!6418 (not (isEmpty!274 (left!654 (left!654 (right!657 xs!637))))))))

(declare-fun d!11581 () Bool)

(declare-fun res!6415 () Bool)

(assert (=> d!11581 (=> res!6415 e!8605)))

(assert (=> d!11581 (= res!6415 (not (is-CC!9 (left!654 (right!657 xs!637)))))))

(assert (=> d!11581 (= (concInv!9 (left!654 (right!657 xs!637))) e!8605)))

(declare-fun b!15758 () Bool)

(declare-fun res!6417 () Bool)

(assert (=> b!15758 (=> (not res!6417) (not e!8606))))

(assert (=> b!15758 (= res!6417 (concInv!9 (left!654 (left!654 (right!657 xs!637)))))))

(declare-fun b!15757 () Bool)

(declare-fun res!6416 () Bool)

(assert (=> b!15757 (=> (not res!6416) (not e!8606))))

(assert (=> b!15757 (= res!6416 (not (isEmpty!274 (right!657 (left!654 (right!657 xs!637))))))))

(declare-fun b!15759 () Bool)

(assert (=> b!15759 (= e!8606 (concInv!9 (right!657 (left!654 (right!657 xs!637)))))))

(assert (= (and d!11581 (not res!6415)) b!15756))

(assert (= (and b!15756 res!6418) b!15757))

(assert (= (and b!15757 res!6416) b!15758))

(assert (= (and b!15758 res!6417) b!15759))

(declare-fun m!19185 () Bool)

(assert (=> b!15756 m!19185))

(declare-fun m!19187 () Bool)

(assert (=> b!15758 m!19187))

(declare-fun m!19189 () Bool)

(assert (=> b!15757 m!19189))

(declare-fun m!19191 () Bool)

(assert (=> b!15759 m!19191))

(assert (=> b!15572 d!11581))

(declare-fun b!15760 () Bool)

(declare-fun e!8609 () List!323)

(declare-fun e!8610 () List!323)

(assert (=> b!15760 (= e!8609 e!8610)))

(declare-fun c!4155 () Bool)

(assert (=> b!15760 (= c!4155 (> (- n!315 1) (size!190 (t!4283 (toList!83 (left!654 xs!637))))))))

(declare-fun b!15761 () Bool)

(declare-fun e!8608 () Bool)

(assert (=> b!15761 (= e!8608 (appendTakeDrop!4 (t!4283 (t!4283 (toList!83 (left!654 xs!637)))) (toList!83 (right!657 xs!637)) (- (- n!315 1) 1)))))

(declare-fun d!11583 () Bool)

(declare-fun e!8612 () Bool)

(assert (=> d!11583 e!8612))

(declare-fun res!6420 () Bool)

(assert (=> d!11583 (=> (not res!6420) (not e!8612))))

(declare-fun e!8611 () List!323)

(assert (=> d!11583 (= res!6420 (= (take!8 (++!8 (t!4283 (toList!83 (left!654 xs!637))) (toList!83 (right!657 xs!637))) (- n!315 1)) e!8611))))

(declare-fun c!4153 () Bool)

(assert (=> d!11583 (= c!4153 (< (- n!315 1) (size!190 (t!4283 (toList!83 (left!654 xs!637))))))))

(declare-fun lt!2237 () Bool)

(assert (=> d!11583 (= lt!2237 e!8608)))

(declare-fun res!6419 () Bool)

(assert (=> d!11583 (=> res!6419 e!8608)))

(assert (=> d!11583 (= res!6419 (or (is-Nil!318 (t!4283 (toList!83 (left!654 xs!637)))) (<= (- n!315 1) 0)))))

(assert (=> d!11583 (= (appendTakeDrop!4 (t!4283 (toList!83 (left!654 xs!637))) (toList!83 (right!657 xs!637)) (- n!315 1)) true)))

(declare-fun b!15762 () Bool)

(declare-fun e!8607 () List!323)

(assert (=> b!15762 (= e!8607 (++!8 (t!4283 (toList!83 (left!654 xs!637))) (take!8 (toList!83 (right!657 xs!637)) (- (- n!315 1) (size!190 (t!4283 (toList!83 (left!654 xs!637))))))))))

(declare-fun b!15763 () Bool)

(assert (=> b!15763 (= e!8612 (= (drop!6 (++!8 (t!4283 (toList!83 (left!654 xs!637))) (toList!83 (right!657 xs!637))) (- n!315 1)) e!8609))))

(declare-fun c!4156 () Bool)

(assert (=> b!15763 (= c!4156 (< (- n!315 1) (size!190 (t!4283 (toList!83 (left!654 xs!637))))))))

(declare-fun b!15764 () Bool)

(assert (=> b!15764 (= e!8607 (t!4283 (toList!83 (left!654 xs!637))))))

(declare-fun b!15765 () Bool)

(assert (=> b!15765 (= e!8611 e!8607)))

(declare-fun c!4154 () Bool)

(assert (=> b!15765 (= c!4154 (> (- n!315 1) (size!190 (t!4283 (toList!83 (left!654 xs!637))))))))

(declare-fun b!15766 () Bool)

(assert (=> b!15766 (= e!8609 (++!8 (drop!6 (t!4283 (toList!83 (left!654 xs!637))) (- n!315 1)) (toList!83 (right!657 xs!637))))))

(declare-fun b!15767 () Bool)

(assert (=> b!15767 (= e!8610 (toList!83 (right!657 xs!637)))))

(declare-fun b!15768 () Bool)

(assert (=> b!15768 (= e!8611 (take!8 (t!4283 (toList!83 (left!654 xs!637))) (- n!315 1)))))

(declare-fun b!15769 () Bool)

(assert (=> b!15769 (= e!8610 (drop!6 (toList!83 (right!657 xs!637)) (- (- n!315 1) (size!190 (t!4283 (toList!83 (left!654 xs!637)))))))))

(assert (= (and d!11583 (not res!6419)) b!15761))

(assert (= (and b!15765 c!4154) b!15762))

(assert (= (and b!15765 (not c!4154)) b!15764))

(assert (= (and d!11583 c!4153) b!15768))

(assert (= (and d!11583 (not c!4153)) b!15765))

(assert (= (and d!11583 res!6420) b!15763))

(assert (= (and b!15760 c!4155) b!15769))

(assert (= (and b!15760 (not c!4155)) b!15767))

(assert (= (and b!15763 c!4156) b!15766))

(assert (= (and b!15763 (not c!4156)) b!15760))

(declare-fun m!19193 () Bool)

(assert (=> b!15769 m!19193))

(assert (=> b!15769 m!18945))

(declare-fun m!19195 () Bool)

(assert (=> b!15769 m!19195))

(assert (=> b!15765 m!19193))

(assert (=> b!15761 m!18945))

(declare-fun m!19197 () Bool)

(assert (=> b!15761 m!19197))

(declare-fun m!19199 () Bool)

(assert (=> b!15766 m!19199))

(assert (=> b!15766 m!19199))

(assert (=> b!15766 m!18945))

(declare-fun m!19201 () Bool)

(assert (=> b!15766 m!19201))

(assert (=> b!15762 m!19193))

(assert (=> b!15762 m!18945))

(declare-fun m!19203 () Bool)

(assert (=> b!15762 m!19203))

(assert (=> b!15762 m!19203))

(declare-fun m!19205 () Bool)

(assert (=> b!15762 m!19205))

(assert (=> b!15763 m!18945))

(declare-fun m!19207 () Bool)

(assert (=> b!15763 m!19207))

(assert (=> b!15763 m!19207))

(declare-fun m!19209 () Bool)

(assert (=> b!15763 m!19209))

(assert (=> b!15763 m!19193))

(declare-fun m!19211 () Bool)

(assert (=> b!15768 m!19211))

(assert (=> d!11583 m!18945))

(assert (=> d!11583 m!19207))

(assert (=> d!11583 m!19207))

(declare-fun m!19213 () Bool)

(assert (=> d!11583 m!19213))

(assert (=> d!11583 m!19193))

(assert (=> b!15760 m!19193))

(assert (=> b!15695 d!11583))

(declare-fun b!15770 () Bool)

(declare-fun e!8613 () Bool)

(declare-fun e!8614 () Bool)

(assert (=> b!15770 (= e!8613 e!8614)))

(declare-fun res!6424 () Bool)

(assert (=> b!15770 (=> (not res!6424) (not e!8614))))

(assert (=> b!15770 (= res!6424 (not (isEmpty!274 (left!654 (right!657 (right!657 xs!637))))))))

(declare-fun d!11585 () Bool)

(declare-fun res!6421 () Bool)

(assert (=> d!11585 (=> res!6421 e!8613)))

(assert (=> d!11585 (= res!6421 (not (is-CC!9 (right!657 (right!657 xs!637)))))))

(assert (=> d!11585 (= (concInv!9 (right!657 (right!657 xs!637))) e!8613)))

(declare-fun b!15772 () Bool)

(declare-fun res!6423 () Bool)

(assert (=> b!15772 (=> (not res!6423) (not e!8614))))

(assert (=> b!15772 (= res!6423 (concInv!9 (left!654 (right!657 (right!657 xs!637)))))))

(declare-fun b!15771 () Bool)

(declare-fun res!6422 () Bool)

(assert (=> b!15771 (=> (not res!6422) (not e!8614))))

(assert (=> b!15771 (= res!6422 (not (isEmpty!274 (right!657 (right!657 (right!657 xs!637))))))))

(declare-fun b!15773 () Bool)

(assert (=> b!15773 (= e!8614 (concInv!9 (right!657 (right!657 (right!657 xs!637)))))))

(assert (= (and d!11585 (not res!6421)) b!15770))

(assert (= (and b!15770 res!6424) b!15771))

(assert (= (and b!15771 res!6422) b!15772))

(assert (= (and b!15772 res!6423) b!15773))

(declare-fun m!19215 () Bool)

(assert (=> b!15770 m!19215))

(declare-fun m!19217 () Bool)

(assert (=> b!15772 m!19217))

(declare-fun m!19219 () Bool)

(assert (=> b!15771 m!19219))

(declare-fun m!19221 () Bool)

(assert (=> b!15773 m!19221))

(assert (=> b!15573 d!11585))

(declare-fun b!15775 () Bool)

(declare-fun e!8615 () Int)

(declare-fun lt!2239 () Int)

(declare-fun lt!2238 () Int)

(assert (=> b!15775 (= e!8615 (+ 1 (ite (>= lt!2239 lt!2238) lt!2239 lt!2238)))))

(assert (=> b!15775 (= lt!2238 (level!9 (right!657 (right!657 (left!654 (_1!52 res!5659))))))))

(assert (=> b!15775 (= lt!2239 (level!9 (left!654 (right!657 (left!654 (_1!52 res!5659))))))))

(declare-fun d!11587 () Bool)

(declare-fun lt!2240 () Int)

(assert (=> d!11587 (>= lt!2240 0)))

(assert (=> d!11587 (= lt!2240 e!8615)))

(declare-fun c!4157 () Bool)

(assert (=> d!11587 (= c!4157 (or (is-Empty!20 (right!657 (left!654 (_1!52 res!5659)))) (is-Single!9 (right!657 (left!654 (_1!52 res!5659))))))))

(assert (=> d!11587 (= (level!9 (right!657 (left!654 (_1!52 res!5659)))) lt!2240)))

(declare-fun b!15774 () Bool)

(assert (=> b!15774 (= e!8615 0)))

(assert (= (and d!11587 c!4157) b!15774))

(assert (= (and d!11587 (not c!4157)) b!15775))

(declare-fun m!19223 () Bool)

(assert (=> b!15775 m!19223))

(declare-fun m!19225 () Bool)

(assert (=> b!15775 m!19225))

(assert (=> b!15575 d!11587))

(declare-fun b!15777 () Bool)

(declare-fun e!8616 () Int)

(declare-fun lt!2242 () Int)

(declare-fun lt!2241 () Int)

(assert (=> b!15777 (= e!8616 (+ 1 (ite (>= lt!2242 lt!2241) lt!2242 lt!2241)))))

(assert (=> b!15777 (= lt!2241 (level!9 (right!657 (left!654 (left!654 (_1!52 res!5659))))))))

(assert (=> b!15777 (= lt!2242 (level!9 (left!654 (left!654 (left!654 (_1!52 res!5659))))))))

(declare-fun d!11589 () Bool)

(declare-fun lt!2243 () Int)

(assert (=> d!11589 (>= lt!2243 0)))

(assert (=> d!11589 (= lt!2243 e!8616)))

(declare-fun c!4158 () Bool)

(assert (=> d!11589 (= c!4158 (or (is-Empty!20 (left!654 (left!654 (_1!52 res!5659)))) (is-Single!9 (left!654 (left!654 (_1!52 res!5659))))))))

(assert (=> d!11589 (= (level!9 (left!654 (left!654 (_1!52 res!5659)))) lt!2243)))

(declare-fun b!15776 () Bool)

(assert (=> b!15776 (= e!8616 0)))

(assert (= (and d!11589 c!4158) b!15776))

(assert (= (and d!11589 (not c!4158)) b!15777))

(declare-fun m!19227 () Bool)

(assert (=> b!15777 m!19227))

(declare-fun m!19229 () Bool)

(assert (=> b!15777 m!19229))

(assert (=> b!15575 d!11589))

(declare-fun b!15778 () Bool)

(declare-fun e!8617 () Bool)

(declare-fun e!8618 () Bool)

(assert (=> b!15778 (= e!8617 e!8618)))

(declare-fun res!6428 () Bool)

(assert (=> b!15778 (=> (not res!6428) (not e!8618))))

(assert (=> b!15778 (= res!6428 (not (isEmpty!274 (left!654 (left!654 (left!654 (_2!52 res!5659)))))))))

(declare-fun d!11591 () Bool)

(declare-fun res!6425 () Bool)

(assert (=> d!11591 (=> res!6425 e!8617)))

(assert (=> d!11591 (= res!6425 (not (is-CC!9 (left!654 (left!654 (_2!52 res!5659))))))))

(assert (=> d!11591 (= (concInv!9 (left!654 (left!654 (_2!52 res!5659)))) e!8617)))

(declare-fun b!15780 () Bool)

(declare-fun res!6427 () Bool)

(assert (=> b!15780 (=> (not res!6427) (not e!8618))))

(assert (=> b!15780 (= res!6427 (concInv!9 (left!654 (left!654 (left!654 (_2!52 res!5659))))))))

(declare-fun b!15779 () Bool)

(declare-fun res!6426 () Bool)

(assert (=> b!15779 (=> (not res!6426) (not e!8618))))

(assert (=> b!15779 (= res!6426 (not (isEmpty!274 (right!657 (left!654 (left!654 (_2!52 res!5659)))))))))

(declare-fun b!15781 () Bool)

(assert (=> b!15781 (= e!8618 (concInv!9 (right!657 (left!654 (left!654 (_2!52 res!5659))))))))

(assert (= (and d!11591 (not res!6425)) b!15778))

(assert (= (and b!15778 res!6428) b!15779))

(assert (= (and b!15779 res!6426) b!15780))

(assert (= (and b!15780 res!6427) b!15781))

(declare-fun m!19231 () Bool)

(assert (=> b!15778 m!19231))

(declare-fun m!19233 () Bool)

(assert (=> b!15780 m!19233))

(declare-fun m!19235 () Bool)

(assert (=> b!15779 m!19235))

(declare-fun m!19237 () Bool)

(assert (=> b!15781 m!19237))

(assert (=> b!15641 d!11591))

(declare-fun d!11593 () Bool)

(assert (=> d!11593 (= (isEmpty!274 (right!657 (right!657 xs!637))) (= (right!657 (right!657 xs!637)) Empty!20))))

(assert (=> b!15571 d!11593))

(declare-fun b!15782 () Bool)

(declare-fun e!8619 () Bool)

(declare-fun e!8620 () Bool)

(assert (=> b!15782 (= e!8619 e!8620)))

(declare-fun res!6432 () Bool)

(assert (=> b!15782 (=> (not res!6432) (not e!8620))))

(assert (=> b!15782 (= res!6432 (not (isEmpty!274 (left!654 (left!654 (left!654 (_1!52 res!5659)))))))))

(declare-fun d!11595 () Bool)

(declare-fun res!6429 () Bool)

(assert (=> d!11595 (=> res!6429 e!8619)))

(assert (=> d!11595 (= res!6429 (not (is-CC!9 (left!654 (left!654 (_1!52 res!5659))))))))

(assert (=> d!11595 (= (concInv!9 (left!654 (left!654 (_1!52 res!5659)))) e!8619)))

(declare-fun b!15784 () Bool)

(declare-fun res!6431 () Bool)

(assert (=> b!15784 (=> (not res!6431) (not e!8620))))

(assert (=> b!15784 (= res!6431 (concInv!9 (left!654 (left!654 (left!654 (_1!52 res!5659))))))))

(declare-fun b!15783 () Bool)

(declare-fun res!6430 () Bool)

(assert (=> b!15783 (=> (not res!6430) (not e!8620))))

(assert (=> b!15783 (= res!6430 (not (isEmpty!274 (right!657 (left!654 (left!654 (_1!52 res!5659)))))))))

(declare-fun b!15785 () Bool)

(assert (=> b!15785 (= e!8620 (concInv!9 (right!657 (left!654 (left!654 (_1!52 res!5659))))))))

(assert (= (and d!11595 (not res!6429)) b!15782))

(assert (= (and b!15782 res!6432) b!15783))

(assert (= (and b!15783 res!6430) b!15784))

(assert (= (and b!15784 res!6431) b!15785))

(declare-fun m!19239 () Bool)

(assert (=> b!15782 m!19239))

(declare-fun m!19241 () Bool)

(assert (=> b!15784 m!19241))

(declare-fun m!19243 () Bool)

(assert (=> b!15783 m!19243))

(declare-fun m!19245 () Bool)

(assert (=> b!15785 m!19245))

(assert (=> b!15714 d!11595))

(declare-fun b!15786 () Bool)

(declare-fun e!8621 () Bool)

(declare-fun e!8622 () Bool)

(assert (=> b!15786 (= e!8621 e!8622)))

(declare-fun res!6436 () Bool)

(assert (=> b!15786 (=> (not res!6436) (not e!8622))))

(assert (=> b!15786 (= res!6436 (not (isEmpty!274 (left!654 (right!657 (left!654 (_2!52 res!5659)))))))))

(declare-fun d!11597 () Bool)

(declare-fun res!6433 () Bool)

(assert (=> d!11597 (=> res!6433 e!8621)))

(assert (=> d!11597 (= res!6433 (not (is-CC!9 (right!657 (left!654 (_2!52 res!5659))))))))

(assert (=> d!11597 (= (concInv!9 (right!657 (left!654 (_2!52 res!5659)))) e!8621)))

(declare-fun b!15788 () Bool)

(declare-fun res!6435 () Bool)

(assert (=> b!15788 (=> (not res!6435) (not e!8622))))

(assert (=> b!15788 (= res!6435 (concInv!9 (left!654 (right!657 (left!654 (_2!52 res!5659))))))))

(declare-fun b!15787 () Bool)

(declare-fun res!6434 () Bool)

(assert (=> b!15787 (=> (not res!6434) (not e!8622))))

(assert (=> b!15787 (= res!6434 (not (isEmpty!274 (right!657 (right!657 (left!654 (_2!52 res!5659)))))))))

(declare-fun b!15789 () Bool)

(assert (=> b!15789 (= e!8622 (concInv!9 (right!657 (right!657 (left!654 (_2!52 res!5659))))))))

(assert (= (and d!11597 (not res!6433)) b!15786))

(assert (= (and b!15786 res!6436) b!15787))

(assert (= (and b!15787 res!6434) b!15788))

(assert (= (and b!15788 res!6435) b!15789))

(declare-fun m!19247 () Bool)

(assert (=> b!15786 m!19247))

(declare-fun m!19249 () Bool)

(assert (=> b!15788 m!19249))

(declare-fun m!19251 () Bool)

(assert (=> b!15787 m!19251))

(declare-fun m!19253 () Bool)

(assert (=> b!15789 m!19253))

(assert (=> b!15642 d!11597))

(declare-fun d!11599 () Bool)

(assert (=> d!11599 (= (isEmpty!274 (right!657 (left!654 (_1!52 res!5659)))) (= (right!657 (left!654 (_1!52 res!5659))) Empty!20))))

(assert (=> b!15713 d!11599))

(declare-fun b!15790 () Bool)

(declare-fun e!8624 () Bool)

(declare-fun e!8623 () Bool)

(assert (=> b!15790 (= e!8624 e!8623)))

(declare-fun res!6437 () Bool)

(assert (=> b!15790 (=> (not res!6437) (not e!8623))))

(assert (=> b!15790 (= res!6437 (>= (- (level!9 (left!654 (right!657 (left!654 xs!637)))) (level!9 (right!657 (right!657 (left!654 xs!637))))) (- 1)))))

(declare-fun b!15793 () Bool)

(assert (=> b!15793 (= e!8623 (balanced!10 (right!657 (right!657 (left!654 xs!637)))))))

(declare-fun b!15791 () Bool)

(declare-fun res!6440 () Bool)

(assert (=> b!15791 (=> (not res!6440) (not e!8623))))

(assert (=> b!15791 (= res!6440 (<= (- (level!9 (left!654 (right!657 (left!654 xs!637)))) (level!9 (right!657 (right!657 (left!654 xs!637))))) 1))))

(declare-fun d!11601 () Bool)

(declare-fun res!6439 () Bool)

(assert (=> d!11601 (=> res!6439 e!8624)))

(assert (=> d!11601 (= res!6439 (not (is-CC!9 (right!657 (left!654 xs!637)))))))

(assert (=> d!11601 (= (balanced!10 (right!657 (left!654 xs!637))) e!8624)))

(declare-fun b!15792 () Bool)

(declare-fun res!6438 () Bool)

(assert (=> b!15792 (=> (not res!6438) (not e!8623))))

(assert (=> b!15792 (= res!6438 (balanced!10 (left!654 (right!657 (left!654 xs!637)))))))

(assert (= (and d!11601 (not res!6439)) b!15790))

(assert (= (and b!15790 res!6437) b!15791))

(assert (= (and b!15791 res!6440) b!15792))

(assert (= (and b!15792 res!6438) b!15793))

(declare-fun m!19255 () Bool)

(assert (=> b!15790 m!19255))

(declare-fun m!19257 () Bool)

(assert (=> b!15790 m!19257))

(declare-fun m!19259 () Bool)

(assert (=> b!15793 m!19259))

(assert (=> b!15791 m!19255))

(assert (=> b!15791 m!19257))

(declare-fun m!19261 () Bool)

(assert (=> b!15792 m!19261))

(assert (=> b!15723 d!11601))

(declare-fun b!15795 () Bool)

(declare-fun e!8625 () Int)

(declare-fun lt!2245 () Int)

(declare-fun lt!2244 () Int)

(assert (=> b!15795 (= e!8625 (+ 1 (ite (>= lt!2245 lt!2244) lt!2245 lt!2244)))))

(assert (=> b!15795 (= lt!2244 (level!9 (right!657 (left!654 (left!654 xs!637)))))))

(assert (=> b!15795 (= lt!2245 (level!9 (left!654 (left!654 (left!654 xs!637)))))))

(declare-fun d!11603 () Bool)

(declare-fun lt!2246 () Int)

(assert (=> d!11603 (>= lt!2246 0)))

(assert (=> d!11603 (= lt!2246 e!8625)))

(declare-fun c!4159 () Bool)

(assert (=> d!11603 (= c!4159 (or (is-Empty!20 (left!654 (left!654 xs!637))) (is-Single!9 (left!654 (left!654 xs!637)))))))

(assert (=> d!11603 (= (level!9 (left!654 (left!654 xs!637))) lt!2246)))

(declare-fun b!15794 () Bool)

(assert (=> b!15794 (= e!8625 0)))

(assert (= (and d!11603 c!4159) b!15794))

(assert (= (and d!11603 (not c!4159)) b!15795))

(declare-fun m!19263 () Bool)

(assert (=> b!15795 m!19263))

(declare-fun m!19265 () Bool)

(assert (=> b!15795 m!19265))

(assert (=> b!15720 d!11603))

(declare-fun b!15797 () Bool)

(declare-fun e!8626 () Int)

(declare-fun lt!2248 () Int)

(declare-fun lt!2247 () Int)

(assert (=> b!15797 (= e!8626 (+ 1 (ite (>= lt!2248 lt!2247) lt!2248 lt!2247)))))

(assert (=> b!15797 (= lt!2247 (level!9 (right!657 (right!657 (left!654 xs!637)))))))

(assert (=> b!15797 (= lt!2248 (level!9 (left!654 (right!657 (left!654 xs!637)))))))

(declare-fun d!11605 () Bool)

(declare-fun lt!2249 () Int)

(assert (=> d!11605 (>= lt!2249 0)))

(assert (=> d!11605 (= lt!2249 e!8626)))

(declare-fun c!4160 () Bool)

(assert (=> d!11605 (= c!4160 (or (is-Empty!20 (right!657 (left!654 xs!637))) (is-Single!9 (right!657 (left!654 xs!637)))))))

(assert (=> d!11605 (= (level!9 (right!657 (left!654 xs!637))) lt!2249)))

(declare-fun b!15796 () Bool)

(assert (=> b!15796 (= e!8626 0)))

(assert (= (and d!11605 c!4160) b!15796))

(assert (= (and d!11605 (not c!4160)) b!15797))

(assert (=> b!15797 m!19257))

(assert (=> b!15797 m!19255))

(assert (=> b!15720 d!11605))

(declare-fun d!11607 () Bool)

(declare-fun lt!2252 () Int)

(assert (=> d!11607 (>= lt!2252 0)))

(declare-fun e!8629 () Int)

(assert (=> d!11607 (= lt!2252 e!8629)))

(declare-fun c!4163 () Bool)

(assert (=> d!11607 (= c!4163 (is-Nil!318 (toList!83 xs!637)))))

(assert (=> d!11607 (= (size!190 (toList!83 xs!637)) lt!2252)))

(declare-fun b!15802 () Bool)

(assert (=> b!15802 (= e!8629 0)))

(declare-fun b!15803 () Bool)

(assert (=> b!15803 (= e!8629 (+ 1 (size!190 (t!4283 (toList!83 xs!637)))))))

(assert (= (and d!11607 c!4163) b!15802))

(assert (= (and d!11607 (not c!4163)) b!15803))

(declare-fun m!19267 () Bool)

(assert (=> b!15803 m!19267))

(assert (=> b!15629 d!11607))

(declare-fun b!15805 () Bool)

(declare-fun e!8630 () Int)

(declare-fun lt!2254 () Int)

(declare-fun lt!2253 () Int)

(assert (=> b!15805 (= e!8630 (+ 1 (ite (>= lt!2254 lt!2253) lt!2254 lt!2253)))))

(assert (=> b!15805 (= lt!2253 (level!9 (right!657 (right!657 (right!657 xs!637)))))))

(assert (=> b!15805 (= lt!2254 (level!9 (left!654 (right!657 (right!657 xs!637)))))))

(declare-fun d!11609 () Bool)

(declare-fun lt!2255 () Int)

(assert (=> d!11609 (>= lt!2255 0)))

(assert (=> d!11609 (= lt!2255 e!8630)))

(declare-fun c!4164 () Bool)

(assert (=> d!11609 (= c!4164 (or (is-Empty!20 (right!657 (right!657 xs!637))) (is-Single!9 (right!657 (right!657 xs!637)))))))

(assert (=> d!11609 (= (level!9 (right!657 (right!657 xs!637))) lt!2255)))

(declare-fun b!15804 () Bool)

(assert (=> b!15804 (= e!8630 0)))

(assert (= (and d!11609 c!4164) b!15804))

(assert (= (and d!11609 (not c!4164)) b!15805))

(declare-fun m!19269 () Bool)

(assert (=> b!15805 m!19269))

(declare-fun m!19271 () Bool)

(assert (=> b!15805 m!19271))

(assert (=> b!15585 d!11609))

(declare-fun b!15807 () Bool)

(declare-fun e!8631 () Int)

(declare-fun lt!2257 () Int)

(declare-fun lt!2256 () Int)

(assert (=> b!15807 (= e!8631 (+ 1 (ite (>= lt!2257 lt!2256) lt!2257 lt!2256)))))

(assert (=> b!15807 (= lt!2256 (level!9 (right!657 (left!654 (right!657 xs!637)))))))

(assert (=> b!15807 (= lt!2257 (level!9 (left!654 (left!654 (right!657 xs!637)))))))

(declare-fun d!11611 () Bool)

(declare-fun lt!2258 () Int)

(assert (=> d!11611 (>= lt!2258 0)))

(assert (=> d!11611 (= lt!2258 e!8631)))

(declare-fun c!4165 () Bool)

(assert (=> d!11611 (= c!4165 (or (is-Empty!20 (left!654 (right!657 xs!637))) (is-Single!9 (left!654 (right!657 xs!637)))))))

(assert (=> d!11611 (= (level!9 (left!654 (right!657 xs!637))) lt!2258)))

(declare-fun b!15806 () Bool)

(assert (=> b!15806 (= e!8631 0)))

(assert (= (and d!11611 c!4165) b!15806))

(assert (= (and d!11611 (not c!4165)) b!15807))

(declare-fun m!19273 () Bool)

(assert (=> b!15807 m!19273))

(declare-fun m!19275 () Bool)

(assert (=> b!15807 m!19275))

(assert (=> b!15585 d!11611))

(declare-fun d!11613 () Bool)

(declare-fun lt!2259 () Int)

(assert (=> d!11613 (>= lt!2259 0)))

(declare-fun e!8632 () Int)

(assert (=> d!11613 (= lt!2259 e!8632)))

(declare-fun c!4166 () Bool)

(assert (=> d!11613 (= c!4166 (is-Nil!318 (toList!83 (left!654 xs!637))))))

(assert (=> d!11613 (= (size!190 (toList!83 (left!654 xs!637))) lt!2259)))

(declare-fun b!15808 () Bool)

(assert (=> b!15808 (= e!8632 0)))

(declare-fun b!15809 () Bool)

(assert (=> b!15809 (= e!8632 (+ 1 (size!190 (t!4283 (toList!83 (left!654 xs!637))))))))

(assert (= (and d!11613 c!4166) b!15808))

(assert (= (and d!11613 (not c!4166)) b!15809))

(assert (=> b!15809 m!19193))

(assert (=> b!15699 d!11613))

(declare-fun d!11615 () Bool)

(declare-fun lt!2260 () Int)

(assert (=> d!11615 (>= lt!2260 0)))

(declare-fun e!8633 () Int)

(assert (=> d!11615 (= lt!2260 e!8633)))

(declare-fun c!4167 () Bool)

(assert (=> d!11615 (= c!4167 (is-Nil!318 lt!2235))))

(assert (=> d!11615 (= (size!190 lt!2235) lt!2260)))

(declare-fun b!15810 () Bool)

(assert (=> b!15810 (= e!8633 0)))

(declare-fun b!15811 () Bool)

(assert (=> b!15811 (= e!8633 (+ 1 (size!190 (t!4283 lt!2235))))))

(assert (= (and d!11615 c!4167) b!15810))

(assert (= (and d!11615 (not c!4167)) b!15811))

(declare-fun m!19277 () Bool)

(assert (=> b!15811 m!19277))

(assert (=> d!11565 d!11615))

(declare-fun b!15821 () Bool)

(declare-fun e!8639 () Int)

(declare-fun e!8638 () Int)

(assert (=> b!15821 (= e!8639 e!8638)))

(declare-fun c!4173 () Bool)

(assert (=> b!15821 (= c!4173 (is-Single!9 (left!654 xs!637)))))

(declare-fun b!15823 () Bool)

(assert (=> b!15823 (= e!8638 (+ (size!191 (left!654 (left!654 xs!637))) (size!191 (right!657 (left!654 xs!637)))))))

(declare-fun b!15822 () Bool)

(assert (=> b!15822 (= e!8638 1)))

(declare-fun d!11617 () Bool)

(declare-fun lt!2263 () Int)

(assert (=> d!11617 (>= lt!2263 0)))

(assert (=> d!11617 (= lt!2263 e!8639)))

(declare-fun c!4172 () Bool)

(assert (=> d!11617 (= c!4172 (is-Empty!20 (left!654 xs!637)))))

(assert (=> d!11617 (= (size!191 (left!654 xs!637)) lt!2263)))

(declare-fun b!15820 () Bool)

(assert (=> b!15820 (= e!8639 0)))

(assert (= (and b!15821 c!4173) b!15822))

(assert (= (and b!15821 (not c!4173)) b!15823))

(assert (= (and d!11617 c!4172) b!15820))

(assert (= (and d!11617 (not c!4172)) b!15821))

(declare-fun m!19279 () Bool)

(assert (=> b!15823 m!19279))

(declare-fun m!19281 () Bool)

(assert (=> b!15823 m!19281))

(assert (=> d!11565 d!11617))

(declare-fun d!11619 () Bool)

(assert (=> d!11619 (= (isEmpty!274 (right!657 (right!657 (_2!52 res!5659)))) (= (right!657 (right!657 (_2!52 res!5659))) Empty!20))))

(assert (=> b!15579 d!11619))

(declare-fun b!15833 () Bool)

(declare-fun e!8645 () List!323)

(assert (=> b!15833 (= e!8645 (Cons!317 (h!231 (toList!83 (left!654 (right!657 xs!637)))) (++!8 (t!4283 (toList!83 (left!654 (right!657 xs!637)))) (toList!83 (right!657 (right!657 xs!637))))))))

(declare-fun b!15832 () Bool)

(assert (=> b!15832 (= e!8645 (toList!83 (right!657 (right!657 xs!637))))))

(declare-fun d!11621 () Bool)

(declare-fun e!8644 () Bool)

(assert (=> d!11621 e!8644))

(declare-fun res!6447 () Bool)

(assert (=> d!11621 (=> (not res!6447) (not e!8644))))

(declare-fun lt!2266 () List!323)

(assert (=> d!11621 (= res!6447 (= (content!53 lt!2266) (union (content!53 (toList!83 (left!654 (right!657 xs!637)))) (content!53 (toList!83 (right!657 (right!657 xs!637)))))))))

(assert (=> d!11621 (= lt!2266 e!8645)))

(declare-fun c!4176 () Bool)

(assert (=> d!11621 (= c!4176 (is-Nil!318 (toList!83 (left!654 (right!657 xs!637)))))))

(assert (=> d!11621 (= (++!8 (toList!83 (left!654 (right!657 xs!637))) (toList!83 (right!657 (right!657 xs!637)))) lt!2266)))

(declare-fun b!15834 () Bool)

(declare-fun res!6446 () Bool)

(assert (=> b!15834 (=> (not res!6446) (not e!8644))))

(assert (=> b!15834 (= res!6446 (= (size!190 lt!2266) (+ (size!190 (toList!83 (left!654 (right!657 xs!637)))) (size!190 (toList!83 (right!657 (right!657 xs!637)))))))))

(declare-fun b!15835 () Bool)

(assert (=> b!15835 (= e!8644 (or (not (= (toList!83 (right!657 (right!657 xs!637))) Nil!318)) (= lt!2266 (toList!83 (left!654 (right!657 xs!637))))))))

(assert (= (and d!11621 c!4176) b!15832))

(assert (= (and d!11621 (not c!4176)) b!15833))

(assert (= (and d!11621 res!6447) b!15834))

(assert (= (and b!15834 res!6446) b!15835))

(assert (=> b!15833 m!19149))

(declare-fun m!19283 () Bool)

(assert (=> b!15833 m!19283))

(declare-fun m!19285 () Bool)

(assert (=> d!11621 m!19285))

(assert (=> d!11621 m!19147))

(declare-fun m!19287 () Bool)

(assert (=> d!11621 m!19287))

(assert (=> d!11621 m!19149))

(declare-fun m!19289 () Bool)

(assert (=> d!11621 m!19289))

(declare-fun m!19291 () Bool)

(assert (=> b!15834 m!19291))

(assert (=> b!15834 m!19147))

(declare-fun m!19293 () Bool)

(assert (=> b!15834 m!19293))

(assert (=> b!15834 m!19149))

(declare-fun m!19295 () Bool)

(assert (=> b!15834 m!19295))

(assert (=> b!15711 d!11621))

(declare-fun b!15839 () Bool)

(declare-fun e!8647 () List!323)

(assert (=> b!15839 (= e!8647 (++!8 (toList!83 (left!654 (left!654 (right!657 xs!637)))) (toList!83 (right!657 (left!654 (right!657 xs!637))))))))

(declare-fun b!15836 () Bool)

(declare-fun e!8646 () List!323)

(assert (=> b!15836 (= e!8646 Nil!318)))

(declare-fun b!15837 () Bool)

(assert (=> b!15837 (= e!8646 e!8647)))

(declare-fun c!4178 () Bool)

(assert (=> b!15837 (= c!4178 (is-Single!9 (left!654 (right!657 xs!637))))))

(declare-fun b!15838 () Bool)

(assert (=> b!15838 (= e!8647 (Cons!317 (x!8704 (left!654 (right!657 xs!637))) Nil!318))))

(declare-fun d!11623 () Bool)

(declare-fun lt!2267 () List!323)

(assert (=> d!11623 (= (size!190 lt!2267) (size!191 (left!654 (right!657 xs!637))))))

(assert (=> d!11623 (= lt!2267 e!8646)))

(declare-fun c!4177 () Bool)

(assert (=> d!11623 (= c!4177 (is-Empty!20 (left!654 (right!657 xs!637))))))

(assert (=> d!11623 (= (toList!83 (left!654 (right!657 xs!637))) lt!2267)))

(assert (= (and b!15837 c!4178) b!15838))

(assert (= (and b!15837 (not c!4178)) b!15839))

(assert (= (and d!11623 c!4177) b!15836))

(assert (= (and d!11623 (not c!4177)) b!15837))

(declare-fun m!19297 () Bool)

(assert (=> b!15839 m!19297))

(declare-fun m!19299 () Bool)

(assert (=> b!15839 m!19299))

(assert (=> b!15839 m!19297))

(assert (=> b!15839 m!19299))

(declare-fun m!19301 () Bool)

(assert (=> b!15839 m!19301))

(declare-fun m!19303 () Bool)

(assert (=> d!11623 m!19303))

(declare-fun m!19305 () Bool)

(assert (=> d!11623 m!19305))

(assert (=> b!15711 d!11623))

(declare-fun b!15843 () Bool)

(declare-fun e!8649 () List!323)

(assert (=> b!15843 (= e!8649 (++!8 (toList!83 (left!654 (right!657 (right!657 xs!637)))) (toList!83 (right!657 (right!657 (right!657 xs!637))))))))

(declare-fun b!15840 () Bool)

(declare-fun e!8648 () List!323)

(assert (=> b!15840 (= e!8648 Nil!318)))

(declare-fun b!15841 () Bool)

(assert (=> b!15841 (= e!8648 e!8649)))

(declare-fun c!4180 () Bool)

(assert (=> b!15841 (= c!4180 (is-Single!9 (right!657 (right!657 xs!637))))))

(declare-fun b!15842 () Bool)

(assert (=> b!15842 (= e!8649 (Cons!317 (x!8704 (right!657 (right!657 xs!637))) Nil!318))))

(declare-fun d!11625 () Bool)

(declare-fun lt!2268 () List!323)

(assert (=> d!11625 (= (size!190 lt!2268) (size!191 (right!657 (right!657 xs!637))))))

(assert (=> d!11625 (= lt!2268 e!8648)))

(declare-fun c!4179 () Bool)

(assert (=> d!11625 (= c!4179 (is-Empty!20 (right!657 (right!657 xs!637))))))

(assert (=> d!11625 (= (toList!83 (right!657 (right!657 xs!637))) lt!2268)))

(assert (= (and b!15841 c!4180) b!15842))

(assert (= (and b!15841 (not c!4180)) b!15843))

(assert (= (and d!11625 c!4179) b!15840))

(assert (= (and d!11625 (not c!4179)) b!15841))

(declare-fun m!19307 () Bool)

(assert (=> b!15843 m!19307))

(declare-fun m!19309 () Bool)

(assert (=> b!15843 m!19309))

(assert (=> b!15843 m!19307))

(assert (=> b!15843 m!19309))

(declare-fun m!19311 () Bool)

(assert (=> b!15843 m!19311))

(declare-fun m!19313 () Bool)

(assert (=> d!11625 m!19313))

(declare-fun m!19315 () Bool)

(assert (=> d!11625 m!19315))

(assert (=> b!15711 d!11625))

(declare-fun d!11627 () Bool)

(declare-fun e!8650 () Bool)

(assert (=> d!11627 e!8650))

(declare-fun res!6448 () Bool)

(assert (=> d!11627 (=> (not res!6448) (not e!8650))))

(declare-fun lt!2269 () List!323)

(assert (=> d!11627 (= res!6448 (subset (content!53 lt!2269) (content!53 (toList!83 (right!657 xs!637)))))))

(declare-fun e!8651 () List!323)

(assert (=> d!11627 (= lt!2269 e!8651)))

(declare-fun c!4183 () Bool)

(assert (=> d!11627 (= c!4183 (is-Nil!318 (toList!83 (right!657 xs!637))))))

(assert (=> d!11627 (= (drop!6 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637))))) lt!2269)))

(declare-fun b!15844 () Bool)

(declare-fun e!8652 () List!323)

(assert (=> b!15844 (= e!8651 e!8652)))

(declare-fun c!4184 () Bool)

(assert (=> b!15844 (= c!4184 (<= (- n!315 (size!190 (toList!83 (left!654 xs!637)))) 0))))

(declare-fun b!15845 () Bool)

(declare-fun e!8653 () Int)

(declare-fun lt!2270 () Int)

(assert (=> b!15845 (= e!8653 lt!2270)))

(declare-fun b!15846 () Bool)

(declare-fun e!8654 () Int)

(assert (=> b!15846 (= e!8653 e!8654)))

(declare-fun c!4181 () Bool)

(assert (=> b!15846 (= c!4181 (>= (- n!315 (size!190 (toList!83 (left!654 xs!637)))) lt!2270))))

(declare-fun b!15847 () Bool)

(assert (=> b!15847 (= e!8652 (Cons!317 (h!231 (toList!83 (right!657 xs!637))) (t!4283 (toList!83 (right!657 xs!637)))))))

(declare-fun b!15848 () Bool)

(assert (=> b!15848 (= e!8654 0)))

(declare-fun b!15849 () Bool)

(assert (=> b!15849 (= e!8650 (= (size!190 lt!2269) e!8653))))

(declare-fun c!4182 () Bool)

(assert (=> b!15849 (= c!4182 (<= (- n!315 (size!190 (toList!83 (left!654 xs!637)))) 0))))

(assert (=> b!15849 (= lt!2270 (size!190 (toList!83 (right!657 xs!637))))))

(declare-fun b!15850 () Bool)

(assert (=> b!15850 (= e!8651 Nil!318)))

(declare-fun b!15851 () Bool)

(assert (=> b!15851 (= e!8652 (drop!6 (t!4283 (toList!83 (right!657 xs!637))) (- (- n!315 (size!190 (toList!83 (left!654 xs!637)))) 1)))))

(declare-fun b!15852 () Bool)

(assert (=> b!15852 (= e!8654 (- (size!190 (toList!83 (right!657 xs!637))) (- n!315 (size!190 (toList!83 (left!654 xs!637))))))))

(assert (= (and b!15844 c!4184) b!15847))

(assert (= (and b!15844 (not c!4184)) b!15851))

(assert (= (and d!11627 c!4183) b!15850))

(assert (= (and d!11627 (not c!4183)) b!15844))

(assert (= (and d!11627 res!6448) b!15849))

(assert (= (and b!15846 c!4181) b!15848))

(assert (= (and b!15846 (not c!4181)) b!15852))

(assert (= (and b!15849 c!4182) b!15845))

(assert (= (and b!15849 (not c!4182)) b!15846))

(declare-fun m!19317 () Bool)

(assert (=> d!11627 m!19317))

(assert (=> d!11627 m!18945))

(declare-fun m!19319 () Bool)

(assert (=> d!11627 m!19319))

(declare-fun m!19321 () Bool)

(assert (=> b!15849 m!19321))

(assert (=> b!15849 m!18945))

(declare-fun m!19323 () Bool)

(assert (=> b!15849 m!19323))

(declare-fun m!19325 () Bool)

(assert (=> b!15851 m!19325))

(assert (=> b!15852 m!18945))

(assert (=> b!15852 m!19323))

(assert (=> b!15703 d!11627))

(assert (=> b!15703 d!11613))

(declare-fun b!15853 () Bool)

(declare-fun e!8656 () Bool)

(declare-fun e!8655 () Bool)

(assert (=> b!15853 (= e!8656 e!8655)))

(declare-fun res!6449 () Bool)

(assert (=> b!15853 (=> (not res!6449) (not e!8655))))

(assert (=> b!15853 (= res!6449 (>= (- (level!9 (left!654 (left!654 (left!654 xs!637)))) (level!9 (right!657 (left!654 (left!654 xs!637))))) (- 1)))))

(declare-fun b!15856 () Bool)

(assert (=> b!15856 (= e!8655 (balanced!10 (right!657 (left!654 (left!654 xs!637)))))))

(declare-fun b!15854 () Bool)

(declare-fun res!6452 () Bool)

(assert (=> b!15854 (=> (not res!6452) (not e!8655))))

(assert (=> b!15854 (= res!6452 (<= (- (level!9 (left!654 (left!654 (left!654 xs!637)))) (level!9 (right!657 (left!654 (left!654 xs!637))))) 1))))

(declare-fun d!11629 () Bool)

(declare-fun res!6451 () Bool)

(assert (=> d!11629 (=> res!6451 e!8656)))

(assert (=> d!11629 (= res!6451 (not (is-CC!9 (left!654 (left!654 xs!637)))))))

(assert (=> d!11629 (= (balanced!10 (left!654 (left!654 xs!637))) e!8656)))

(declare-fun b!15855 () Bool)

(declare-fun res!6450 () Bool)

(assert (=> b!15855 (=> (not res!6450) (not e!8655))))

(assert (=> b!15855 (= res!6450 (balanced!10 (left!654 (left!654 (left!654 xs!637)))))))

(assert (= (and d!11629 (not res!6451)) b!15853))

(assert (= (and b!15853 res!6449) b!15854))

(assert (= (and b!15854 res!6452) b!15855))

(assert (= (and b!15855 res!6450) b!15856))

(assert (=> b!15853 m!19265))

(assert (=> b!15853 m!19263))

(declare-fun m!19327 () Bool)

(assert (=> b!15856 m!19327))

(assert (=> b!15854 m!19265))

(assert (=> b!15854 m!19263))

(declare-fun m!19329 () Bool)

(assert (=> b!15855 m!19329))

(assert (=> b!15722 d!11629))

(declare-fun b!15857 () Bool)

(declare-fun e!8659 () Bool)

(declare-fun lt!2271 () List!323)

(declare-fun e!8658 () Int)

(assert (=> b!15857 (= e!8659 (= (size!190 lt!2271) e!8658))))

(declare-fun c!4187 () Bool)

(assert (=> b!15857 (= c!4187 (<= (- n!315 1) 0))))

(declare-fun b!15858 () Bool)

(declare-fun e!8660 () Int)

(assert (=> b!15858 (= e!8660 (size!190 (t!4283 (toList!83 xs!637))))))

(declare-fun b!15859 () Bool)

(assert (=> b!15859 (= e!8658 0)))

(declare-fun b!15860 () Bool)

(assert (=> b!15860 (= e!8660 (- n!315 1))))

(declare-fun b!15861 () Bool)

(declare-fun e!8657 () List!323)

(assert (=> b!15861 (= e!8657 Nil!318)))

(declare-fun d!11631 () Bool)

(assert (=> d!11631 e!8659))

(declare-fun res!6453 () Bool)

(assert (=> d!11631 (=> (not res!6453) (not e!8659))))

(assert (=> d!11631 (= res!6453 (subset (content!53 lt!2271) (content!53 (t!4283 (toList!83 xs!637)))))))

(assert (=> d!11631 (= lt!2271 e!8657)))

(declare-fun c!4185 () Bool)

(assert (=> d!11631 (= c!4185 (or (is-Nil!318 (t!4283 (toList!83 xs!637))) (<= (- n!315 1) 0)))))

(assert (=> d!11631 (= (take!8 (t!4283 (toList!83 xs!637)) (- n!315 1)) lt!2271)))

(declare-fun b!15862 () Bool)

(assert (=> b!15862 (= e!8657 (Cons!317 (h!231 (t!4283 (toList!83 xs!637))) (take!8 (t!4283 (t!4283 (toList!83 xs!637))) (- (- n!315 1) 1))))))

(declare-fun b!15863 () Bool)

(assert (=> b!15863 (= e!8658 e!8660)))

(declare-fun c!4186 () Bool)

(assert (=> b!15863 (= c!4186 (>= (- n!315 1) (size!190 (t!4283 (toList!83 xs!637)))))))

(assert (= (and d!11631 c!4185) b!15861))

(assert (= (and d!11631 (not c!4185)) b!15862))

(assert (= (and d!11631 res!6453) b!15857))

(assert (= (and b!15863 c!4186) b!15858))

(assert (= (and b!15863 (not c!4186)) b!15860))

(assert (= (and b!15857 c!4187) b!15859))

(assert (= (and b!15857 (not c!4187)) b!15863))

(assert (=> b!15863 m!19267))

(declare-fun m!19331 () Bool)

(assert (=> d!11631 m!19331))

(declare-fun m!19333 () Bool)

(assert (=> d!11631 m!19333))

(assert (=> b!15858 m!19267))

(declare-fun m!19335 () Bool)

(assert (=> b!15857 m!19335))

(declare-fun m!19337 () Bool)

(assert (=> b!15862 m!19337))

(assert (=> b!15633 d!11631))

(declare-fun b!15864 () Bool)

(declare-fun e!8661 () Bool)

(declare-fun e!8662 () Bool)

(assert (=> b!15864 (= e!8661 e!8662)))

(declare-fun res!6457 () Bool)

(assert (=> b!15864 (=> (not res!6457) (not e!8662))))

(assert (=> b!15864 (= res!6457 (not (isEmpty!274 (left!654 (right!657 (left!654 xs!637))))))))

(declare-fun d!11633 () Bool)

(declare-fun res!6454 () Bool)

(assert (=> d!11633 (=> res!6454 e!8661)))

(assert (=> d!11633 (= res!6454 (not (is-CC!9 (right!657 (left!654 xs!637)))))))

(assert (=> d!11633 (= (concInv!9 (right!657 (left!654 xs!637))) e!8661)))

(declare-fun b!15866 () Bool)

(declare-fun res!6456 () Bool)

(assert (=> b!15866 (=> (not res!6456) (not e!8662))))

(assert (=> b!15866 (= res!6456 (concInv!9 (left!654 (right!657 (left!654 xs!637)))))))

(declare-fun b!15865 () Bool)

(declare-fun res!6455 () Bool)

(assert (=> b!15865 (=> (not res!6455) (not e!8662))))

(assert (=> b!15865 (= res!6455 (not (isEmpty!274 (right!657 (right!657 (left!654 xs!637))))))))

(declare-fun b!15867 () Bool)

(assert (=> b!15867 (= e!8662 (concInv!9 (right!657 (right!657 (left!654 xs!637)))))))

(assert (= (and d!11633 (not res!6454)) b!15864))

(assert (= (and b!15864 res!6457) b!15865))

(assert (= (and b!15865 res!6455) b!15866))

(assert (= (and b!15866 res!6456) b!15867))

(declare-fun m!19339 () Bool)

(assert (=> b!15864 m!19339))

(declare-fun m!19341 () Bool)

(assert (=> b!15866 m!19341))

(declare-fun m!19343 () Bool)

(assert (=> b!15865 m!19343))

(declare-fun m!19345 () Bool)

(assert (=> b!15867 m!19345))

(assert (=> b!15731 d!11633))

(declare-fun b!15868 () Bool)

(declare-fun e!8663 () Bool)

(declare-fun e!8664 () Bool)

(assert (=> b!15868 (= e!8663 e!8664)))

(declare-fun res!6461 () Bool)

(assert (=> b!15868 (=> (not res!6461) (not e!8664))))

(assert (=> b!15868 (= res!6461 (not (isEmpty!274 (left!654 (right!657 (left!654 (_1!52 res!5659)))))))))

(declare-fun d!11635 () Bool)

(declare-fun res!6458 () Bool)

(assert (=> d!11635 (=> res!6458 e!8663)))

(assert (=> d!11635 (= res!6458 (not (is-CC!9 (right!657 (left!654 (_1!52 res!5659))))))))

(assert (=> d!11635 (= (concInv!9 (right!657 (left!654 (_1!52 res!5659)))) e!8663)))

(declare-fun b!15870 () Bool)

(declare-fun res!6460 () Bool)

(assert (=> b!15870 (=> (not res!6460) (not e!8664))))

(assert (=> b!15870 (= res!6460 (concInv!9 (left!654 (right!657 (left!654 (_1!52 res!5659))))))))

(declare-fun b!15869 () Bool)

(declare-fun res!6459 () Bool)

(assert (=> b!15869 (=> (not res!6459) (not e!8664))))

(assert (=> b!15869 (= res!6459 (not (isEmpty!274 (right!657 (right!657 (left!654 (_1!52 res!5659)))))))))

(declare-fun b!15871 () Bool)

(assert (=> b!15871 (= e!8664 (concInv!9 (right!657 (right!657 (left!654 (_1!52 res!5659))))))))

(assert (= (and d!11635 (not res!6458)) b!15868))

(assert (= (and b!15868 res!6461) b!15869))

(assert (= (and b!15869 res!6459) b!15870))

(assert (= (and b!15870 res!6460) b!15871))

(declare-fun m!19347 () Bool)

(assert (=> b!15868 m!19347))

(declare-fun m!19349 () Bool)

(assert (=> b!15870 m!19349))

(declare-fun m!19351 () Bool)

(assert (=> b!15869 m!19351))

(declare-fun m!19353 () Bool)

(assert (=> b!15871 m!19353))

(assert (=> b!15715 d!11635))

(declare-fun d!11637 () Bool)

(declare-fun c!4190 () Bool)

(assert (=> d!11637 (= c!4190 (is-Nil!318 lt!2223))))

(declare-fun e!8667 () (Set T!1711))

(assert (=> d!11637 (= (content!53 lt!2223) e!8667)))

(declare-fun b!15876 () Bool)

(assert (=> b!15876 (= e!8667 (as emptyset (Set T!1711)))))

(declare-fun b!15877 () Bool)

(assert (=> b!15877 (= e!8667 (union (insert (h!231 lt!2223) (as emptyset (Set T!1711))) (content!53 (t!4283 lt!2223))))))

(assert (= (and d!11637 c!4190) b!15876))

(assert (= (and d!11637 (not c!4190)) b!15877))

(declare-fun m!19355 () Bool)

(assert (=> b!15877 m!19355))

(declare-fun m!19357 () Bool)

(assert (=> b!15877 m!19357))

(assert (=> d!11547 d!11637))

(declare-fun d!11639 () Bool)

(declare-fun c!4191 () Bool)

(assert (=> d!11639 (= c!4191 (is-Nil!318 (toList!83 xs!637)))))

(declare-fun e!8668 () (Set T!1711))

(assert (=> d!11639 (= (content!53 (toList!83 xs!637)) e!8668)))

(declare-fun b!15878 () Bool)

(assert (=> b!15878 (= e!8668 (as emptyset (Set T!1711)))))

(declare-fun b!15879 () Bool)

(assert (=> b!15879 (= e!8668 (union (insert (h!231 (toList!83 xs!637)) (as emptyset (Set T!1711))) (content!53 (t!4283 (toList!83 xs!637)))))))

(assert (= (and d!11639 c!4191) b!15878))

(assert (= (and d!11639 (not c!4191)) b!15879))

(declare-fun m!19359 () Bool)

(assert (=> b!15879 m!19359))

(assert (=> b!15879 m!19333))

(assert (=> d!11547 d!11639))

(declare-fun b!15880 () Bool)

(declare-fun e!8669 () Bool)

(declare-fun e!8670 () Bool)

(assert (=> b!15880 (= e!8669 e!8670)))

(declare-fun res!6465 () Bool)

(assert (=> b!15880 (=> (not res!6465) (not e!8670))))

(assert (=> b!15880 (= res!6465 (not (isEmpty!274 (left!654 (left!654 (right!657 (_2!52 res!5659)))))))))

(declare-fun d!11641 () Bool)

(declare-fun res!6462 () Bool)

(assert (=> d!11641 (=> res!6462 e!8669)))

(assert (=> d!11641 (= res!6462 (not (is-CC!9 (left!654 (right!657 (_2!52 res!5659))))))))

(assert (=> d!11641 (= (concInv!9 (left!654 (right!657 (_2!52 res!5659)))) e!8669)))

(declare-fun b!15882 () Bool)

(declare-fun res!6464 () Bool)

(assert (=> b!15882 (=> (not res!6464) (not e!8670))))

(assert (=> b!15882 (= res!6464 (concInv!9 (left!654 (left!654 (right!657 (_2!52 res!5659))))))))

(declare-fun b!15881 () Bool)

(declare-fun res!6463 () Bool)

(assert (=> b!15881 (=> (not res!6463) (not e!8670))))

(assert (=> b!15881 (= res!6463 (not (isEmpty!274 (right!657 (left!654 (right!657 (_2!52 res!5659)))))))))

(declare-fun b!15883 () Bool)

(assert (=> b!15883 (= e!8670 (concInv!9 (right!657 (left!654 (right!657 (_2!52 res!5659))))))))

(assert (= (and d!11641 (not res!6462)) b!15880))

(assert (= (and b!15880 res!6465) b!15881))

(assert (= (and b!15881 res!6463) b!15882))

(assert (= (and b!15882 res!6464) b!15883))

(declare-fun m!19361 () Bool)

(assert (=> b!15880 m!19361))

(declare-fun m!19363 () Bool)

(assert (=> b!15882 m!19363))

(declare-fun m!19365 () Bool)

(assert (=> b!15881 m!19365))

(declare-fun m!19367 () Bool)

(assert (=> b!15883 m!19367))

(assert (=> b!15580 d!11641))

(declare-fun b!15885 () Bool)

(declare-fun e!8671 () Int)

(declare-fun lt!2273 () Int)

(declare-fun lt!2272 () Int)

(assert (=> b!15885 (= e!8671 (+ 1 (ite (>= lt!2273 lt!2272) lt!2273 lt!2272)))))

(assert (=> b!15885 (= lt!2272 (level!9 (right!657 (left!654 (left!654 (_2!52 res!5659))))))))

(assert (=> b!15885 (= lt!2273 (level!9 (left!654 (left!654 (left!654 (_2!52 res!5659))))))))

(declare-fun d!11643 () Bool)

(declare-fun lt!2274 () Int)

(assert (=> d!11643 (>= lt!2274 0)))

(assert (=> d!11643 (= lt!2274 e!8671)))

(declare-fun c!4192 () Bool)

(assert (=> d!11643 (= c!4192 (or (is-Empty!20 (left!654 (left!654 (_2!52 res!5659)))) (is-Single!9 (left!654 (left!654 (_2!52 res!5659))))))))

(assert (=> d!11643 (= (level!9 (left!654 (left!654 (_2!52 res!5659)))) lt!2274)))

(declare-fun b!15884 () Bool)

(assert (=> b!15884 (= e!8671 0)))

(assert (= (and d!11643 c!4192) b!15884))

(assert (= (and d!11643 (not c!4192)) b!15885))

(declare-fun m!19369 () Bool)

(assert (=> b!15885 m!19369))

(declare-fun m!19371 () Bool)

(assert (=> b!15885 m!19371))

(assert (=> b!15590 d!11643))

(declare-fun b!15887 () Bool)

(declare-fun e!8672 () Int)

(declare-fun lt!2276 () Int)

(declare-fun lt!2275 () Int)

(assert (=> b!15887 (= e!8672 (+ 1 (ite (>= lt!2276 lt!2275) lt!2276 lt!2275)))))

(assert (=> b!15887 (= lt!2275 (level!9 (right!657 (right!657 (left!654 (_2!52 res!5659))))))))

(assert (=> b!15887 (= lt!2276 (level!9 (left!654 (right!657 (left!654 (_2!52 res!5659))))))))

(declare-fun d!11645 () Bool)

(declare-fun lt!2277 () Int)

(assert (=> d!11645 (>= lt!2277 0)))

(assert (=> d!11645 (= lt!2277 e!8672)))

(declare-fun c!4193 () Bool)

(assert (=> d!11645 (= c!4193 (or (is-Empty!20 (right!657 (left!654 (_2!52 res!5659)))) (is-Single!9 (right!657 (left!654 (_2!52 res!5659))))))))

(assert (=> d!11645 (= (level!9 (right!657 (left!654 (_2!52 res!5659)))) lt!2277)))

(declare-fun b!15886 () Bool)

(assert (=> b!15886 (= e!8672 0)))

(assert (= (and d!11645 c!4193) b!15886))

(assert (= (and d!11645 (not c!4193)) b!15887))

(declare-fun m!19373 () Bool)

(assert (=> b!15887 m!19373))

(declare-fun m!19375 () Bool)

(assert (=> b!15887 m!19375))

(assert (=> b!15590 d!11645))

(declare-fun d!11647 () Bool)

(declare-fun lt!2278 () Int)

(assert (=> d!11647 (>= lt!2278 0)))

(declare-fun e!8673 () Int)

(assert (=> d!11647 (= lt!2278 e!8673)))

(declare-fun c!4194 () Bool)

(assert (=> d!11647 (= c!4194 (is-Nil!318 lt!2230))))

(assert (=> d!11647 (= (size!190 lt!2230) lt!2278)))

(declare-fun b!15888 () Bool)

(assert (=> b!15888 (= e!8673 0)))

(declare-fun b!15889 () Bool)

(assert (=> b!15889 (= e!8673 (+ 1 (size!190 (t!4283 lt!2230))))))

(assert (= (and d!11647 c!4194) b!15888))

(assert (= (and d!11647 (not c!4194)) b!15889))

(declare-fun m!19377 () Bool)

(assert (=> b!15889 m!19377))

(assert (=> b!15670 d!11647))

(assert (=> b!15670 d!11607))

(declare-fun b!15890 () Bool)

(declare-fun e!8675 () Bool)

(declare-fun e!8674 () Bool)

(assert (=> b!15890 (= e!8675 e!8674)))

(declare-fun res!6466 () Bool)

(assert (=> b!15890 (=> (not res!6466) (not e!8674))))

(assert (=> b!15890 (= res!6466 (>= (- (level!9 (left!654 (left!654 (right!657 (_1!52 res!5659))))) (level!9 (right!657 (left!654 (right!657 (_1!52 res!5659)))))) (- 1)))))

(declare-fun b!15893 () Bool)

(assert (=> b!15893 (= e!8674 (balanced!10 (right!657 (left!654 (right!657 (_1!52 res!5659))))))))

(declare-fun b!15891 () Bool)

(declare-fun res!6469 () Bool)

(assert (=> b!15891 (=> (not res!6469) (not e!8674))))

(assert (=> b!15891 (= res!6469 (<= (- (level!9 (left!654 (left!654 (right!657 (_1!52 res!5659))))) (level!9 (right!657 (left!654 (right!657 (_1!52 res!5659)))))) 1))))

(declare-fun d!11649 () Bool)

(declare-fun res!6468 () Bool)

(assert (=> d!11649 (=> res!6468 e!8675)))

(assert (=> d!11649 (= res!6468 (not (is-CC!9 (left!654 (right!657 (_1!52 res!5659))))))))

(assert (=> d!11649 (= (balanced!10 (left!654 (right!657 (_1!52 res!5659)))) e!8675)))

(declare-fun b!15892 () Bool)

(declare-fun res!6467 () Bool)

(assert (=> b!15892 (=> (not res!6467) (not e!8674))))

(assert (=> b!15892 (= res!6467 (balanced!10 (left!654 (left!654 (right!657 (_1!52 res!5659))))))))

(assert (= (and d!11649 (not res!6468)) b!15890))

(assert (= (and b!15890 res!6466) b!15891))

(assert (= (and b!15891 res!6469) b!15892))

(assert (= (and b!15892 res!6467) b!15893))

(declare-fun m!19379 () Bool)

(assert (=> b!15890 m!19379))

(declare-fun m!19381 () Bool)

(assert (=> b!15890 m!19381))

(declare-fun m!19383 () Bool)

(assert (=> b!15893 m!19383))

(assert (=> b!15891 m!19379))

(assert (=> b!15891 m!19381))

(declare-fun m!19385 () Bool)

(assert (=> b!15892 m!19385))

(assert (=> b!15726 d!11649))

(declare-fun d!11651 () Bool)

(declare-fun lt!2279 () Int)

(assert (=> d!11651 (>= lt!2279 0)))

(declare-fun e!8676 () Int)

(assert (=> d!11651 (= lt!2279 e!8676)))

(declare-fun c!4195 () Bool)

(assert (=> d!11651 (= c!4195 (is-Nil!318 lt!2224))))

(assert (=> d!11651 (= (size!190 lt!2224) lt!2279)))

(declare-fun b!15894 () Bool)

(assert (=> b!15894 (= e!8676 0)))

(declare-fun b!15895 () Bool)

(assert (=> b!15895 (= e!8676 (+ 1 (size!190 (t!4283 lt!2224))))))

(assert (= (and d!11651 c!4195) b!15894))

(assert (= (and d!11651 (not c!4195)) b!15895))

(declare-fun m!19387 () Bool)

(assert (=> b!15895 m!19387))

(assert (=> d!11549 d!11651))

(declare-fun b!15897 () Bool)

(declare-fun e!8678 () Int)

(declare-fun e!8677 () Int)

(assert (=> b!15897 (= e!8678 e!8677)))

(declare-fun c!4197 () Bool)

(assert (=> b!15897 (= c!4197 (is-Single!9 xs!637))))

(declare-fun b!15899 () Bool)

(assert (=> b!15899 (= e!8677 (+ (size!191 (left!654 xs!637)) (size!191 (right!657 xs!637))))))

(declare-fun b!15898 () Bool)

(assert (=> b!15898 (= e!8677 1)))

(declare-fun d!11653 () Bool)

(declare-fun lt!2280 () Int)

(assert (=> d!11653 (>= lt!2280 0)))

(assert (=> d!11653 (= lt!2280 e!8678)))

(declare-fun c!4196 () Bool)

(assert (=> d!11653 (= c!4196 (is-Empty!20 xs!637))))

(assert (=> d!11653 (= (size!191 xs!637) lt!2280)))

(declare-fun b!15896 () Bool)

(assert (=> b!15896 (= e!8678 0)))

(assert (= (and b!15897 c!4197) b!15898))

(assert (= (and b!15897 (not c!4197)) b!15899))

(assert (= (and d!11653 c!4196) b!15896))

(assert (= (and d!11653 (not c!4196)) b!15897))

(assert (=> b!15899 m!19145))

(assert (=> b!15899 m!19155))

(assert (=> d!11549 d!11653))

(declare-fun d!11655 () Bool)

(declare-fun lt!2281 () Int)

(assert (=> d!11655 (>= lt!2281 0)))

(declare-fun e!8679 () Int)

(assert (=> d!11655 (= lt!2281 e!8679)))

(declare-fun c!4198 () Bool)

(assert (=> d!11655 (= c!4198 (is-Nil!318 lt!2220))))

(assert (=> d!11655 (= (size!190 lt!2220) lt!2281)))

(declare-fun b!15900 () Bool)

(assert (=> b!15900 (= e!8679 0)))

(declare-fun b!15901 () Bool)

(assert (=> b!15901 (= e!8679 (+ 1 (size!190 (t!4283 lt!2220))))))

(assert (= (and d!11655 c!4198) b!15900))

(assert (= (and d!11655 (not c!4198)) b!15901))

(declare-fun m!19389 () Bool)

(assert (=> b!15901 m!19389))

(assert (=> d!11545 d!11655))

(declare-fun b!15903 () Bool)

(declare-fun e!8681 () Int)

(declare-fun e!8680 () Int)

(assert (=> b!15903 (= e!8681 e!8680)))

(declare-fun c!4200 () Bool)

(assert (=> b!15903 (= c!4200 (is-Single!9 (_1!52 res!5659)))))

(declare-fun b!15905 () Bool)

(assert (=> b!15905 (= e!8680 (+ (size!191 (left!654 (_1!52 res!5659))) (size!191 (right!657 (_1!52 res!5659)))))))

(declare-fun b!15904 () Bool)

(assert (=> b!15904 (= e!8680 1)))

(declare-fun d!11657 () Bool)

(declare-fun lt!2282 () Int)

(assert (=> d!11657 (>= lt!2282 0)))

(assert (=> d!11657 (= lt!2282 e!8681)))

(declare-fun c!4199 () Bool)

(assert (=> d!11657 (= c!4199 (is-Empty!20 (_1!52 res!5659)))))

(assert (=> d!11657 (= (size!191 (_1!52 res!5659)) lt!2282)))

(declare-fun b!15902 () Bool)

(assert (=> b!15902 (= e!8681 0)))

(assert (= (and b!15903 c!4200) b!15904))

(assert (= (and b!15903 (not c!4200)) b!15905))

(assert (= (and d!11657 c!4199) b!15902))

(assert (= (and d!11657 (not c!4199)) b!15903))

(declare-fun m!19391 () Bool)

(assert (=> b!15905 m!19391))

(declare-fun m!19393 () Bool)

(assert (=> b!15905 m!19393))

(assert (=> d!11545 d!11657))

(declare-fun d!11659 () Bool)

(assert (=> d!11659 (= (isEmpty!274 (left!654 (left!654 (_1!52 res!5659)))) (= (left!654 (left!654 (_1!52 res!5659))) Empty!20))))

(assert (=> b!15712 d!11659))

(declare-fun b!15906 () Bool)

(declare-fun e!8682 () Bool)

(declare-fun e!8683 () Bool)

(assert (=> b!15906 (= e!8682 e!8683)))

(declare-fun res!6473 () Bool)

(assert (=> b!15906 (=> (not res!6473) (not e!8683))))

(assert (=> b!15906 (= res!6473 (not (isEmpty!274 (left!654 (left!654 (right!657 (_1!52 res!5659)))))))))

(declare-fun d!11661 () Bool)

(declare-fun res!6470 () Bool)

(assert (=> d!11661 (=> res!6470 e!8682)))

(assert (=> d!11661 (= res!6470 (not (is-CC!9 (left!654 (right!657 (_1!52 res!5659))))))))

(assert (=> d!11661 (= (concInv!9 (left!654 (right!657 (_1!52 res!5659)))) e!8682)))

(declare-fun b!15908 () Bool)

(declare-fun res!6472 () Bool)

(assert (=> b!15908 (=> (not res!6472) (not e!8683))))

(assert (=> b!15908 (= res!6472 (concInv!9 (left!654 (left!654 (right!657 (_1!52 res!5659))))))))

(declare-fun b!15907 () Bool)

(declare-fun res!6471 () Bool)

(assert (=> b!15907 (=> (not res!6471) (not e!8683))))

(assert (=> b!15907 (= res!6471 (not (isEmpty!274 (right!657 (left!654 (right!657 (_1!52 res!5659)))))))))

(declare-fun b!15909 () Bool)

(assert (=> b!15909 (= e!8683 (concInv!9 (right!657 (left!654 (right!657 (_1!52 res!5659))))))))

(assert (= (and d!11661 (not res!6470)) b!15906))

(assert (= (and b!15906 res!6473) b!15907))

(assert (= (and b!15907 res!6471) b!15908))

(assert (= (and b!15908 res!6472) b!15909))

(declare-fun m!19395 () Bool)

(assert (=> b!15906 m!19395))

(declare-fun m!19397 () Bool)

(assert (=> b!15908 m!19397))

(declare-fun m!19399 () Bool)

(assert (=> b!15907 m!19399))

(declare-fun m!19401 () Bool)

(assert (=> b!15909 m!19401))

(assert (=> b!15596 d!11661))

(assert (=> b!15721 d!11603))

(assert (=> b!15721 d!11605))

(assert (=> b!15586 d!11611))

(assert (=> b!15586 d!11609))

(declare-fun b!15910 () Bool)

(declare-fun e!8685 () Bool)

(declare-fun e!8684 () Bool)

(assert (=> b!15910 (= e!8685 e!8684)))

(declare-fun res!6474 () Bool)

(assert (=> b!15910 (=> (not res!6474) (not e!8684))))

(assert (=> b!15910 (= res!6474 (>= (- (level!9 (left!654 (right!657 (left!654 (_1!52 res!5659))))) (level!9 (right!657 (right!657 (left!654 (_1!52 res!5659)))))) (- 1)))))

(declare-fun b!15913 () Bool)

(assert (=> b!15913 (= e!8684 (balanced!10 (right!657 (right!657 (left!654 (_1!52 res!5659))))))))

(declare-fun b!15911 () Bool)

(declare-fun res!6477 () Bool)

(assert (=> b!15911 (=> (not res!6477) (not e!8684))))

(assert (=> b!15911 (= res!6477 (<= (- (level!9 (left!654 (right!657 (left!654 (_1!52 res!5659))))) (level!9 (right!657 (right!657 (left!654 (_1!52 res!5659)))))) 1))))

(declare-fun d!11663 () Bool)

(declare-fun res!6476 () Bool)

(assert (=> d!11663 (=> res!6476 e!8685)))

(assert (=> d!11663 (= res!6476 (not (is-CC!9 (right!657 (left!654 (_1!52 res!5659))))))))

(assert (=> d!11663 (= (balanced!10 (right!657 (left!654 (_1!52 res!5659)))) e!8685)))

(declare-fun b!15912 () Bool)

(declare-fun res!6475 () Bool)

(assert (=> b!15912 (=> (not res!6475) (not e!8684))))

(assert (=> b!15912 (= res!6475 (balanced!10 (left!654 (right!657 (left!654 (_1!52 res!5659))))))))

(assert (= (and d!11663 (not res!6476)) b!15910))

(assert (= (and b!15910 res!6474) b!15911))

(assert (= (and b!15911 res!6477) b!15912))

(assert (= (and b!15912 res!6475) b!15913))

(assert (=> b!15910 m!19225))

(assert (=> b!15910 m!19223))

(declare-fun m!19403 () Bool)

(assert (=> b!15913 m!19403))

(assert (=> b!15911 m!19225))

(assert (=> b!15911 m!19223))

(declare-fun m!19405 () Bool)

(assert (=> b!15912 m!19405))

(assert (=> b!15719 d!11663))

(declare-fun b!15915 () Bool)

(declare-fun e!8687 () List!323)

(assert (=> b!15915 (= e!8687 (Cons!317 (h!231 (toList!83 (left!654 (_2!52 res!5659)))) (++!8 (t!4283 (toList!83 (left!654 (_2!52 res!5659)))) (toList!83 (right!657 (_2!52 res!5659))))))))

(declare-fun b!15914 () Bool)

(assert (=> b!15914 (= e!8687 (toList!83 (right!657 (_2!52 res!5659))))))

(declare-fun d!11665 () Bool)

(declare-fun e!8686 () Bool)

(assert (=> d!11665 e!8686))

(declare-fun res!6479 () Bool)

(assert (=> d!11665 (=> (not res!6479) (not e!8686))))

(declare-fun lt!2283 () List!323)

(assert (=> d!11665 (= res!6479 (= (content!53 lt!2283) (union (content!53 (toList!83 (left!654 (_2!52 res!5659)))) (content!53 (toList!83 (right!657 (_2!52 res!5659)))))))))

(assert (=> d!11665 (= lt!2283 e!8687)))

(declare-fun c!4201 () Bool)

(assert (=> d!11665 (= c!4201 (is-Nil!318 (toList!83 (left!654 (_2!52 res!5659)))))))

(assert (=> d!11665 (= (++!8 (toList!83 (left!654 (_2!52 res!5659))) (toList!83 (right!657 (_2!52 res!5659)))) lt!2283)))

(declare-fun b!15916 () Bool)

(declare-fun res!6478 () Bool)

(assert (=> b!15916 (=> (not res!6478) (not e!8686))))

(assert (=> b!15916 (= res!6478 (= (size!190 lt!2283) (+ (size!190 (toList!83 (left!654 (_2!52 res!5659)))) (size!190 (toList!83 (right!657 (_2!52 res!5659)))))))))

(declare-fun b!15917 () Bool)

(assert (=> b!15917 (= e!8686 (or (not (= (toList!83 (right!657 (_2!52 res!5659))) Nil!318)) (= lt!2283 (toList!83 (left!654 (_2!52 res!5659))))))))

(assert (= (and d!11665 c!4201) b!15914))

(assert (= (and d!11665 (not c!4201)) b!15915))

(assert (= (and d!11665 res!6479) b!15916))

(assert (= (and b!15916 res!6478) b!15917))

(assert (=> b!15915 m!19103))

(declare-fun m!19407 () Bool)

(assert (=> b!15915 m!19407))

(declare-fun m!19409 () Bool)

(assert (=> d!11665 m!19409))

(assert (=> d!11665 m!19101))

(declare-fun m!19411 () Bool)

(assert (=> d!11665 m!19411))

(assert (=> d!11665 m!19103))

(declare-fun m!19413 () Bool)

(assert (=> d!11665 m!19413))

(declare-fun m!19415 () Bool)

(assert (=> b!15916 m!19415))

(assert (=> b!15916 m!19101))

(declare-fun m!19417 () Bool)

(assert (=> b!15916 m!19417))

(assert (=> b!15916 m!19103))

(declare-fun m!19419 () Bool)

(assert (=> b!15916 m!19419))

(assert (=> b!15646 d!11665))

(declare-fun b!15921 () Bool)

(declare-fun e!8689 () List!323)

(assert (=> b!15921 (= e!8689 (++!8 (toList!83 (left!654 (left!654 (_2!52 res!5659)))) (toList!83 (right!657 (left!654 (_2!52 res!5659))))))))

(declare-fun b!15918 () Bool)

(declare-fun e!8688 () List!323)

(assert (=> b!15918 (= e!8688 Nil!318)))

(declare-fun b!15919 () Bool)

(assert (=> b!15919 (= e!8688 e!8689)))

(declare-fun c!4203 () Bool)

(assert (=> b!15919 (= c!4203 (is-Single!9 (left!654 (_2!52 res!5659))))))

(declare-fun b!15920 () Bool)

(assert (=> b!15920 (= e!8689 (Cons!317 (x!8704 (left!654 (_2!52 res!5659))) Nil!318))))

(declare-fun d!11667 () Bool)

(declare-fun lt!2284 () List!323)

(assert (=> d!11667 (= (size!190 lt!2284) (size!191 (left!654 (_2!52 res!5659))))))

(assert (=> d!11667 (= lt!2284 e!8688)))

(declare-fun c!4202 () Bool)

(assert (=> d!11667 (= c!4202 (is-Empty!20 (left!654 (_2!52 res!5659))))))

(assert (=> d!11667 (= (toList!83 (left!654 (_2!52 res!5659))) lt!2284)))

(assert (= (and b!15919 c!4203) b!15920))

(assert (= (and b!15919 (not c!4203)) b!15921))

(assert (= (and d!11667 c!4202) b!15918))

(assert (= (and d!11667 (not c!4202)) b!15919))

(declare-fun m!19421 () Bool)

(assert (=> b!15921 m!19421))

(declare-fun m!19423 () Bool)

(assert (=> b!15921 m!19423))

(assert (=> b!15921 m!19421))

(assert (=> b!15921 m!19423))

(declare-fun m!19425 () Bool)

(assert (=> b!15921 m!19425))

(declare-fun m!19427 () Bool)

(assert (=> d!11667 m!19427))

(declare-fun m!19429 () Bool)

(assert (=> d!11667 m!19429))

(assert (=> b!15646 d!11667))

(declare-fun b!15925 () Bool)

(declare-fun e!8691 () List!323)

(assert (=> b!15925 (= e!8691 (++!8 (toList!83 (left!654 (right!657 (_2!52 res!5659)))) (toList!83 (right!657 (right!657 (_2!52 res!5659))))))))

(declare-fun b!15922 () Bool)

(declare-fun e!8690 () List!323)

(assert (=> b!15922 (= e!8690 Nil!318)))

(declare-fun b!15923 () Bool)

(assert (=> b!15923 (= e!8690 e!8691)))

(declare-fun c!4205 () Bool)

(assert (=> b!15923 (= c!4205 (is-Single!9 (right!657 (_2!52 res!5659))))))

(declare-fun b!15924 () Bool)

(assert (=> b!15924 (= e!8691 (Cons!317 (x!8704 (right!657 (_2!52 res!5659))) Nil!318))))

(declare-fun d!11669 () Bool)

(declare-fun lt!2285 () List!323)

(assert (=> d!11669 (= (size!190 lt!2285) (size!191 (right!657 (_2!52 res!5659))))))

(assert (=> d!11669 (= lt!2285 e!8690)))

(declare-fun c!4204 () Bool)

(assert (=> d!11669 (= c!4204 (is-Empty!20 (right!657 (_2!52 res!5659))))))

(assert (=> d!11669 (= (toList!83 (right!657 (_2!52 res!5659))) lt!2285)))

(assert (= (and b!15923 c!4205) b!15924))

(assert (= (and b!15923 (not c!4205)) b!15925))

(assert (= (and d!11669 c!4204) b!15922))

(assert (= (and d!11669 (not c!4204)) b!15923))

(declare-fun m!19431 () Bool)

(assert (=> b!15925 m!19431))

(declare-fun m!19433 () Bool)

(assert (=> b!15925 m!19433))

(assert (=> b!15925 m!19431))

(assert (=> b!15925 m!19433))

(declare-fun m!19435 () Bool)

(assert (=> b!15925 m!19435))

(declare-fun m!19437 () Bool)

(assert (=> d!11669 m!19437))

(declare-fun m!19439 () Bool)

(assert (=> d!11669 m!19439))

(assert (=> b!15646 d!11669))

(assert (=> b!15567 d!11645))

(assert (=> b!15567 d!11643))

(declare-fun b!15927 () Bool)

(declare-fun e!8692 () Int)

(declare-fun lt!2287 () Int)

(declare-fun lt!2286 () Int)

(assert (=> b!15927 (= e!8692 (+ 1 (ite (>= lt!2287 lt!2286) lt!2287 lt!2286)))))

(assert (=> b!15927 (= lt!2286 (level!9 (right!657 (left!654 (right!657 (_1!52 res!5659))))))))

(assert (=> b!15927 (= lt!2287 (level!9 (left!654 (left!654 (right!657 (_1!52 res!5659))))))))

(declare-fun d!11671 () Bool)

(declare-fun lt!2288 () Int)

(assert (=> d!11671 (>= lt!2288 0)))

(assert (=> d!11671 (= lt!2288 e!8692)))

(declare-fun c!4206 () Bool)

(assert (=> d!11671 (= c!4206 (or (is-Empty!20 (left!654 (right!657 (_1!52 res!5659)))) (is-Single!9 (left!654 (right!657 (_1!52 res!5659))))))))

(assert (=> d!11671 (= (level!9 (left!654 (right!657 (_1!52 res!5659)))) lt!2288)))

(declare-fun b!15926 () Bool)

(assert (=> b!15926 (= e!8692 0)))

(assert (= (and d!11671 c!4206) b!15926))

(assert (= (and d!11671 (not c!4206)) b!15927))

(assert (=> b!15927 m!19381))

(assert (=> b!15927 m!19379))

(assert (=> b!15725 d!11671))

(declare-fun b!15929 () Bool)

(declare-fun e!8693 () Int)

(declare-fun lt!2290 () Int)

(declare-fun lt!2289 () Int)

(assert (=> b!15929 (= e!8693 (+ 1 (ite (>= lt!2290 lt!2289) lt!2290 lt!2289)))))

(assert (=> b!15929 (= lt!2289 (level!9 (right!657 (right!657 (right!657 (_1!52 res!5659))))))))

(assert (=> b!15929 (= lt!2290 (level!9 (left!654 (right!657 (right!657 (_1!52 res!5659))))))))

(declare-fun d!11673 () Bool)

(declare-fun lt!2291 () Int)

(assert (=> d!11673 (>= lt!2291 0)))

(assert (=> d!11673 (= lt!2291 e!8693)))

(declare-fun c!4207 () Bool)

(assert (=> d!11673 (= c!4207 (or (is-Empty!20 (right!657 (right!657 (_1!52 res!5659)))) (is-Single!9 (right!657 (right!657 (_1!52 res!5659))))))))

(assert (=> d!11673 (= (level!9 (right!657 (right!657 (_1!52 res!5659)))) lt!2291)))

(declare-fun b!15928 () Bool)

(assert (=> b!15928 (= e!8693 0)))

(assert (= (and d!11673 c!4207) b!15928))

(assert (= (and d!11673 (not c!4207)) b!15929))

(declare-fun m!19441 () Bool)

(assert (=> b!15929 m!19441))

(declare-fun m!19443 () Bool)

(assert (=> b!15929 m!19443))

(assert (=> b!15725 d!11673))

(declare-fun b!15930 () Bool)

(declare-fun e!8694 () Bool)

(declare-fun e!8695 () Bool)

(assert (=> b!15930 (= e!8694 e!8695)))

(declare-fun res!6483 () Bool)

(assert (=> b!15930 (=> (not res!6483) (not e!8695))))

(assert (=> b!15930 (= res!6483 (not (isEmpty!274 (left!654 (right!657 (right!657 (_1!52 res!5659)))))))))

(declare-fun d!11675 () Bool)

(declare-fun res!6480 () Bool)

(assert (=> d!11675 (=> res!6480 e!8694)))

(assert (=> d!11675 (= res!6480 (not (is-CC!9 (right!657 (right!657 (_1!52 res!5659))))))))

(assert (=> d!11675 (= (concInv!9 (right!657 (right!657 (_1!52 res!5659)))) e!8694)))

(declare-fun b!15932 () Bool)

(declare-fun res!6482 () Bool)

(assert (=> b!15932 (=> (not res!6482) (not e!8695))))

(assert (=> b!15932 (= res!6482 (concInv!9 (left!654 (right!657 (right!657 (_1!52 res!5659))))))))

(declare-fun b!15931 () Bool)

(declare-fun res!6481 () Bool)

(assert (=> b!15931 (=> (not res!6481) (not e!8695))))

(assert (=> b!15931 (= res!6481 (not (isEmpty!274 (right!657 (right!657 (right!657 (_1!52 res!5659)))))))))

(declare-fun b!15933 () Bool)

(assert (=> b!15933 (= e!8695 (concInv!9 (right!657 (right!657 (right!657 (_1!52 res!5659))))))))

(assert (= (and d!11675 (not res!6480)) b!15930))

(assert (= (and b!15930 res!6483) b!15931))

(assert (= (and b!15931 res!6481) b!15932))

(assert (= (and b!15932 res!6482) b!15933))

(declare-fun m!19445 () Bool)

(assert (=> b!15930 m!19445))

(declare-fun m!19447 () Bool)

(assert (=> b!15932 m!19447))

(declare-fun m!19449 () Bool)

(assert (=> b!15931 m!19449))

(declare-fun m!19451 () Bool)

(assert (=> b!15933 m!19451))

(assert (=> b!15597 d!11675))

(declare-fun d!11677 () Bool)

(assert (=> d!11677 (= (isEmpty!274 (right!657 (right!657 (_1!52 res!5659)))) (= (right!657 (right!657 (_1!52 res!5659))) Empty!20))))

(assert (=> b!15595 d!11677))

(declare-fun d!11679 () Bool)

(declare-fun lt!2292 () Int)

(assert (=> d!11679 (>= lt!2292 0)))

(declare-fun e!8696 () Int)

(assert (=> d!11679 (= lt!2292 e!8696)))

(declare-fun c!4208 () Bool)

(assert (=> d!11679 (= c!4208 (is-Nil!318 lt!2225))))

(assert (=> d!11679 (= (size!190 lt!2225) lt!2292)))

(declare-fun b!15934 () Bool)

(assert (=> b!15934 (= e!8696 0)))

(declare-fun b!15935 () Bool)

(assert (=> b!15935 (= e!8696 (+ 1 (size!190 (t!4283 lt!2225))))))

(assert (= (and d!11679 c!4208) b!15934))

(assert (= (and d!11679 (not c!4208)) b!15935))

(declare-fun m!19453 () Bool)

(assert (=> b!15935 m!19453))

(assert (=> d!11559 d!11679))

(declare-fun b!15937 () Bool)

(declare-fun e!8698 () Int)

(declare-fun e!8697 () Int)

(assert (=> b!15937 (= e!8698 e!8697)))

(declare-fun c!4210 () Bool)

(assert (=> b!15937 (= c!4210 (is-Single!9 (_2!52 res!5659)))))

(declare-fun b!15939 () Bool)

(assert (=> b!15939 (= e!8697 (+ (size!191 (left!654 (_2!52 res!5659))) (size!191 (right!657 (_2!52 res!5659)))))))

(declare-fun b!15938 () Bool)

(assert (=> b!15938 (= e!8697 1)))

(declare-fun d!11681 () Bool)

(declare-fun lt!2293 () Int)

(assert (=> d!11681 (>= lt!2293 0)))

(assert (=> d!11681 (= lt!2293 e!8698)))

(declare-fun c!4209 () Bool)

(assert (=> d!11681 (= c!4209 (is-Empty!20 (_2!52 res!5659)))))

(assert (=> d!11681 (= (size!191 (_2!52 res!5659)) lt!2293)))

(declare-fun b!15936 () Bool)

(assert (=> b!15936 (= e!8698 0)))

(assert (= (and b!15937 c!4210) b!15938))

(assert (= (and b!15937 (not c!4210)) b!15939))

(assert (= (and d!11681 c!4209) b!15936))

(assert (= (and d!11681 (not c!4209)) b!15937))

(assert (=> b!15939 m!19429))

(assert (=> b!15939 m!19439))

(assert (=> d!11559 d!11681))

(assert (=> b!15634 d!11607))

(declare-fun b!15940 () Bool)

(declare-fun e!8700 () Bool)

(declare-fun e!8699 () Bool)

(assert (=> b!15940 (= e!8700 e!8699)))

(declare-fun res!6484 () Bool)

(assert (=> b!15940 (=> (not res!6484) (not e!8699))))

(assert (=> b!15940 (= res!6484 (>= (- (level!9 (left!654 (right!657 (right!657 xs!637)))) (level!9 (right!657 (right!657 (right!657 xs!637))))) (- 1)))))

(declare-fun b!15943 () Bool)

(assert (=> b!15943 (= e!8699 (balanced!10 (right!657 (right!657 (right!657 xs!637)))))))

(declare-fun b!15941 () Bool)

(declare-fun res!6487 () Bool)

(assert (=> b!15941 (=> (not res!6487) (not e!8699))))

(assert (=> b!15941 (= res!6487 (<= (- (level!9 (left!654 (right!657 (right!657 xs!637)))) (level!9 (right!657 (right!657 (right!657 xs!637))))) 1))))

(declare-fun d!11683 () Bool)

(declare-fun res!6486 () Bool)

(assert (=> d!11683 (=> res!6486 e!8700)))

(assert (=> d!11683 (= res!6486 (not (is-CC!9 (right!657 (right!657 xs!637)))))))

(assert (=> d!11683 (= (balanced!10 (right!657 (right!657 xs!637))) e!8700)))

(declare-fun b!15942 () Bool)

(declare-fun res!6485 () Bool)

(assert (=> b!15942 (=> (not res!6485) (not e!8699))))

(assert (=> b!15942 (= res!6485 (balanced!10 (left!654 (right!657 (right!657 xs!637)))))))

(assert (= (and d!11683 (not res!6486)) b!15940))

(assert (= (and b!15940 res!6484) b!15941))

(assert (= (and b!15941 res!6487) b!15942))

(assert (= (and b!15942 res!6485) b!15943))

(assert (=> b!15940 m!19271))

(assert (=> b!15940 m!19269))

(declare-fun m!19455 () Bool)

(assert (=> b!15943 m!19455))

(assert (=> b!15941 m!19271))

(assert (=> b!15941 m!19269))

(declare-fun m!19457 () Bool)

(assert (=> b!15942 m!19457))

(assert (=> b!15589 d!11683))

(declare-fun d!11685 () Bool)

(declare-fun e!8701 () Bool)

(assert (=> d!11685 e!8701))

(declare-fun res!6488 () Bool)

(assert (=> d!11685 (=> (not res!6488) (not e!8701))))

(declare-fun lt!2294 () List!323)

(assert (=> d!11685 (= res!6488 (subset (content!53 lt!2294) (content!53 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))))))))

(declare-fun e!8702 () List!323)

(assert (=> d!11685 (= lt!2294 e!8702)))

(declare-fun c!4213 () Bool)

(assert (=> d!11685 (= c!4213 (is-Nil!318 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))))))

(assert (=> d!11685 (= (drop!6 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))) n!315) lt!2294)))

(declare-fun b!15944 () Bool)

(declare-fun e!8703 () List!323)

(assert (=> b!15944 (= e!8702 e!8703)))

(declare-fun c!4214 () Bool)

(assert (=> b!15944 (= c!4214 (<= n!315 0))))

(declare-fun b!15945 () Bool)

(declare-fun e!8704 () Int)

(declare-fun lt!2295 () Int)

(assert (=> b!15945 (= e!8704 lt!2295)))

(declare-fun b!15946 () Bool)

(declare-fun e!8705 () Int)

(assert (=> b!15946 (= e!8704 e!8705)))

(declare-fun c!4211 () Bool)

(assert (=> b!15946 (= c!4211 (>= n!315 lt!2295))))

(declare-fun b!15947 () Bool)

(assert (=> b!15947 (= e!8703 (Cons!317 (h!231 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))) (t!4283 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))))))))

(declare-fun b!15948 () Bool)

(assert (=> b!15948 (= e!8705 0)))

(declare-fun b!15949 () Bool)

(assert (=> b!15949 (= e!8701 (= (size!190 lt!2294) e!8704))))

(declare-fun c!4212 () Bool)

(assert (=> b!15949 (= c!4212 (<= n!315 0))))

(assert (=> b!15949 (= lt!2295 (size!190 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))))))

(declare-fun b!15950 () Bool)

(assert (=> b!15950 (= e!8702 Nil!318)))

(declare-fun b!15951 () Bool)

(assert (=> b!15951 (= e!8703 (drop!6 (t!4283 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))) (- n!315 1)))))

(declare-fun b!15952 () Bool)

(assert (=> b!15952 (= e!8705 (- (size!190 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))) n!315))))

(assert (= (and b!15944 c!4214) b!15947))

(assert (= (and b!15944 (not c!4214)) b!15951))

(assert (= (and d!11685 c!4213) b!15950))

(assert (= (and d!11685 (not c!4213)) b!15944))

(assert (= (and d!11685 res!6488) b!15949))

(assert (= (and b!15946 c!4211) b!15948))

(assert (= (and b!15946 (not c!4211)) b!15952))

(assert (= (and b!15949 c!4212) b!15945))

(assert (= (and b!15949 (not c!4212)) b!15946))

(declare-fun m!19459 () Bool)

(assert (=> d!11685 m!19459))

(assert (=> d!11685 m!19087))

(declare-fun m!19461 () Bool)

(assert (=> d!11685 m!19461))

(declare-fun m!19463 () Bool)

(assert (=> b!15949 m!19463))

(assert (=> b!15949 m!19087))

(declare-fun m!19465 () Bool)

(assert (=> b!15949 m!19465))

(declare-fun m!19467 () Bool)

(assert (=> b!15951 m!19467))

(assert (=> b!15952 m!19087))

(assert (=> b!15952 m!19465))

(assert (=> b!15697 d!11685))

(declare-fun b!15954 () Bool)

(declare-fun e!8707 () List!323)

(assert (=> b!15954 (= e!8707 (Cons!317 (h!231 (toList!83 (left!654 xs!637))) (++!8 (t!4283 (toList!83 (left!654 xs!637))) (toList!83 (right!657 xs!637)))))))

(declare-fun b!15953 () Bool)

(assert (=> b!15953 (= e!8707 (toList!83 (right!657 xs!637)))))

(declare-fun d!11687 () Bool)

(declare-fun e!8706 () Bool)

(assert (=> d!11687 e!8706))

(declare-fun res!6490 () Bool)

(assert (=> d!11687 (=> (not res!6490) (not e!8706))))

(declare-fun lt!2296 () List!323)

(assert (=> d!11687 (= res!6490 (= (content!53 lt!2296) (union (content!53 (toList!83 (left!654 xs!637))) (content!53 (toList!83 (right!657 xs!637))))))))

(assert (=> d!11687 (= lt!2296 e!8707)))

(declare-fun c!4215 () Bool)

(assert (=> d!11687 (= c!4215 (is-Nil!318 (toList!83 (left!654 xs!637))))))

(assert (=> d!11687 (= (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))) lt!2296)))

(declare-fun b!15955 () Bool)

(declare-fun res!6489 () Bool)

(assert (=> b!15955 (=> (not res!6489) (not e!8706))))

(assert (=> b!15955 (= res!6489 (= (size!190 lt!2296) (+ (size!190 (toList!83 (left!654 xs!637))) (size!190 (toList!83 (right!657 xs!637))))))))

(declare-fun b!15956 () Bool)

(assert (=> b!15956 (= e!8706 (or (not (= (toList!83 (right!657 xs!637)) Nil!318)) (= lt!2296 (toList!83 (left!654 xs!637)))))))

(assert (= (and d!11687 c!4215) b!15953))

(assert (= (and d!11687 (not c!4215)) b!15954))

(assert (= (and d!11687 res!6490) b!15955))

(assert (= (and b!15955 res!6489) b!15956))

(assert (=> b!15954 m!18945))

(assert (=> b!15954 m!19207))

(declare-fun m!19469 () Bool)

(assert (=> d!11687 m!19469))

(assert (=> d!11687 m!18943))

(declare-fun m!19471 () Bool)

(assert (=> d!11687 m!19471))

(assert (=> d!11687 m!18945))

(assert (=> d!11687 m!19319))

(declare-fun m!19473 () Bool)

(assert (=> b!15955 m!19473))

(assert (=> b!15955 m!18943))

(assert (=> b!15955 m!19117))

(assert (=> b!15955 m!18945))

(assert (=> b!15955 m!19323))

(assert (=> b!15697 d!11687))

(assert (=> b!15697 d!11613))

(declare-fun d!11689 () Bool)

(assert (=> d!11689 (= (isEmpty!274 (left!654 (right!657 (_2!52 res!5659)))) (= (left!654 (right!657 (_2!52 res!5659))) Empty!20))))

(assert (=> b!15578 d!11689))

(assert (=> b!15717 d!11589))

(assert (=> b!15717 d!11587))

(declare-fun b!15957 () Bool)

(declare-fun e!8710 () Bool)

(declare-fun lt!2297 () List!323)

(declare-fun e!8709 () Int)

(assert (=> b!15957 (= e!8710 (= (size!190 lt!2297) e!8709))))

(declare-fun c!4218 () Bool)

(assert (=> b!15957 (= c!4218 (<= n!315 0))))

(declare-fun b!15958 () Bool)

(declare-fun e!8711 () Int)

(assert (=> b!15958 (= e!8711 (size!190 (toList!83 (left!654 xs!637))))))

(declare-fun b!15959 () Bool)

(assert (=> b!15959 (= e!8709 0)))

(declare-fun b!15960 () Bool)

(assert (=> b!15960 (= e!8711 n!315)))

(declare-fun b!15961 () Bool)

(declare-fun e!8708 () List!323)

(assert (=> b!15961 (= e!8708 Nil!318)))

(declare-fun d!11691 () Bool)

(assert (=> d!11691 e!8710))

(declare-fun res!6491 () Bool)

(assert (=> d!11691 (=> (not res!6491) (not e!8710))))

(assert (=> d!11691 (= res!6491 (subset (content!53 lt!2297) (content!53 (toList!83 (left!654 xs!637)))))))

(assert (=> d!11691 (= lt!2297 e!8708)))

(declare-fun c!4216 () Bool)

(assert (=> d!11691 (= c!4216 (or (is-Nil!318 (toList!83 (left!654 xs!637))) (<= n!315 0)))))

(assert (=> d!11691 (= (take!8 (toList!83 (left!654 xs!637)) n!315) lt!2297)))

(declare-fun b!15962 () Bool)

(assert (=> b!15962 (= e!8708 (Cons!317 (h!231 (toList!83 (left!654 xs!637))) (take!8 (t!4283 (toList!83 (left!654 xs!637))) (- n!315 1))))))

(declare-fun b!15963 () Bool)

(assert (=> b!15963 (= e!8709 e!8711)))

(declare-fun c!4217 () Bool)

(assert (=> b!15963 (= c!4217 (>= n!315 (size!190 (toList!83 (left!654 xs!637)))))))

(assert (= (and d!11691 c!4216) b!15961))

(assert (= (and d!11691 (not c!4216)) b!15962))

(assert (= (and d!11691 res!6491) b!15957))

(assert (= (and b!15963 c!4217) b!15958))

(assert (= (and b!15963 (not c!4217)) b!15960))

(assert (= (and b!15957 c!4218) b!15959))

(assert (= (and b!15957 (not c!4218)) b!15963))

(assert (=> b!15963 m!18943))

(assert (=> b!15963 m!19117))

(declare-fun m!19475 () Bool)

(assert (=> d!11691 m!19475))

(assert (=> d!11691 m!18943))

(assert (=> d!11691 m!19471))

(assert (=> b!15958 m!18943))

(assert (=> b!15958 m!19117))

(declare-fun m!19477 () Bool)

(assert (=> b!15957 m!19477))

(assert (=> b!15962 m!19211))

(assert (=> b!15702 d!11691))

(declare-fun d!11693 () Bool)

(assert (=> d!11693 (= (isEmpty!274 (right!657 (left!654 (_2!52 res!5659)))) (= (right!657 (left!654 (_2!52 res!5659))) Empty!20))))

(assert (=> b!15640 d!11693))

(declare-fun b!15965 () Bool)

(declare-fun e!8713 () List!323)

(assert (=> b!15965 (= e!8713 (Cons!317 (h!231 (toList!83 (left!654 (_1!52 res!5659)))) (++!8 (t!4283 (toList!83 (left!654 (_1!52 res!5659)))) (toList!83 (right!657 (_1!52 res!5659))))))))

(declare-fun b!15964 () Bool)

(assert (=> b!15964 (= e!8713 (toList!83 (right!657 (_1!52 res!5659))))))

(declare-fun d!11695 () Bool)

(declare-fun e!8712 () Bool)

(assert (=> d!11695 e!8712))

(declare-fun res!6493 () Bool)

(assert (=> d!11695 (=> (not res!6493) (not e!8712))))

(declare-fun lt!2298 () List!323)

(assert (=> d!11695 (= res!6493 (= (content!53 lt!2298) (union (content!53 (toList!83 (left!654 (_1!52 res!5659)))) (content!53 (toList!83 (right!657 (_1!52 res!5659)))))))))

(assert (=> d!11695 (= lt!2298 e!8713)))

(declare-fun c!4219 () Bool)

(assert (=> d!11695 (= c!4219 (is-Nil!318 (toList!83 (left!654 (_1!52 res!5659)))))))

(assert (=> d!11695 (= (++!8 (toList!83 (left!654 (_1!52 res!5659))) (toList!83 (right!657 (_1!52 res!5659)))) lt!2298)))

(declare-fun b!15966 () Bool)

(declare-fun res!6492 () Bool)

(assert (=> b!15966 (=> (not res!6492) (not e!8712))))

(assert (=> b!15966 (= res!6492 (= (size!190 lt!2298) (+ (size!190 (toList!83 (left!654 (_1!52 res!5659)))) (size!190 (toList!83 (right!657 (_1!52 res!5659)))))))))

(declare-fun b!15967 () Bool)

(assert (=> b!15967 (= e!8712 (or (not (= (toList!83 (right!657 (_1!52 res!5659))) Nil!318)) (= lt!2298 (toList!83 (left!654 (_1!52 res!5659))))))))

(assert (= (and d!11695 c!4219) b!15964))

(assert (= (and d!11695 (not c!4219)) b!15965))

(assert (= (and d!11695 res!6493) b!15966))

(assert (= (and b!15966 res!6492) b!15967))

(assert (=> b!15965 m!19069))

(declare-fun m!19479 () Bool)

(assert (=> b!15965 m!19479))

(declare-fun m!19481 () Bool)

(assert (=> d!11695 m!19481))

(assert (=> d!11695 m!19067))

(declare-fun m!19483 () Bool)

(assert (=> d!11695 m!19483))

(assert (=> d!11695 m!19069))

(declare-fun m!19485 () Bool)

(assert (=> d!11695 m!19485))

(declare-fun m!19487 () Bool)

(assert (=> b!15966 m!19487))

(assert (=> b!15966 m!19067))

(declare-fun m!19489 () Bool)

(assert (=> b!15966 m!19489))

(assert (=> b!15966 m!19069))

(declare-fun m!19491 () Bool)

(assert (=> b!15966 m!19491))

(assert (=> b!15613 d!11695))

(declare-fun b!15971 () Bool)

(declare-fun e!8715 () List!323)

(assert (=> b!15971 (= e!8715 (++!8 (toList!83 (left!654 (left!654 (_1!52 res!5659)))) (toList!83 (right!657 (left!654 (_1!52 res!5659))))))))

(declare-fun b!15968 () Bool)

(declare-fun e!8714 () List!323)

(assert (=> b!15968 (= e!8714 Nil!318)))

(declare-fun b!15969 () Bool)

(assert (=> b!15969 (= e!8714 e!8715)))

(declare-fun c!4221 () Bool)

(assert (=> b!15969 (= c!4221 (is-Single!9 (left!654 (_1!52 res!5659))))))

(declare-fun b!15970 () Bool)

(assert (=> b!15970 (= e!8715 (Cons!317 (x!8704 (left!654 (_1!52 res!5659))) Nil!318))))

(declare-fun d!11697 () Bool)

(declare-fun lt!2299 () List!323)

(assert (=> d!11697 (= (size!190 lt!2299) (size!191 (left!654 (_1!52 res!5659))))))

(assert (=> d!11697 (= lt!2299 e!8714)))

(declare-fun c!4220 () Bool)

(assert (=> d!11697 (= c!4220 (is-Empty!20 (left!654 (_1!52 res!5659))))))

(assert (=> d!11697 (= (toList!83 (left!654 (_1!52 res!5659))) lt!2299)))

(assert (= (and b!15969 c!4221) b!15970))

(assert (= (and b!15969 (not c!4221)) b!15971))

(assert (= (and d!11697 c!4220) b!15968))

(assert (= (and d!11697 (not c!4220)) b!15969))

(declare-fun m!19493 () Bool)

(assert (=> b!15971 m!19493))

(declare-fun m!19495 () Bool)

(assert (=> b!15971 m!19495))

(assert (=> b!15971 m!19493))

(assert (=> b!15971 m!19495))

(declare-fun m!19497 () Bool)

(assert (=> b!15971 m!19497))

(declare-fun m!19499 () Bool)

(assert (=> d!11697 m!19499))

(assert (=> d!11697 m!19391))

(assert (=> b!15613 d!11697))

(declare-fun b!15975 () Bool)

(declare-fun e!8717 () List!323)

(assert (=> b!15975 (= e!8717 (++!8 (toList!83 (left!654 (right!657 (_1!52 res!5659)))) (toList!83 (right!657 (right!657 (_1!52 res!5659))))))))

(declare-fun b!15972 () Bool)

(declare-fun e!8716 () List!323)

(assert (=> b!15972 (= e!8716 Nil!318)))

(declare-fun b!15973 () Bool)

(assert (=> b!15973 (= e!8716 e!8717)))

(declare-fun c!4223 () Bool)

(assert (=> b!15973 (= c!4223 (is-Single!9 (right!657 (_1!52 res!5659))))))

(declare-fun b!15974 () Bool)

(assert (=> b!15974 (= e!8717 (Cons!317 (x!8704 (right!657 (_1!52 res!5659))) Nil!318))))

(declare-fun d!11699 () Bool)

(declare-fun lt!2300 () List!323)

(assert (=> d!11699 (= (size!190 lt!2300) (size!191 (right!657 (_1!52 res!5659))))))

(assert (=> d!11699 (= lt!2300 e!8716)))

(declare-fun c!4222 () Bool)

(assert (=> d!11699 (= c!4222 (is-Empty!20 (right!657 (_1!52 res!5659))))))

(assert (=> d!11699 (= (toList!83 (right!657 (_1!52 res!5659))) lt!2300)))

(assert (= (and b!15973 c!4223) b!15974))

(assert (= (and b!15973 (not c!4223)) b!15975))

(assert (= (and d!11699 c!4222) b!15972))

(assert (= (and d!11699 (not c!4222)) b!15973))

(declare-fun m!19501 () Bool)

(assert (=> b!15975 m!19501))

(declare-fun m!19503 () Bool)

(assert (=> b!15975 m!19503))

(assert (=> b!15975 m!19501))

(assert (=> b!15975 m!19503))

(declare-fun m!19505 () Bool)

(assert (=> b!15975 m!19505))

(declare-fun m!19507 () Bool)

(assert (=> d!11699 m!19507))

(assert (=> d!11699 m!19393))

(assert (=> b!15613 d!11699))

(assert (=> b!15577 d!11673))

(assert (=> b!15577 d!11671))

(assert (=> b!15638 d!11687))

(assert (=> b!15638 d!11565))

(assert (=> b!15638 d!11567))

(declare-fun d!11701 () Bool)

(declare-fun lt!2301 () Int)

(assert (=> d!11701 (>= lt!2301 0)))

(declare-fun e!8718 () Int)

(assert (=> d!11701 (= lt!2301 e!8718)))

(declare-fun c!4224 () Bool)

(assert (=> d!11701 (= c!4224 (is-Nil!318 lt!2236))))

(assert (=> d!11701 (= (size!190 lt!2236) lt!2301)))

(declare-fun b!15976 () Bool)

(assert (=> b!15976 (= e!8718 0)))

(declare-fun b!15977 () Bool)

(assert (=> b!15977 (= e!8718 (+ 1 (size!190 (t!4283 lt!2236))))))

(assert (= (and d!11701 c!4224) b!15976))

(assert (= (and d!11701 (not c!4224)) b!15977))

(declare-fun m!19509 () Bool)

(assert (=> b!15977 m!19509))

(assert (=> d!11567 d!11701))

(declare-fun b!15979 () Bool)

(declare-fun e!8720 () Int)

(declare-fun e!8719 () Int)

(assert (=> b!15979 (= e!8720 e!8719)))

(declare-fun c!4226 () Bool)

(assert (=> b!15979 (= c!4226 (is-Single!9 (right!657 xs!637)))))

(declare-fun b!15981 () Bool)

(assert (=> b!15981 (= e!8719 (+ (size!191 (left!654 (right!657 xs!637))) (size!191 (right!657 (right!657 xs!637)))))))

(declare-fun b!15980 () Bool)

(assert (=> b!15980 (= e!8719 1)))

(declare-fun d!11703 () Bool)

(declare-fun lt!2302 () Int)

(assert (=> d!11703 (>= lt!2302 0)))

(assert (=> d!11703 (= lt!2302 e!8720)))

(declare-fun c!4225 () Bool)

(assert (=> d!11703 (= c!4225 (is-Empty!20 (right!657 xs!637)))))

(assert (=> d!11703 (= (size!191 (right!657 xs!637)) lt!2302)))

(declare-fun b!15978 () Bool)

(assert (=> b!15978 (= e!8720 0)))

(assert (= (and b!15979 c!4226) b!15980))

(assert (= (and b!15979 (not c!4226)) b!15981))

(assert (= (and d!11703 c!4225) b!15978))

(assert (= (and d!11703 (not c!4225)) b!15979))

(assert (=> b!15981 m!19305))

(assert (=> b!15981 m!19315))

(assert (=> d!11567 d!11703))

(declare-fun b!15982 () Bool)

(declare-fun e!8722 () Bool)

(declare-fun e!8721 () Bool)

(assert (=> b!15982 (= e!8722 e!8721)))

(declare-fun res!6494 () Bool)

(assert (=> b!15982 (=> (not res!6494) (not e!8721))))

(assert (=> b!15982 (= res!6494 (>= (- (level!9 (left!654 (right!657 (left!654 (_2!52 res!5659))))) (level!9 (right!657 (right!657 (left!654 (_2!52 res!5659)))))) (- 1)))))

(declare-fun b!15985 () Bool)

(assert (=> b!15985 (= e!8721 (balanced!10 (right!657 (right!657 (left!654 (_2!52 res!5659))))))))

(declare-fun b!15983 () Bool)

(declare-fun res!6497 () Bool)

(assert (=> b!15983 (=> (not res!6497) (not e!8721))))

(assert (=> b!15983 (= res!6497 (<= (- (level!9 (left!654 (right!657 (left!654 (_2!52 res!5659))))) (level!9 (right!657 (right!657 (left!654 (_2!52 res!5659)))))) 1))))

(declare-fun d!11705 () Bool)

(declare-fun res!6496 () Bool)

(assert (=> d!11705 (=> res!6496 e!8722)))

(assert (=> d!11705 (= res!6496 (not (is-CC!9 (right!657 (left!654 (_2!52 res!5659))))))))

(assert (=> d!11705 (= (balanced!10 (right!657 (left!654 (_2!52 res!5659)))) e!8722)))

(declare-fun b!15984 () Bool)

(declare-fun res!6495 () Bool)

(assert (=> b!15984 (=> (not res!6495) (not e!8721))))

(assert (=> b!15984 (= res!6495 (balanced!10 (left!654 (right!657 (left!654 (_2!52 res!5659))))))))

(assert (= (and d!11705 (not res!6496)) b!15982))

(assert (= (and b!15982 res!6494) b!15983))

(assert (= (and b!15983 res!6497) b!15984))

(assert (= (and b!15984 res!6495) b!15985))

(assert (=> b!15982 m!19375))

(assert (=> b!15982 m!19373))

(declare-fun m!19511 () Bool)

(assert (=> b!15985 m!19511))

(assert (=> b!15983 m!19375))

(assert (=> b!15983 m!19373))

(declare-fun m!19513 () Bool)

(assert (=> b!15984 m!19513))

(assert (=> b!15593 d!11705))

(declare-fun b!15986 () Bool)

(declare-fun e!8724 () Bool)

(declare-fun e!8723 () Bool)

(assert (=> b!15986 (= e!8724 e!8723)))

(declare-fun res!6498 () Bool)

(assert (=> b!15986 (=> (not res!6498) (not e!8723))))

(assert (=> b!15986 (= res!6498 (>= (- (level!9 (left!654 (right!657 (right!657 (_2!52 res!5659))))) (level!9 (right!657 (right!657 (right!657 (_2!52 res!5659)))))) (- 1)))))

(declare-fun b!15989 () Bool)

(assert (=> b!15989 (= e!8723 (balanced!10 (right!657 (right!657 (right!657 (_2!52 res!5659))))))))

(declare-fun b!15987 () Bool)

(declare-fun res!6501 () Bool)

(assert (=> b!15987 (=> (not res!6501) (not e!8723))))

(assert (=> b!15987 (= res!6501 (<= (- (level!9 (left!654 (right!657 (right!657 (_2!52 res!5659))))) (level!9 (right!657 (right!657 (right!657 (_2!52 res!5659)))))) 1))))

(declare-fun d!11707 () Bool)

(declare-fun res!6500 () Bool)

(assert (=> d!11707 (=> res!6500 e!8724)))

(assert (=> d!11707 (= res!6500 (not (is-CC!9 (right!657 (right!657 (_2!52 res!5659))))))))

(assert (=> d!11707 (= (balanced!10 (right!657 (right!657 (_2!52 res!5659)))) e!8724)))

(declare-fun b!15988 () Bool)

(declare-fun res!6499 () Bool)

(assert (=> b!15988 (=> (not res!6499) (not e!8723))))

(assert (=> b!15988 (= res!6499 (balanced!10 (left!654 (right!657 (right!657 (_2!52 res!5659))))))))

(assert (= (and d!11707 (not res!6500)) b!15986))

(assert (= (and b!15986 res!6498) b!15987))

(assert (= (and b!15987 res!6501) b!15988))

(assert (= (and b!15988 res!6499) b!15989))

(declare-fun m!19515 () Bool)

(assert (=> b!15986 m!19515))

(declare-fun m!19517 () Bool)

(assert (=> b!15986 m!19517))

(declare-fun m!19519 () Bool)

(assert (=> b!15989 m!19519))

(assert (=> b!15987 m!19515))

(assert (=> b!15987 m!19517))

(declare-fun m!19521 () Bool)

(assert (=> b!15988 m!19521))

(assert (=> b!15601 d!11707))

(declare-fun d!11709 () Bool)

(assert (=> d!11709 (= (isEmpty!274 (right!657 (left!654 xs!637))) (= (right!657 (left!654 xs!637)) Empty!20))))

(assert (=> b!15729 d!11709))

(declare-fun d!11711 () Bool)

(declare-fun lt!2303 () Int)

(assert (=> d!11711 (>= lt!2303 0)))

(declare-fun e!8725 () Int)

(assert (=> d!11711 (= lt!2303 e!8725)))

(declare-fun c!4227 () Bool)

(assert (=> d!11711 (= c!4227 (is-Nil!318 lt!2223))))

(assert (=> d!11711 (= (size!190 lt!2223) lt!2303)))

(declare-fun b!15990 () Bool)

(assert (=> b!15990 (= e!8725 0)))

(declare-fun b!15991 () Bool)

(assert (=> b!15991 (= e!8725 (+ 1 (size!190 (t!4283 lt!2223))))))

(assert (= (and d!11711 c!4227) b!15990))

(assert (= (and d!11711 (not c!4227)) b!15991))

(declare-fun m!19523 () Bool)

(assert (=> b!15991 m!19523))

(assert (=> b!15628 d!11711))

(declare-fun b!15993 () Bool)

(declare-fun e!8727 () List!323)

(assert (=> b!15993 (= e!8727 (Cons!317 (h!231 (drop!6 (toList!83 (left!654 xs!637)) n!315)) (++!8 (t!4283 (drop!6 (toList!83 (left!654 xs!637)) n!315)) (toList!83 (right!657 xs!637)))))))

(declare-fun b!15992 () Bool)

(assert (=> b!15992 (= e!8727 (toList!83 (right!657 xs!637)))))

(declare-fun d!11713 () Bool)

(declare-fun e!8726 () Bool)

(assert (=> d!11713 e!8726))

(declare-fun res!6503 () Bool)

(assert (=> d!11713 (=> (not res!6503) (not e!8726))))

(declare-fun lt!2304 () List!323)

(assert (=> d!11713 (= res!6503 (= (content!53 lt!2304) (union (content!53 (drop!6 (toList!83 (left!654 xs!637)) n!315)) (content!53 (toList!83 (right!657 xs!637))))))))

(assert (=> d!11713 (= lt!2304 e!8727)))

(declare-fun c!4228 () Bool)

(assert (=> d!11713 (= c!4228 (is-Nil!318 (drop!6 (toList!83 (left!654 xs!637)) n!315)))))

(assert (=> d!11713 (= (++!8 (drop!6 (toList!83 (left!654 xs!637)) n!315) (toList!83 (right!657 xs!637))) lt!2304)))

(declare-fun b!15994 () Bool)

(declare-fun res!6502 () Bool)

(assert (=> b!15994 (=> (not res!6502) (not e!8726))))

(assert (=> b!15994 (= res!6502 (= (size!190 lt!2304) (+ (size!190 (drop!6 (toList!83 (left!654 xs!637)) n!315)) (size!190 (toList!83 (right!657 xs!637))))))))

(declare-fun b!15995 () Bool)

(assert (=> b!15995 (= e!8726 (or (not (= (toList!83 (right!657 xs!637)) Nil!318)) (= lt!2304 (drop!6 (toList!83 (left!654 xs!637)) n!315))))))

(assert (= (and d!11713 c!4228) b!15992))

(assert (= (and d!11713 (not c!4228)) b!15993))

(assert (= (and d!11713 res!6503) b!15994))

(assert (= (and b!15994 res!6502) b!15995))

(assert (=> b!15993 m!18945))

(declare-fun m!19525 () Bool)

(assert (=> b!15993 m!19525))

(declare-fun m!19527 () Bool)

(assert (=> d!11713 m!19527))

(assert (=> d!11713 m!19123))

(declare-fun m!19529 () Bool)

(assert (=> d!11713 m!19529))

(assert (=> d!11713 m!18945))

(assert (=> d!11713 m!19319))

(declare-fun m!19531 () Bool)

(assert (=> b!15994 m!19531))

(assert (=> b!15994 m!19123))

(declare-fun m!19533 () Bool)

(assert (=> b!15994 m!19533))

(assert (=> b!15994 m!18945))

(assert (=> b!15994 m!19323))

(assert (=> b!15700 d!11713))

(declare-fun d!11715 () Bool)

(declare-fun e!8728 () Bool)

(assert (=> d!11715 e!8728))

(declare-fun res!6504 () Bool)

(assert (=> d!11715 (=> (not res!6504) (not e!8728))))

(declare-fun lt!2305 () List!323)

(assert (=> d!11715 (= res!6504 (subset (content!53 lt!2305) (content!53 (toList!83 (left!654 xs!637)))))))

(declare-fun e!8729 () List!323)

(assert (=> d!11715 (= lt!2305 e!8729)))

(declare-fun c!4231 () Bool)

(assert (=> d!11715 (= c!4231 (is-Nil!318 (toList!83 (left!654 xs!637))))))

(assert (=> d!11715 (= (drop!6 (toList!83 (left!654 xs!637)) n!315) lt!2305)))

(declare-fun b!15996 () Bool)

(declare-fun e!8730 () List!323)

(assert (=> b!15996 (= e!8729 e!8730)))

(declare-fun c!4232 () Bool)

(assert (=> b!15996 (= c!4232 (<= n!315 0))))

(declare-fun b!15997 () Bool)

(declare-fun e!8731 () Int)

(declare-fun lt!2306 () Int)

(assert (=> b!15997 (= e!8731 lt!2306)))

(declare-fun b!15998 () Bool)

(declare-fun e!8732 () Int)

(assert (=> b!15998 (= e!8731 e!8732)))

(declare-fun c!4229 () Bool)

(assert (=> b!15998 (= c!4229 (>= n!315 lt!2306))))

(declare-fun b!15999 () Bool)

(assert (=> b!15999 (= e!8730 (Cons!317 (h!231 (toList!83 (left!654 xs!637))) (t!4283 (toList!83 (left!654 xs!637)))))))

(declare-fun b!16000 () Bool)

(assert (=> b!16000 (= e!8732 0)))

(declare-fun b!16001 () Bool)

(assert (=> b!16001 (= e!8728 (= (size!190 lt!2305) e!8731))))

(declare-fun c!4230 () Bool)

(assert (=> b!16001 (= c!4230 (<= n!315 0))))

(assert (=> b!16001 (= lt!2306 (size!190 (toList!83 (left!654 xs!637))))))

(declare-fun b!16002 () Bool)

(assert (=> b!16002 (= e!8729 Nil!318)))

(declare-fun b!16003 () Bool)

(assert (=> b!16003 (= e!8730 (drop!6 (t!4283 (toList!83 (left!654 xs!637))) (- n!315 1)))))

(declare-fun b!16004 () Bool)

(assert (=> b!16004 (= e!8732 (- (size!190 (toList!83 (left!654 xs!637))) n!315))))

(assert (= (and b!15996 c!4232) b!15999))

(assert (= (and b!15996 (not c!4232)) b!16003))

(assert (= (and d!11715 c!4231) b!16002))

(assert (= (and d!11715 (not c!4231)) b!15996))

(assert (= (and d!11715 res!6504) b!16001))

(assert (= (and b!15998 c!4229) b!16000))

(assert (= (and b!15998 (not c!4229)) b!16004))

(assert (= (and b!16001 c!4230) b!15997))

(assert (= (and b!16001 (not c!4230)) b!15998))

(declare-fun m!19535 () Bool)

(assert (=> d!11715 m!19535))

(assert (=> d!11715 m!18943))

(assert (=> d!11715 m!19471))

(declare-fun m!19537 () Bool)

(assert (=> b!16001 m!19537))

(assert (=> b!16001 m!18943))

(assert (=> b!16001 m!19117))

(assert (=> b!16003 m!19199))

(assert (=> b!16004 m!18943))

(assert (=> b!16004 m!19117))

(assert (=> b!15700 d!11715))

(declare-fun b!16005 () Bool)

(declare-fun e!8734 () Bool)

(declare-fun e!8733 () Bool)

(assert (=> b!16005 (= e!8734 e!8733)))

(declare-fun res!6505 () Bool)

(assert (=> b!16005 (=> (not res!6505) (not e!8733))))

(assert (=> b!16005 (= res!6505 (>= (- (level!9 (left!654 (right!657 (right!657 (_1!52 res!5659))))) (level!9 (right!657 (right!657 (right!657 (_1!52 res!5659)))))) (- 1)))))

(declare-fun b!16008 () Bool)

(assert (=> b!16008 (= e!8733 (balanced!10 (right!657 (right!657 (right!657 (_1!52 res!5659))))))))

(declare-fun b!16006 () Bool)

(declare-fun res!6508 () Bool)

(assert (=> b!16006 (=> (not res!6508) (not e!8733))))

(assert (=> b!16006 (= res!6508 (<= (- (level!9 (left!654 (right!657 (right!657 (_1!52 res!5659))))) (level!9 (right!657 (right!657 (right!657 (_1!52 res!5659)))))) 1))))

(declare-fun d!11717 () Bool)

(declare-fun res!6507 () Bool)

(assert (=> d!11717 (=> res!6507 e!8734)))

(assert (=> d!11717 (= res!6507 (not (is-CC!9 (right!657 (right!657 (_1!52 res!5659))))))))

(assert (=> d!11717 (= (balanced!10 (right!657 (right!657 (_1!52 res!5659)))) e!8734)))

(declare-fun b!16007 () Bool)

(declare-fun res!6506 () Bool)

(assert (=> b!16007 (=> (not res!6506) (not e!8733))))

(assert (=> b!16007 (= res!6506 (balanced!10 (left!654 (right!657 (right!657 (_1!52 res!5659))))))))

(assert (= (and d!11717 (not res!6507)) b!16005))

(assert (= (and b!16005 res!6505) b!16006))

(assert (= (and b!16006 res!6508) b!16007))

(assert (= (and b!16007 res!6506) b!16008))

(assert (=> b!16005 m!19443))

(assert (=> b!16005 m!19441))

(declare-fun m!19539 () Bool)

(assert (=> b!16008 m!19539))

(assert (=> b!16006 m!19443))

(assert (=> b!16006 m!19441))

(declare-fun m!19541 () Bool)

(assert (=> b!16007 m!19541))

(assert (=> b!15727 d!11717))

(assert (=> b!15673 d!11607))

(assert (=> b!15591 d!11643))

(assert (=> b!15591 d!11645))

(declare-fun d!11719 () Bool)

(assert (=> d!11719 (= (isEmpty!274 (left!654 (right!657 xs!637))) (= (left!654 (right!657 xs!637)) Empty!20))))

(assert (=> b!15570 d!11719))

(declare-fun b!16009 () Bool)

(declare-fun e!8735 () Bool)

(declare-fun e!8736 () Bool)

(assert (=> b!16009 (= e!8735 e!8736)))

(declare-fun res!6512 () Bool)

(assert (=> b!16009 (=> (not res!6512) (not e!8736))))

(assert (=> b!16009 (= res!6512 (not (isEmpty!274 (left!654 (right!657 (right!657 (_2!52 res!5659)))))))))

(declare-fun d!11721 () Bool)

(declare-fun res!6509 () Bool)

(assert (=> d!11721 (=> res!6509 e!8735)))

(assert (=> d!11721 (= res!6509 (not (is-CC!9 (right!657 (right!657 (_2!52 res!5659))))))))

(assert (=> d!11721 (= (concInv!9 (right!657 (right!657 (_2!52 res!5659)))) e!8735)))

(declare-fun b!16011 () Bool)

(declare-fun res!6511 () Bool)

(assert (=> b!16011 (=> (not res!6511) (not e!8736))))

(assert (=> b!16011 (= res!6511 (concInv!9 (left!654 (right!657 (right!657 (_2!52 res!5659))))))))

(declare-fun b!16010 () Bool)

(declare-fun res!6510 () Bool)

(assert (=> b!16010 (=> (not res!6510) (not e!8736))))

(assert (=> b!16010 (= res!6510 (not (isEmpty!274 (right!657 (right!657 (right!657 (_2!52 res!5659)))))))))

(declare-fun b!16012 () Bool)

(assert (=> b!16012 (= e!8736 (concInv!9 (right!657 (right!657 (right!657 (_2!52 res!5659))))))))

(assert (= (and d!11721 (not res!6509)) b!16009))

(assert (= (and b!16009 res!6512) b!16010))

(assert (= (and b!16010 res!6510) b!16011))

(assert (= (and b!16011 res!6511) b!16012))

(declare-fun m!19543 () Bool)

(assert (=> b!16009 m!19543))

(declare-fun m!19545 () Bool)

(assert (=> b!16011 m!19545))

(declare-fun m!19547 () Bool)

(assert (=> b!16010 m!19547))

(declare-fun m!19549 () Bool)

(assert (=> b!16012 m!19549))

(assert (=> b!15581 d!11721))

(declare-fun b!16014 () Bool)

(declare-fun e!8737 () Int)

(declare-fun lt!2308 () Int)

(declare-fun lt!2307 () Int)

(assert (=> b!16014 (= e!8737 (+ 1 (ite (>= lt!2308 lt!2307) lt!2308 lt!2307)))))

(assert (=> b!16014 (= lt!2307 (level!9 (right!657 (left!654 (right!657 (_2!52 res!5659))))))))

(assert (=> b!16014 (= lt!2308 (level!9 (left!654 (left!654 (right!657 (_2!52 res!5659))))))))

(declare-fun d!11723 () Bool)

(declare-fun lt!2309 () Int)

(assert (=> d!11723 (>= lt!2309 0)))

(assert (=> d!11723 (= lt!2309 e!8737)))

(declare-fun c!4233 () Bool)

(assert (=> d!11723 (= c!4233 (or (is-Empty!20 (left!654 (right!657 (_2!52 res!5659)))) (is-Single!9 (left!654 (right!657 (_2!52 res!5659))))))))

(assert (=> d!11723 (= (level!9 (left!654 (right!657 (_2!52 res!5659)))) lt!2309)))

(declare-fun b!16013 () Bool)

(assert (=> b!16013 (= e!8737 0)))

(assert (= (and d!11723 c!4233) b!16013))

(assert (= (and d!11723 (not c!4233)) b!16014))

(declare-fun m!19551 () Bool)

(assert (=> b!16014 m!19551))

(declare-fun m!19553 () Bool)

(assert (=> b!16014 m!19553))

(assert (=> b!15598 d!11723))

(declare-fun b!16016 () Bool)

(declare-fun e!8738 () Int)

(declare-fun lt!2311 () Int)

(declare-fun lt!2310 () Int)

(assert (=> b!16016 (= e!8738 (+ 1 (ite (>= lt!2311 lt!2310) lt!2311 lt!2310)))))

(assert (=> b!16016 (= lt!2310 (level!9 (right!657 (right!657 (right!657 (_2!52 res!5659))))))))

(assert (=> b!16016 (= lt!2311 (level!9 (left!654 (right!657 (right!657 (_2!52 res!5659))))))))

(declare-fun d!11725 () Bool)

(declare-fun lt!2312 () Int)

(assert (=> d!11725 (>= lt!2312 0)))

(assert (=> d!11725 (= lt!2312 e!8738)))

(declare-fun c!4234 () Bool)

(assert (=> d!11725 (= c!4234 (or (is-Empty!20 (right!657 (right!657 (_2!52 res!5659)))) (is-Single!9 (right!657 (right!657 (_2!52 res!5659))))))))

(assert (=> d!11725 (= (level!9 (right!657 (right!657 (_2!52 res!5659)))) lt!2312)))

(declare-fun b!16015 () Bool)

(assert (=> b!16015 (= e!8738 0)))

(assert (= (and d!11725 c!4234) b!16015))

(assert (= (and d!11725 (not c!4234)) b!16016))

(assert (=> b!16016 m!19517))

(assert (=> b!16016 m!19515))

(assert (=> b!15598 d!11725))

(declare-fun b!16017 () Bool)

(declare-fun e!8741 () Bool)

(declare-fun lt!2313 () List!323)

(declare-fun e!8740 () Int)

(assert (=> b!16017 (= e!8741 (= (size!190 lt!2313) e!8740))))

(declare-fun c!4237 () Bool)

(assert (=> b!16017 (= c!4237 (<= n!315 0))))

(declare-fun b!16018 () Bool)

(declare-fun e!8742 () Int)

(assert (=> b!16018 (= e!8742 (size!190 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))))))

(declare-fun b!16019 () Bool)

(assert (=> b!16019 (= e!8740 0)))

(declare-fun b!16020 () Bool)

(assert (=> b!16020 (= e!8742 n!315)))

(declare-fun b!16021 () Bool)

(declare-fun e!8739 () List!323)

(assert (=> b!16021 (= e!8739 Nil!318)))

(declare-fun d!11727 () Bool)

(assert (=> d!11727 e!8741))

(declare-fun res!6513 () Bool)

(assert (=> d!11727 (=> (not res!6513) (not e!8741))))

(assert (=> d!11727 (= res!6513 (subset (content!53 lt!2313) (content!53 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))))))))

(assert (=> d!11727 (= lt!2313 e!8739)))

(declare-fun c!4235 () Bool)

(assert (=> d!11727 (= c!4235 (or (is-Nil!318 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))) (<= n!315 0)))))

(assert (=> d!11727 (= (take!8 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))) n!315) lt!2313)))

(declare-fun b!16022 () Bool)

(assert (=> b!16022 (= e!8739 (Cons!317 (h!231 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))) (take!8 (t!4283 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637)))) (- n!315 1))))))

(declare-fun b!16023 () Bool)

(assert (=> b!16023 (= e!8740 e!8742)))

(declare-fun c!4236 () Bool)

(assert (=> b!16023 (= c!4236 (>= n!315 (size!190 (++!8 (toList!83 (left!654 xs!637)) (toList!83 (right!657 xs!637))))))))

(assert (= (and d!11727 c!4235) b!16021))

(assert (= (and d!11727 (not c!4235)) b!16022))

(assert (= (and d!11727 res!6513) b!16017))

(assert (= (and b!16023 c!4236) b!16018))

(assert (= (and b!16023 (not c!4236)) b!16020))

(assert (= (and b!16017 c!4237) b!16019))

(assert (= (and b!16017 (not c!4237)) b!16023))

(assert (=> b!16023 m!19087))

(assert (=> b!16023 m!19465))

(declare-fun m!19555 () Bool)

(assert (=> d!11727 m!19555))

(assert (=> d!11727 m!19087))

(assert (=> d!11727 m!19461))

(assert (=> b!16018 m!19087))

(assert (=> b!16018 m!19465))

(declare-fun m!19557 () Bool)

(assert (=> b!16017 m!19557))

(declare-fun m!19559 () Bool)

(assert (=> b!16022 m!19559))

(assert (=> d!11563 d!11727))

(assert (=> d!11563 d!11687))

(assert (=> d!11563 d!11613))

(assert (=> b!15587 d!11611))

(assert (=> b!15587 d!11609))

(declare-fun b!16024 () Bool)

(declare-fun e!8744 () Bool)

(declare-fun e!8743 () Bool)

(assert (=> b!16024 (= e!8744 e!8743)))

(declare-fun res!6514 () Bool)

(assert (=> b!16024 (=> (not res!6514) (not e!8743))))

(assert (=> b!16024 (= res!6514 (>= (- (level!9 (left!654 (left!654 (right!657 xs!637)))) (level!9 (right!657 (left!654 (right!657 xs!637))))) (- 1)))))

(declare-fun b!16027 () Bool)

(assert (=> b!16027 (= e!8743 (balanced!10 (right!657 (left!654 (right!657 xs!637)))))))

(declare-fun b!16025 () Bool)

(declare-fun res!6517 () Bool)

(assert (=> b!16025 (=> (not res!6517) (not e!8743))))

(assert (=> b!16025 (= res!6517 (<= (- (level!9 (left!654 (left!654 (right!657 xs!637)))) (level!9 (right!657 (left!654 (right!657 xs!637))))) 1))))

(declare-fun d!11729 () Bool)

(declare-fun res!6516 () Bool)

(assert (=> d!11729 (=> res!6516 e!8744)))

(assert (=> d!11729 (= res!6516 (not (is-CC!9 (left!654 (right!657 xs!637)))))))

(assert (=> d!11729 (= (balanced!10 (left!654 (right!657 xs!637))) e!8744)))

(declare-fun b!16026 () Bool)

(declare-fun res!6515 () Bool)

(assert (=> b!16026 (=> (not res!6515) (not e!8743))))

(assert (=> b!16026 (= res!6515 (balanced!10 (left!654 (left!654 (right!657 xs!637)))))))

(assert (= (and d!11729 (not res!6516)) b!16024))

(assert (= (and b!16024 res!6514) b!16025))

(assert (= (and b!16025 res!6517) b!16026))

(assert (= (and b!16026 res!6515) b!16027))

(assert (=> b!16024 m!19275))

(assert (=> b!16024 m!19273))

(declare-fun m!19561 () Bool)

(assert (=> b!16027 m!19561))

(assert (=> b!16025 m!19275))

(assert (=> b!16025 m!19273))

(declare-fun m!19563 () Bool)

(assert (=> b!16026 m!19563))

(assert (=> b!15588 d!11729))

(assert (=> b!15694 d!11613))

(declare-fun d!11731 () Bool)

(declare-fun e!8745 () Bool)

(assert (=> d!11731 e!8745))

(declare-fun res!6518 () Bool)

(assert (=> d!11731 (=> (not res!6518) (not e!8745))))

(declare-fun lt!2314 () List!323)

(assert (=> d!11731 (= res!6518 (subset (content!53 lt!2314) (content!53 (t!4283 (toList!83 xs!637)))))))

(declare-fun e!8746 () List!323)

(assert (=> d!11731 (= lt!2314 e!8746)))

(declare-fun c!4240 () Bool)

(assert (=> d!11731 (= c!4240 (is-Nil!318 (t!4283 (toList!83 xs!637))))))

(assert (=> d!11731 (= (drop!6 (t!4283 (toList!83 xs!637)) (- n!315 1)) lt!2314)))

(declare-fun b!16028 () Bool)

(declare-fun e!8747 () List!323)

(assert (=> b!16028 (= e!8746 e!8747)))

(declare-fun c!4241 () Bool)

(assert (=> b!16028 (= c!4241 (<= (- n!315 1) 0))))

(declare-fun b!16029 () Bool)

(declare-fun e!8748 () Int)

(declare-fun lt!2315 () Int)

(assert (=> b!16029 (= e!8748 lt!2315)))

(declare-fun b!16030 () Bool)

(declare-fun e!8749 () Int)

(assert (=> b!16030 (= e!8748 e!8749)))

(declare-fun c!4238 () Bool)

(assert (=> b!16030 (= c!4238 (>= (- n!315 1) lt!2315))))

(declare-fun b!16031 () Bool)

(assert (=> b!16031 (= e!8747 (Cons!317 (h!231 (t!4283 (toList!83 xs!637))) (t!4283 (t!4283 (toList!83 xs!637)))))))

(declare-fun b!16032 () Bool)

(assert (=> b!16032 (= e!8749 0)))

(declare-fun b!16033 () Bool)

(assert (=> b!16033 (= e!8745 (= (size!190 lt!2314) e!8748))))

(declare-fun c!4239 () Bool)

(assert (=> b!16033 (= c!4239 (<= (- n!315 1) 0))))

(assert (=> b!16033 (= lt!2315 (size!190 (t!4283 (toList!83 xs!637))))))

(declare-fun b!16034 () Bool)

(assert (=> b!16034 (= e!8746 Nil!318)))

(declare-fun b!16035 () Bool)

(assert (=> b!16035 (= e!8747 (drop!6 (t!4283 (t!4283 (toList!83 xs!637))) (- (- n!315 1) 1)))))

(declare-fun b!16036 () Bool)

(assert (=> b!16036 (= e!8749 (- (size!190 (t!4283 (toList!83 xs!637))) (- n!315 1)))))

(assert (= (and b!16028 c!4241) b!16031))

(assert (= (and b!16028 (not c!4241)) b!16035))

(assert (= (and d!11731 c!4240) b!16034))

(assert (= (and d!11731 (not c!4240)) b!16028))

(assert (= (and d!11731 res!6518) b!16033))

(assert (= (and b!16030 c!4238) b!16032))

(assert (= (and b!16030 (not c!4238)) b!16036))

(assert (= (and b!16033 c!4239) b!16029))

(assert (= (and b!16033 (not c!4239)) b!16030))

(declare-fun m!19565 () Bool)

(assert (=> d!11731 m!19565))

(assert (=> d!11731 m!19333))

(declare-fun m!19567 () Bool)

(assert (=> b!16033 m!19567))

(assert (=> b!16033 m!19267))

(declare-fun m!19569 () Bool)

(assert (=> b!16035 m!19569))

(assert (=> b!16036 m!19267))

(assert (=> b!15672 d!11731))

(declare-fun b!16037 () Bool)

(declare-fun e!8751 () Bool)

(declare-fun e!8750 () Bool)

(assert (=> b!16037 (= e!8751 e!8750)))

(declare-fun res!6519 () Bool)

(assert (=> b!16037 (=> (not res!6519) (not e!8750))))

(assert (=> b!16037 (= res!6519 (>= (- (level!9 (left!654 (left!654 (right!657 (_2!52 res!5659))))) (level!9 (right!657 (left!654 (right!657 (_2!52 res!5659)))))) (- 1)))))

(declare-fun b!16040 () Bool)

(assert (=> b!16040 (= e!8750 (balanced!10 (right!657 (left!654 (right!657 (_2!52 res!5659))))))))

(declare-fun b!16038 () Bool)

(declare-fun res!6522 () Bool)

(assert (=> b!16038 (=> (not res!6522) (not e!8750))))

(assert (=> b!16038 (= res!6522 (<= (- (level!9 (left!654 (left!654 (right!657 (_2!52 res!5659))))) (level!9 (right!657 (left!654 (right!657 (_2!52 res!5659)))))) 1))))

(declare-fun d!11733 () Bool)

(declare-fun res!6521 () Bool)

(assert (=> d!11733 (=> res!6521 e!8751)))

(assert (=> d!11733 (= res!6521 (not (is-CC!9 (left!654 (right!657 (_2!52 res!5659))))))))

(assert (=> d!11733 (= (balanced!10 (left!654 (right!657 (_2!52 res!5659)))) e!8751)))

(declare-fun b!16039 () Bool)

(declare-fun res!6520 () Bool)

(assert (=> b!16039 (=> (not res!6520) (not e!8750))))

(assert (=> b!16039 (= res!6520 (balanced!10 (left!654 (left!654 (right!657 (_2!52 res!5659))))))))

(assert (= (and d!11733 (not res!6521)) b!16037))

(assert (= (and b!16037 res!6519) b!16038))

(assert (= (and b!16038 res!6522) b!16039))

(assert (= (and b!16039 res!6520) b!16040))

(assert (=> b!16037 m!19553))

(assert (=> b!16037 m!19551))

(declare-fun m!19571 () Bool)

(assert (=> b!16040 m!19571))

(assert (=> b!16038 m!19553))

(assert (=> b!16038 m!19551))

(declare-fun m!19573 () Bool)

(assert (=> b!16039 m!19573))

(assert (=> b!15600 d!11733))

(declare-fun b!16041 () Bool)

(declare-fun e!8753 () Bool)

(declare-fun e!8752 () Bool)

(assert (=> b!16041 (= e!8753 e!8752)))

(declare-fun res!6523 () Bool)

(assert (=> b!16041 (=> (not res!6523) (not e!8752))))

(assert (=> b!16041 (= res!6523 (>= (- (level!9 (left!654 (left!654 (left!654 (_1!52 res!5659))))) (level!9 (right!657 (left!654 (left!654 (_1!52 res!5659)))))) (- 1)))))

(declare-fun b!16044 () Bool)

(assert (=> b!16044 (= e!8752 (balanced!10 (right!657 (left!654 (left!654 (_1!52 res!5659))))))))

(declare-fun b!16042 () Bool)

(declare-fun res!6526 () Bool)

(assert (=> b!16042 (=> (not res!6526) (not e!8752))))

(assert (=> b!16042 (= res!6526 (<= (- (level!9 (left!654 (left!654 (left!654 (_1!52 res!5659))))) (level!9 (right!657 (left!654 (left!654 (_1!52 res!5659)))))) 1))))

(declare-fun d!11735 () Bool)

(declare-fun res!6525 () Bool)

(assert (=> d!11735 (=> res!6525 e!8753)))

(assert (=> d!11735 (= res!6525 (not (is-CC!9 (left!654 (left!654 (_1!52 res!5659))))))))

(assert (=> d!11735 (= (balanced!10 (left!654 (left!654 (_1!52 res!5659)))) e!8753)))

(declare-fun b!16043 () Bool)

(declare-fun res!6524 () Bool)

(assert (=> b!16043 (=> (not res!6524) (not e!8752))))

(assert (=> b!16043 (= res!6524 (balanced!10 (left!654 (left!654 (left!654 (_1!52 res!5659))))))))

(assert (= (and d!11735 (not res!6525)) b!16041))

(assert (= (and b!16041 res!6523) b!16042))

(assert (= (and b!16042 res!6526) b!16043))

(assert (= (and b!16043 res!6524) b!16044))

(assert (=> b!16041 m!19229))

(assert (=> b!16041 m!19227))

(declare-fun m!19575 () Bool)

(assert (=> b!16044 m!19575))

(assert (=> b!16042 m!19229))

(assert (=> b!16042 m!19227))

(declare-fun m!19577 () Bool)

(assert (=> b!16043 m!19577))

(assert (=> b!15718 d!11735))

(declare-fun d!11737 () Bool)

(assert (=> d!11737 (= (isEmpty!274 (left!654 (right!657 (_1!52 res!5659)))) (= (left!654 (right!657 (_1!52 res!5659))) Empty!20))))

(assert (=> b!15594 d!11737))

(declare-fun d!11739 () Bool)

(declare-fun c!4242 () Bool)

(assert (=> d!11739 (= c!4242 (is-Nil!318 lt!2230))))

(declare-fun e!8754 () (Set T!1711))

(assert (=> d!11739 (= (content!53 lt!2230) e!8754)))

(declare-fun b!16045 () Bool)

(assert (=> b!16045 (= e!8754 (as emptyset (Set T!1711)))))

(declare-fun b!16046 () Bool)

(assert (=> b!16046 (= e!8754 (union (insert (h!231 lt!2230) (as emptyset (Set T!1711))) (content!53 (t!4283 lt!2230))))))

(assert (= (and d!11739 c!4242) b!16045))

(assert (= (and d!11739 (not c!4242)) b!16046))

(declare-fun m!19579 () Bool)

(assert (=> b!16046 m!19579))

(declare-fun m!19581 () Bool)

(assert (=> b!16046 m!19581))

(assert (=> d!11561 d!11739))

(assert (=> d!11561 d!11639))

(declare-fun b!16047 () Bool)

(declare-fun e!8756 () Bool)

(declare-fun e!8755 () Bool)

(assert (=> b!16047 (= e!8756 e!8755)))

(declare-fun res!6527 () Bool)

(assert (=> b!16047 (=> (not res!6527) (not e!8755))))

(assert (=> b!16047 (= res!6527 (>= (- (level!9 (left!654 (left!654 (left!654 (_2!52 res!5659))))) (level!9 (right!657 (left!654 (left!654 (_2!52 res!5659)))))) (- 1)))))

(declare-fun b!16050 () Bool)

(assert (=> b!16050 (= e!8755 (balanced!10 (right!657 (left!654 (left!654 (_2!52 res!5659))))))))

(declare-fun b!16048 () Bool)

(declare-fun res!6530 () Bool)

(assert (=> b!16048 (=> (not res!6530) (not e!8755))))

(assert (=> b!16048 (= res!6530 (<= (- (level!9 (left!654 (left!654 (left!654 (_2!52 res!5659))))) (level!9 (right!657 (left!654 (left!654 (_2!52 res!5659)))))) 1))))

(declare-fun d!11741 () Bool)

(declare-fun res!6529 () Bool)

(assert (=> d!11741 (=> res!6529 e!8756)))

(assert (=> d!11741 (= res!6529 (not (is-CC!9 (left!654 (left!654 (_2!52 res!5659))))))))

(assert (=> d!11741 (= (balanced!10 (left!654 (left!654 (_2!52 res!5659)))) e!8756)))

(declare-fun b!16049 () Bool)

(declare-fun res!6528 () Bool)

(assert (=> b!16049 (=> (not res!6528) (not e!8755))))

(assert (=> b!16049 (= res!6528 (balanced!10 (left!654 (left!654 (left!654 (_2!52 res!5659))))))))

(assert (= (and d!11741 (not res!6529)) b!16047))

(assert (= (and b!16047 res!6527) b!16048))

(assert (= (and b!16048 res!6530) b!16049))

(assert (= (and b!16049 res!6528) b!16050))

(assert (=> b!16047 m!19371))

(assert (=> b!16047 m!19369))

(declare-fun m!19583 () Bool)

(assert (=> b!16050 m!19583))

(assert (=> b!16048 m!19371))

(assert (=> b!16048 m!19369))

(declare-fun m!19585 () Bool)

(assert (=> b!16049 m!19585))

(assert (=> b!15592 d!11741))

(declare-fun d!11743 () Bool)

(assert (=> d!11743 (= (isEmpty!274 (left!654 (left!654 (_2!52 res!5659)))) (= (left!654 (left!654 (_2!52 res!5659))) Empty!20))))

(assert (=> b!15639 d!11743))

(declare-fun b!16052 () Bool)

(declare-fun e!8758 () List!323)

(assert (=> b!16052 (= e!8758 (Cons!317 (h!231 (toList!83 (left!654 (left!654 xs!637)))) (++!8 (t!4283 (toList!83 (left!654 (left!654 xs!637)))) (toList!83 (right!657 (left!654 xs!637))))))))

(declare-fun b!16051 () Bool)

(assert (=> b!16051 (= e!8758 (toList!83 (right!657 (left!654 xs!637))))))

(declare-fun d!11745 () Bool)

(declare-fun e!8757 () Bool)

(assert (=> d!11745 e!8757))

(declare-fun res!6532 () Bool)

(assert (=> d!11745 (=> (not res!6532) (not e!8757))))

(declare-fun lt!2316 () List!323)

(assert (=> d!11745 (= res!6532 (= (content!53 lt!2316) (union (content!53 (toList!83 (left!654 (left!654 xs!637)))) (content!53 (toList!83 (right!657 (left!654 xs!637)))))))))

(assert (=> d!11745 (= lt!2316 e!8758)))

(declare-fun c!4243 () Bool)

(assert (=> d!11745 (= c!4243 (is-Nil!318 (toList!83 (left!654 (left!654 xs!637)))))))

(assert (=> d!11745 (= (++!8 (toList!83 (left!654 (left!654 xs!637))) (toList!83 (right!657 (left!654 xs!637)))) lt!2316)))

(declare-fun b!16053 () Bool)

(declare-fun res!6531 () Bool)

(assert (=> b!16053 (=> (not res!6531) (not e!8757))))

(assert (=> b!16053 (= res!6531 (= (size!190 lt!2316) (+ (size!190 (toList!83 (left!654 (left!654 xs!637)))) (size!190 (toList!83 (right!657 (left!654 xs!637)))))))))

(declare-fun b!16054 () Bool)

(assert (=> b!16054 (= e!8757 (or (not (= (toList!83 (right!657 (left!654 xs!637))) Nil!318)) (= lt!2316 (toList!83 (left!654 (left!654 xs!637))))))))

(assert (= (and d!11745 c!4243) b!16051))

(assert (= (and d!11745 (not c!4243)) b!16052))

(assert (= (and d!11745 res!6532) b!16053))

(assert (= (and b!16053 res!6531) b!16054))

(assert (=> b!16052 m!19139))

(declare-fun m!19587 () Bool)

(assert (=> b!16052 m!19587))

(declare-fun m!19589 () Bool)

(assert (=> d!11745 m!19589))

(assert (=> d!11745 m!19137))

(declare-fun m!19591 () Bool)

(assert (=> d!11745 m!19591))

(assert (=> d!11745 m!19139))

(declare-fun m!19593 () Bool)

(assert (=> d!11745 m!19593))

(declare-fun m!19595 () Bool)

(assert (=> b!16053 m!19595))

(assert (=> b!16053 m!19137))

(declare-fun m!19597 () Bool)

(assert (=> b!16053 m!19597))

(assert (=> b!16053 m!19139))

(declare-fun m!19599 () Bool)

(assert (=> b!16053 m!19599))

(assert (=> b!15707 d!11745))

(declare-fun b!16058 () Bool)

(declare-fun e!8760 () List!323)

(assert (=> b!16058 (= e!8760 (++!8 (toList!83 (left!654 (left!654 (left!654 xs!637)))) (toList!83 (right!657 (left!654 (left!654 xs!637))))))))

(declare-fun b!16055 () Bool)

(declare-fun e!8759 () List!323)

(assert (=> b!16055 (= e!8759 Nil!318)))

(declare-fun b!16056 () Bool)

(assert (=> b!16056 (= e!8759 e!8760)))

(declare-fun c!4245 () Bool)

(assert (=> b!16056 (= c!4245 (is-Single!9 (left!654 (left!654 xs!637))))))

(declare-fun b!16057 () Bool)

(assert (=> b!16057 (= e!8760 (Cons!317 (x!8704 (left!654 (left!654 xs!637))) Nil!318))))

(declare-fun d!11747 () Bool)

(declare-fun lt!2317 () List!323)

(assert (=> d!11747 (= (size!190 lt!2317) (size!191 (left!654 (left!654 xs!637))))))

(assert (=> d!11747 (= lt!2317 e!8759)))

(declare-fun c!4244 () Bool)

(assert (=> d!11747 (= c!4244 (is-Empty!20 (left!654 (left!654 xs!637))))))

(assert (=> d!11747 (= (toList!83 (left!654 (left!654 xs!637))) lt!2317)))

(assert (= (and b!16056 c!4245) b!16057))

(assert (= (and b!16056 (not c!4245)) b!16058))

(assert (= (and d!11747 c!4244) b!16055))

(assert (= (and d!11747 (not c!4244)) b!16056))

(declare-fun m!19601 () Bool)

(assert (=> b!16058 m!19601))

(declare-fun m!19603 () Bool)

(assert (=> b!16058 m!19603))

(assert (=> b!16058 m!19601))

(assert (=> b!16058 m!19603))

(declare-fun m!19605 () Bool)

(assert (=> b!16058 m!19605))

(declare-fun m!19607 () Bool)

(assert (=> d!11747 m!19607))

(assert (=> d!11747 m!19279))

(assert (=> b!15707 d!11747))

(declare-fun b!16062 () Bool)

(declare-fun e!8762 () List!323)

(assert (=> b!16062 (= e!8762 (++!8 (toList!83 (left!654 (right!657 (left!654 xs!637)))) (toList!83 (right!657 (right!657 (left!654 xs!637))))))))

(declare-fun b!16059 () Bool)

(declare-fun e!8761 () List!323)

(assert (=> b!16059 (= e!8761 Nil!318)))

(declare-fun b!16060 () Bool)

(assert (=> b!16060 (= e!8761 e!8762)))

(declare-fun c!4247 () Bool)

(assert (=> b!16060 (= c!4247 (is-Single!9 (right!657 (left!654 xs!637))))))

(declare-fun b!16061 () Bool)

(assert (=> b!16061 (= e!8762 (Cons!317 (x!8704 (right!657 (left!654 xs!637))) Nil!318))))

(declare-fun d!11749 () Bool)

(declare-fun lt!2318 () List!323)

(assert (=> d!11749 (= (size!190 lt!2318) (size!191 (right!657 (left!654 xs!637))))))

(assert (=> d!11749 (= lt!2318 e!8761)))

(declare-fun c!4246 () Bool)

(assert (=> d!11749 (= c!4246 (is-Empty!20 (right!657 (left!654 xs!637))))))

(assert (=> d!11749 (= (toList!83 (right!657 (left!654 xs!637))) lt!2318)))

(assert (= (and b!16060 c!4247) b!16061))

(assert (= (and b!16060 (not c!4247)) b!16062))

(assert (= (and d!11749 c!4246) b!16059))

(assert (= (and d!11749 (not c!4246)) b!16060))

(declare-fun m!19609 () Bool)

(assert (=> b!16062 m!19609))

(declare-fun m!19611 () Bool)

(assert (=> b!16062 m!19611))

(assert (=> b!16062 m!19609))

(assert (=> b!16062 m!19611))

(declare-fun m!19613 () Bool)

(assert (=> b!16062 m!19613))

(declare-fun m!19615 () Bool)

(assert (=> d!11749 m!19615))

(assert (=> d!11749 m!19281))

(assert (=> b!15707 d!11749))

(assert (=> b!15724 d!11671))

(assert (=> b!15724 d!11673))

(assert (=> b!15599 d!11723))

(assert (=> b!15599 d!11725))

(assert (=> b!15583 d!11605))

(assert (=> b!15583 d!11603))

(assert (=> b!15716 d!11589))

(assert (=> b!15716 d!11587))

(declare-fun b!16063 () Bool)

(declare-fun e!8763 () Bool)

(declare-fun e!8764 () Bool)

(assert (=> b!16063 (= e!8763 e!8764)))

(declare-fun res!6536 () Bool)

(assert (=> b!16063 (=> (not res!6536) (not e!8764))))

(assert (=> b!16063 (= res!6536 (not (isEmpty!274 (left!654 (left!654 (left!654 xs!637))))))))

(declare-fun d!11751 () Bool)

(declare-fun res!6533 () Bool)

(assert (=> d!11751 (=> res!6533 e!8763)))

(assert (=> d!11751 (= res!6533 (not (is-CC!9 (left!654 (left!654 xs!637)))))))

(assert (=> d!11751 (= (concInv!9 (left!654 (left!654 xs!637))) e!8763)))

(declare-fun b!16065 () Bool)

(declare-fun res!6535 () Bool)

(assert (=> b!16065 (=> (not res!6535) (not e!8764))))

(assert (=> b!16065 (= res!6535 (concInv!9 (left!654 (left!654 (left!654 xs!637)))))))

(declare-fun b!16064 () Bool)

(declare-fun res!6534 () Bool)

(assert (=> b!16064 (=> (not res!6534) (not e!8764))))

(assert (=> b!16064 (= res!6534 (not (isEmpty!274 (right!657 (left!654 (left!654 xs!637))))))))

(declare-fun b!16066 () Bool)

(assert (=> b!16066 (= e!8764 (concInv!9 (right!657 (left!654 (left!654 xs!637)))))))

(assert (= (and d!11751 (not res!6533)) b!16063))

(assert (= (and b!16063 res!6536) b!16064))

(assert (= (and b!16064 res!6534) b!16065))

(assert (= (and b!16065 res!6535) b!16066))

(declare-fun m!19617 () Bool)

(assert (=> b!16063 m!19617))

(declare-fun m!19619 () Bool)

(assert (=> b!16065 m!19619))

(declare-fun m!19621 () Bool)

(assert (=> b!16064 m!19621))

(declare-fun m!19623 () Bool)

(assert (=> b!16066 m!19623))

(assert (=> b!15730 d!11751))

(declare-fun b!16068 () Bool)

(declare-fun e!8766 () List!323)

(assert (=> b!16068 (= e!8766 (Cons!317 (h!231 (toList!83 (left!654 xs!637))) (++!8 (t!4283 (toList!83 (left!654 xs!637))) (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637))))))))))

(declare-fun b!16067 () Bool)

(assert (=> b!16067 (= e!8766 (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637))))))))

(declare-fun d!11753 () Bool)

(declare-fun e!8765 () Bool)

(assert (=> d!11753 e!8765))

(declare-fun res!6538 () Bool)

(assert (=> d!11753 (=> (not res!6538) (not e!8765))))

(declare-fun lt!2319 () List!323)

(assert (=> d!11753 (= res!6538 (= (content!53 lt!2319) (union (content!53 (toList!83 (left!654 xs!637))) (content!53 (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637)))))))))))

(assert (=> d!11753 (= lt!2319 e!8766)))

(declare-fun c!4248 () Bool)

(assert (=> d!11753 (= c!4248 (is-Nil!318 (toList!83 (left!654 xs!637))))))

(assert (=> d!11753 (= (++!8 (toList!83 (left!654 xs!637)) (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637)))))) lt!2319)))

(declare-fun b!16069 () Bool)

(declare-fun res!6537 () Bool)

(assert (=> b!16069 (=> (not res!6537) (not e!8765))))

(assert (=> b!16069 (= res!6537 (= (size!190 lt!2319) (+ (size!190 (toList!83 (left!654 xs!637))) (size!190 (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637)))))))))))

(declare-fun b!16070 () Bool)

(assert (=> b!16070 (= e!8765 (or (not (= (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637))))) Nil!318)) (= lt!2319 (toList!83 (left!654 xs!637)))))))

(assert (= (and d!11753 c!4248) b!16067))

(assert (= (and d!11753 (not c!4248)) b!16068))

(assert (= (and d!11753 res!6538) b!16069))

(assert (= (and b!16069 res!6537) b!16070))

(assert (=> b!16068 m!19127))

(declare-fun m!19625 () Bool)

(assert (=> b!16068 m!19625))

(declare-fun m!19627 () Bool)

(assert (=> d!11753 m!19627))

(assert (=> d!11753 m!18943))

(assert (=> d!11753 m!19471))

(assert (=> d!11753 m!19127))

(declare-fun m!19629 () Bool)

(assert (=> d!11753 m!19629))

(declare-fun m!19631 () Bool)

(assert (=> b!16069 m!19631))

(assert (=> b!16069 m!18943))

(assert (=> b!16069 m!19117))

(assert (=> b!16069 m!19127))

(declare-fun m!19633 () Bool)

(assert (=> b!16069 m!19633))

(assert (=> b!15696 d!11753))

(declare-fun b!16071 () Bool)

(declare-fun e!8769 () Bool)

(declare-fun lt!2320 () List!323)

(declare-fun e!8768 () Int)

(assert (=> b!16071 (= e!8769 (= (size!190 lt!2320) e!8768))))

(declare-fun c!4251 () Bool)

(assert (=> b!16071 (= c!4251 (<= (- n!315 (size!190 (toList!83 (left!654 xs!637)))) 0))))

(declare-fun b!16072 () Bool)

(declare-fun e!8770 () Int)

(assert (=> b!16072 (= e!8770 (size!190 (toList!83 (right!657 xs!637))))))

(declare-fun b!16073 () Bool)

(assert (=> b!16073 (= e!8768 0)))

(declare-fun b!16074 () Bool)

(assert (=> b!16074 (= e!8770 (- n!315 (size!190 (toList!83 (left!654 xs!637)))))))

(declare-fun b!16075 () Bool)

(declare-fun e!8767 () List!323)

(assert (=> b!16075 (= e!8767 Nil!318)))

(declare-fun d!11755 () Bool)

(assert (=> d!11755 e!8769))

(declare-fun res!6539 () Bool)

(assert (=> d!11755 (=> (not res!6539) (not e!8769))))

(assert (=> d!11755 (= res!6539 (subset (content!53 lt!2320) (content!53 (toList!83 (right!657 xs!637)))))))

(assert (=> d!11755 (= lt!2320 e!8767)))

(declare-fun c!4249 () Bool)

(assert (=> d!11755 (= c!4249 (or (is-Nil!318 (toList!83 (right!657 xs!637))) (<= (- n!315 (size!190 (toList!83 (left!654 xs!637)))) 0)))))

(assert (=> d!11755 (= (take!8 (toList!83 (right!657 xs!637)) (- n!315 (size!190 (toList!83 (left!654 xs!637))))) lt!2320)))

(declare-fun b!16076 () Bool)

(assert (=> b!16076 (= e!8767 (Cons!317 (h!231 (toList!83 (right!657 xs!637))) (take!8 (t!4283 (toList!83 (right!657 xs!637))) (- (- n!315 (size!190 (toList!83 (left!654 xs!637)))) 1))))))

(declare-fun b!16077 () Bool)

(assert (=> b!16077 (= e!8768 e!8770)))

(declare-fun c!4250 () Bool)

(assert (=> b!16077 (= c!4250 (>= (- n!315 (size!190 (toList!83 (left!654 xs!637)))) (size!190 (toList!83 (right!657 xs!637)))))))

(assert (= (and d!11755 c!4249) b!16075))

(assert (= (and d!11755 (not c!4249)) b!16076))

(assert (= (and d!11755 res!6539) b!16071))

(assert (= (and b!16077 c!4250) b!16072))

(assert (= (and b!16077 (not c!4250)) b!16074))

(assert (= (and b!16071 c!4251) b!16073))

(assert (= (and b!16071 (not c!4251)) b!16077))

(assert (=> b!16077 m!18945))

(assert (=> b!16077 m!19323))

(declare-fun m!19635 () Bool)

(assert (=> d!11755 m!19635))

(assert (=> d!11755 m!18945))

(assert (=> d!11755 m!19319))

(assert (=> b!16072 m!18945))

(assert (=> b!16072 m!19323))

(declare-fun m!19637 () Bool)

(assert (=> b!16071 m!19637))

(declare-fun m!19639 () Bool)

(assert (=> b!16076 m!19639))

(assert (=> b!15696 d!11755))

(assert (=> b!15696 d!11613))

(declare-fun d!11757 () Bool)

(assert (=> d!11757 (= (isEmpty!274 (left!654 (left!654 xs!637))) (= (left!654 (left!654 xs!637)) Empty!20))))

(assert (=> b!15728 d!11757))

(assert (=> b!15569 d!11725))

(assert (=> b!15569 d!11723))

(declare-fun b!16078 () Bool)

(declare-fun e!8771 () Bool)

(declare-fun tp!3797 () Bool)

(declare-fun tp!3798 () Bool)

(assert (=> b!16078 (= e!8771 (and tp!3797 tp!3798))))

(declare-fun b!16079 () Bool)

(assert (=> b!16079 (= e!8771 tp_is_empty!55)))

(assert (=> b!15742 (= tp!3783 e!8771)))

(assert (= (and b!15742 (is-CC!9 (left!654 (right!657 (left!654 xs!637))))) b!16078))

(assert (= (and b!15742 (is-Single!9 (left!654 (right!657 (left!654 xs!637))))) b!16079))

(declare-fun b!16080 () Bool)

(declare-fun e!8772 () Bool)

(declare-fun tp!3799 () Bool)

(declare-fun tp!3800 () Bool)

(assert (=> b!16080 (= e!8772 (and tp!3799 tp!3800))))

(declare-fun b!16081 () Bool)

(assert (=> b!16081 (= e!8772 tp_is_empty!55)))

(assert (=> b!15742 (= tp!3784 e!8772)))

(assert (= (and b!15742 (is-CC!9 (right!657 (right!657 (left!654 xs!637))))) b!16080))

(assert (= (and b!15742 (is-Single!9 (right!657 (right!657 (left!654 xs!637))))) b!16081))

(declare-fun b!16082 () Bool)

(declare-fun e!8773 () Bool)

(declare-fun tp!3801 () Bool)

(declare-fun tp!3802 () Bool)

(assert (=> b!16082 (= e!8773 (and tp!3801 tp!3802))))

(declare-fun b!16083 () Bool)

(assert (=> b!16083 (= e!8773 tp_is_empty!55)))

(assert (=> b!15740 (= tp!3781 e!8773)))

(assert (= (and b!15740 (is-CC!9 (left!654 (left!654 (left!654 xs!637))))) b!16082))

(assert (= (and b!15740 (is-Single!9 (left!654 (left!654 (left!654 xs!637))))) b!16083))

(declare-fun b!16084 () Bool)

(declare-fun e!8774 () Bool)

(declare-fun tp!3803 () Bool)

(declare-fun tp!3804 () Bool)

(assert (=> b!16084 (= e!8774 (and tp!3803 tp!3804))))

(declare-fun b!16085 () Bool)

(assert (=> b!16085 (= e!8774 tp_is_empty!55)))

(assert (=> b!15740 (= tp!3782 e!8774)))

(assert (= (and b!15740 (is-CC!9 (right!657 (left!654 (left!654 xs!637))))) b!16084))

(assert (= (and b!15740 (is-Single!9 (right!657 (left!654 (left!654 xs!637))))) b!16085))

(declare-fun b!16086 () Bool)

(declare-fun e!8775 () Bool)

(declare-fun tp!3805 () Bool)

(declare-fun tp!3806 () Bool)

(assert (=> b!16086 (= e!8775 (and tp!3805 tp!3806))))

(declare-fun b!16087 () Bool)

(assert (=> b!16087 (= e!8775 tp_is_empty!55)))

(assert (=> b!15738 (= tp!3779 e!8775)))

(assert (= (and b!15738 (is-CC!9 (left!654 (right!657 (right!657 (_1!52 res!5659)))))) b!16086))

(assert (= (and b!15738 (is-Single!9 (left!654 (right!657 (right!657 (_1!52 res!5659)))))) b!16087))

(declare-fun b!16088 () Bool)

(declare-fun e!8776 () Bool)

(declare-fun tp!3807 () Bool)

(declare-fun tp!3808 () Bool)

(assert (=> b!16088 (= e!8776 (and tp!3807 tp!3808))))

(declare-fun b!16089 () Bool)

(assert (=> b!16089 (= e!8776 tp_is_empty!55)))

(assert (=> b!15738 (= tp!3780 e!8776)))

(assert (= (and b!15738 (is-CC!9 (right!657 (right!657 (right!657 (_1!52 res!5659)))))) b!16088))

(assert (= (and b!15738 (is-Single!9 (right!657 (right!657 (right!657 (_1!52 res!5659)))))) b!16089))

(declare-fun b!16090 () Bool)

(declare-fun e!8777 () Bool)

(declare-fun tp!3809 () Bool)

(declare-fun tp!3810 () Bool)

(assert (=> b!16090 (= e!8777 (and tp!3809 tp!3810))))

(declare-fun b!16091 () Bool)

(assert (=> b!16091 (= e!8777 tp_is_empty!55)))

(assert (=> b!15750 (= tp!3791 e!8777)))

(assert (= (and b!15750 (is-CC!9 (left!654 (right!657 (left!654 (_1!52 res!5659)))))) b!16090))

(assert (= (and b!15750 (is-Single!9 (left!654 (right!657 (left!654 (_1!52 res!5659)))))) b!16091))

(declare-fun b!16092 () Bool)

(declare-fun e!8778 () Bool)

(declare-fun tp!3811 () Bool)

(declare-fun tp!3812 () Bool)

(assert (=> b!16092 (= e!8778 (and tp!3811 tp!3812))))

(declare-fun b!16093 () Bool)

(assert (=> b!16093 (= e!8778 tp_is_empty!55)))

(assert (=> b!15750 (= tp!3792 e!8778)))

(assert (= (and b!15750 (is-CC!9 (right!657 (right!657 (left!654 (_1!52 res!5659)))))) b!16092))

(assert (= (and b!15750 (is-Single!9 (right!657 (right!657 (left!654 (_1!52 res!5659)))))) b!16093))

(declare-fun b!16094 () Bool)

(declare-fun e!8779 () Bool)

(declare-fun tp!3813 () Bool)

(declare-fun tp!3814 () Bool)

(assert (=> b!16094 (= e!8779 (and tp!3813 tp!3814))))

(declare-fun b!16095 () Bool)

(assert (=> b!16095 (= e!8779 tp_is_empty!55)))

(assert (=> b!15744 (= tp!3785 e!8779)))

(assert (= (and b!15744 (is-CC!9 (left!654 (left!654 (right!657 (_2!52 res!5659)))))) b!16094))

(assert (= (and b!15744 (is-Single!9 (left!654 (left!654 (right!657 (_2!52 res!5659)))))) b!16095))

(declare-fun b!16096 () Bool)

(declare-fun e!8780 () Bool)

(declare-fun tp!3815 () Bool)

(declare-fun tp!3816 () Bool)

(assert (=> b!16096 (= e!8780 (and tp!3815 tp!3816))))

(declare-fun b!16097 () Bool)

(assert (=> b!16097 (= e!8780 tp_is_empty!55)))

(assert (=> b!15744 (= tp!3786 e!8780)))

(assert (= (and b!15744 (is-CC!9 (right!657 (left!654 (right!657 (_2!52 res!5659)))))) b!16096))

(assert (= (and b!15744 (is-Single!9 (right!657 (left!654 (right!657 (_2!52 res!5659)))))) b!16097))

(declare-fun b!16098 () Bool)

(declare-fun e!8781 () Bool)

(declare-fun tp!3817 () Bool)

(declare-fun tp!3818 () Bool)

(assert (=> b!16098 (= e!8781 (and tp!3817 tp!3818))))

(declare-fun b!16099 () Bool)

(assert (=> b!16099 (= e!8781 tp_is_empty!55)))

(assert (=> b!15746 (= tp!3787 e!8781)))

(assert (= (and b!15746 (is-CC!9 (left!654 (right!657 (right!657 (_2!52 res!5659)))))) b!16098))

(assert (= (and b!15746 (is-Single!9 (left!654 (right!657 (right!657 (_2!52 res!5659)))))) b!16099))

(declare-fun b!16100 () Bool)

(declare-fun e!8782 () Bool)

(declare-fun tp!3819 () Bool)

(declare-fun tp!3820 () Bool)

(assert (=> b!16100 (= e!8782 (and tp!3819 tp!3820))))

(declare-fun b!16101 () Bool)

(assert (=> b!16101 (= e!8782 tp_is_empty!55)))

(assert (=> b!15746 (= tp!3788 e!8782)))

(assert (= (and b!15746 (is-CC!9 (right!657 (right!657 (right!657 (_2!52 res!5659)))))) b!16100))

(assert (= (and b!15746 (is-Single!9 (right!657 (right!657 (right!657 (_2!52 res!5659)))))) b!16101))

(declare-fun b!16102 () Bool)

(declare-fun e!8783 () Bool)

(declare-fun tp!3821 () Bool)

(declare-fun tp!3822 () Bool)

(assert (=> b!16102 (= e!8783 (and tp!3821 tp!3822))))

(declare-fun b!16103 () Bool)

(assert (=> b!16103 (= e!8783 tp_is_empty!55)))

(assert (=> b!15752 (= tp!3793 e!8783)))

(assert (= (and b!15752 (is-CC!9 (left!654 (left!654 (left!654 (_2!52 res!5659)))))) b!16102))

(assert (= (and b!15752 (is-Single!9 (left!654 (left!654 (left!654 (_2!52 res!5659)))))) b!16103))

(declare-fun b!16104 () Bool)

(declare-fun e!8784 () Bool)

(declare-fun tp!3823 () Bool)

(declare-fun tp!3824 () Bool)

(assert (=> b!16104 (= e!8784 (and tp!3823 tp!3824))))

(declare-fun b!16105 () Bool)

(assert (=> b!16105 (= e!8784 tp_is_empty!55)))

(assert (=> b!15752 (= tp!3794 e!8784)))

(assert (= (and b!15752 (is-CC!9 (right!657 (left!654 (left!654 (_2!52 res!5659)))))) b!16104))

(assert (= (and b!15752 (is-Single!9 (right!657 (left!654 (left!654 (_2!52 res!5659)))))) b!16105))

(declare-fun b!16106 () Bool)

(declare-fun e!8785 () Bool)

(declare-fun tp!3825 () Bool)

(declare-fun tp!3826 () Bool)

(assert (=> b!16106 (= e!8785 (and tp!3825 tp!3826))))

(declare-fun b!16107 () Bool)

(assert (=> b!16107 (= e!8785 tp_is_empty!55)))

(assert (=> b!15734 (= tp!3775 e!8785)))

(assert (= (and b!15734 (is-CC!9 (left!654 (right!657 (right!657 xs!637))))) b!16106))

(assert (= (and b!15734 (is-Single!9 (left!654 (right!657 (right!657 xs!637))))) b!16107))

(declare-fun b!16108 () Bool)

(declare-fun e!8786 () Bool)

(declare-fun tp!3827 () Bool)

(declare-fun tp!3828 () Bool)

(assert (=> b!16108 (= e!8786 (and tp!3827 tp!3828))))

(declare-fun b!16109 () Bool)

(assert (=> b!16109 (= e!8786 tp_is_empty!55)))

(assert (=> b!15734 (= tp!3776 e!8786)))

(assert (= (and b!15734 (is-CC!9 (right!657 (right!657 (right!657 xs!637))))) b!16108))

(assert (= (and b!15734 (is-Single!9 (right!657 (right!657 (right!657 xs!637))))) b!16109))

(declare-fun b!16110 () Bool)

(declare-fun e!8787 () Bool)

(declare-fun tp!3829 () Bool)

(declare-fun tp!3830 () Bool)

(assert (=> b!16110 (= e!8787 (and tp!3829 tp!3830))))

(declare-fun b!16111 () Bool)

(assert (=> b!16111 (= e!8787 tp_is_empty!55)))

(assert (=> b!15754 (= tp!3795 e!8787)))

(assert (= (and b!15754 (is-CC!9 (left!654 (right!657 (left!654 (_2!52 res!5659)))))) b!16110))

(assert (= (and b!15754 (is-Single!9 (left!654 (right!657 (left!654 (_2!52 res!5659)))))) b!16111))

(declare-fun b!16112 () Bool)

(declare-fun e!8788 () Bool)

(declare-fun tp!3831 () Bool)

(declare-fun tp!3832 () Bool)

(assert (=> b!16112 (= e!8788 (and tp!3831 tp!3832))))

(declare-fun b!16113 () Bool)

(assert (=> b!16113 (= e!8788 tp_is_empty!55)))

(assert (=> b!15754 (= tp!3796 e!8788)))

(assert (= (and b!15754 (is-CC!9 (right!657 (right!657 (left!654 (_2!52 res!5659)))))) b!16112))

(assert (= (and b!15754 (is-Single!9 (right!657 (right!657 (left!654 (_2!52 res!5659)))))) b!16113))

(declare-fun b!16114 () Bool)

(declare-fun e!8789 () Bool)

(declare-fun tp!3833 () Bool)

(declare-fun tp!3834 () Bool)

(assert (=> b!16114 (= e!8789 (and tp!3833 tp!3834))))

(declare-fun b!16115 () Bool)

(assert (=> b!16115 (= e!8789 tp_is_empty!55)))

(assert (=> b!15732 (= tp!3773 e!8789)))

(assert (= (and b!15732 (is-CC!9 (left!654 (left!654 (right!657 xs!637))))) b!16114))

(assert (= (and b!15732 (is-Single!9 (left!654 (left!654 (right!657 xs!637))))) b!16115))

(declare-fun b!16116 () Bool)

(declare-fun e!8790 () Bool)

(declare-fun tp!3835 () Bool)

(declare-fun tp!3836 () Bool)

(assert (=> b!16116 (= e!8790 (and tp!3835 tp!3836))))

(declare-fun b!16117 () Bool)

(assert (=> b!16117 (= e!8790 tp_is_empty!55)))

(assert (=> b!15732 (= tp!3774 e!8790)))

(assert (= (and b!15732 (is-CC!9 (right!657 (left!654 (right!657 xs!637))))) b!16116))

(assert (= (and b!15732 (is-Single!9 (right!657 (left!654 (right!657 xs!637))))) b!16117))

(declare-fun b!16118 () Bool)

(declare-fun e!8791 () Bool)

(declare-fun tp!3837 () Bool)

(declare-fun tp!3838 () Bool)

(assert (=> b!16118 (= e!8791 (and tp!3837 tp!3838))))

(declare-fun b!16119 () Bool)

(assert (=> b!16119 (= e!8791 tp_is_empty!55)))

(assert (=> b!15736 (= tp!3777 e!8791)))

(assert (= (and b!15736 (is-CC!9 (left!654 (left!654 (right!657 (_1!52 res!5659)))))) b!16118))

(assert (= (and b!15736 (is-Single!9 (left!654 (left!654 (right!657 (_1!52 res!5659)))))) b!16119))

(declare-fun b!16120 () Bool)

(declare-fun e!8792 () Bool)

(declare-fun tp!3839 () Bool)

(declare-fun tp!3840 () Bool)

(assert (=> b!16120 (= e!8792 (and tp!3839 tp!3840))))

(declare-fun b!16121 () Bool)

(assert (=> b!16121 (= e!8792 tp_is_empty!55)))

(assert (=> b!15736 (= tp!3778 e!8792)))

(assert (= (and b!15736 (is-CC!9 (right!657 (left!654 (right!657 (_1!52 res!5659)))))) b!16120))

(assert (= (and b!15736 (is-Single!9 (right!657 (left!654 (right!657 (_1!52 res!5659)))))) b!16121))

(declare-fun b!16122 () Bool)

(declare-fun e!8793 () Bool)

(declare-fun tp!3841 () Bool)

(declare-fun tp!3842 () Bool)

(assert (=> b!16122 (= e!8793 (and tp!3841 tp!3842))))

(declare-fun b!16123 () Bool)

(assert (=> b!16123 (= e!8793 tp_is_empty!55)))

(assert (=> b!15748 (= tp!3789 e!8793)))

(assert (= (and b!15748 (is-CC!9 (left!654 (left!654 (left!654 (_1!52 res!5659)))))) b!16122))

(assert (= (and b!15748 (is-Single!9 (left!654 (left!654 (left!654 (_1!52 res!5659)))))) b!16123))

(declare-fun b!16124 () Bool)

(declare-fun e!8794 () Bool)

(declare-fun tp!3843 () Bool)

(declare-fun tp!3844 () Bool)

(assert (=> b!16124 (= e!8794 (and tp!3843 tp!3844))))

(declare-fun b!16125 () Bool)

(assert (=> b!16125 (= e!8794 tp_is_empty!55)))

(assert (=> b!15748 (= tp!3790 e!8794)))

(assert (= (and b!15748 (is-CC!9 (right!657 (left!654 (left!654 (_1!52 res!5659)))))) b!16124))

(assert (= (and b!15748 (is-Single!9 (right!657 (left!654 (left!654 (_1!52 res!5659)))))) b!16125))

(push 1)

(assert (not b!16090))

(assert (not d!11669))

(assert tp_is_empty!55)

(assert (not b!15788))

(assert (not b!16062))

(assert (not b!15790))

(assert (not b!15908))

(assert (not b!16108))

(assert (not b!15807))

(assert (not b!16017))

(assert (not b!16036))

(assert (not d!11627))

(assert (not b!15881))

(assert (not b!16069))

(assert (not b!15939))

(assert (not d!11747))

(assert (not b!15966))

(assert (not b!16096))

(assert (not b!15782))

(assert (not b!15890))

(assert (not b!15805))

(assert (not b!15760))

(assert (not b!15932))

(assert (not b!16006))

(assert (not d!11713))

(assert (not b!15975))

(assert (not b!16078))

(assert (not b!15943))

(assert (not b!15843))

(assert (not b!15851))

(assert (not b!15763))

(assert (not b!15906))

(assert (not b!16124))

(assert (not b!16027))

(assert (not b!15899))

(assert (not b!16094))

(assert (not b!15792))

(assert (not d!11583))

(assert (not d!11699))

(assert (not b!15787))

(assert (not d!11697))

(assert (not b!15775))

(assert (not b!15935))

(assert (not b!15942))

(assert (not b!16120))

(assert (not b!15879))

(assert (not b!15983))

(assert (not b!15982))

(assert (not b!15988))

(assert (not d!11715))

(assert (not d!11625))

(assert (not b!16052))

(assert (not b!15864))

(assert (not b!15952))

(assert (not b!15766))

(assert (not b!16026))

(assert (not b!15955))

(assert (not b!15962))

(assert (not b!15795))

(assert (not b!16106))

(assert (not b!15954))

(assert (not b!16007))

(assert (not d!11687))

(assert (not b!16004))

(assert (not b!15941))

(assert (not b!16008))

(assert (not b!16114))

(assert (not b!15761))

(assert (not b!15965))

(assert (not b!15809))

(assert (not b!15857))

(assert (not b!15987))

(assert (not b!16050))

(assert (not b!15765))

(assert (not b!15791))

(assert (not b!15866))

(assert (not b!15958))

(assert (not b!15951))

(assert (not b!15911))

(assert (not b!15823))

(assert (not b!15910))

(assert (not b!15877))

(assert (not b!16005))

(assert (not b!15991))

(assert (not b!15989))

(assert (not b!15773))

(assert (not b!16068))

(assert (not b!15949))

(assert (not d!11727))

(assert (not b!15852))

(assert (not b!16014))

(assert (not b!16058))

(assert (not b!16063))

(assert (not b!16035))

(assert (not b!15865))

(assert (not d!11691))

(assert (not b!16092))

(assert (not b!15921))

(assert (not d!11685))

(assert (not b!16010))

(assert (not d!11621))

(assert (not b!15892))

(assert (not d!11755))

(assert (not b!15994))

(assert (not b!15759))

(assert (not b!16018))

(assert (not b!15856))

(assert (not b!16080))

(assert (not b!15762))

(assert (not b!16016))

(assert (not b!15930))

(assert (not b!16003))

(assert (not b!15868))

(assert (not d!11749))

(assert (not b!15981))

(assert (not b!15915))

(assert (not b!16065))

(assert (not b!15940))

(assert (not b!16024))

(assert (not b!15882))

(assert (not b!16048))

(assert (not b!15883))

(assert (not b!15887))

(assert (not b!15834))

(assert (not b!15984))

(assert (not b!16012))

(assert (not b!15770))

(assert (not b!16022))

(assert (not d!11667))

(assert (not b!16104))

(assert (not b!15839))

(assert (not b!16076))

(assert (not b!15893))

(assert (not b!15870))

(assert (not b!15916))

(assert (not b!16116))

(assert (not b!15977))

(assert (not b!15854))

(assert (not b!15777))

(assert (not b!15929))

(assert (not b!15833))

(assert (not b!16112))

(assert (not b!15862))

(assert (not b!15786))

(assert (not b!16047))

(assert (not b!15931))

(assert (not b!15891))

(assert (not b!15780))

(assert (not b!15757))

(assert (not b!16039))

(assert (not b!16122))

(assert (not b!16011))

(assert (not b!16025))

(assert (not b!15789))

(assert (not b!15885))

(assert (not b!15963))

(assert (not b!16066))

(assert (not b!15779))

(assert (not b!15971))

(assert (not d!11731))

(assert (not b!16023))

(assert (not b!15927))

(assert (not b!15933))

(assert (not b!16001))

(assert (not b!16098))

(assert (not d!11695))

(assert (not b!16043))

(assert (not b!15771))

(assert (not b!16042))

(assert (not b!16088))

(assert (not b!16041))

(assert (not b!15793))

(assert (not b!15778))

(assert (not b!16044))

(assert (not b!15985))

(assert (not b!15853))

(assert (not b!15858))

(assert (not b!15905))

(assert (not b!15756))

(assert (not b!15895))

(assert (not b!15783))

(assert (not b!16064))

(assert (not b!15769))

(assert (not b!15758))

(assert (not b!15781))

(assert (not d!11753))

(assert (not b!16086))

(assert (not d!11623))

(assert (not b!16049))

(assert (not b!15880))

(assert (not b!15811))

(assert (not b!15871))

(assert (not b!16100))

(assert (not b!15768))

(assert (not d!11665))

(assert (not d!11631))

(assert (not b!15785))

(assert (not b!16110))

(assert (not b!15803))

(assert (not b!16118))

(assert (not b!15993))

(assert (not b!16077))

(assert (not b!15855))

(assert (not b!16053))

(assert (not b!15797))

(assert (not b!15863))

(assert (not b!16102))

(assert (not b!15912))

(assert (not b!15901))

(assert (not b!15907))

(assert (not b!15869))

(assert (not b!16084))

(assert (not b!15889))

(assert (not b!16033))

(assert (not b!15909))

(assert (not b!15772))

(assert (not b!16037))

(assert (not b!16046))

(assert (not b!16009))

(assert (not b!15913))

(assert (not b!16071))

(assert (not b!15986))

(assert (not b!15784))

(assert (not b!16082))

(assert (not b!15867))

(assert (not b!16040))

(assert (not b!15849))

(assert (not b!15925))

(assert (not b!15957))

(assert (not d!11745))

(assert (not b!16038))

(assert (not b!16072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

