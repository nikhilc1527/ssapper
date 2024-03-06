; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3970 () Bool)

(assert start!3970)

(declare-fun b!29532 () Bool)

(declare-fun res!13570 () Bool)

(declare-fun e!15068 () Bool)

(assert (=> b!29532 (=> (not res!13570) (not e!15068))))

(declare-datatypes () ((T!1835 (T!1836 (val!90 Int)))))

(declare-datatypes () ((Conc!67 (CC!66 (left!711 Conc!67) (right!714 Conc!67)) (Single!66 (x!8953 T!1835)) (Empty!77))))

(declare-fun res!5544 () Conc!67)

(declare-fun concInv!61 (Conc!67) Bool)

(assert (=> b!29532 (= res!13570 (concInv!61 res!5544))))

(declare-fun b!29533 () Bool)

(declare-fun res!13568 () Bool)

(assert (=> b!29533 (=> (not res!13568) (not e!15068))))

(declare-fun xs!533 () Conc!67)

(declare-fun ys!77 () Conc!67)

(declare-fun appendAssocInst!15 (Conc!67 Conc!67) Bool)

(assert (=> b!29533 (= res!13568 (appendAssocInst!15 xs!533 ys!77))))

(declare-fun b!29534 () Bool)

(declare-fun res!13579 () Bool)

(declare-fun e!15066 () Bool)

(assert (=> b!29534 (=> (not res!13579) (not e!15066))))

(declare-fun nll!6 () Conc!67)

(declare-fun concatNonEmpty!18 (Conc!67 Conc!67) Conc!67)

(assert (=> b!29534 (= res!13579 (= nll!6 (concatNonEmpty!18 xs!533 (left!711 (left!711 ys!77)))))))

(declare-fun b!29535 () Bool)

(declare-fun concatCorrectness!15 (Conc!67 Conc!67 Conc!67) Bool)

(assert (=> b!29535 (= e!15068 (concatCorrectness!15 res!5544 xs!533 ys!77))))

(declare-fun b!29536 () Bool)

(declare-fun res!13575 () Bool)

(assert (=> b!29536 (=> (not res!13575) (not e!15066))))

(declare-fun balanced!62 (Conc!67) Bool)

(assert (=> b!29536 (= res!13575 (balanced!62 xs!533))))

(declare-fun b!29537 () Bool)

(declare-fun e!15065 () Bool)

(declare-fun tp!6260 () Bool)

(declare-fun tp!6262 () Bool)

(assert (=> b!29537 (= e!15065 (and tp!6260 tp!6262))))

(declare-fun b!29538 () Bool)

(declare-fun e!15069 () Bool)

(declare-fun tp!6259 () Bool)

(declare-fun tp!6261 () Bool)

(assert (=> b!29538 (= e!15069 (and tp!6259 tp!6261))))

(declare-fun b!29539 () Bool)

(declare-fun res!13578 () Bool)

(assert (=> b!29539 (=> (not res!13578) (not e!15066))))

(declare-fun isEmpty!323 (Conc!67) Bool)

(assert (=> b!29539 (= res!13578 (not (isEmpty!323 ys!77)))))

(declare-fun b!29540 () Bool)

(declare-fun e!15067 () Bool)

(declare-fun tp_is_empty!179 () Bool)

(assert (=> b!29540 (= e!15067 tp_is_empty!179)))

(declare-fun b!29541 () Bool)

(declare-fun res!13565 () Bool)

(assert (=> b!29541 (=> (not res!13565) (not e!15066))))

(declare-fun level!55 (Conc!67) Int)

(assert (=> b!29541 (= res!13565 (= (level!55 nll!6) (- (level!55 ys!77) 3)))))

(declare-fun b!29542 () Bool)

(declare-fun res!13574 () Bool)

(assert (=> b!29542 (=> (not res!13574) (not e!15068))))

(assert (=> b!29542 (= res!13574 (balanced!62 res!5544))))

(declare-fun b!29543 () Bool)

(declare-fun res!13566 () Bool)

(assert (=> b!29543 (=> (not res!13566) (not e!15066))))

(assert (=> b!29543 (= res!13566 (< (level!55 (right!714 ys!77)) (level!55 (left!711 ys!77))))))

(declare-fun b!29544 () Bool)

(declare-fun tp!6256 () Bool)

(declare-fun tp!6258 () Bool)

(assert (=> b!29544 (= e!15067 (and tp!6256 tp!6258))))

(declare-fun b!29545 () Bool)

(declare-fun res!13572 () Bool)

(assert (=> b!29545 (=> (not res!13572) (not e!15066))))

(declare-fun diff!6 () Int)

(assert (=> b!29545 (= res!13572 (and (or (< diff!6 (- 1)) (> diff!6 1)) (>= diff!6 (- 1))))))

(declare-fun b!29546 () Bool)

(declare-fun res!13576 () Bool)

(assert (=> b!29546 (=> (not res!13576) (not e!15066))))

(assert (=> b!29546 (= res!13576 (= res!5544 (CC!66 (CC!66 nll!6 (right!714 (left!711 ys!77))) (right!714 ys!77))))))

(declare-fun b!29547 () Bool)

(declare-fun res!13569 () Bool)

(assert (=> b!29547 (=> (not res!13569) (not e!15066))))

(assert (=> b!29547 (= res!13569 (not (isEmpty!323 xs!533)))))

(declare-fun b!29548 () Bool)

(assert (=> b!29548 (= e!15065 tp_is_empty!179)))

(declare-fun b!29549 () Bool)

(assert (=> b!29549 (= e!15066 (not e!15068))))

(declare-fun res!13580 () Bool)

(assert (=> b!29549 (=> (not res!13580) (not e!15068))))

(declare-fun lt!5317 () Int)

(declare-fun lt!5322 () Int)

(declare-fun lt!5321 () Int)

(assert (=> b!29549 (= res!13580 (<= lt!5322 (+ (ite (>= lt!5317 lt!5321) lt!5317 lt!5321) 1)))))

(assert (=> b!29549 (= lt!5321 (level!55 ys!77))))

(assert (=> b!29549 (= lt!5317 (level!55 xs!533))))

(assert (=> b!29549 (= lt!5322 (level!55 res!5544))))

(assert (=> b!29549 (is-CC!66 res!5544)))

(declare-fun b!29550 () Bool)

(declare-fun e!15070 () Bool)

(declare-fun tp!6263 () Bool)

(declare-fun tp!6257 () Bool)

(assert (=> b!29550 (= e!15070 (and tp!6263 tp!6257))))

(declare-fun res!13564 () Bool)

(assert (=> start!3970 (=> (not res!13564) (not e!15066))))

(assert (=> start!3970 (= res!13564 (concInv!61 xs!533))))

(assert (=> start!3970 e!15066))

(assert (=> start!3970 e!15069))

(assert (=> start!3970 true))

(assert (=> start!3970 e!15070))

(assert (=> start!3970 e!15067))

(assert (=> start!3970 e!15065))

(declare-fun b!29551 () Bool)

(declare-fun res!13571 () Bool)

(assert (=> b!29551 (=> (not res!13571) (not e!15066))))

(assert (=> b!29551 (= res!13571 (concInv!61 ys!77))))

(declare-fun b!29552 () Bool)

(declare-fun res!13577 () Bool)

(assert (=> b!29552 (=> (not res!13577) (not e!15066))))

(assert (=> b!29552 (= res!13577 (balanced!62 ys!77))))

(declare-fun b!29553 () Bool)

(assert (=> b!29553 (= e!15069 tp_is_empty!179)))

(declare-fun b!29554 () Bool)

(declare-fun res!13573 () Bool)

(assert (=> b!29554 (=> (not res!13573) (not e!15068))))

(declare-fun lt!5318 () Int)

(declare-fun lt!5319 () Int)

(declare-fun lt!5320 () Int)

(assert (=> b!29554 (= res!13573 (>= lt!5320 (ite (>= lt!5318 lt!5319) lt!5318 lt!5319)))))

(assert (=> b!29554 (= lt!5319 (level!55 ys!77))))

(assert (=> b!29554 (= lt!5318 (level!55 xs!533))))

(assert (=> b!29554 (= lt!5320 (level!55 res!5544))))

(declare-fun b!29555 () Bool)

(declare-fun res!13567 () Bool)

(assert (=> b!29555 (=> (not res!13567) (not e!15066))))

(assert (=> b!29555 (= res!13567 (= diff!6 (- (level!55 ys!77) (level!55 xs!533))))))

(declare-fun b!29556 () Bool)

(assert (=> b!29556 (= e!15070 tp_is_empty!179)))

(assert (= (and start!3970 res!13564) b!29536))

(assert (= (and b!29536 res!13575) b!29551))

(assert (= (and b!29551 res!13571) b!29552))

(assert (= (and b!29552 res!13577) b!29547))

(assert (= (and b!29547 res!13569) b!29539))

(assert (= (and b!29539 res!13578) b!29555))

(assert (= (and b!29555 res!13567) b!29545))

(assert (= (and b!29545 res!13572) b!29543))

(assert (= (and b!29543 res!13566) b!29534))

(assert (= (and b!29534 res!13579) b!29541))

(assert (= (and b!29541 res!13565) b!29546))

(assert (= (and b!29546 res!13576) b!29549))

(assert (= (and b!29549 res!13580) b!29554))

(assert (= (and b!29554 res!13573) b!29532))

(assert (= (and b!29532 res!13570) b!29542))

(assert (= (and b!29542 res!13574) b!29533))

(assert (= (and b!29533 res!13568) b!29535))

(assert (= (and start!3970 (is-CC!66 res!5544)) b!29538))

(assert (= (and start!3970 (is-Single!66 res!5544)) b!29553))

(assert (= (and start!3970 (is-CC!66 ys!77)) b!29550))

(assert (= (and start!3970 (is-Single!66 ys!77)) b!29556))

(assert (= (and start!3970 (is-CC!66 nll!6)) b!29544))

(assert (= (and start!3970 (is-Single!66 nll!6)) b!29540))

(assert (= (and start!3970 (is-CC!66 xs!533)) b!29537))

(assert (= (and start!3970 (is-Single!66 xs!533)) b!29548))

(declare-fun m!31445 () Bool)

(assert (=> b!29552 m!31445))

(declare-fun m!31447 () Bool)

(assert (=> b!29555 m!31447))

(declare-fun m!31449 () Bool)

(assert (=> b!29555 m!31449))

(declare-fun m!31451 () Bool)

(assert (=> b!29541 m!31451))

(assert (=> b!29541 m!31447))

(declare-fun m!31453 () Bool)

(assert (=> b!29533 m!31453))

(declare-fun m!31455 () Bool)

(assert (=> b!29547 m!31455))

(declare-fun m!31457 () Bool)

(assert (=> b!29542 m!31457))

(declare-fun m!31459 () Bool)

(assert (=> b!29536 m!31459))

(declare-fun m!31461 () Bool)

(assert (=> b!29535 m!31461))

(declare-fun m!31463 () Bool)

(assert (=> b!29532 m!31463))

(declare-fun m!31465 () Bool)

(assert (=> b!29543 m!31465))

(declare-fun m!31467 () Bool)

(assert (=> b!29543 m!31467))

(declare-fun m!31469 () Bool)

(assert (=> b!29551 m!31469))

(declare-fun m!31471 () Bool)

(assert (=> b!29539 m!31471))

(declare-fun m!31473 () Bool)

(assert (=> b!29534 m!31473))

(declare-fun m!31475 () Bool)

(assert (=> start!3970 m!31475))

(assert (=> b!29554 m!31447))

(assert (=> b!29554 m!31449))

(declare-fun m!31477 () Bool)

(assert (=> b!29554 m!31477))

(assert (=> b!29549 m!31447))

(assert (=> b!29549 m!31449))

(assert (=> b!29549 m!31477))

(push 1)

(assert (not b!29555))

(assert (not b!29554))

(assert (not b!29534))

(assert (not b!29551))

(assert (not b!29536))

(assert (not b!29533))

(assert (not b!29552))

(assert (not b!29547))

(assert (not b!29550))

(assert (not b!29532))

(assert (not b!29544))

(assert (not b!29535))

(assert (not b!29542))

(assert (not b!29543))

(assert (not b!29538))

(assert (not b!29537))

(assert (not b!29549))

(assert tp_is_empty!179)

(assert (not start!3970))

(assert (not b!29539))

(assert (not b!29541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!29568 () Bool)

(declare-fun e!15076 () Bool)

(assert (=> b!29568 (= e!15076 (concInv!61 (right!714 ys!77)))))

(declare-fun b!29567 () Bool)

(declare-fun res!13589 () Bool)

(assert (=> b!29567 (=> (not res!13589) (not e!15076))))

(assert (=> b!29567 (= res!13589 (concInv!61 (left!711 ys!77)))))

(declare-fun b!29565 () Bool)

(declare-fun e!15075 () Bool)

(assert (=> b!29565 (= e!15075 e!15076)))

(declare-fun res!13592 () Bool)

(assert (=> b!29565 (=> (not res!13592) (not e!15076))))

(assert (=> b!29565 (= res!13592 (not (isEmpty!323 (left!711 ys!77))))))

(declare-fun b!29566 () Bool)

(declare-fun res!13591 () Bool)

(assert (=> b!29566 (=> (not res!13591) (not e!15076))))

(assert (=> b!29566 (= res!13591 (not (isEmpty!323 (right!714 ys!77))))))

(declare-fun d!15447 () Bool)

(declare-fun res!13590 () Bool)

(assert (=> d!15447 (=> res!13590 e!15075)))

(assert (=> d!15447 (= res!13590 (not (is-CC!66 ys!77)))))

(assert (=> d!15447 (= (concInv!61 ys!77) e!15075)))

(assert (= (and d!15447 (not res!13590)) b!29565))

(assert (= (and b!29565 res!13592) b!29566))

(assert (= (and b!29566 res!13591) b!29567))

(assert (= (and b!29567 res!13589) b!29568))

(declare-fun m!31479 () Bool)

(assert (=> b!29568 m!31479))

(declare-fun m!31481 () Bool)

(assert (=> b!29567 m!31481))

(declare-fun m!31483 () Bool)

(assert (=> b!29565 m!31483))

(declare-fun m!31485 () Bool)

(assert (=> b!29566 m!31485))

(assert (=> b!29551 d!15447))

(declare-fun b!29574 () Bool)

(declare-fun e!15079 () Int)

(declare-fun lt!5331 () Int)

(declare-fun lt!5330 () Int)

(assert (=> b!29574 (= e!15079 (+ 1 (ite (>= lt!5331 lt!5330) lt!5331 lt!5330)))))

(assert (=> b!29574 (= lt!5330 (level!55 (right!714 nll!6)))))

(assert (=> b!29574 (= lt!5331 (level!55 (left!711 nll!6)))))

(declare-fun d!15449 () Bool)

(declare-fun lt!5329 () Int)

(assert (=> d!15449 (>= lt!5329 0)))

(assert (=> d!15449 (= lt!5329 e!15079)))

(declare-fun c!6458 () Bool)

(assert (=> d!15449 (= c!6458 (or (is-Empty!77 nll!6) (is-Single!66 nll!6)))))

(assert (=> d!15449 (= (level!55 nll!6) lt!5329)))

(declare-fun b!29573 () Bool)

(assert (=> b!29573 (= e!15079 0)))

(assert (= (and d!15449 c!6458) b!29573))

(assert (= (and d!15449 (not c!6458)) b!29574))

(declare-fun m!31487 () Bool)

(assert (=> b!29574 m!31487))

(declare-fun m!31489 () Bool)

(assert (=> b!29574 m!31489))

(assert (=> b!29541 d!15449))

(declare-fun b!29576 () Bool)

(declare-fun e!15080 () Int)

(declare-fun lt!5334 () Int)

(declare-fun lt!5333 () Int)

(assert (=> b!29576 (= e!15080 (+ 1 (ite (>= lt!5334 lt!5333) lt!5334 lt!5333)))))

(assert (=> b!29576 (= lt!5333 (level!55 (right!714 ys!77)))))

(assert (=> b!29576 (= lt!5334 (level!55 (left!711 ys!77)))))

(declare-fun d!15451 () Bool)

(declare-fun lt!5332 () Int)

(assert (=> d!15451 (>= lt!5332 0)))

(assert (=> d!15451 (= lt!5332 e!15080)))

(declare-fun c!6459 () Bool)

(assert (=> d!15451 (= c!6459 (or (is-Empty!77 ys!77) (is-Single!66 ys!77)))))

(assert (=> d!15451 (= (level!55 ys!77) lt!5332)))

(declare-fun b!29575 () Bool)

(assert (=> b!29575 (= e!15080 0)))

(assert (= (and d!15451 c!6459) b!29575))

(assert (= (and d!15451 (not c!6459)) b!29576))

(assert (=> b!29576 m!31465))

(assert (=> b!29576 m!31467))

(assert (=> b!29541 d!15451))

(declare-fun d!15453 () Bool)

(declare-fun res!13604 () Bool)

(declare-fun e!15086 () Bool)

(assert (=> d!15453 (=> res!13604 e!15086)))

(assert (=> d!15453 (= res!13604 (not (is-CC!66 ys!77)))))

(assert (=> d!15453 (= (balanced!62 ys!77) e!15086)))

(declare-fun b!29585 () Bool)

(declare-fun e!15085 () Bool)

(assert (=> b!29585 (= e!15086 e!15085)))

(declare-fun res!13603 () Bool)

(assert (=> b!29585 (=> (not res!13603) (not e!15085))))

(assert (=> b!29585 (= res!13603 (>= (- (level!55 (left!711 ys!77)) (level!55 (right!714 ys!77))) (- 1)))))

(declare-fun b!29588 () Bool)

(assert (=> b!29588 (= e!15085 (balanced!62 (right!714 ys!77)))))

(declare-fun b!29587 () Bool)

(declare-fun res!13602 () Bool)

(assert (=> b!29587 (=> (not res!13602) (not e!15085))))

(assert (=> b!29587 (= res!13602 (balanced!62 (left!711 ys!77)))))

(declare-fun b!29586 () Bool)

(declare-fun res!13601 () Bool)

(assert (=> b!29586 (=> (not res!13601) (not e!15085))))

(assert (=> b!29586 (= res!13601 (<= (- (level!55 (left!711 ys!77)) (level!55 (right!714 ys!77))) 1))))

(assert (= (and d!15453 (not res!13604)) b!29585))

(assert (= (and b!29585 res!13603) b!29586))

(assert (= (and b!29586 res!13601) b!29587))

(assert (= (and b!29587 res!13602) b!29588))

(assert (=> b!29585 m!31467))

(assert (=> b!29585 m!31465))

(declare-fun m!31491 () Bool)

(assert (=> b!29588 m!31491))

(declare-fun m!31493 () Bool)

(assert (=> b!29587 m!31493))

(assert (=> b!29586 m!31467))

(assert (=> b!29586 m!31465))

(assert (=> b!29552 d!15453))

(declare-fun d!15455 () Bool)

(assert (=> d!15455 (= (isEmpty!323 ys!77) (= ys!77 Empty!77))))

(assert (=> b!29539 d!15455))

(assert (=> b!29549 d!15451))

(declare-fun b!29590 () Bool)

(declare-fun e!15087 () Int)

(declare-fun lt!5337 () Int)

(declare-fun lt!5336 () Int)

(assert (=> b!29590 (= e!15087 (+ 1 (ite (>= lt!5337 lt!5336) lt!5337 lt!5336)))))

(assert (=> b!29590 (= lt!5336 (level!55 (right!714 xs!533)))))

(assert (=> b!29590 (= lt!5337 (level!55 (left!711 xs!533)))))

(declare-fun d!15457 () Bool)

(declare-fun lt!5335 () Int)

(assert (=> d!15457 (>= lt!5335 0)))

(assert (=> d!15457 (= lt!5335 e!15087)))

(declare-fun c!6460 () Bool)

(assert (=> d!15457 (= c!6460 (or (is-Empty!77 xs!533) (is-Single!66 xs!533)))))

(assert (=> d!15457 (= (level!55 xs!533) lt!5335)))

(declare-fun b!29589 () Bool)

(assert (=> b!29589 (= e!15087 0)))

(assert (= (and d!15457 c!6460) b!29589))

(assert (= (and d!15457 (not c!6460)) b!29590))

(declare-fun m!31495 () Bool)

(assert (=> b!29590 m!31495))

(declare-fun m!31497 () Bool)

(assert (=> b!29590 m!31497))

(assert (=> b!29549 d!15457))

(declare-fun b!29592 () Bool)

(declare-fun e!15088 () Int)

(declare-fun lt!5340 () Int)

(declare-fun lt!5339 () Int)

(assert (=> b!29592 (= e!15088 (+ 1 (ite (>= lt!5340 lt!5339) lt!5340 lt!5339)))))

(assert (=> b!29592 (= lt!5339 (level!55 (right!714 res!5544)))))

(assert (=> b!29592 (= lt!5340 (level!55 (left!711 res!5544)))))

(declare-fun d!15459 () Bool)

(declare-fun lt!5338 () Int)

(assert (=> d!15459 (>= lt!5338 0)))

(assert (=> d!15459 (= lt!5338 e!15088)))

(declare-fun c!6461 () Bool)

(assert (=> d!15459 (= c!6461 (or (is-Empty!77 res!5544) (is-Single!66 res!5544)))))

(assert (=> d!15459 (= (level!55 res!5544) lt!5338)))

(declare-fun b!29591 () Bool)

(assert (=> b!29591 (= e!15088 0)))

(assert (= (and d!15459 c!6461) b!29591))

(assert (= (and d!15459 (not c!6461)) b!29592))

(declare-fun m!31499 () Bool)

(assert (=> b!29592 m!31499))

(declare-fun m!31501 () Bool)

(assert (=> b!29592 m!31501))

(assert (=> b!29549 d!15459))

(declare-fun d!15461 () Bool)

(assert (=> d!15461 (= (isEmpty!323 xs!533) (= xs!533 Empty!77))))

(assert (=> b!29547 d!15461))

(declare-fun d!15463 () Bool)

(declare-fun res!13608 () Bool)

(declare-fun e!15090 () Bool)

(assert (=> d!15463 (=> res!13608 e!15090)))

(assert (=> d!15463 (= res!13608 (not (is-CC!66 xs!533)))))

(assert (=> d!15463 (= (balanced!62 xs!533) e!15090)))

(declare-fun b!29593 () Bool)

(declare-fun e!15089 () Bool)

(assert (=> b!29593 (= e!15090 e!15089)))

(declare-fun res!13607 () Bool)

(assert (=> b!29593 (=> (not res!13607) (not e!15089))))

(assert (=> b!29593 (= res!13607 (>= (- (level!55 (left!711 xs!533)) (level!55 (right!714 xs!533))) (- 1)))))

(declare-fun b!29596 () Bool)

(assert (=> b!29596 (= e!15089 (balanced!62 (right!714 xs!533)))))

(declare-fun b!29595 () Bool)

(declare-fun res!13606 () Bool)

(assert (=> b!29595 (=> (not res!13606) (not e!15089))))

(assert (=> b!29595 (= res!13606 (balanced!62 (left!711 xs!533)))))

(declare-fun b!29594 () Bool)

(declare-fun res!13605 () Bool)

(assert (=> b!29594 (=> (not res!13605) (not e!15089))))

(assert (=> b!29594 (= res!13605 (<= (- (level!55 (left!711 xs!533)) (level!55 (right!714 xs!533))) 1))))

(assert (= (and d!15463 (not res!13608)) b!29593))

(assert (= (and b!29593 res!13607) b!29594))

(assert (= (and b!29594 res!13605) b!29595))

(assert (= (and b!29595 res!13606) b!29596))

(assert (=> b!29593 m!31497))

(assert (=> b!29593 m!31495))

(declare-fun m!31503 () Bool)

(assert (=> b!29596 m!31503))

(declare-fun m!31505 () Bool)

(assert (=> b!29595 m!31505))

(assert (=> b!29594 m!31497))

(assert (=> b!29594 m!31495))

(assert (=> b!29536 d!15463))

(declare-fun b!29615 () Bool)

(declare-fun e!15110 () Bool)

(declare-fun e!15112 () Bool)

(assert (=> b!29615 (= e!15110 e!15112)))

(declare-fun res!13628 () Bool)

(assert (=> b!29615 (=> (not res!13628) (not e!15112))))

(declare-datatypes () ((List!363 (Cons!357 (h!274 T!1835) (t!4377 List!363)) (Nil!358))))

(declare-fun appendAssoc!11 (List!363 List!363 List!363) Bool)

(declare-fun toList!118 (Conc!67) List!363)

(assert (=> b!29615 (= res!13628 (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))

(declare-fun b!29616 () Bool)

(declare-fun e!15111 () Bool)

(declare-fun e!15113 () Bool)

(assert (=> b!29616 (= e!15111 e!15113)))

(declare-fun res!13635 () Bool)

(assert (=> b!29616 (=> (not res!13635) (not e!15113))))

(assert (=> b!29616 (= res!13635 (appendAssoc!11 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))

(declare-fun b!29617 () Bool)

(declare-fun e!15114 () Bool)

(assert (=> b!29617 (= e!15112 e!15114)))

(declare-fun res!13632 () Bool)

(assert (=> b!29617 (=> res!13632 e!15114)))

(assert (=> b!29617 (= res!13632 (not (is-CC!66 (left!711 ys!77))))))

(declare-fun b!29618 () Bool)

(declare-fun e!15117 () Bool)

(assert (=> b!29618 (= e!15117 e!15110)))

(declare-fun res!13631 () Bool)

(assert (=> b!29618 (=> res!13631 e!15110)))

(assert (=> b!29618 (= res!13631 (not (is-CC!66 ys!77)))))

(declare-fun b!29619 () Bool)

(declare-fun e!15109 () Bool)

(declare-fun e!15115 () Bool)

(assert (=> b!29619 (= e!15109 e!15115)))

(declare-fun res!13627 () Bool)

(assert (=> b!29619 (=> (not res!13627) (not e!15115))))

(assert (=> b!29619 (= res!13627 (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))

(declare-fun b!29620 () Bool)

(declare-fun e!15116 () Bool)

(assert (=> b!29620 (= e!15114 e!15116)))

(declare-fun res!13630 () Bool)

(assert (=> b!29620 (=> (not res!13630) (not e!15116))))

(assert (=> b!29620 (= res!13630 (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))

(declare-fun b!29621 () Bool)

(assert (=> b!29621 (= e!15115 e!15111)))

(declare-fun res!13634 () Bool)

(assert (=> b!29621 (=> res!13634 e!15111)))

(assert (=> b!29621 (= res!13634 (not (is-CC!66 (right!714 xs!533))))))

(declare-fun b!29622 () Bool)

(declare-fun ++!43 (List!363 List!363) List!363)

(assert (=> b!29622 (= e!15113 (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))

(declare-fun d!15465 () Bool)

(assert (=> d!15465 e!15117))

(declare-fun res!13633 () Bool)

(assert (=> d!15465 (=> (not res!13633) (not e!15117))))

(assert (=> d!15465 (= res!13633 e!15109)))

(declare-fun res!13629 () Bool)

(assert (=> d!15465 (=> res!13629 e!15109)))

(assert (=> d!15465 (= res!13629 (not (is-CC!66 xs!533)))))

(assert (=> d!15465 (= (appendAssocInst!15 xs!533 ys!77) true)))

(declare-fun b!29623 () Bool)

(assert (=> b!29623 (= e!15116 (appendAssoc!11 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))

(assert (= (and d!15465 (not res!13629)) b!29619))

(assert (= (and b!29619 res!13627) b!29621))

(assert (= (and b!29621 (not res!13634)) b!29616))

(assert (= (and b!29616 res!13635) b!29622))

(assert (= (and d!15465 res!13633) b!29618))

(assert (= (and b!29618 (not res!13631)) b!29615))

(assert (= (and b!29615 res!13628) b!29617))

(assert (= (and b!29617 (not res!13632)) b!29620))

(assert (= (and b!29620 res!13630) b!29623))

(declare-fun m!31507 () Bool)

(assert (=> b!29623 m!31507))

(declare-fun m!31509 () Bool)

(assert (=> b!29623 m!31509))

(assert (=> b!29623 m!31507))

(declare-fun m!31511 () Bool)

(assert (=> b!29623 m!31511))

(declare-fun m!31513 () Bool)

(assert (=> b!29623 m!31513))

(declare-fun m!31515 () Bool)

(assert (=> b!29623 m!31515))

(assert (=> b!29623 m!31511))

(declare-fun m!31517 () Bool)

(assert (=> b!29623 m!31517))

(assert (=> b!29623 m!31515))

(assert (=> b!29623 m!31509))

(assert (=> b!29623 m!31517))

(declare-fun m!31519 () Bool)

(assert (=> b!29619 m!31519))

(declare-fun m!31521 () Bool)

(assert (=> b!29619 m!31521))

(declare-fun m!31523 () Bool)

(assert (=> b!29619 m!31523))

(assert (=> b!29619 m!31519))

(assert (=> b!29619 m!31521))

(assert (=> b!29619 m!31523))

(declare-fun m!31525 () Bool)

(assert (=> b!29619 m!31525))

(assert (=> b!29620 m!31517))

(assert (=> b!29620 m!31515))

(assert (=> b!29620 m!31507))

(assert (=> b!29620 m!31517))

(assert (=> b!29620 m!31515))

(assert (=> b!29620 m!31507))

(declare-fun m!31527 () Bool)

(assert (=> b!29620 m!31527))

(declare-fun m!31529 () Bool)

(assert (=> b!29622 m!31529))

(assert (=> b!29622 m!31523))

(declare-fun m!31531 () Bool)

(assert (=> b!29622 m!31531))

(assert (=> b!29622 m!31519))

(declare-fun m!31533 () Bool)

(assert (=> b!29622 m!31533))

(assert (=> b!29622 m!31531))

(declare-fun m!31535 () Bool)

(assert (=> b!29622 m!31535))

(assert (=> b!29622 m!31533))

(assert (=> b!29622 m!31529))

(assert (=> b!29622 m!31519))

(assert (=> b!29622 m!31523))

(assert (=> b!29616 m!31533))

(assert (=> b!29616 m!31529))

(assert (=> b!29616 m!31523))

(assert (=> b!29616 m!31533))

(assert (=> b!29616 m!31529))

(assert (=> b!29616 m!31523))

(declare-fun m!31537 () Bool)

(assert (=> b!29616 m!31537))

(assert (=> b!29615 m!31517))

(declare-fun m!31539 () Bool)

(assert (=> b!29615 m!31539))

(assert (=> b!29615 m!31511))

(assert (=> b!29615 m!31517))

(assert (=> b!29615 m!31539))

(assert (=> b!29615 m!31511))

(declare-fun m!31541 () Bool)

(assert (=> b!29615 m!31541))

(assert (=> b!29533 d!15465))

(declare-fun b!29625 () Bool)

(declare-fun e!15118 () Int)

(declare-fun lt!5343 () Int)

(declare-fun lt!5342 () Int)

(assert (=> b!29625 (= e!15118 (+ 1 (ite (>= lt!5343 lt!5342) lt!5343 lt!5342)))))

(assert (=> b!29625 (= lt!5342 (level!55 (right!714 (right!714 ys!77))))))

(assert (=> b!29625 (= lt!5343 (level!55 (left!711 (right!714 ys!77))))))

(declare-fun d!15467 () Bool)

(declare-fun lt!5341 () Int)

(assert (=> d!15467 (>= lt!5341 0)))

(assert (=> d!15467 (= lt!5341 e!15118)))

(declare-fun c!6462 () Bool)

(assert (=> d!15467 (= c!6462 (or (is-Empty!77 (right!714 ys!77)) (is-Single!66 (right!714 ys!77))))))

(assert (=> d!15467 (= (level!55 (right!714 ys!77)) lt!5341)))

(declare-fun b!29624 () Bool)

(assert (=> b!29624 (= e!15118 0)))

(assert (= (and d!15467 c!6462) b!29624))

(assert (= (and d!15467 (not c!6462)) b!29625))

(declare-fun m!31543 () Bool)

(assert (=> b!29625 m!31543))

(declare-fun m!31545 () Bool)

(assert (=> b!29625 m!31545))

(assert (=> b!29543 d!15467))

(declare-fun b!29627 () Bool)

(declare-fun e!15119 () Int)

(declare-fun lt!5346 () Int)

(declare-fun lt!5345 () Int)

(assert (=> b!29627 (= e!15119 (+ 1 (ite (>= lt!5346 lt!5345) lt!5346 lt!5345)))))

(assert (=> b!29627 (= lt!5345 (level!55 (right!714 (left!711 ys!77))))))

(assert (=> b!29627 (= lt!5346 (level!55 (left!711 (left!711 ys!77))))))

(declare-fun d!15469 () Bool)

(declare-fun lt!5344 () Int)

(assert (=> d!15469 (>= lt!5344 0)))

(assert (=> d!15469 (= lt!5344 e!15119)))

(declare-fun c!6463 () Bool)

(assert (=> d!15469 (= c!6463 (or (is-Empty!77 (left!711 ys!77)) (is-Single!66 (left!711 ys!77))))))

(assert (=> d!15469 (= (level!55 (left!711 ys!77)) lt!5344)))

(declare-fun b!29626 () Bool)

(assert (=> b!29626 (= e!15119 0)))

(assert (= (and d!15469 c!6463) b!29626))

(assert (= (and d!15469 (not c!6463)) b!29627))

(declare-fun m!31547 () Bool)

(assert (=> b!29627 m!31547))

(declare-fun m!31549 () Bool)

(assert (=> b!29627 m!31549))

(assert (=> b!29543 d!15469))

(declare-fun b!29631 () Bool)

(declare-fun e!15121 () Bool)

(assert (=> b!29631 (= e!15121 (concInv!61 (right!714 xs!533)))))

(declare-fun b!29630 () Bool)

(declare-fun res!13636 () Bool)

(assert (=> b!29630 (=> (not res!13636) (not e!15121))))

(assert (=> b!29630 (= res!13636 (concInv!61 (left!711 xs!533)))))

(declare-fun b!29628 () Bool)

(declare-fun e!15120 () Bool)

(assert (=> b!29628 (= e!15120 e!15121)))

(declare-fun res!13639 () Bool)

(assert (=> b!29628 (=> (not res!13639) (not e!15121))))

(assert (=> b!29628 (= res!13639 (not (isEmpty!323 (left!711 xs!533))))))

(declare-fun b!29629 () Bool)

(declare-fun res!13638 () Bool)

(assert (=> b!29629 (=> (not res!13638) (not e!15121))))

(assert (=> b!29629 (= res!13638 (not (isEmpty!323 (right!714 xs!533))))))

(declare-fun d!15471 () Bool)

(declare-fun res!13637 () Bool)

(assert (=> d!15471 (=> res!13637 e!15120)))

(assert (=> d!15471 (= res!13637 (not (is-CC!66 xs!533)))))

(assert (=> d!15471 (= (concInv!61 xs!533) e!15120)))

(assert (= (and d!15471 (not res!13637)) b!29628))

(assert (= (and b!29628 res!13639) b!29629))

(assert (= (and b!29629 res!13638) b!29630))

(assert (= (and b!29630 res!13636) b!29631))

(declare-fun m!31551 () Bool)

(assert (=> b!29631 m!31551))

(declare-fun m!31553 () Bool)

(assert (=> b!29630 m!31553))

(declare-fun m!31555 () Bool)

(assert (=> b!29628 m!31555))

(declare-fun m!31557 () Bool)

(assert (=> b!29629 m!31557))

(assert (=> start!3970 d!15471))

(declare-fun b!29674 () Bool)

(declare-fun e!15147 () Bool)

(assert (=> b!29674 (= e!15147 (not (isEmpty!323 (left!711 (left!711 ys!77)))))))

(declare-fun b!29675 () Bool)

(declare-fun e!15143 () Bool)

(assert (=> b!29675 (= e!15143 tp_is_empty!179)))

(declare-fun b!29676 () Bool)

(declare-fun lt!5387 () Int)

(declare-fun lt!5391 () Int)

(declare-fun e!15148 () Conc!67)

(declare-fun lt!5384 () Bool)

(assert (=> b!29676 (= e!15148 (concatNonEmpty!18 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!29677 () Bool)

(declare-fun res!13698 () Bool)

(declare-fun e!15144 () Bool)

(assert (=> b!29677 (=> (not res!13698) (not e!15144))))

(assert (=> b!29677 (= res!13698 (appendAssocInst!15 xs!533 (left!711 (left!711 ys!77))))))

(declare-fun b!29678 () Bool)

(declare-fun res!13700 () Bool)

(assert (=> b!29678 (=> (not res!13700) (not e!15147))))

(assert (=> b!29678 (= res!13700 (concInv!61 (left!711 (left!711 ys!77))))))

(declare-fun b!29679 () Bool)

(declare-fun e!15140 () Int)

(declare-fun res!13695 () Int)

(assert (=> b!29679 (= e!15140 res!13695)))

(assert (=> b!29679 true))

(assert (=> b!29679 true))

(declare-fun d!15473 () Bool)

(declare-fun e!15146 () Bool)

(assert (=> d!15473 e!15146))

(declare-fun res!13707 () Bool)

(assert (=> d!15473 (=> (not res!13707) (not e!15146))))

(declare-fun lt!5390 () Conc!67)

(assert (=> d!15473 (= res!13707 (is-CC!66 lt!5390))))

(declare-fun e!15142 () Conc!67)

(assert (=> d!15473 (= lt!5390 e!15142)))

(declare-fun c!6474 () Bool)

(declare-fun lt!5394 () Int)

(assert (=> d!15473 (= c!6474 (and (>= lt!5394 (- 1)) (<= lt!5394 1)))))

(assert (=> d!15473 (= lt!5394 (- (level!55 (left!711 (left!711 ys!77))) (level!55 xs!533)))))

(assert (=> d!15473 e!15147))

(declare-fun res!13706 () Bool)

(assert (=> d!15473 (=> (not res!13706) (not e!15147))))

(declare-fun e!15145 () Bool)

(assert (=> d!15473 (= res!13706 e!15145)))

(declare-fun res!13697 () Bool)

(assert (=> d!15473 (=> (not res!13697) (not e!15145))))

(assert (=> d!15473 (= res!13697 (concInv!61 xs!533))))

(assert (=> d!15473 (= (concatNonEmpty!18 xs!533 (left!711 (left!711 ys!77))) lt!5390)))

(declare-fun b!29680 () Bool)

(declare-fun res!13703 () Bool)

(assert (=> b!29680 (=> (not res!13703) (not e!15144))))

(assert (=> b!29680 (= res!13703 (balanced!62 lt!5390))))

(declare-fun b!29681 () Bool)

(declare-fun tp!6268 () Bool)

(declare-fun tp!6269 () Bool)

(assert (=> b!29681 (= e!15143 (and tp!6268 tp!6269))))

(declare-fun b!29682 () Bool)

(assert (=> b!29682 (= e!15142 (CC!66 xs!533 (left!711 (left!711 ys!77))))))

(declare-fun b!29683 () Bool)

(assert (=> b!29683 (= e!15145 (balanced!62 xs!533))))

(declare-fun b!29684 () Bool)

(declare-fun res!13701 () Bool)

(assert (=> b!29684 (=> (not res!13701) (not e!15147))))

(assert (=> b!29684 (= res!13701 (not (isEmpty!323 xs!533)))))

(declare-fun b!29685 () Bool)

(assert (=> b!29685 (= e!15146 e!15144)))

(declare-fun res!13704 () Bool)

(assert (=> b!29685 (=> (not res!13704) (not e!15144))))

(declare-fun lt!5382 () Int)

(declare-fun lt!5389 () Int)

(declare-fun lt!5381 () Int)

(assert (=> b!29685 (= res!13704 (<= lt!5389 (+ (ite (>= lt!5382 lt!5381) lt!5382 lt!5381) 1)))))

(assert (=> b!29685 (= lt!5381 (level!55 (left!711 (left!711 ys!77))))))

(assert (=> b!29685 (= lt!5382 (level!55 xs!533))))

(assert (=> b!29685 (= lt!5389 (level!55 lt!5390))))

(declare-fun b!29686 () Bool)

(declare-fun res!13696 () Bool)

(assert (=> b!29686 (=> (not res!13696) (not e!15147))))

(assert (=> b!29686 (= res!13696 (balanced!62 (left!711 (left!711 ys!77))))))

(declare-fun lt!5379 () Int)

(declare-fun lt!5393 () Bool)

(declare-fun b!29687 () Bool)

(declare-fun lt!5380 () Int)

(declare-fun lt!5388 () Conc!67)

(assert (=> b!29687 (= e!15142 (ite lt!5393 (let ((res!13643 lt!5388)) (ite (>= lt!5387 lt!5391) (CC!66 (left!711 xs!533) res!13643) (ite (= lt!5379 (- lt!5380 3)) (CC!66 (left!711 xs!533) (CC!66 (left!711 (right!714 xs!533)) res!13643)) (CC!66 (CC!66 (left!711 xs!533) (left!711 (right!714 xs!533))) res!13643)))) (let ((res!13646 lt!5388)) (ite (>= lt!5387 lt!5391) (CC!66 res!13646 (right!714 (left!711 (left!711 ys!77)))) (ite (= lt!5379 (- lt!5380 3)) (CC!66 (CC!66 res!13646 (right!714 (left!711 (left!711 (left!711 ys!77))))) (right!714 (left!711 (left!711 ys!77)))) (CC!66 res!13646 (CC!66 (right!714 (left!711 (left!711 (left!711 ys!77)))) (right!714 (left!711 (left!711 ys!77))))))))))))

(assert (=> b!29687 (= lt!5380 e!15140)))

(declare-fun lt!5383 () Bool)

(declare-fun c!6475 () Bool)

(assert (=> b!29687 (= c!6475 (or lt!5383 (and (not lt!5393) (not (>= lt!5387 lt!5391)))))))

(assert (=> b!29687 (= lt!5383 (and lt!5393 (not (>= lt!5387 lt!5391))))))

(declare-fun e!15141 () Int)

(assert (=> b!29687 (= lt!5379 e!15141)))

(declare-fun c!6473 () Bool)

(assert (=> b!29687 (= c!6473 (or (and lt!5393 (not (>= lt!5387 lt!5391))) (and (not lt!5393) (not (>= lt!5387 lt!5391)))))))

(assert (=> b!29687 (= lt!5388 e!15148)))

(declare-fun c!6472 () Bool)

(assert (=> b!29687 (= c!6472 (or lt!5384 (not lt!5393)))))

(assert (=> b!29687 (= lt!5384 lt!5393)))

(assert (=> b!29687 (= lt!5391 (level!55 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> b!29687 (= lt!5387 (level!55 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))

(assert (=> b!29687 (= lt!5393 (< lt!5394 (- 1)))))

(declare-fun b!29688 () Bool)

(declare-fun res!13705 () Conc!67)

(assert (=> b!29688 (= e!15148 res!13705)))

(assert (=> b!29688 true))

(assert (=> b!29688 e!15143))

(declare-fun b!29689 () Bool)

(assert (=> b!29689 (= e!15144 (concatCorrectness!15 lt!5390 xs!533 (left!711 (left!711 ys!77))))))

(declare-fun b!29690 () Bool)

(declare-fun res!13694 () Int)

(assert (=> b!29690 (= e!15141 res!13694)))

(assert (=> b!29690 true))

(declare-fun b!29691 () Bool)

(declare-fun res!13702 () Bool)

(assert (=> b!29691 (=> (not res!13702) (not e!15144))))

(declare-fun lt!5386 () Int)

(declare-fun lt!5392 () Int)

(declare-fun lt!5385 () Int)

(assert (=> b!29691 (= res!13702 (>= lt!5386 (ite (>= lt!5385 lt!5392) lt!5385 lt!5392)))))

(assert (=> b!29691 (= lt!5392 (level!55 (left!711 (left!711 ys!77))))))

(assert (=> b!29691 (= lt!5385 (level!55 xs!533))))

(assert (=> b!29691 (= lt!5386 (level!55 lt!5390))))

(declare-fun b!29692 () Bool)

(assert (=> b!29692 (= e!15140 (level!55 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))

(declare-fun b!29693 () Bool)

(assert (=> b!29693 (= e!15141 (level!55 lt!5388))))

(declare-fun b!29694 () Bool)

(declare-fun res!13699 () Bool)

(assert (=> b!29694 (=> (not res!13699) (not e!15144))))

(assert (=> b!29694 (= res!13699 (concInv!61 lt!5390))))

(assert (= (and d!15473 res!13697) b!29683))

(assert (= (and d!15473 res!13706) b!29678))

(assert (= (and b!29678 res!13700) b!29686))

(assert (= (and b!29686 res!13696) b!29684))

(assert (= (and b!29684 res!13701) b!29674))

(assert (= (and b!29688 (is-CC!66 res!13705)) b!29681))

(assert (= (and b!29688 (is-Single!66 res!13705)) b!29675))

(assert (= (and b!29687 c!6472) b!29676))

(assert (= (and b!29687 (not c!6472)) b!29688))

(assert (= (and b!29687 c!6473) b!29693))

(assert (= (and b!29687 (not c!6473)) b!29690))

(assert (= (and b!29687 c!6475) b!29692))

(assert (= (and b!29687 (not c!6475)) b!29679))

(assert (= (and d!15473 c!6474) b!29682))

(assert (= (and d!15473 (not c!6474)) b!29687))

(assert (= (and d!15473 res!13707) b!29685))

(assert (= (and b!29685 res!13704) b!29691))

(assert (= (and b!29691 res!13702) b!29694))

(assert (= (and b!29694 res!13699) b!29680))

(assert (= (and b!29680 res!13703) b!29677))

(assert (= (and b!29677 res!13698) b!29689))

(assert (=> b!29685 m!31549))

(assert (=> b!29685 m!31449))

(declare-fun m!31559 () Bool)

(assert (=> b!29685 m!31559))

(assert (=> b!29684 m!31455))

(declare-fun m!31561 () Bool)

(assert (=> b!29676 m!31561))

(declare-fun m!31563 () Bool)

(assert (=> b!29692 m!31563))

(assert (=> b!29691 m!31549))

(assert (=> b!29691 m!31449))

(assert (=> b!29691 m!31559))

(declare-fun m!31565 () Bool)

(assert (=> b!29674 m!31565))

(declare-fun m!31567 () Bool)

(assert (=> b!29689 m!31567))

(declare-fun m!31569 () Bool)

(assert (=> b!29680 m!31569))

(declare-fun m!31571 () Bool)

(assert (=> b!29686 m!31571))

(assert (=> b!29683 m!31459))

(declare-fun m!31573 () Bool)

(assert (=> b!29694 m!31573))

(assert (=> d!15473 m!31549))

(assert (=> d!15473 m!31449))

(assert (=> d!15473 m!31475))

(declare-fun m!31575 () Bool)

(assert (=> b!29678 m!31575))

(declare-fun m!31577 () Bool)

(assert (=> b!29677 m!31577))

(declare-fun m!31579 () Bool)

(assert (=> b!29687 m!31579))

(declare-fun m!31581 () Bool)

(assert (=> b!29687 m!31581))

(declare-fun m!31583 () Bool)

(assert (=> b!29693 m!31583))

(assert (=> b!29534 d!15473))

(assert (=> b!29554 d!15451))

(assert (=> b!29554 d!15457))

(assert (=> b!29554 d!15459))

(declare-fun d!15475 () Bool)

(declare-fun res!13711 () Bool)

(declare-fun e!15150 () Bool)

(assert (=> d!15475 (=> res!13711 e!15150)))

(assert (=> d!15475 (= res!13711 (not (is-CC!66 res!5544)))))

(assert (=> d!15475 (= (balanced!62 res!5544) e!15150)))

(declare-fun b!29695 () Bool)

(declare-fun e!15149 () Bool)

(assert (=> b!29695 (= e!15150 e!15149)))

(declare-fun res!13710 () Bool)

(assert (=> b!29695 (=> (not res!13710) (not e!15149))))

(assert (=> b!29695 (= res!13710 (>= (- (level!55 (left!711 res!5544)) (level!55 (right!714 res!5544))) (- 1)))))

(declare-fun b!29698 () Bool)

(assert (=> b!29698 (= e!15149 (balanced!62 (right!714 res!5544)))))

(declare-fun b!29697 () Bool)

(declare-fun res!13709 () Bool)

(assert (=> b!29697 (=> (not res!13709) (not e!15149))))

(assert (=> b!29697 (= res!13709 (balanced!62 (left!711 res!5544)))))

(declare-fun b!29696 () Bool)

(declare-fun res!13708 () Bool)

(assert (=> b!29696 (=> (not res!13708) (not e!15149))))

(assert (=> b!29696 (= res!13708 (<= (- (level!55 (left!711 res!5544)) (level!55 (right!714 res!5544))) 1))))

(assert (= (and d!15475 (not res!13711)) b!29695))

(assert (= (and b!29695 res!13710) b!29696))

(assert (= (and b!29696 res!13708) b!29697))

(assert (= (and b!29697 res!13709) b!29698))

(assert (=> b!29695 m!31501))

(assert (=> b!29695 m!31499))

(declare-fun m!31585 () Bool)

(assert (=> b!29698 m!31585))

(declare-fun m!31587 () Bool)

(assert (=> b!29697 m!31587))

(assert (=> b!29696 m!31501))

(assert (=> b!29696 m!31499))

(assert (=> b!29542 d!15475))

(declare-fun d!15477 () Bool)

(assert (=> d!15477 (= (concatCorrectness!15 res!5544 xs!533 ys!77) (= (toList!118 res!5544) (++!43 (toList!118 xs!533) (toList!118 ys!77))))))

(declare-fun bs!5104 () Bool)

(assert (= bs!5104 d!15477))

(declare-fun m!31589 () Bool)

(assert (=> bs!5104 m!31589))

(assert (=> bs!5104 m!31517))

(assert (=> bs!5104 m!31523))

(declare-fun m!31591 () Bool)

(assert (=> bs!5104 m!31591))

(assert (=> bs!5104 m!31523))

(assert (=> bs!5104 m!31517))

(assert (=> b!29535 d!15477))

(declare-fun b!29702 () Bool)

(declare-fun e!15152 () Bool)

(assert (=> b!29702 (= e!15152 (concInv!61 (right!714 res!5544)))))

(declare-fun b!29701 () Bool)

(declare-fun res!13713 () Bool)

(assert (=> b!29701 (=> (not res!13713) (not e!15152))))

(assert (=> b!29701 (= res!13713 (concInv!61 (left!711 res!5544)))))

(declare-fun b!29699 () Bool)

(declare-fun e!15151 () Bool)

(assert (=> b!29699 (= e!15151 e!15152)))

(declare-fun res!13716 () Bool)

(assert (=> b!29699 (=> (not res!13716) (not e!15152))))

(assert (=> b!29699 (= res!13716 (not (isEmpty!323 (left!711 res!5544))))))

(declare-fun b!29700 () Bool)

(declare-fun res!13715 () Bool)

(assert (=> b!29700 (=> (not res!13715) (not e!15152))))

(assert (=> b!29700 (= res!13715 (not (isEmpty!323 (right!714 res!5544))))))

(declare-fun d!15479 () Bool)

(declare-fun res!13714 () Bool)

(assert (=> d!15479 (=> res!13714 e!15151)))

(assert (=> d!15479 (= res!13714 (not (is-CC!66 res!5544)))))

(assert (=> d!15479 (= (concInv!61 res!5544) e!15151)))

(assert (= (and d!15479 (not res!13714)) b!29699))

(assert (= (and b!29699 res!13716) b!29700))

(assert (= (and b!29700 res!13715) b!29701))

(assert (= (and b!29701 res!13713) b!29702))

(declare-fun m!31593 () Bool)

(assert (=> b!29702 m!31593))

(declare-fun m!31595 () Bool)

(assert (=> b!29701 m!31595))

(declare-fun m!31597 () Bool)

(assert (=> b!29699 m!31597))

(declare-fun m!31599 () Bool)

(assert (=> b!29700 m!31599))

(assert (=> b!29532 d!15479))

(assert (=> b!29555 d!15451))

(assert (=> b!29555 d!15457))

(declare-fun b!29709 () Bool)

(declare-fun e!15155 () Bool)

(declare-fun tp!6274 () Bool)

(declare-fun tp!6275 () Bool)

(assert (=> b!29709 (= e!15155 (and tp!6274 tp!6275))))

(declare-fun b!29710 () Bool)

(assert (=> b!29710 (= e!15155 tp_is_empty!179)))

(assert (=> b!29538 (= tp!6259 e!15155)))

(assert (= (and b!29538 (is-CC!66 (left!711 res!5544))) b!29709))

(assert (= (and b!29538 (is-Single!66 (left!711 res!5544))) b!29710))

(declare-fun b!29711 () Bool)

(declare-fun e!15156 () Bool)

(declare-fun tp!6276 () Bool)

(declare-fun tp!6277 () Bool)

(assert (=> b!29711 (= e!15156 (and tp!6276 tp!6277))))

(declare-fun b!29712 () Bool)

(assert (=> b!29712 (= e!15156 tp_is_empty!179)))

(assert (=> b!29538 (= tp!6261 e!15156)))

(assert (= (and b!29538 (is-CC!66 (right!714 res!5544))) b!29711))

(assert (= (and b!29538 (is-Single!66 (right!714 res!5544))) b!29712))

(declare-fun b!29713 () Bool)

(declare-fun e!15157 () Bool)

(declare-fun tp!6278 () Bool)

(declare-fun tp!6279 () Bool)

(assert (=> b!29713 (= e!15157 (and tp!6278 tp!6279))))

(declare-fun b!29714 () Bool)

(assert (=> b!29714 (= e!15157 tp_is_empty!179)))

(assert (=> b!29550 (= tp!6263 e!15157)))

(assert (= (and b!29550 (is-CC!66 (left!711 ys!77))) b!29713))

(assert (= (and b!29550 (is-Single!66 (left!711 ys!77))) b!29714))

(declare-fun b!29715 () Bool)

(declare-fun e!15158 () Bool)

(declare-fun tp!6280 () Bool)

(declare-fun tp!6281 () Bool)

(assert (=> b!29715 (= e!15158 (and tp!6280 tp!6281))))

(declare-fun b!29716 () Bool)

(assert (=> b!29716 (= e!15158 tp_is_empty!179)))

(assert (=> b!29550 (= tp!6257 e!15158)))

(assert (= (and b!29550 (is-CC!66 (right!714 ys!77))) b!29715))

(assert (= (and b!29550 (is-Single!66 (right!714 ys!77))) b!29716))

(declare-fun b!29717 () Bool)

(declare-fun e!15159 () Bool)

(declare-fun tp!6282 () Bool)

(declare-fun tp!6283 () Bool)

(assert (=> b!29717 (= e!15159 (and tp!6282 tp!6283))))

(declare-fun b!29718 () Bool)

(assert (=> b!29718 (= e!15159 tp_is_empty!179)))

(assert (=> b!29537 (= tp!6260 e!15159)))

(assert (= (and b!29537 (is-CC!66 (left!711 xs!533))) b!29717))

(assert (= (and b!29537 (is-Single!66 (left!711 xs!533))) b!29718))

(declare-fun b!29719 () Bool)

(declare-fun e!15160 () Bool)

(declare-fun tp!6284 () Bool)

(declare-fun tp!6285 () Bool)

(assert (=> b!29719 (= e!15160 (and tp!6284 tp!6285))))

(declare-fun b!29720 () Bool)

(assert (=> b!29720 (= e!15160 tp_is_empty!179)))

(assert (=> b!29537 (= tp!6262 e!15160)))

(assert (= (and b!29537 (is-CC!66 (right!714 xs!533))) b!29719))

(assert (= (and b!29537 (is-Single!66 (right!714 xs!533))) b!29720))

(declare-fun b!29721 () Bool)

(declare-fun e!15161 () Bool)

(declare-fun tp!6286 () Bool)

(declare-fun tp!6287 () Bool)

(assert (=> b!29721 (= e!15161 (and tp!6286 tp!6287))))

(declare-fun b!29722 () Bool)

(assert (=> b!29722 (= e!15161 tp_is_empty!179)))

(assert (=> b!29544 (= tp!6256 e!15161)))

(assert (= (and b!29544 (is-CC!66 (left!711 nll!6))) b!29721))

(assert (= (and b!29544 (is-Single!66 (left!711 nll!6))) b!29722))

(declare-fun b!29723 () Bool)

(declare-fun e!15162 () Bool)

(declare-fun tp!6288 () Bool)

(declare-fun tp!6289 () Bool)

(assert (=> b!29723 (= e!15162 (and tp!6288 tp!6289))))

(declare-fun b!29724 () Bool)

(assert (=> b!29724 (= e!15162 tp_is_empty!179)))

(assert (=> b!29544 (= tp!6258 e!15162)))

(assert (= (and b!29544 (is-CC!66 (right!714 nll!6))) b!29723))

(assert (= (and b!29544 (is-Single!66 (right!714 nll!6))) b!29724))

(push 1)

(assert (not b!29694))

(assert (not b!29713))

(assert (not b!29674))

(assert (not b!29683))

(assert (not b!29717))

(assert (not b!29696))

(assert (not b!29574))

(assert (not d!15473))

(assert (not b!29686))

(assert (not b!29616))

(assert (not b!29692))

(assert (not b!29620))

(assert (not b!29723))

(assert (not b!29587))

(assert (not b!29685))

(assert (not b!29678))

(assert (not b!29684))

(assert (not b!29628))

(assert (not b!29719))

(assert (not b!29697))

(assert (not b!29693))

(assert (not b!29711))

(assert (not b!29568))

(assert (not b!29593))

(assert (not b!29631))

(assert (not b!29619))

(assert (not b!29566))

(assert (not b!29691))

(assert (not b!29588))

(assert (not b!29627))

(assert (not b!29677))

(assert (not b!29592))

(assert (not b!29687))

(assert (not b!29699))

(assert (not b!29594))

(assert (not d!15477))

(assert (not b!29625))

(assert (not b!29695))

(assert (not b!29595))

(assert (not b!29630))

(assert tp_is_empty!179)

(assert (not b!29702))

(assert (not b!29590))

(assert (not b!29586))

(assert (not b!29622))

(assert (not b!29615))

(assert (not b!29576))

(assert (not b!29715))

(assert (not b!29698))

(assert (not b!29629))

(assert (not b!29680))

(assert (not b!29689))

(assert (not b!29623))

(assert (not b!29709))

(assert (not b!29585))

(assert (not b!29701))

(assert (not b!29596))

(assert (not b!29700))

(assert (not b!29567))

(assert (not b!29565))

(assert (not b!29676))

(assert (not b!29681))

(assert (not b!29721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!29726 () Bool)

(declare-fun e!15163 () Int)

(declare-fun lt!5397 () Int)

(declare-fun lt!5396 () Int)

(assert (=> b!29726 (= e!15163 (+ 1 (ite (>= lt!5397 lt!5396) lt!5397 lt!5396)))))

(assert (=> b!29726 (= lt!5396 (level!55 (right!714 (right!714 nll!6))))))

(assert (=> b!29726 (= lt!5397 (level!55 (left!711 (right!714 nll!6))))))

(declare-fun d!15481 () Bool)

(declare-fun lt!5395 () Int)

(assert (=> d!15481 (>= lt!5395 0)))

(assert (=> d!15481 (= lt!5395 e!15163)))

(declare-fun c!6476 () Bool)

(assert (=> d!15481 (= c!6476 (or (is-Empty!77 (right!714 nll!6)) (is-Single!66 (right!714 nll!6))))))

(assert (=> d!15481 (= (level!55 (right!714 nll!6)) lt!5395)))

(declare-fun b!29725 () Bool)

(assert (=> b!29725 (= e!15163 0)))

(assert (= (and d!15481 c!6476) b!29725))

(assert (= (and d!15481 (not c!6476)) b!29726))

(declare-fun m!31601 () Bool)

(assert (=> b!29726 m!31601))

(declare-fun m!31603 () Bool)

(assert (=> b!29726 m!31603))

(assert (=> b!29574 d!15481))

(declare-fun b!29728 () Bool)

(declare-fun e!15164 () Int)

(declare-fun lt!5400 () Int)

(declare-fun lt!5399 () Int)

(assert (=> b!29728 (= e!15164 (+ 1 (ite (>= lt!5400 lt!5399) lt!5400 lt!5399)))))

(assert (=> b!29728 (= lt!5399 (level!55 (right!714 (left!711 nll!6))))))

(assert (=> b!29728 (= lt!5400 (level!55 (left!711 (left!711 nll!6))))))

(declare-fun d!15483 () Bool)

(declare-fun lt!5398 () Int)

(assert (=> d!15483 (>= lt!5398 0)))

(assert (=> d!15483 (= lt!5398 e!15164)))

(declare-fun c!6477 () Bool)

(assert (=> d!15483 (= c!6477 (or (is-Empty!77 (left!711 nll!6)) (is-Single!66 (left!711 nll!6))))))

(assert (=> d!15483 (= (level!55 (left!711 nll!6)) lt!5398)))

(declare-fun b!29727 () Bool)

(assert (=> b!29727 (= e!15164 0)))

(assert (= (and d!15483 c!6477) b!29727))

(assert (= (and d!15483 (not c!6477)) b!29728))

(declare-fun m!31605 () Bool)

(assert (=> b!29728 m!31605))

(declare-fun m!31607 () Bool)

(assert (=> b!29728 m!31607))

(assert (=> b!29574 d!15483))

(declare-fun b!29733 () Bool)

(declare-fun e!15167 () Bool)

(assert (=> b!29733 (= e!15167 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))) (toList!118 ys!77)) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))))

(declare-fun lt!5403 () Bool)

(assert (=> b!29733 (= lt!5403 (appendAssoc!11 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))

(declare-fun d!15485 () Bool)

(assert (=> d!15485 e!15167))

(declare-fun c!6480 () Bool)

(assert (=> d!15485 (= c!6480 (is-Cons!357 (toList!118 (left!711 xs!533))))))

(assert (=> d!15485 (= (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)) (toList!118 ys!77)) true)))

(declare-fun b!29734 () Bool)

(assert (=> b!29734 (= e!15167 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))) (toList!118 ys!77)) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))))

(assert (= (and d!15485 c!6480) b!29733))

(assert (= (and d!15485 (not c!6480)) b!29734))

(assert (=> b!29733 m!31519))

(declare-fun m!31609 () Bool)

(assert (=> b!29733 m!31609))

(declare-fun m!31611 () Bool)

(assert (=> b!29733 m!31611))

(assert (=> b!29733 m!31519))

(assert (=> b!29733 m!31521))

(declare-fun m!31613 () Bool)

(assert (=> b!29733 m!31613))

(assert (=> b!29733 m!31521))

(assert (=> b!29733 m!31523))

(assert (=> b!29733 m!31609))

(assert (=> b!29733 m!31613))

(assert (=> b!29733 m!31523))

(declare-fun m!31615 () Bool)

(assert (=> b!29733 m!31615))

(assert (=> b!29733 m!31521))

(assert (=> b!29733 m!31523))

(declare-fun m!31617 () Bool)

(assert (=> b!29733 m!31617))

(assert (=> b!29734 m!31519))

(assert (=> b!29734 m!31521))

(assert (=> b!29734 m!31613))

(assert (=> b!29734 m!31613))

(assert (=> b!29734 m!31523))

(assert (=> b!29734 m!31615))

(assert (=> b!29734 m!31521))

(assert (=> b!29734 m!31523))

(assert (=> b!29734 m!31609))

(assert (=> b!29734 m!31519))

(assert (=> b!29734 m!31609))

(assert (=> b!29734 m!31611))

(assert (=> b!29619 d!15485))

(declare-fun b!29743 () Bool)

(declare-fun e!15172 () List!363)

(assert (=> b!29743 (= e!15172 Nil!358)))

(declare-fun b!29746 () Bool)

(declare-fun e!15173 () List!363)

(assert (=> b!29746 (= e!15173 (++!43 (toList!118 (left!711 (left!711 xs!533))) (toList!118 (right!714 (left!711 xs!533)))))))

(declare-fun b!29745 () Bool)

(assert (=> b!29745 (= e!15173 (Cons!357 (x!8953 (left!711 xs!533)) Nil!358))))

(declare-fun b!29744 () Bool)

(assert (=> b!29744 (= e!15172 e!15173)))

(declare-fun c!6486 () Bool)

(assert (=> b!29744 (= c!6486 (is-Single!66 (left!711 xs!533)))))

(declare-fun d!15487 () Bool)

(declare-fun lt!5406 () List!363)

(declare-fun size!275 (List!363) Int)

(declare-fun size!276 (Conc!67) Int)

(assert (=> d!15487 (= (size!275 lt!5406) (size!276 (left!711 xs!533)))))

(assert (=> d!15487 (= lt!5406 e!15172)))

(declare-fun c!6485 () Bool)

(assert (=> d!15487 (= c!6485 (is-Empty!77 (left!711 xs!533)))))

(assert (=> d!15487 (= (toList!118 (left!711 xs!533)) lt!5406)))

(assert (= (and b!29744 c!6486) b!29745))

(assert (= (and b!29744 (not c!6486)) b!29746))

(assert (= (and d!15487 c!6485) b!29743))

(assert (= (and d!15487 (not c!6485)) b!29744))

(declare-fun m!31619 () Bool)

(assert (=> b!29746 m!31619))

(declare-fun m!31621 () Bool)

(assert (=> b!29746 m!31621))

(assert (=> b!29746 m!31619))

(assert (=> b!29746 m!31621))

(declare-fun m!31623 () Bool)

(assert (=> b!29746 m!31623))

(declare-fun m!31625 () Bool)

(assert (=> d!15487 m!31625))

(declare-fun m!31627 () Bool)

(assert (=> d!15487 m!31627))

(assert (=> b!29619 d!15487))

(declare-fun b!29747 () Bool)

(declare-fun e!15174 () List!363)

(assert (=> b!29747 (= e!15174 Nil!358)))

(declare-fun b!29750 () Bool)

(declare-fun e!15175 () List!363)

(assert (=> b!29750 (= e!15175 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))))))

(declare-fun b!29749 () Bool)

(assert (=> b!29749 (= e!15175 (Cons!357 (x!8953 (right!714 xs!533)) Nil!358))))

(declare-fun b!29748 () Bool)

(assert (=> b!29748 (= e!15174 e!15175)))

(declare-fun c!6488 () Bool)

(assert (=> b!29748 (= c!6488 (is-Single!66 (right!714 xs!533)))))

(declare-fun d!15489 () Bool)

(declare-fun lt!5407 () List!363)

(assert (=> d!15489 (= (size!275 lt!5407) (size!276 (right!714 xs!533)))))

(assert (=> d!15489 (= lt!5407 e!15174)))

(declare-fun c!6487 () Bool)

(assert (=> d!15489 (= c!6487 (is-Empty!77 (right!714 xs!533)))))

(assert (=> d!15489 (= (toList!118 (right!714 xs!533)) lt!5407)))

(assert (= (and b!29748 c!6488) b!29749))

(assert (= (and b!29748 (not c!6488)) b!29750))

(assert (= (and d!15489 c!6487) b!29747))

(assert (= (and d!15489 (not c!6487)) b!29748))

(assert (=> b!29750 m!31533))

(assert (=> b!29750 m!31529))

(assert (=> b!29750 m!31533))

(assert (=> b!29750 m!31529))

(declare-fun m!31629 () Bool)

(assert (=> b!29750 m!31629))

(declare-fun m!31631 () Bool)

(assert (=> d!15489 m!31631))

(declare-fun m!31633 () Bool)

(assert (=> d!15489 m!31633))

(assert (=> b!29619 d!15489))

(declare-fun b!29751 () Bool)

(declare-fun e!15176 () List!363)

(assert (=> b!29751 (= e!15176 Nil!358)))

(declare-fun b!29754 () Bool)

(declare-fun e!15177 () List!363)

(assert (=> b!29754 (= e!15177 (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))

(declare-fun b!29753 () Bool)

(assert (=> b!29753 (= e!15177 (Cons!357 (x!8953 ys!77) Nil!358))))

(declare-fun b!29752 () Bool)

(assert (=> b!29752 (= e!15176 e!15177)))

(declare-fun c!6490 () Bool)

(assert (=> b!29752 (= c!6490 (is-Single!66 ys!77))))

(declare-fun d!15491 () Bool)

(declare-fun lt!5408 () List!363)

(assert (=> d!15491 (= (size!275 lt!5408) (size!276 ys!77))))

(assert (=> d!15491 (= lt!5408 e!15176)))

(declare-fun c!6489 () Bool)

(assert (=> d!15491 (= c!6489 (is-Empty!77 ys!77))))

(assert (=> d!15491 (= (toList!118 ys!77) lt!5408)))

(assert (= (and b!29752 c!6490) b!29753))

(assert (= (and b!29752 (not c!6490)) b!29754))

(assert (= (and d!15491 c!6489) b!29751))

(assert (= (and d!15491 (not c!6489)) b!29752))

(assert (=> b!29754 m!31539))

(assert (=> b!29754 m!31511))

(assert (=> b!29754 m!31539))

(assert (=> b!29754 m!31511))

(declare-fun m!31635 () Bool)

(assert (=> b!29754 m!31635))

(declare-fun m!31637 () Bool)

(assert (=> d!15491 m!31637))

(declare-fun m!31639 () Bool)

(assert (=> d!15491 m!31639))

(assert (=> b!29619 d!15491))

(declare-fun b!29758 () Bool)

(declare-fun e!15179 () Bool)

(assert (=> b!29758 (= e!15179 (concInv!61 (right!714 (right!714 res!5544))))))

(declare-fun b!29757 () Bool)

(declare-fun res!13718 () Bool)

(assert (=> b!29757 (=> (not res!13718) (not e!15179))))

(assert (=> b!29757 (= res!13718 (concInv!61 (left!711 (right!714 res!5544))))))

(declare-fun b!29755 () Bool)

(declare-fun e!15178 () Bool)

(assert (=> b!29755 (= e!15178 e!15179)))

(declare-fun res!13721 () Bool)

(assert (=> b!29755 (=> (not res!13721) (not e!15179))))

(assert (=> b!29755 (= res!13721 (not (isEmpty!323 (left!711 (right!714 res!5544)))))))

(declare-fun b!29756 () Bool)

(declare-fun res!13720 () Bool)

(assert (=> b!29756 (=> (not res!13720) (not e!15179))))

(assert (=> b!29756 (= res!13720 (not (isEmpty!323 (right!714 (right!714 res!5544)))))))

(declare-fun d!15493 () Bool)

(declare-fun res!13719 () Bool)

(assert (=> d!15493 (=> res!13719 e!15178)))

(assert (=> d!15493 (= res!13719 (not (is-CC!66 (right!714 res!5544))))))

(assert (=> d!15493 (= (concInv!61 (right!714 res!5544)) e!15178)))

(assert (= (and d!15493 (not res!13719)) b!29755))

(assert (= (and b!29755 res!13721) b!29756))

(assert (= (and b!29756 res!13720) b!29757))

(assert (= (and b!29757 res!13718) b!29758))

(declare-fun m!31641 () Bool)

(assert (=> b!29758 m!31641))

(declare-fun m!31643 () Bool)

(assert (=> b!29757 m!31643))

(declare-fun m!31645 () Bool)

(assert (=> b!29755 m!31645))

(declare-fun m!31647 () Bool)

(assert (=> b!29756 m!31647))

(assert (=> b!29702 d!15493))

(declare-fun b!29760 () Bool)

(declare-fun e!15180 () Int)

(declare-fun lt!5411 () Int)

(declare-fun lt!5410 () Int)

(assert (=> b!29760 (= e!15180 (+ 1 (ite (>= lt!5411 lt!5410) lt!5411 lt!5410)))))

(assert (=> b!29760 (= lt!5410 (level!55 (right!714 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))))))

(assert (=> b!29760 (= lt!5411 (level!55 (left!711 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))))))

(declare-fun d!15495 () Bool)

(declare-fun lt!5409 () Int)

(assert (=> d!15495 (>= lt!5409 0)))

(assert (=> d!15495 (= lt!5409 e!15180)))

(declare-fun c!6491 () Bool)

(assert (=> d!15495 (= c!6491 (or (is-Empty!77 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))) (is-Single!66 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))))))

(assert (=> d!15495 (= (level!55 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))) lt!5409)))

(declare-fun b!29759 () Bool)

(assert (=> b!29759 (= e!15180 0)))

(assert (= (and d!15495 c!6491) b!29759))

(assert (= (and d!15495 (not c!6491)) b!29760))

(declare-fun m!31649 () Bool)

(assert (=> b!29760 m!31649))

(declare-fun m!31651 () Bool)

(assert (=> b!29760 m!31651))

(assert (=> b!29692 d!15495))

(declare-fun d!15497 () Bool)

(assert (=> d!15497 (= (concatCorrectness!15 lt!5390 xs!533 (left!711 (left!711 ys!77))) (= (toList!118 lt!5390) (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun bs!5105 () Bool)

(assert (= bs!5105 d!15497))

(declare-fun m!31653 () Bool)

(assert (=> bs!5105 m!31653))

(assert (=> bs!5105 m!31517))

(assert (=> bs!5105 m!31515))

(assert (=> bs!5105 m!31509))

(assert (=> bs!5105 m!31515))

(assert (=> bs!5105 m!31517))

(assert (=> b!29689 d!15497))

(declare-fun b!29762 () Bool)

(declare-fun e!15181 () Int)

(declare-fun lt!5414 () Int)

(declare-fun lt!5413 () Int)

(assert (=> b!29762 (= e!15181 (+ 1 (ite (>= lt!5414 lt!5413) lt!5414 lt!5413)))))

(assert (=> b!29762 (= lt!5413 (level!55 (right!714 (right!714 (right!714 ys!77)))))))

(assert (=> b!29762 (= lt!5414 (level!55 (left!711 (right!714 (right!714 ys!77)))))))

(declare-fun d!15499 () Bool)

(declare-fun lt!5412 () Int)

(assert (=> d!15499 (>= lt!5412 0)))

(assert (=> d!15499 (= lt!5412 e!15181)))

(declare-fun c!6492 () Bool)

(assert (=> d!15499 (= c!6492 (or (is-Empty!77 (right!714 (right!714 ys!77))) (is-Single!66 (right!714 (right!714 ys!77)))))))

(assert (=> d!15499 (= (level!55 (right!714 (right!714 ys!77))) lt!5412)))

(declare-fun b!29761 () Bool)

(assert (=> b!29761 (= e!15181 0)))

(assert (= (and d!15499 c!6492) b!29761))

(assert (= (and d!15499 (not c!6492)) b!29762))

(declare-fun m!31655 () Bool)

(assert (=> b!29762 m!31655))

(declare-fun m!31657 () Bool)

(assert (=> b!29762 m!31657))

(assert (=> b!29625 d!15499))

(declare-fun b!29764 () Bool)

(declare-fun e!15182 () Int)

(declare-fun lt!5417 () Int)

(declare-fun lt!5416 () Int)

(assert (=> b!29764 (= e!15182 (+ 1 (ite (>= lt!5417 lt!5416) lt!5417 lt!5416)))))

(assert (=> b!29764 (= lt!5416 (level!55 (right!714 (left!711 (right!714 ys!77)))))))

(assert (=> b!29764 (= lt!5417 (level!55 (left!711 (left!711 (right!714 ys!77)))))))

(declare-fun d!15501 () Bool)

(declare-fun lt!5415 () Int)

(assert (=> d!15501 (>= lt!5415 0)))

(assert (=> d!15501 (= lt!5415 e!15182)))

(declare-fun c!6493 () Bool)

(assert (=> d!15501 (= c!6493 (or (is-Empty!77 (left!711 (right!714 ys!77))) (is-Single!66 (left!711 (right!714 ys!77)))))))

(assert (=> d!15501 (= (level!55 (left!711 (right!714 ys!77))) lt!5415)))

(declare-fun b!29763 () Bool)

(assert (=> b!29763 (= e!15182 0)))

(assert (= (and d!15501 c!6493) b!29763))

(assert (= (and d!15501 (not c!6493)) b!29764))

(declare-fun m!31659 () Bool)

(assert (=> b!29764 m!31659))

(declare-fun m!31661 () Bool)

(assert (=> b!29764 m!31661))

(assert (=> b!29625 d!15501))

(assert (=> b!29585 d!15469))

(assert (=> b!29585 d!15467))

(declare-fun d!15503 () Bool)

(declare-fun res!13725 () Bool)

(declare-fun e!15184 () Bool)

(assert (=> d!15503 (=> res!13725 e!15184)))

(assert (=> d!15503 (= res!13725 (not (is-CC!66 (left!711 (left!711 ys!77)))))))

(assert (=> d!15503 (= (balanced!62 (left!711 (left!711 ys!77))) e!15184)))

(declare-fun b!29765 () Bool)

(declare-fun e!15183 () Bool)

(assert (=> b!29765 (= e!15184 e!15183)))

(declare-fun res!13724 () Bool)

(assert (=> b!29765 (=> (not res!13724) (not e!15183))))

(assert (=> b!29765 (= res!13724 (>= (- (level!55 (left!711 (left!711 (left!711 ys!77)))) (level!55 (right!714 (left!711 (left!711 ys!77))))) (- 1)))))

(declare-fun b!29768 () Bool)

(assert (=> b!29768 (= e!15183 (balanced!62 (right!714 (left!711 (left!711 ys!77)))))))

(declare-fun b!29767 () Bool)

(declare-fun res!13723 () Bool)

(assert (=> b!29767 (=> (not res!13723) (not e!15183))))

(assert (=> b!29767 (= res!13723 (balanced!62 (left!711 (left!711 (left!711 ys!77)))))))

(declare-fun b!29766 () Bool)

(declare-fun res!13722 () Bool)

(assert (=> b!29766 (=> (not res!13722) (not e!15183))))

(assert (=> b!29766 (= res!13722 (<= (- (level!55 (left!711 (left!711 (left!711 ys!77)))) (level!55 (right!714 (left!711 (left!711 ys!77))))) 1))))

(assert (= (and d!15503 (not res!13725)) b!29765))

(assert (= (and b!29765 res!13724) b!29766))

(assert (= (and b!29766 res!13722) b!29767))

(assert (= (and b!29767 res!13723) b!29768))

(declare-fun m!31663 () Bool)

(assert (=> b!29765 m!31663))

(declare-fun m!31665 () Bool)

(assert (=> b!29765 m!31665))

(declare-fun m!31667 () Bool)

(assert (=> b!29768 m!31667))

(declare-fun m!31669 () Bool)

(assert (=> b!29767 m!31669))

(assert (=> b!29766 m!31663))

(assert (=> b!29766 m!31665))

(assert (=> b!29686 d!15503))

(assert (=> d!15477 d!15491))

(declare-fun b!29769 () Bool)

(declare-fun e!15185 () List!363)

(assert (=> b!29769 (= e!15185 Nil!358)))

(declare-fun b!29772 () Bool)

(declare-fun e!15186 () List!363)

(assert (=> b!29772 (= e!15186 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))))))

(declare-fun b!29771 () Bool)

(assert (=> b!29771 (= e!15186 (Cons!357 (x!8953 xs!533) Nil!358))))

(declare-fun b!29770 () Bool)

(assert (=> b!29770 (= e!15185 e!15186)))

(declare-fun c!6495 () Bool)

(assert (=> b!29770 (= c!6495 (is-Single!66 xs!533))))

(declare-fun d!15505 () Bool)

(declare-fun lt!5418 () List!363)

(assert (=> d!15505 (= (size!275 lt!5418) (size!276 xs!533))))

(assert (=> d!15505 (= lt!5418 e!15185)))

(declare-fun c!6494 () Bool)

(assert (=> d!15505 (= c!6494 (is-Empty!77 xs!533))))

(assert (=> d!15505 (= (toList!118 xs!533) lt!5418)))

(assert (= (and b!29770 c!6495) b!29771))

(assert (= (and b!29770 (not c!6495)) b!29772))

(assert (= (and d!15505 c!6494) b!29769))

(assert (= (and d!15505 (not c!6494)) b!29770))

(assert (=> b!29772 m!31519))

(assert (=> b!29772 m!31521))

(assert (=> b!29772 m!31519))

(assert (=> b!29772 m!31521))

(assert (=> b!29772 m!31613))

(declare-fun m!31671 () Bool)

(assert (=> d!15505 m!31671))

(declare-fun m!31673 () Bool)

(assert (=> d!15505 m!31673))

(assert (=> d!15477 d!15505))

(declare-fun b!29773 () Bool)

(declare-fun e!15187 () List!363)

(assert (=> b!29773 (= e!15187 Nil!358)))

(declare-fun b!29776 () Bool)

(declare-fun e!15188 () List!363)

(assert (=> b!29776 (= e!15188 (++!43 (toList!118 (left!711 res!5544)) (toList!118 (right!714 res!5544))))))

(declare-fun b!29775 () Bool)

(assert (=> b!29775 (= e!15188 (Cons!357 (x!8953 res!5544) Nil!358))))

(declare-fun b!29774 () Bool)

(assert (=> b!29774 (= e!15187 e!15188)))

(declare-fun c!6497 () Bool)

(assert (=> b!29774 (= c!6497 (is-Single!66 res!5544))))

(declare-fun d!15507 () Bool)

(declare-fun lt!5419 () List!363)

(assert (=> d!15507 (= (size!275 lt!5419) (size!276 res!5544))))

(assert (=> d!15507 (= lt!5419 e!15187)))

(declare-fun c!6496 () Bool)

(assert (=> d!15507 (= c!6496 (is-Empty!77 res!5544))))

(assert (=> d!15507 (= (toList!118 res!5544) lt!5419)))

(assert (= (and b!29774 c!6497) b!29775))

(assert (= (and b!29774 (not c!6497)) b!29776))

(assert (= (and d!15507 c!6496) b!29773))

(assert (= (and d!15507 (not c!6496)) b!29774))

(declare-fun m!31675 () Bool)

(assert (=> b!29776 m!31675))

(declare-fun m!31677 () Bool)

(assert (=> b!29776 m!31677))

(assert (=> b!29776 m!31675))

(assert (=> b!29776 m!31677))

(declare-fun m!31679 () Bool)

(assert (=> b!29776 m!31679))

(declare-fun m!31681 () Bool)

(assert (=> d!15507 m!31681))

(declare-fun m!31683 () Bool)

(assert (=> d!15507 m!31683))

(assert (=> d!15477 d!15507))

(declare-fun b!29786 () Bool)

(declare-fun e!15193 () List!363)

(assert (=> b!29786 (= e!15193 (Cons!357 (h!274 (toList!118 xs!533)) (++!43 (t!4377 (toList!118 xs!533)) (toList!118 ys!77))))))

(declare-fun b!29785 () Bool)

(assert (=> b!29785 (= e!15193 (toList!118 ys!77))))

(declare-fun b!29787 () Bool)

(declare-fun res!13732 () Bool)

(declare-fun e!15194 () Bool)

(assert (=> b!29787 (=> (not res!13732) (not e!15194))))

(declare-fun lt!5422 () List!363)

(assert (=> b!29787 (= res!13732 (= (size!275 lt!5422) (+ (size!275 (toList!118 xs!533)) (size!275 (toList!118 ys!77)))))))

(declare-fun b!29788 () Bool)

(assert (=> b!29788 (= e!15194 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5422 (toList!118 xs!533))))))

(declare-fun d!15509 () Bool)

(assert (=> d!15509 e!15194))

(declare-fun res!13731 () Bool)

(assert (=> d!15509 (=> (not res!13731) (not e!15194))))

(declare-fun content!73 (List!363) (Set T!1835))

(assert (=> d!15509 (= res!13731 (= (content!73 lt!5422) (union (content!73 (toList!118 xs!533)) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15509 (= lt!5422 e!15193)))

(declare-fun c!6500 () Bool)

(assert (=> d!15509 (= c!6500 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15509 (= (++!43 (toList!118 xs!533) (toList!118 ys!77)) lt!5422)))

(assert (= (and d!15509 c!6500) b!29785))

(assert (= (and d!15509 (not c!6500)) b!29786))

(assert (= (and d!15509 res!13731) b!29787))

(assert (= (and b!29787 res!13732) b!29788))

(assert (=> b!29786 m!31523))

(declare-fun m!31685 () Bool)

(assert (=> b!29786 m!31685))

(declare-fun m!31687 () Bool)

(assert (=> b!29787 m!31687))

(assert (=> b!29787 m!31517))

(declare-fun m!31689 () Bool)

(assert (=> b!29787 m!31689))

(assert (=> b!29787 m!31523))

(declare-fun m!31691 () Bool)

(assert (=> b!29787 m!31691))

(declare-fun m!31693 () Bool)

(assert (=> d!15509 m!31693))

(assert (=> d!15509 m!31517))

(declare-fun m!31695 () Bool)

(assert (=> d!15509 m!31695))

(assert (=> d!15509 m!31523))

(declare-fun m!31697 () Bool)

(assert (=> d!15509 m!31697))

(assert (=> d!15477 d!15509))

(declare-fun d!15511 () Bool)

(declare-fun res!13736 () Bool)

(declare-fun e!15196 () Bool)

(assert (=> d!15511 (=> res!13736 e!15196)))

(assert (=> d!15511 (= res!13736 (not (is-CC!66 (right!714 ys!77))))))

(assert (=> d!15511 (= (balanced!62 (right!714 ys!77)) e!15196)))

(declare-fun b!29789 () Bool)

(declare-fun e!15195 () Bool)

(assert (=> b!29789 (= e!15196 e!15195)))

(declare-fun res!13735 () Bool)

(assert (=> b!29789 (=> (not res!13735) (not e!15195))))

(assert (=> b!29789 (= res!13735 (>= (- (level!55 (left!711 (right!714 ys!77))) (level!55 (right!714 (right!714 ys!77)))) (- 1)))))

(declare-fun b!29792 () Bool)

(assert (=> b!29792 (= e!15195 (balanced!62 (right!714 (right!714 ys!77))))))

(declare-fun b!29791 () Bool)

(declare-fun res!13734 () Bool)

(assert (=> b!29791 (=> (not res!13734) (not e!15195))))

(assert (=> b!29791 (= res!13734 (balanced!62 (left!711 (right!714 ys!77))))))

(declare-fun b!29790 () Bool)

(declare-fun res!13733 () Bool)

(assert (=> b!29790 (=> (not res!13733) (not e!15195))))

(assert (=> b!29790 (= res!13733 (<= (- (level!55 (left!711 (right!714 ys!77))) (level!55 (right!714 (right!714 ys!77)))) 1))))

(assert (= (and d!15511 (not res!13736)) b!29789))

(assert (= (and b!29789 res!13735) b!29790))

(assert (= (and b!29790 res!13733) b!29791))

(assert (= (and b!29791 res!13734) b!29792))

(assert (=> b!29789 m!31545))

(assert (=> b!29789 m!31543))

(declare-fun m!31699 () Bool)

(assert (=> b!29792 m!31699))

(declare-fun m!31701 () Bool)

(assert (=> b!29791 m!31701))

(assert (=> b!29790 m!31545))

(assert (=> b!29790 m!31543))

(assert (=> b!29588 d!15511))

(declare-fun b!29796 () Bool)

(declare-fun e!15198 () Bool)

(assert (=> b!29796 (= e!15198 (concInv!61 (right!714 (left!711 xs!533))))))

(declare-fun b!29795 () Bool)

(declare-fun res!13737 () Bool)

(assert (=> b!29795 (=> (not res!13737) (not e!15198))))

(assert (=> b!29795 (= res!13737 (concInv!61 (left!711 (left!711 xs!533))))))

(declare-fun b!29793 () Bool)

(declare-fun e!15197 () Bool)

(assert (=> b!29793 (= e!15197 e!15198)))

(declare-fun res!13740 () Bool)

(assert (=> b!29793 (=> (not res!13740) (not e!15198))))

(assert (=> b!29793 (= res!13740 (not (isEmpty!323 (left!711 (left!711 xs!533)))))))

(declare-fun b!29794 () Bool)

(declare-fun res!13739 () Bool)

(assert (=> b!29794 (=> (not res!13739) (not e!15198))))

(assert (=> b!29794 (= res!13739 (not (isEmpty!323 (right!714 (left!711 xs!533)))))))

(declare-fun d!15513 () Bool)

(declare-fun res!13738 () Bool)

(assert (=> d!15513 (=> res!13738 e!15197)))

(assert (=> d!15513 (= res!13738 (not (is-CC!66 (left!711 xs!533))))))

(assert (=> d!15513 (= (concInv!61 (left!711 xs!533)) e!15197)))

(assert (= (and d!15513 (not res!13738)) b!29793))

(assert (= (and b!29793 res!13740) b!29794))

(assert (= (and b!29794 res!13739) b!29795))

(assert (= (and b!29795 res!13737) b!29796))

(declare-fun m!31703 () Bool)

(assert (=> b!29796 m!31703))

(declare-fun m!31705 () Bool)

(assert (=> b!29795 m!31705))

(declare-fun m!31707 () Bool)

(assert (=> b!29793 m!31707))

(declare-fun m!31709 () Bool)

(assert (=> b!29794 m!31709))

(assert (=> b!29630 d!15513))

(declare-fun d!15515 () Bool)

(declare-fun res!13744 () Bool)

(declare-fun e!15200 () Bool)

(assert (=> d!15515 (=> res!13744 e!15200)))

(assert (=> d!15515 (= res!13744 (not (is-CC!66 (right!714 res!5544))))))

(assert (=> d!15515 (= (balanced!62 (right!714 res!5544)) e!15200)))

(declare-fun b!29797 () Bool)

(declare-fun e!15199 () Bool)

(assert (=> b!29797 (= e!15200 e!15199)))

(declare-fun res!13743 () Bool)

(assert (=> b!29797 (=> (not res!13743) (not e!15199))))

(assert (=> b!29797 (= res!13743 (>= (- (level!55 (left!711 (right!714 res!5544))) (level!55 (right!714 (right!714 res!5544)))) (- 1)))))

(declare-fun b!29800 () Bool)

(assert (=> b!29800 (= e!15199 (balanced!62 (right!714 (right!714 res!5544))))))

(declare-fun b!29799 () Bool)

(declare-fun res!13742 () Bool)

(assert (=> b!29799 (=> (not res!13742) (not e!15199))))

(assert (=> b!29799 (= res!13742 (balanced!62 (left!711 (right!714 res!5544))))))

(declare-fun b!29798 () Bool)

(declare-fun res!13741 () Bool)

(assert (=> b!29798 (=> (not res!13741) (not e!15199))))

(assert (=> b!29798 (= res!13741 (<= (- (level!55 (left!711 (right!714 res!5544))) (level!55 (right!714 (right!714 res!5544)))) 1))))

(assert (= (and d!15515 (not res!13744)) b!29797))

(assert (= (and b!29797 res!13743) b!29798))

(assert (= (and b!29798 res!13741) b!29799))

(assert (= (and b!29799 res!13742) b!29800))

(declare-fun m!31711 () Bool)

(assert (=> b!29797 m!31711))

(declare-fun m!31713 () Bool)

(assert (=> b!29797 m!31713))

(declare-fun m!31715 () Bool)

(assert (=> b!29800 m!31715))

(declare-fun m!31717 () Bool)

(assert (=> b!29799 m!31717))

(assert (=> b!29798 m!31711))

(assert (=> b!29798 m!31713))

(assert (=> b!29698 d!15515))

(assert (=> b!29576 d!15467))

(assert (=> b!29576 d!15469))

(declare-fun b!29802 () Bool)

(declare-fun e!15201 () Int)

(declare-fun lt!5425 () Int)

(declare-fun lt!5424 () Int)

(assert (=> b!29802 (= e!15201 (+ 1 (ite (>= lt!5425 lt!5424) lt!5425 lt!5424)))))

(assert (=> b!29802 (= lt!5424 (level!55 (right!714 lt!5388)))))

(assert (=> b!29802 (= lt!5425 (level!55 (left!711 lt!5388)))))

(declare-fun d!15517 () Bool)

(declare-fun lt!5423 () Int)

(assert (=> d!15517 (>= lt!5423 0)))

(assert (=> d!15517 (= lt!5423 e!15201)))

(declare-fun c!6501 () Bool)

(assert (=> d!15517 (= c!6501 (or (is-Empty!77 lt!5388) (is-Single!66 lt!5388)))))

(assert (=> d!15517 (= (level!55 lt!5388) lt!5423)))

(declare-fun b!29801 () Bool)

(assert (=> b!29801 (= e!15201 0)))

(assert (= (and d!15517 c!6501) b!29801))

(assert (= (and d!15517 (not c!6501)) b!29802))

(declare-fun m!31719 () Bool)

(assert (=> b!29802 m!31719))

(declare-fun m!31721 () Bool)

(assert (=> b!29802 m!31721))

(assert (=> b!29693 d!15517))

(declare-fun d!15519 () Bool)

(assert (=> d!15519 (= (isEmpty!323 (left!711 (left!711 ys!77))) (= (left!711 (left!711 ys!77)) Empty!77))))

(assert (=> b!29674 d!15519))

(declare-fun e!15209 () Bool)

(declare-fun b!29803 () Bool)

(assert (=> b!29803 (= e!15209 (not (isEmpty!323 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!29804 () Bool)

(declare-fun e!15205 () Bool)

(assert (=> b!29804 (= e!15205 tp_is_empty!179)))

(declare-fun lt!5431 () Bool)

(declare-fun e!15210 () Conc!67)

(declare-fun lt!5434 () Int)

(declare-fun lt!5438 () Int)

(declare-fun b!29805 () Bool)

(assert (=> b!29805 (= e!15210 (concatNonEmpty!18 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(declare-fun b!29806 () Bool)

(declare-fun res!13749 () Bool)

(declare-fun e!15206 () Bool)

(assert (=> b!29806 (=> (not res!13749) (not e!15206))))

(assert (=> b!29806 (= res!13749 (appendAssocInst!15 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!29807 () Bool)

(declare-fun res!13751 () Bool)

(assert (=> b!29807 (=> (not res!13751) (not e!15209))))

(assert (=> b!29807 (= res!13751 (concInv!61 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!29808 () Bool)

(declare-fun e!15202 () Int)

(declare-fun res!13746 () Int)

(assert (=> b!29808 (= e!15202 res!13746)))

(assert (=> b!29808 true))

(assert (=> b!29808 true))

(declare-fun d!15521 () Bool)

(declare-fun e!15208 () Bool)

(assert (=> d!15521 e!15208))

(declare-fun res!13758 () Bool)

(assert (=> d!15521 (=> (not res!13758) (not e!15208))))

(declare-fun lt!5437 () Conc!67)

(assert (=> d!15521 (= res!13758 (is-CC!66 lt!5437))))

(declare-fun e!15204 () Conc!67)

(assert (=> d!15521 (= lt!5437 e!15204)))

(declare-fun c!6504 () Bool)

(declare-fun lt!5441 () Int)

(assert (=> d!15521 (= c!6504 (and (>= lt!5441 (- 1)) (<= lt!5441 1)))))

(assert (=> d!15521 (= lt!5441 (- (level!55 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (level!55 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> d!15521 e!15209))

(declare-fun res!13757 () Bool)

(assert (=> d!15521 (=> (not res!13757) (not e!15209))))

(declare-fun e!15207 () Bool)

(assert (=> d!15521 (= res!13757 e!15207)))

(declare-fun res!13748 () Bool)

(assert (=> d!15521 (=> (not res!13748) (not e!15207))))

(assert (=> d!15521 (= res!13748 (concInv!61 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))

(assert (=> d!15521 (= (concatNonEmpty!18 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) lt!5437)))

(declare-fun b!29809 () Bool)

(declare-fun res!13754 () Bool)

(assert (=> b!29809 (=> (not res!13754) (not e!15206))))

(assert (=> b!29809 (= res!13754 (balanced!62 lt!5437))))

(declare-fun b!29810 () Bool)

(declare-fun tp!6290 () Bool)

(declare-fun tp!6291 () Bool)

(assert (=> b!29810 (= e!15205 (and tp!6290 tp!6291))))

(declare-fun b!29811 () Bool)

(assert (=> b!29811 (= e!15204 (CC!66 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!29812 () Bool)

(assert (=> b!29812 (= e!15207 (balanced!62 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))

(declare-fun b!29813 () Bool)

(declare-fun res!13752 () Bool)

(assert (=> b!29813 (=> (not res!13752) (not e!15209))))

(assert (=> b!29813 (= res!13752 (not (isEmpty!323 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun b!29814 () Bool)

(assert (=> b!29814 (= e!15208 e!15206)))

(declare-fun res!13755 () Bool)

(assert (=> b!29814 (=> (not res!13755) (not e!15206))))

(declare-fun lt!5436 () Int)

(declare-fun lt!5429 () Int)

(declare-fun lt!5428 () Int)

(assert (=> b!29814 (= res!13755 (<= lt!5436 (+ (ite (>= lt!5429 lt!5428) lt!5429 lt!5428) 1)))))

(assert (=> b!29814 (= lt!5428 (level!55 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> b!29814 (= lt!5429 (level!55 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))

(assert (=> b!29814 (= lt!5436 (level!55 lt!5437))))

(declare-fun b!29815 () Bool)

(declare-fun res!13747 () Bool)

(assert (=> b!29815 (=> (not res!13747) (not e!15209))))

(assert (=> b!29815 (= res!13747 (balanced!62 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun lt!5440 () Bool)

(declare-fun lt!5427 () Int)

(declare-fun lt!5426 () Int)

(declare-fun lt!5435 () Conc!67)

(declare-fun b!29816 () Bool)

(assert (=> b!29816 (= e!15204 (ite lt!5440 (let ((res!13643 lt!5435)) (ite (>= lt!5434 lt!5438) (CC!66 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) res!13643) (ite (= lt!5426 (- lt!5427 3)) (CC!66 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (CC!66 (left!711 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) res!13643)) (CC!66 (CC!66 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) res!13643)))) (let ((res!13646 lt!5435)) (ite (>= lt!5434 lt!5438) (CC!66 res!13646 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (ite (= lt!5426 (- lt!5427 3)) (CC!66 (CC!66 res!13646 (right!714 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (CC!66 res!13646 (CC!66 (right!714 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))))

(assert (=> b!29816 (= lt!5427 e!15202)))

(declare-fun lt!5430 () Bool)

(declare-fun c!6505 () Bool)

(assert (=> b!29816 (= c!6505 (or lt!5430 (and (not lt!5440) (not (>= lt!5434 lt!5438)))))))

(assert (=> b!29816 (= lt!5430 (and lt!5440 (not (>= lt!5434 lt!5438))))))

(declare-fun e!15203 () Int)

(assert (=> b!29816 (= lt!5426 e!15203)))

(declare-fun c!6503 () Bool)

(assert (=> b!29816 (= c!6503 (or (and lt!5440 (not (>= lt!5434 lt!5438))) (and (not lt!5440) (not (>= lt!5434 lt!5438)))))))

(assert (=> b!29816 (= lt!5435 e!15210)))

(declare-fun c!6502 () Bool)

(assert (=> b!29816 (= c!6502 (or lt!5431 (not lt!5440)))))

(assert (=> b!29816 (= lt!5431 lt!5440)))

(assert (=> b!29816 (= lt!5438 (level!55 (ite lt!5440 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(assert (=> b!29816 (= lt!5434 (level!55 (ite lt!5440 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(assert (=> b!29816 (= lt!5440 (< lt!5441 (- 1)))))

(declare-fun b!29817 () Bool)

(declare-fun res!13756 () Conc!67)

(assert (=> b!29817 (= e!15210 res!13756)))

(assert (=> b!29817 true))

(assert (=> b!29817 e!15205))

(declare-fun b!29818 () Bool)

(assert (=> b!29818 (= e!15206 (concatCorrectness!15 lt!5437 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!29819 () Bool)

(declare-fun res!13745 () Int)

(assert (=> b!29819 (= e!15203 res!13745)))

(assert (=> b!29819 true))

(declare-fun b!29820 () Bool)

(declare-fun res!13753 () Bool)

(assert (=> b!29820 (=> (not res!13753) (not e!15206))))

(declare-fun lt!5433 () Int)

(declare-fun lt!5439 () Int)

(declare-fun lt!5432 () Int)

(assert (=> b!29820 (= res!13753 (>= lt!5433 (ite (>= lt!5432 lt!5439) lt!5432 lt!5439)))))

(assert (=> b!29820 (= lt!5439 (level!55 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> b!29820 (= lt!5432 (level!55 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))

(assert (=> b!29820 (= lt!5433 (level!55 lt!5437))))

(declare-fun b!29821 () Bool)

(assert (=> b!29821 (= e!15202 (level!55 (ite lt!5430 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!29822 () Bool)

(assert (=> b!29822 (= e!15203 (level!55 lt!5435))))

(declare-fun b!29823 () Bool)

(declare-fun res!13750 () Bool)

(assert (=> b!29823 (=> (not res!13750) (not e!15206))))

(assert (=> b!29823 (= res!13750 (concInv!61 lt!5437))))

(assert (= (and d!15521 res!13748) b!29812))

(assert (= (and d!15521 res!13757) b!29807))

(assert (= (and b!29807 res!13751) b!29815))

(assert (= (and b!29815 res!13747) b!29813))

(assert (= (and b!29813 res!13752) b!29803))

(assert (= (and b!29817 (is-CC!66 res!13756)) b!29810))

(assert (= (and b!29817 (is-Single!66 res!13756)) b!29804))

(assert (= (and b!29816 c!6502) b!29805))

(assert (= (and b!29816 (not c!6502)) b!29817))

(assert (= (and b!29816 c!6503) b!29822))

(assert (= (and b!29816 (not c!6503)) b!29819))

(assert (= (and b!29816 c!6505) b!29821))

(assert (= (and b!29816 (not c!6505)) b!29808))

(assert (= (and d!15521 c!6504) b!29811))

(assert (= (and d!15521 (not c!6504)) b!29816))

(assert (= (and d!15521 res!13758) b!29814))

(assert (= (and b!29814 res!13755) b!29820))

(assert (= (and b!29820 res!13753) b!29823))

(assert (= (and b!29823 res!13750) b!29809))

(assert (= (and b!29809 res!13754) b!29806))

(assert (= (and b!29806 res!13749) b!29818))

(declare-fun m!31723 () Bool)

(assert (=> b!29814 m!31723))

(declare-fun m!31725 () Bool)

(assert (=> b!29814 m!31725))

(declare-fun m!31727 () Bool)

(assert (=> b!29814 m!31727))

(declare-fun m!31729 () Bool)

(assert (=> b!29813 m!31729))

(declare-fun m!31731 () Bool)

(assert (=> b!29805 m!31731))

(declare-fun m!31733 () Bool)

(assert (=> b!29821 m!31733))

(assert (=> b!29820 m!31723))

(assert (=> b!29820 m!31725))

(assert (=> b!29820 m!31727))

(declare-fun m!31735 () Bool)

(assert (=> b!29803 m!31735))

(declare-fun m!31737 () Bool)

(assert (=> b!29818 m!31737))

(declare-fun m!31739 () Bool)

(assert (=> b!29809 m!31739))

(declare-fun m!31741 () Bool)

(assert (=> b!29815 m!31741))

(declare-fun m!31743 () Bool)

(assert (=> b!29812 m!31743))

(declare-fun m!31745 () Bool)

(assert (=> b!29823 m!31745))

(assert (=> d!15521 m!31723))

(assert (=> d!15521 m!31725))

(declare-fun m!31747 () Bool)

(assert (=> d!15521 m!31747))

(declare-fun m!31749 () Bool)

(assert (=> b!29807 m!31749))

(declare-fun m!31751 () Bool)

(assert (=> b!29806 m!31751))

(declare-fun m!31753 () Bool)

(assert (=> b!29816 m!31753))

(declare-fun m!31755 () Bool)

(assert (=> b!29816 m!31755))

(declare-fun m!31757 () Bool)

(assert (=> b!29822 m!31757))

(assert (=> b!29676 d!15521))

(declare-fun d!15523 () Bool)

(declare-fun res!13762 () Bool)

(declare-fun e!15212 () Bool)

(assert (=> d!15523 (=> res!13762 e!15212)))

(assert (=> d!15523 (= res!13762 (not (is-CC!66 (left!711 xs!533))))))

(assert (=> d!15523 (= (balanced!62 (left!711 xs!533)) e!15212)))

(declare-fun b!29824 () Bool)

(declare-fun e!15211 () Bool)

(assert (=> b!29824 (= e!15212 e!15211)))

(declare-fun res!13761 () Bool)

(assert (=> b!29824 (=> (not res!13761) (not e!15211))))

(assert (=> b!29824 (= res!13761 (>= (- (level!55 (left!711 (left!711 xs!533))) (level!55 (right!714 (left!711 xs!533)))) (- 1)))))

(declare-fun b!29827 () Bool)

(assert (=> b!29827 (= e!15211 (balanced!62 (right!714 (left!711 xs!533))))))

(declare-fun b!29826 () Bool)

(declare-fun res!13760 () Bool)

(assert (=> b!29826 (=> (not res!13760) (not e!15211))))

(assert (=> b!29826 (= res!13760 (balanced!62 (left!711 (left!711 xs!533))))))

(declare-fun b!29825 () Bool)

(declare-fun res!13759 () Bool)

(assert (=> b!29825 (=> (not res!13759) (not e!15211))))

(assert (=> b!29825 (= res!13759 (<= (- (level!55 (left!711 (left!711 xs!533))) (level!55 (right!714 (left!711 xs!533)))) 1))))

(assert (= (and d!15523 (not res!13762)) b!29824))

(assert (= (and b!29824 res!13761) b!29825))

(assert (= (and b!29825 res!13759) b!29826))

(assert (= (and b!29826 res!13760) b!29827))

(declare-fun m!31759 () Bool)

(assert (=> b!29824 m!31759))

(declare-fun m!31761 () Bool)

(assert (=> b!29824 m!31761))

(declare-fun m!31763 () Bool)

(assert (=> b!29827 m!31763))

(declare-fun m!31765 () Bool)

(assert (=> b!29826 m!31765))

(assert (=> b!29825 m!31759))

(assert (=> b!29825 m!31761))

(assert (=> b!29595 d!15523))

(declare-fun b!29829 () Bool)

(declare-fun e!15213 () Int)

(declare-fun lt!5444 () Int)

(declare-fun lt!5443 () Int)

(assert (=> b!29829 (= e!15213 (+ 1 (ite (>= lt!5444 lt!5443) lt!5444 lt!5443)))))

(assert (=> b!29829 (= lt!5443 (level!55 (right!714 (left!711 (left!711 ys!77)))))))

(assert (=> b!29829 (= lt!5444 (level!55 (left!711 (left!711 (left!711 ys!77)))))))

(declare-fun d!15525 () Bool)

(declare-fun lt!5442 () Int)

(assert (=> d!15525 (>= lt!5442 0)))

(assert (=> d!15525 (= lt!5442 e!15213)))

(declare-fun c!6506 () Bool)

(assert (=> d!15525 (= c!6506 (or (is-Empty!77 (left!711 (left!711 ys!77))) (is-Single!66 (left!711 (left!711 ys!77)))))))

(assert (=> d!15525 (= (level!55 (left!711 (left!711 ys!77))) lt!5442)))

(declare-fun b!29828 () Bool)

(assert (=> b!29828 (= e!15213 0)))

(assert (= (and d!15525 c!6506) b!29828))

(assert (= (and d!15525 (not c!6506)) b!29829))

(assert (=> b!29829 m!31665))

(assert (=> b!29829 m!31663))

(assert (=> b!29685 d!15525))

(assert (=> b!29685 d!15457))

(declare-fun b!29831 () Bool)

(declare-fun e!15214 () Int)

(declare-fun lt!5447 () Int)

(declare-fun lt!5446 () Int)

(assert (=> b!29831 (= e!15214 (+ 1 (ite (>= lt!5447 lt!5446) lt!5447 lt!5446)))))

(assert (=> b!29831 (= lt!5446 (level!55 (right!714 lt!5390)))))

(assert (=> b!29831 (= lt!5447 (level!55 (left!711 lt!5390)))))

(declare-fun d!15527 () Bool)

(declare-fun lt!5445 () Int)

(assert (=> d!15527 (>= lt!5445 0)))

(assert (=> d!15527 (= lt!5445 e!15214)))

(declare-fun c!6507 () Bool)

(assert (=> d!15527 (= c!6507 (or (is-Empty!77 lt!5390) (is-Single!66 lt!5390)))))

(assert (=> d!15527 (= (level!55 lt!5390) lt!5445)))

(declare-fun b!29830 () Bool)

(assert (=> b!29830 (= e!15214 0)))

(assert (= (and d!15527 c!6507) b!29830))

(assert (= (and d!15527 (not c!6507)) b!29831))

(declare-fun m!31767 () Bool)

(assert (=> b!29831 m!31767))

(declare-fun m!31769 () Bool)

(assert (=> b!29831 m!31769))

(assert (=> b!29685 d!15527))

(assert (=> b!29622 d!15491))

(declare-fun b!29832 () Bool)

(declare-fun e!15215 () List!363)

(assert (=> b!29832 (= e!15215 Nil!358)))

(declare-fun b!29835 () Bool)

(declare-fun e!15216 () List!363)

(assert (=> b!29835 (= e!15216 (++!43 (toList!118 (left!711 (right!714 (right!714 xs!533)))) (toList!118 (right!714 (right!714 (right!714 xs!533))))))))

(declare-fun b!29834 () Bool)

(assert (=> b!29834 (= e!15216 (Cons!357 (x!8953 (right!714 (right!714 xs!533))) Nil!358))))

(declare-fun b!29833 () Bool)

(assert (=> b!29833 (= e!15215 e!15216)))

(declare-fun c!6509 () Bool)

(assert (=> b!29833 (= c!6509 (is-Single!66 (right!714 (right!714 xs!533))))))

(declare-fun d!15529 () Bool)

(declare-fun lt!5448 () List!363)

(assert (=> d!15529 (= (size!275 lt!5448) (size!276 (right!714 (right!714 xs!533))))))

(assert (=> d!15529 (= lt!5448 e!15215)))

(declare-fun c!6508 () Bool)

(assert (=> d!15529 (= c!6508 (is-Empty!77 (right!714 (right!714 xs!533))))))

(assert (=> d!15529 (= (toList!118 (right!714 (right!714 xs!533))) lt!5448)))

(assert (= (and b!29833 c!6509) b!29834))

(assert (= (and b!29833 (not c!6509)) b!29835))

(assert (= (and d!15529 c!6508) b!29832))

(assert (= (and d!15529 (not c!6508)) b!29833))

(declare-fun m!31771 () Bool)

(assert (=> b!29835 m!31771))

(declare-fun m!31773 () Bool)

(assert (=> b!29835 m!31773))

(assert (=> b!29835 m!31771))

(assert (=> b!29835 m!31773))

(declare-fun m!31775 () Bool)

(assert (=> b!29835 m!31775))

(declare-fun m!31777 () Bool)

(assert (=> d!15529 m!31777))

(declare-fun m!31779 () Bool)

(assert (=> d!15529 m!31779))

(assert (=> b!29622 d!15529))

(declare-fun b!29836 () Bool)

(declare-fun e!15217 () List!363)

(assert (=> b!29836 (= e!15217 Nil!358)))

(declare-fun b!29839 () Bool)

(declare-fun e!15218 () List!363)

(assert (=> b!29839 (= e!15218 (++!43 (toList!118 (left!711 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (left!711 (right!714 xs!533))))))))

(declare-fun b!29838 () Bool)

(assert (=> b!29838 (= e!15218 (Cons!357 (x!8953 (left!711 (right!714 xs!533))) Nil!358))))

(declare-fun b!29837 () Bool)

(assert (=> b!29837 (= e!15217 e!15218)))

(declare-fun c!6511 () Bool)

(assert (=> b!29837 (= c!6511 (is-Single!66 (left!711 (right!714 xs!533))))))

(declare-fun d!15531 () Bool)

(declare-fun lt!5449 () List!363)

(assert (=> d!15531 (= (size!275 lt!5449) (size!276 (left!711 (right!714 xs!533))))))

(assert (=> d!15531 (= lt!5449 e!15217)))

(declare-fun c!6510 () Bool)

(assert (=> d!15531 (= c!6510 (is-Empty!77 (left!711 (right!714 xs!533))))))

(assert (=> d!15531 (= (toList!118 (left!711 (right!714 xs!533))) lt!5449)))

(assert (= (and b!29837 c!6511) b!29838))

(assert (= (and b!29837 (not c!6511)) b!29839))

(assert (= (and d!15531 c!6510) b!29836))

(assert (= (and d!15531 (not c!6510)) b!29837))

(declare-fun m!31781 () Bool)

(assert (=> b!29839 m!31781))

(declare-fun m!31783 () Bool)

(assert (=> b!29839 m!31783))

(assert (=> b!29839 m!31781))

(assert (=> b!29839 m!31783))

(declare-fun m!31785 () Bool)

(assert (=> b!29839 m!31785))

(declare-fun m!31787 () Bool)

(assert (=> d!15531 m!31787))

(declare-fun m!31789 () Bool)

(assert (=> d!15531 m!31789))

(assert (=> b!29622 d!15531))

(declare-fun b!29841 () Bool)

(declare-fun e!15219 () List!363)

(assert (=> b!29841 (= e!15219 (Cons!357 (h!274 (toList!118 (right!714 (right!714 xs!533)))) (++!43 (t!4377 (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77))))))

(declare-fun b!29840 () Bool)

(assert (=> b!29840 (= e!15219 (toList!118 ys!77))))

(declare-fun b!29842 () Bool)

(declare-fun res!13764 () Bool)

(declare-fun e!15220 () Bool)

(assert (=> b!29842 (=> (not res!13764) (not e!15220))))

(declare-fun lt!5450 () List!363)

(assert (=> b!29842 (= res!13764 (= (size!275 lt!5450) (+ (size!275 (toList!118 (right!714 (right!714 xs!533)))) (size!275 (toList!118 ys!77)))))))

(declare-fun b!29843 () Bool)

(assert (=> b!29843 (= e!15220 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5450 (toList!118 (right!714 (right!714 xs!533))))))))

(declare-fun d!15533 () Bool)

(assert (=> d!15533 e!15220))

(declare-fun res!13763 () Bool)

(assert (=> d!15533 (=> (not res!13763) (not e!15220))))

(assert (=> d!15533 (= res!13763 (= (content!73 lt!5450) (union (content!73 (toList!118 (right!714 (right!714 xs!533)))) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15533 (= lt!5450 e!15219)))

(declare-fun c!6512 () Bool)

(assert (=> d!15533 (= c!6512 (is-Nil!358 (toList!118 (right!714 (right!714 xs!533)))))))

(assert (=> d!15533 (= (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)) lt!5450)))

(assert (= (and d!15533 c!6512) b!29840))

(assert (= (and d!15533 (not c!6512)) b!29841))

(assert (= (and d!15533 res!13763) b!29842))

(assert (= (and b!29842 res!13764) b!29843))

(assert (=> b!29841 m!31523))

(declare-fun m!31791 () Bool)

(assert (=> b!29841 m!31791))

(declare-fun m!31793 () Bool)

(assert (=> b!29842 m!31793))

(assert (=> b!29842 m!31529))

(declare-fun m!31795 () Bool)

(assert (=> b!29842 m!31795))

(assert (=> b!29842 m!31523))

(assert (=> b!29842 m!31691))

(declare-fun m!31797 () Bool)

(assert (=> d!15533 m!31797))

(assert (=> d!15533 m!31529))

(declare-fun m!31799 () Bool)

(assert (=> d!15533 m!31799))

(assert (=> d!15533 m!31523))

(assert (=> d!15533 m!31697))

(assert (=> b!29622 d!15533))

(declare-fun b!29844 () Bool)

(declare-fun e!15221 () Bool)

(assert (=> b!29844 (= e!15221 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(declare-fun lt!5451 () Bool)

(assert (=> b!29844 (= lt!5451 (appendAssoc!11 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))

(declare-fun d!15535 () Bool)

(assert (=> d!15535 e!15221))

(declare-fun c!6513 () Bool)

(assert (=> d!15535 (= c!6513 (is-Cons!357 (toList!118 (left!711 xs!533))))))

(assert (=> d!15535 (= (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) true)))

(declare-fun b!29845 () Bool)

(assert (=> b!29845 (= e!15221 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(assert (= (and d!15535 c!6513) b!29844))

(assert (= (and d!15535 (not c!6513)) b!29845))

(assert (=> b!29844 m!31519))

(declare-fun m!31801 () Bool)

(assert (=> b!29844 m!31801))

(declare-fun m!31803 () Bool)

(assert (=> b!29844 m!31803))

(assert (=> b!29844 m!31519))

(assert (=> b!29844 m!31533))

(declare-fun m!31805 () Bool)

(assert (=> b!29844 m!31805))

(assert (=> b!29844 m!31533))

(assert (=> b!29844 m!31531))

(assert (=> b!29844 m!31801))

(assert (=> b!29844 m!31805))

(assert (=> b!29844 m!31531))

(declare-fun m!31807 () Bool)

(assert (=> b!29844 m!31807))

(assert (=> b!29844 m!31533))

(assert (=> b!29844 m!31531))

(declare-fun m!31809 () Bool)

(assert (=> b!29844 m!31809))

(assert (=> b!29845 m!31519))

(assert (=> b!29845 m!31533))

(assert (=> b!29845 m!31805))

(assert (=> b!29845 m!31805))

(assert (=> b!29845 m!31531))

(assert (=> b!29845 m!31807))

(assert (=> b!29845 m!31533))

(assert (=> b!29845 m!31531))

(assert (=> b!29845 m!31801))

(assert (=> b!29845 m!31519))

(assert (=> b!29845 m!31801))

(assert (=> b!29845 m!31803))

(assert (=> b!29622 d!15535))

(assert (=> b!29622 d!15487))

(declare-fun b!29849 () Bool)

(declare-fun e!15223 () Bool)

(assert (=> b!29849 (= e!15223 (concInv!61 (right!714 (left!711 ys!77))))))

(declare-fun b!29848 () Bool)

(declare-fun res!13765 () Bool)

(assert (=> b!29848 (=> (not res!13765) (not e!15223))))

(assert (=> b!29848 (= res!13765 (concInv!61 (left!711 (left!711 ys!77))))))

(declare-fun b!29846 () Bool)

(declare-fun e!15222 () Bool)

(assert (=> b!29846 (= e!15222 e!15223)))

(declare-fun res!13768 () Bool)

(assert (=> b!29846 (=> (not res!13768) (not e!15223))))

(assert (=> b!29846 (= res!13768 (not (isEmpty!323 (left!711 (left!711 ys!77)))))))

(declare-fun b!29847 () Bool)

(declare-fun res!13767 () Bool)

(assert (=> b!29847 (=> (not res!13767) (not e!15223))))

(assert (=> b!29847 (= res!13767 (not (isEmpty!323 (right!714 (left!711 ys!77)))))))

(declare-fun d!15537 () Bool)

(declare-fun res!13766 () Bool)

(assert (=> d!15537 (=> res!13766 e!15222)))

(assert (=> d!15537 (= res!13766 (not (is-CC!66 (left!711 ys!77))))))

(assert (=> d!15537 (= (concInv!61 (left!711 ys!77)) e!15222)))

(assert (= (and d!15537 (not res!13766)) b!29846))

(assert (= (and b!29846 res!13768) b!29847))

(assert (= (and b!29847 res!13767) b!29848))

(assert (= (and b!29848 res!13765) b!29849))

(declare-fun m!31811 () Bool)

(assert (=> b!29849 m!31811))

(assert (=> b!29848 m!31575))

(assert (=> b!29846 m!31565))

(declare-fun m!31813 () Bool)

(assert (=> b!29847 m!31813))

(assert (=> b!29567 d!15537))

(declare-fun d!15539 () Bool)

(declare-fun res!13772 () Bool)

(declare-fun e!15225 () Bool)

(assert (=> d!15539 (=> res!13772 e!15225)))

(assert (=> d!15539 (= res!13772 (not (is-CC!66 (right!714 xs!533))))))

(assert (=> d!15539 (= (balanced!62 (right!714 xs!533)) e!15225)))

(declare-fun b!29850 () Bool)

(declare-fun e!15224 () Bool)

(assert (=> b!29850 (= e!15225 e!15224)))

(declare-fun res!13771 () Bool)

(assert (=> b!29850 (=> (not res!13771) (not e!15224))))

(assert (=> b!29850 (= res!13771 (>= (- (level!55 (left!711 (right!714 xs!533))) (level!55 (right!714 (right!714 xs!533)))) (- 1)))))

(declare-fun b!29853 () Bool)

(assert (=> b!29853 (= e!15224 (balanced!62 (right!714 (right!714 xs!533))))))

(declare-fun b!29852 () Bool)

(declare-fun res!13770 () Bool)

(assert (=> b!29852 (=> (not res!13770) (not e!15224))))

(assert (=> b!29852 (= res!13770 (balanced!62 (left!711 (right!714 xs!533))))))

(declare-fun b!29851 () Bool)

(declare-fun res!13769 () Bool)

(assert (=> b!29851 (=> (not res!13769) (not e!15224))))

(assert (=> b!29851 (= res!13769 (<= (- (level!55 (left!711 (right!714 xs!533))) (level!55 (right!714 (right!714 xs!533)))) 1))))

(assert (= (and d!15539 (not res!13772)) b!29850))

(assert (= (and b!29850 res!13771) b!29851))

(assert (= (and b!29851 res!13769) b!29852))

(assert (= (and b!29852 res!13770) b!29853))

(declare-fun m!31815 () Bool)

(assert (=> b!29850 m!31815))

(declare-fun m!31817 () Bool)

(assert (=> b!29850 m!31817))

(declare-fun m!31819 () Bool)

(assert (=> b!29853 m!31819))

(declare-fun m!31821 () Bool)

(assert (=> b!29852 m!31821))

(assert (=> b!29851 m!31815))

(assert (=> b!29851 m!31817))

(assert (=> b!29596 d!15539))

(declare-fun d!15541 () Bool)

(assert (=> d!15541 (= (isEmpty!323 (left!711 xs!533)) (= (left!711 xs!533) Empty!77))))

(assert (=> b!29628 d!15541))

(assert (=> b!29691 d!15525))

(assert (=> b!29691 d!15457))

(assert (=> b!29691 d!15527))

(declare-fun d!15543 () Bool)

(declare-fun res!13776 () Bool)

(declare-fun e!15227 () Bool)

(assert (=> d!15543 (=> res!13776 e!15227)))

(assert (=> d!15543 (= res!13776 (not (is-CC!66 (left!711 res!5544))))))

(assert (=> d!15543 (= (balanced!62 (left!711 res!5544)) e!15227)))

(declare-fun b!29854 () Bool)

(declare-fun e!15226 () Bool)

(assert (=> b!29854 (= e!15227 e!15226)))

(declare-fun res!13775 () Bool)

(assert (=> b!29854 (=> (not res!13775) (not e!15226))))

(assert (=> b!29854 (= res!13775 (>= (- (level!55 (left!711 (left!711 res!5544))) (level!55 (right!714 (left!711 res!5544)))) (- 1)))))

(declare-fun b!29857 () Bool)

(assert (=> b!29857 (= e!15226 (balanced!62 (right!714 (left!711 res!5544))))))

(declare-fun b!29856 () Bool)

(declare-fun res!13774 () Bool)

(assert (=> b!29856 (=> (not res!13774) (not e!15226))))

(assert (=> b!29856 (= res!13774 (balanced!62 (left!711 (left!711 res!5544))))))

(declare-fun b!29855 () Bool)

(declare-fun res!13773 () Bool)

(assert (=> b!29855 (=> (not res!13773) (not e!15226))))

(assert (=> b!29855 (= res!13773 (<= (- (level!55 (left!711 (left!711 res!5544))) (level!55 (right!714 (left!711 res!5544)))) 1))))

(assert (= (and d!15543 (not res!13776)) b!29854))

(assert (= (and b!29854 res!13775) b!29855))

(assert (= (and b!29855 res!13773) b!29856))

(assert (= (and b!29856 res!13774) b!29857))

(declare-fun m!31823 () Bool)

(assert (=> b!29854 m!31823))

(declare-fun m!31825 () Bool)

(assert (=> b!29854 m!31825))

(declare-fun m!31827 () Bool)

(assert (=> b!29857 m!31827))

(declare-fun m!31829 () Bool)

(assert (=> b!29856 m!31829))

(assert (=> b!29855 m!31823))

(assert (=> b!29855 m!31825))

(assert (=> b!29697 d!15543))

(declare-fun b!29859 () Bool)

(declare-fun e!15228 () Int)

(declare-fun lt!5454 () Int)

(declare-fun lt!5453 () Int)

(assert (=> b!29859 (= e!15228 (+ 1 (ite (>= lt!5454 lt!5453) lt!5454 lt!5453)))))

(assert (=> b!29859 (= lt!5453 (level!55 (right!714 (left!711 xs!533))))))

(assert (=> b!29859 (= lt!5454 (level!55 (left!711 (left!711 xs!533))))))

(declare-fun d!15545 () Bool)

(declare-fun lt!5452 () Int)

(assert (=> d!15545 (>= lt!5452 0)))

(assert (=> d!15545 (= lt!5452 e!15228)))

(declare-fun c!6514 () Bool)

(assert (=> d!15545 (= c!6514 (or (is-Empty!77 (left!711 xs!533)) (is-Single!66 (left!711 xs!533))))))

(assert (=> d!15545 (= (level!55 (left!711 xs!533)) lt!5452)))

(declare-fun b!29858 () Bool)

(assert (=> b!29858 (= e!15228 0)))

(assert (= (and d!15545 c!6514) b!29858))

(assert (= (and d!15545 (not c!6514)) b!29859))

(assert (=> b!29859 m!31761))

(assert (=> b!29859 m!31759))

(assert (=> b!29593 d!15545))

(declare-fun b!29861 () Bool)

(declare-fun e!15229 () Int)

(declare-fun lt!5457 () Int)

(declare-fun lt!5456 () Int)

(assert (=> b!29861 (= e!15229 (+ 1 (ite (>= lt!5457 lt!5456) lt!5457 lt!5456)))))

(assert (=> b!29861 (= lt!5456 (level!55 (right!714 (right!714 xs!533))))))

(assert (=> b!29861 (= lt!5457 (level!55 (left!711 (right!714 xs!533))))))

(declare-fun d!15547 () Bool)

(declare-fun lt!5455 () Int)

(assert (=> d!15547 (>= lt!5455 0)))

(assert (=> d!15547 (= lt!5455 e!15229)))

(declare-fun c!6515 () Bool)

(assert (=> d!15547 (= c!6515 (or (is-Empty!77 (right!714 xs!533)) (is-Single!66 (right!714 xs!533))))))

(assert (=> d!15547 (= (level!55 (right!714 xs!533)) lt!5455)))

(declare-fun b!29860 () Bool)

(assert (=> b!29860 (= e!15229 0)))

(assert (= (and d!15547 c!6515) b!29860))

(assert (= (and d!15547 (not c!6515)) b!29861))

(assert (=> b!29861 m!31817))

(assert (=> b!29861 m!31815))

(assert (=> b!29593 d!15547))

(declare-fun d!15549 () Bool)

(assert (=> d!15549 (= (isEmpty!323 (right!714 xs!533)) (= (right!714 xs!533) Empty!77))))

(assert (=> b!29629 d!15549))

(declare-fun b!29865 () Bool)

(declare-fun e!15231 () Bool)

(assert (=> b!29865 (= e!15231 (concInv!61 (right!714 (right!714 ys!77))))))

(declare-fun b!29864 () Bool)

(declare-fun res!13777 () Bool)

(assert (=> b!29864 (=> (not res!13777) (not e!15231))))

(assert (=> b!29864 (= res!13777 (concInv!61 (left!711 (right!714 ys!77))))))

(declare-fun b!29862 () Bool)

(declare-fun e!15230 () Bool)

(assert (=> b!29862 (= e!15230 e!15231)))

(declare-fun res!13780 () Bool)

(assert (=> b!29862 (=> (not res!13780) (not e!15231))))

(assert (=> b!29862 (= res!13780 (not (isEmpty!323 (left!711 (right!714 ys!77)))))))

(declare-fun b!29863 () Bool)

(declare-fun res!13779 () Bool)

(assert (=> b!29863 (=> (not res!13779) (not e!15231))))

(assert (=> b!29863 (= res!13779 (not (isEmpty!323 (right!714 (right!714 ys!77)))))))

(declare-fun d!15551 () Bool)

(declare-fun res!13778 () Bool)

(assert (=> d!15551 (=> res!13778 e!15230)))

(assert (=> d!15551 (= res!13778 (not (is-CC!66 (right!714 ys!77))))))

(assert (=> d!15551 (= (concInv!61 (right!714 ys!77)) e!15230)))

(assert (= (and d!15551 (not res!13778)) b!29862))

(assert (= (and b!29862 res!13780) b!29863))

(assert (= (and b!29863 res!13779) b!29864))

(assert (= (and b!29864 res!13777) b!29865))

(declare-fun m!31831 () Bool)

(assert (=> b!29865 m!31831))

(declare-fun m!31833 () Bool)

(assert (=> b!29864 m!31833))

(declare-fun m!31835 () Bool)

(assert (=> b!29862 m!31835))

(declare-fun m!31837 () Bool)

(assert (=> b!29863 m!31837))

(assert (=> b!29568 d!15551))

(assert (=> d!15473 d!15525))

(assert (=> d!15473 d!15457))

(assert (=> d!15473 d!15471))

(assert (=> b!29683 d!15463))

(declare-fun b!29869 () Bool)

(declare-fun e!15233 () Bool)

(assert (=> b!29869 (= e!15233 (concInv!61 (right!714 lt!5390)))))

(declare-fun b!29868 () Bool)

(declare-fun res!13781 () Bool)

(assert (=> b!29868 (=> (not res!13781) (not e!15233))))

(assert (=> b!29868 (= res!13781 (concInv!61 (left!711 lt!5390)))))

(declare-fun b!29866 () Bool)

(declare-fun e!15232 () Bool)

(assert (=> b!29866 (= e!15232 e!15233)))

(declare-fun res!13784 () Bool)

(assert (=> b!29866 (=> (not res!13784) (not e!15233))))

(assert (=> b!29866 (= res!13784 (not (isEmpty!323 (left!711 lt!5390))))))

(declare-fun b!29867 () Bool)

(declare-fun res!13783 () Bool)

(assert (=> b!29867 (=> (not res!13783) (not e!15233))))

(assert (=> b!29867 (= res!13783 (not (isEmpty!323 (right!714 lt!5390))))))

(declare-fun d!15553 () Bool)

(declare-fun res!13782 () Bool)

(assert (=> d!15553 (=> res!13782 e!15232)))

(assert (=> d!15553 (= res!13782 (not (is-CC!66 lt!5390)))))

(assert (=> d!15553 (= (concInv!61 lt!5390) e!15232)))

(assert (= (and d!15553 (not res!13782)) b!29866))

(assert (= (and b!29866 res!13784) b!29867))

(assert (= (and b!29867 res!13783) b!29868))

(assert (= (and b!29868 res!13781) b!29869))

(declare-fun m!31839 () Bool)

(assert (=> b!29869 m!31839))

(declare-fun m!31841 () Bool)

(assert (=> b!29868 m!31841))

(declare-fun m!31843 () Bool)

(assert (=> b!29866 m!31843))

(declare-fun m!31845 () Bool)

(assert (=> b!29867 m!31845))

(assert (=> b!29694 d!15553))

(assert (=> b!29684 d!15461))

(assert (=> b!29590 d!15547))

(assert (=> b!29590 d!15545))

(declare-fun b!29870 () Bool)

(declare-fun e!15235 () Bool)

(declare-fun e!15237 () Bool)

(assert (=> b!29870 (= e!15235 e!15237)))

(declare-fun res!13786 () Bool)

(assert (=> b!29870 (=> (not res!13786) (not e!15237))))

(assert (=> b!29870 (= res!13786 (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!29871 () Bool)

(declare-fun e!15236 () Bool)

(declare-fun e!15238 () Bool)

(assert (=> b!29871 (= e!15236 e!15238)))

(declare-fun res!13793 () Bool)

(assert (=> b!29871 (=> (not res!13793) (not e!15238))))

(assert (=> b!29871 (= res!13793 (appendAssoc!11 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))))))

(declare-fun b!29872 () Bool)

(declare-fun e!15239 () Bool)

(assert (=> b!29872 (= e!15237 e!15239)))

(declare-fun res!13790 () Bool)

(assert (=> b!29872 (=> res!13790 e!15239)))

(assert (=> b!29872 (= res!13790 (not (is-CC!66 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!29873 () Bool)

(declare-fun e!15242 () Bool)

(assert (=> b!29873 (= e!15242 e!15235)))

(declare-fun res!13789 () Bool)

(assert (=> b!29873 (=> res!13789 e!15235)))

(assert (=> b!29873 (= res!13789 (not (is-CC!66 (left!711 (left!711 ys!77)))))))

(declare-fun b!29874 () Bool)

(declare-fun e!15234 () Bool)

(declare-fun e!15240 () Bool)

(assert (=> b!29874 (= e!15234 e!15240)))

(declare-fun res!13785 () Bool)

(assert (=> b!29874 (=> (not res!13785) (not e!15240))))

(assert (=> b!29874 (= res!13785 (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)) (toList!118 (left!711 (left!711 ys!77)))))))

(declare-fun b!29875 () Bool)

(declare-fun e!15241 () Bool)

(assert (=> b!29875 (= e!15239 e!15241)))

(declare-fun res!13788 () Bool)

(assert (=> b!29875 (=> (not res!13788) (not e!15241))))

(assert (=> b!29875 (= res!13788 (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun b!29876 () Bool)

(assert (=> b!29876 (= e!15240 e!15236)))

(declare-fun res!13792 () Bool)

(assert (=> b!29876 (=> res!13792 e!15236)))

(assert (=> b!29876 (= res!13792 (not (is-CC!66 (right!714 xs!533))))))

(declare-fun b!29877 () Bool)

(assert (=> b!29877 (= e!15238 (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun d!15555 () Bool)

(assert (=> d!15555 e!15242))

(declare-fun res!13791 () Bool)

(assert (=> d!15555 (=> (not res!13791) (not e!15242))))

(assert (=> d!15555 (= res!13791 e!15234)))

(declare-fun res!13787 () Bool)

(assert (=> d!15555 (=> res!13787 e!15234)))

(assert (=> d!15555 (= res!13787 (not (is-CC!66 xs!533)))))

(assert (=> d!15555 (= (appendAssocInst!15 xs!533 (left!711 (left!711 ys!77))) true)))

(declare-fun b!29878 () Bool)

(assert (=> b!29878 (= e!15241 (appendAssoc!11 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))

(assert (= (and d!15555 (not res!13787)) b!29874))

(assert (= (and b!29874 res!13785) b!29876))

(assert (= (and b!29876 (not res!13792)) b!29871))

(assert (= (and b!29871 res!13793) b!29877))

(assert (= (and d!15555 res!13791) b!29873))

(assert (= (and b!29873 (not res!13789)) b!29870))

(assert (= (and b!29870 res!13786) b!29872))

(assert (= (and b!29872 (not res!13790)) b!29875))

(assert (= (and b!29875 res!13788) b!29878))

(declare-fun m!31847 () Bool)

(assert (=> b!29878 m!31847))

(declare-fun m!31849 () Bool)

(assert (=> b!29878 m!31849))

(assert (=> b!29878 m!31847))

(declare-fun m!31851 () Bool)

(assert (=> b!29878 m!31851))

(declare-fun m!31853 () Bool)

(assert (=> b!29878 m!31853))

(declare-fun m!31855 () Bool)

(assert (=> b!29878 m!31855))

(assert (=> b!29878 m!31851))

(assert (=> b!29878 m!31517))

(assert (=> b!29878 m!31855))

(assert (=> b!29878 m!31849))

(assert (=> b!29878 m!31517))

(assert (=> b!29874 m!31519))

(assert (=> b!29874 m!31521))

(assert (=> b!29874 m!31515))

(assert (=> b!29874 m!31519))

(assert (=> b!29874 m!31521))

(assert (=> b!29874 m!31515))

(declare-fun m!31857 () Bool)

(assert (=> b!29874 m!31857))

(assert (=> b!29875 m!31517))

(assert (=> b!29875 m!31855))

(assert (=> b!29875 m!31847))

(assert (=> b!29875 m!31517))

(assert (=> b!29875 m!31855))

(assert (=> b!29875 m!31847))

(declare-fun m!31859 () Bool)

(assert (=> b!29875 m!31859))

(assert (=> b!29877 m!31529))

(assert (=> b!29877 m!31515))

(declare-fun m!31861 () Bool)

(assert (=> b!29877 m!31861))

(assert (=> b!29877 m!31519))

(assert (=> b!29877 m!31533))

(assert (=> b!29877 m!31861))

(declare-fun m!31863 () Bool)

(assert (=> b!29877 m!31863))

(assert (=> b!29877 m!31533))

(assert (=> b!29877 m!31529))

(assert (=> b!29877 m!31519))

(assert (=> b!29877 m!31515))

(assert (=> b!29871 m!31533))

(assert (=> b!29871 m!31529))

(assert (=> b!29871 m!31515))

(assert (=> b!29871 m!31533))

(assert (=> b!29871 m!31529))

(assert (=> b!29871 m!31515))

(declare-fun m!31865 () Bool)

(assert (=> b!29871 m!31865))

(assert (=> b!29870 m!31517))

(declare-fun m!31867 () Bool)

(assert (=> b!29870 m!31867))

(assert (=> b!29870 m!31851))

(assert (=> b!29870 m!31517))

(assert (=> b!29870 m!31867))

(assert (=> b!29870 m!31851))

(declare-fun m!31869 () Bool)

(assert (=> b!29870 m!31869))

(assert (=> b!29677 d!15555))

(declare-fun b!29879 () Bool)

(declare-fun e!15243 () Bool)

(assert (=> b!29879 (= e!15243 (= (++!43 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))

(declare-fun lt!5458 () Bool)

(assert (=> b!29879 (= lt!5458 (appendAssoc!11 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))

(declare-fun d!15557 () Bool)

(assert (=> d!15557 e!15243))

(declare-fun c!6516 () Bool)

(assert (=> d!15557 (= c!6516 (is-Cons!357 (toList!118 (left!711 (right!714 xs!533)))))))

(assert (=> d!15557 (= (appendAssoc!11 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)) true)))

(declare-fun b!29880 () Bool)

(assert (=> b!29880 (= e!15243 (= (++!43 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))

(assert (= (and d!15557 c!6516) b!29879))

(assert (= (and d!15557 (not c!6516)) b!29880))

(assert (=> b!29879 m!31533))

(assert (=> b!29879 m!31531))

(assert (=> b!29879 m!31801))

(assert (=> b!29879 m!31533))

(assert (=> b!29879 m!31529))

(assert (=> b!29879 m!31629))

(assert (=> b!29879 m!31529))

(assert (=> b!29879 m!31523))

(assert (=> b!29879 m!31531))

(assert (=> b!29879 m!31629))

(assert (=> b!29879 m!31523))

(declare-fun m!31871 () Bool)

(assert (=> b!29879 m!31871))

(assert (=> b!29879 m!31529))

(assert (=> b!29879 m!31523))

(declare-fun m!31873 () Bool)

(assert (=> b!29879 m!31873))

(assert (=> b!29880 m!31533))

(assert (=> b!29880 m!31529))

(assert (=> b!29880 m!31629))

(assert (=> b!29880 m!31629))

(assert (=> b!29880 m!31523))

(assert (=> b!29880 m!31871))

(assert (=> b!29880 m!31529))

(assert (=> b!29880 m!31523))

(assert (=> b!29880 m!31531))

(assert (=> b!29880 m!31533))

(assert (=> b!29880 m!31531))

(assert (=> b!29880 m!31801))

(assert (=> b!29616 d!15557))

(assert (=> b!29616 d!15531))

(assert (=> b!29616 d!15529))

(assert (=> b!29616 d!15491))

(declare-fun b!29881 () Bool)

(declare-fun e!15244 () Bool)

(assert (=> b!29881 (= e!15244 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77))) (toList!118 (right!714 ys!77))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))))

(declare-fun lt!5459 () Bool)

(assert (=> b!29881 (= lt!5459 (appendAssoc!11 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))

(declare-fun d!15559 () Bool)

(assert (=> d!15559 e!15244))

(declare-fun c!6517 () Bool)

(assert (=> d!15559 (= c!6517 (is-Cons!357 (toList!118 xs!533)))))

(assert (=> d!15559 (= (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))) true)))

(declare-fun b!29882 () Bool)

(assert (=> b!29882 (= e!15244 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77))) (toList!118 (right!714 ys!77))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))))

(assert (= (and d!15559 c!6517) b!29881))

(assert (= (and d!15559 (not c!6517)) b!29882))

(assert (=> b!29881 m!31517))

(assert (=> b!29881 m!31635))

(declare-fun m!31875 () Bool)

(assert (=> b!29881 m!31875))

(assert (=> b!29881 m!31517))

(assert (=> b!29881 m!31539))

(declare-fun m!31877 () Bool)

(assert (=> b!29881 m!31877))

(assert (=> b!29881 m!31539))

(assert (=> b!29881 m!31511))

(assert (=> b!29881 m!31635))

(assert (=> b!29881 m!31877))

(assert (=> b!29881 m!31511))

(declare-fun m!31879 () Bool)

(assert (=> b!29881 m!31879))

(assert (=> b!29881 m!31539))

(assert (=> b!29881 m!31511))

(declare-fun m!31881 () Bool)

(assert (=> b!29881 m!31881))

(assert (=> b!29882 m!31517))

(assert (=> b!29882 m!31539))

(assert (=> b!29882 m!31877))

(assert (=> b!29882 m!31877))

(assert (=> b!29882 m!31511))

(assert (=> b!29882 m!31879))

(assert (=> b!29882 m!31539))

(assert (=> b!29882 m!31511))

(assert (=> b!29882 m!31635))

(assert (=> b!29882 m!31517))

(assert (=> b!29882 m!31635))

(assert (=> b!29882 m!31875))

(assert (=> b!29615 d!15559))

(assert (=> b!29615 d!15505))

(declare-fun b!29883 () Bool)

(declare-fun e!15245 () List!363)

(assert (=> b!29883 (= e!15245 Nil!358)))

(declare-fun b!29886 () Bool)

(declare-fun e!15246 () List!363)

(assert (=> b!29886 (= e!15246 (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))

(declare-fun b!29885 () Bool)

(assert (=> b!29885 (= e!15246 (Cons!357 (x!8953 (left!711 ys!77)) Nil!358))))

(declare-fun b!29884 () Bool)

(assert (=> b!29884 (= e!15245 e!15246)))

(declare-fun c!6519 () Bool)

(assert (=> b!29884 (= c!6519 (is-Single!66 (left!711 ys!77)))))

(declare-fun d!15561 () Bool)

(declare-fun lt!5460 () List!363)

(assert (=> d!15561 (= (size!275 lt!5460) (size!276 (left!711 ys!77)))))

(assert (=> d!15561 (= lt!5460 e!15245)))

(declare-fun c!6518 () Bool)

(assert (=> d!15561 (= c!6518 (is-Empty!77 (left!711 ys!77)))))

(assert (=> d!15561 (= (toList!118 (left!711 ys!77)) lt!5460)))

(assert (= (and b!29884 c!6519) b!29885))

(assert (= (and b!29884 (not c!6519)) b!29886))

(assert (= (and d!15561 c!6518) b!29883))

(assert (= (and d!15561 (not c!6518)) b!29884))

(assert (=> b!29886 m!31515))

(assert (=> b!29886 m!31507))

(assert (=> b!29886 m!31515))

(assert (=> b!29886 m!31507))

(declare-fun m!31883 () Bool)

(assert (=> b!29886 m!31883))

(declare-fun m!31885 () Bool)

(assert (=> d!15561 m!31885))

(declare-fun m!31887 () Bool)

(assert (=> d!15561 m!31887))

(assert (=> b!29615 d!15561))

(declare-fun b!29887 () Bool)

(declare-fun e!15247 () List!363)

(assert (=> b!29887 (= e!15247 Nil!358)))

(declare-fun b!29890 () Bool)

(declare-fun e!15248 () List!363)

(assert (=> b!29890 (= e!15248 (++!43 (toList!118 (left!711 (right!714 ys!77))) (toList!118 (right!714 (right!714 ys!77)))))))

(declare-fun b!29889 () Bool)

(assert (=> b!29889 (= e!15248 (Cons!357 (x!8953 (right!714 ys!77)) Nil!358))))

(declare-fun b!29888 () Bool)

(assert (=> b!29888 (= e!15247 e!15248)))

(declare-fun c!6521 () Bool)

(assert (=> b!29888 (= c!6521 (is-Single!66 (right!714 ys!77)))))

(declare-fun d!15563 () Bool)

(declare-fun lt!5461 () List!363)

(assert (=> d!15563 (= (size!275 lt!5461) (size!276 (right!714 ys!77)))))

(assert (=> d!15563 (= lt!5461 e!15247)))

(declare-fun c!6520 () Bool)

(assert (=> d!15563 (= c!6520 (is-Empty!77 (right!714 ys!77)))))

(assert (=> d!15563 (= (toList!118 (right!714 ys!77)) lt!5461)))

(assert (= (and b!29888 c!6521) b!29889))

(assert (= (and b!29888 (not c!6521)) b!29890))

(assert (= (and d!15563 c!6520) b!29887))

(assert (= (and d!15563 (not c!6520)) b!29888))

(declare-fun m!31889 () Bool)

(assert (=> b!29890 m!31889))

(declare-fun m!31891 () Bool)

(assert (=> b!29890 m!31891))

(assert (=> b!29890 m!31889))

(assert (=> b!29890 m!31891))

(declare-fun m!31893 () Bool)

(assert (=> b!29890 m!31893))

(declare-fun m!31895 () Bool)

(assert (=> d!15563 m!31895))

(declare-fun m!31897 () Bool)

(assert (=> d!15563 m!31897))

(assert (=> b!29615 d!15563))

(declare-fun d!15565 () Bool)

(assert (=> d!15565 (= (isEmpty!323 (right!714 res!5544)) (= (right!714 res!5544) Empty!77))))

(assert (=> b!29700 d!15565))

(declare-fun b!29892 () Bool)

(declare-fun e!15249 () Int)

(declare-fun lt!5464 () Int)

(declare-fun lt!5463 () Int)

(assert (=> b!29892 (= e!15249 (+ 1 (ite (>= lt!5464 lt!5463) lt!5464 lt!5463)))))

(assert (=> b!29892 (= lt!5463 (level!55 (right!714 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))))))

(assert (=> b!29892 (= lt!5464 (level!55 (left!711 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15567 () Bool)

(declare-fun lt!5462 () Int)

(assert (=> d!15567 (>= lt!5462 0)))

(assert (=> d!15567 (= lt!5462 e!15249)))

(declare-fun c!6522 () Bool)

(assert (=> d!15567 (= c!6522 (or (is-Empty!77 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))) (is-Single!66 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15567 (= (level!55 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))) lt!5462)))

(declare-fun b!29891 () Bool)

(assert (=> b!29891 (= e!15249 0)))

(assert (= (and d!15567 c!6522) b!29891))

(assert (= (and d!15567 (not c!6522)) b!29892))

(declare-fun m!31899 () Bool)

(assert (=> b!29892 m!31899))

(declare-fun m!31901 () Bool)

(assert (=> b!29892 m!31901))

(assert (=> b!29687 d!15567))

(declare-fun b!29894 () Bool)

(declare-fun e!15250 () Int)

(declare-fun lt!5467 () Int)

(declare-fun lt!5466 () Int)

(assert (=> b!29894 (= e!15250 (+ 1 (ite (>= lt!5467 lt!5466) lt!5467 lt!5466)))))

(assert (=> b!29894 (= lt!5466 (level!55 (right!714 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))))))

(assert (=> b!29894 (= lt!5467 (level!55 (left!711 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15569 () Bool)

(declare-fun lt!5465 () Int)

(assert (=> d!15569 (>= lt!5465 0)))

(assert (=> d!15569 (= lt!5465 e!15250)))

(declare-fun c!6523 () Bool)

(assert (=> d!15569 (= c!6523 (or (is-Empty!77 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))) (is-Single!66 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15569 (= (level!55 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))) lt!5465)))

(declare-fun b!29893 () Bool)

(assert (=> b!29893 (= e!15250 0)))

(assert (= (and d!15569 c!6523) b!29893))

(assert (= (and d!15569 (not c!6523)) b!29894))

(declare-fun m!31903 () Bool)

(assert (=> b!29894 m!31903))

(declare-fun m!31905 () Bool)

(assert (=> b!29894 m!31905))

(assert (=> b!29687 d!15569))

(declare-fun b!29896 () Bool)

(declare-fun e!15251 () Int)

(declare-fun lt!5470 () Int)

(declare-fun lt!5469 () Int)

(assert (=> b!29896 (= e!15251 (+ 1 (ite (>= lt!5470 lt!5469) lt!5470 lt!5469)))))

(assert (=> b!29896 (= lt!5469 (level!55 (right!714 (right!714 res!5544))))))

(assert (=> b!29896 (= lt!5470 (level!55 (left!711 (right!714 res!5544))))))

(declare-fun d!15571 () Bool)

(declare-fun lt!5468 () Int)

(assert (=> d!15571 (>= lt!5468 0)))

(assert (=> d!15571 (= lt!5468 e!15251)))

(declare-fun c!6524 () Bool)

(assert (=> d!15571 (= c!6524 (or (is-Empty!77 (right!714 res!5544)) (is-Single!66 (right!714 res!5544))))))

(assert (=> d!15571 (= (level!55 (right!714 res!5544)) lt!5468)))

(declare-fun b!29895 () Bool)

(assert (=> b!29895 (= e!15251 0)))

(assert (= (and d!15571 c!6524) b!29895))

(assert (= (and d!15571 (not c!6524)) b!29896))

(assert (=> b!29896 m!31713))

(assert (=> b!29896 m!31711))

(assert (=> b!29592 d!15571))

(declare-fun b!29898 () Bool)

(declare-fun e!15252 () Int)

(declare-fun lt!5473 () Int)

(declare-fun lt!5472 () Int)

(assert (=> b!29898 (= e!15252 (+ 1 (ite (>= lt!5473 lt!5472) lt!5473 lt!5472)))))

(assert (=> b!29898 (= lt!5472 (level!55 (right!714 (left!711 res!5544))))))

(assert (=> b!29898 (= lt!5473 (level!55 (left!711 (left!711 res!5544))))))

(declare-fun d!15573 () Bool)

(declare-fun lt!5471 () Int)

(assert (=> d!15573 (>= lt!5471 0)))

(assert (=> d!15573 (= lt!5471 e!15252)))

(declare-fun c!6525 () Bool)

(assert (=> d!15573 (= c!6525 (or (is-Empty!77 (left!711 res!5544)) (is-Single!66 (left!711 res!5544))))))

(assert (=> d!15573 (= (level!55 (left!711 res!5544)) lt!5471)))

(declare-fun b!29897 () Bool)

(assert (=> b!29897 (= e!15252 0)))

(assert (= (and d!15573 c!6525) b!29897))

(assert (= (and d!15573 (not c!6525)) b!29898))

(assert (=> b!29898 m!31825))

(assert (=> b!29898 m!31823))

(assert (=> b!29592 d!15573))

(assert (=> b!29696 d!15573))

(assert (=> b!29696 d!15571))

(declare-fun d!15575 () Bool)

(assert (=> d!15575 (= (isEmpty!323 (right!714 ys!77)) (= (right!714 ys!77) Empty!77))))

(assert (=> b!29566 d!15575))

(declare-fun d!15577 () Bool)

(assert (=> d!15577 (= (isEmpty!323 (left!711 res!5544)) (= (left!711 res!5544) Empty!77))))

(assert (=> b!29699 d!15577))

(assert (=> b!29594 d!15545))

(assert (=> b!29594 d!15547))

(assert (=> b!29586 d!15469))

(assert (=> b!29586 d!15467))

(declare-fun b!29902 () Bool)

(declare-fun e!15254 () Bool)

(assert (=> b!29902 (= e!15254 (concInv!61 (right!714 (left!711 (left!711 ys!77)))))))

(declare-fun b!29901 () Bool)

(declare-fun res!13794 () Bool)

(assert (=> b!29901 (=> (not res!13794) (not e!15254))))

(assert (=> b!29901 (= res!13794 (concInv!61 (left!711 (left!711 (left!711 ys!77)))))))

(declare-fun b!29899 () Bool)

(declare-fun e!15253 () Bool)

(assert (=> b!29899 (= e!15253 e!15254)))

(declare-fun res!13797 () Bool)

(assert (=> b!29899 (=> (not res!13797) (not e!15254))))

(assert (=> b!29899 (= res!13797 (not (isEmpty!323 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!29900 () Bool)

(declare-fun res!13796 () Bool)

(assert (=> b!29900 (=> (not res!13796) (not e!15254))))

(assert (=> b!29900 (= res!13796 (not (isEmpty!323 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun d!15579 () Bool)

(declare-fun res!13795 () Bool)

(assert (=> d!15579 (=> res!13795 e!15253)))

(assert (=> d!15579 (= res!13795 (not (is-CC!66 (left!711 (left!711 ys!77)))))))

(assert (=> d!15579 (= (concInv!61 (left!711 (left!711 ys!77))) e!15253)))

(assert (= (and d!15579 (not res!13795)) b!29899))

(assert (= (and b!29899 res!13797) b!29900))

(assert (= (and b!29900 res!13796) b!29901))

(assert (= (and b!29901 res!13794) b!29902))

(declare-fun m!31907 () Bool)

(assert (=> b!29902 m!31907))

(declare-fun m!31909 () Bool)

(assert (=> b!29901 m!31909))

(declare-fun m!31911 () Bool)

(assert (=> b!29899 m!31911))

(declare-fun m!31913 () Bool)

(assert (=> b!29900 m!31913))

(assert (=> b!29678 d!15579))

(declare-fun b!29904 () Bool)

(declare-fun e!15255 () Int)

(declare-fun lt!5476 () Int)

(declare-fun lt!5475 () Int)

(assert (=> b!29904 (= e!15255 (+ 1 (ite (>= lt!5476 lt!5475) lt!5476 lt!5475)))))

(assert (=> b!29904 (= lt!5475 (level!55 (right!714 (right!714 (left!711 ys!77)))))))

(assert (=> b!29904 (= lt!5476 (level!55 (left!711 (right!714 (left!711 ys!77)))))))

(declare-fun d!15581 () Bool)

(declare-fun lt!5474 () Int)

(assert (=> d!15581 (>= lt!5474 0)))

(assert (=> d!15581 (= lt!5474 e!15255)))

(declare-fun c!6526 () Bool)

(assert (=> d!15581 (= c!6526 (or (is-Empty!77 (right!714 (left!711 ys!77))) (is-Single!66 (right!714 (left!711 ys!77)))))))

(assert (=> d!15581 (= (level!55 (right!714 (left!711 ys!77))) lt!5474)))

(declare-fun b!29903 () Bool)

(assert (=> b!29903 (= e!15255 0)))

(assert (= (and d!15581 c!6526) b!29903))

(assert (= (and d!15581 (not c!6526)) b!29904))

(declare-fun m!31915 () Bool)

(assert (=> b!29904 m!31915))

(declare-fun m!31917 () Bool)

(assert (=> b!29904 m!31917))

(assert (=> b!29627 d!15581))

(assert (=> b!29627 d!15525))

(declare-fun d!15583 () Bool)

(declare-fun res!13801 () Bool)

(declare-fun e!15257 () Bool)

(assert (=> d!15583 (=> res!13801 e!15257)))

(assert (=> d!15583 (= res!13801 (not (is-CC!66 lt!5390)))))

(assert (=> d!15583 (= (balanced!62 lt!5390) e!15257)))

(declare-fun b!29905 () Bool)

(declare-fun e!15256 () Bool)

(assert (=> b!29905 (= e!15257 e!15256)))

(declare-fun res!13800 () Bool)

(assert (=> b!29905 (=> (not res!13800) (not e!15256))))

(assert (=> b!29905 (= res!13800 (>= (- (level!55 (left!711 lt!5390)) (level!55 (right!714 lt!5390))) (- 1)))))

(declare-fun b!29908 () Bool)

(assert (=> b!29908 (= e!15256 (balanced!62 (right!714 lt!5390)))))

(declare-fun b!29907 () Bool)

(declare-fun res!13799 () Bool)

(assert (=> b!29907 (=> (not res!13799) (not e!15256))))

(assert (=> b!29907 (= res!13799 (balanced!62 (left!711 lt!5390)))))

(declare-fun b!29906 () Bool)

(declare-fun res!13798 () Bool)

(assert (=> b!29906 (=> (not res!13798) (not e!15256))))

(assert (=> b!29906 (= res!13798 (<= (- (level!55 (left!711 lt!5390)) (level!55 (right!714 lt!5390))) 1))))

(assert (= (and d!15583 (not res!13801)) b!29905))

(assert (= (and b!29905 res!13800) b!29906))

(assert (= (and b!29906 res!13798) b!29907))

(assert (= (and b!29907 res!13799) b!29908))

(assert (=> b!29905 m!31769))

(assert (=> b!29905 m!31767))

(declare-fun m!31919 () Bool)

(assert (=> b!29908 m!31919))

(declare-fun m!31921 () Bool)

(assert (=> b!29907 m!31921))

(assert (=> b!29906 m!31769))

(assert (=> b!29906 m!31767))

(assert (=> b!29680 d!15583))

(declare-fun b!29912 () Bool)

(declare-fun e!15259 () Bool)

(assert (=> b!29912 (= e!15259 (concInv!61 (right!714 (left!711 res!5544))))))

(declare-fun b!29911 () Bool)

(declare-fun res!13802 () Bool)

(assert (=> b!29911 (=> (not res!13802) (not e!15259))))

(assert (=> b!29911 (= res!13802 (concInv!61 (left!711 (left!711 res!5544))))))

(declare-fun b!29909 () Bool)

(declare-fun e!15258 () Bool)

(assert (=> b!29909 (= e!15258 e!15259)))

(declare-fun res!13805 () Bool)

(assert (=> b!29909 (=> (not res!13805) (not e!15259))))

(assert (=> b!29909 (= res!13805 (not (isEmpty!323 (left!711 (left!711 res!5544)))))))

(declare-fun b!29910 () Bool)

(declare-fun res!13804 () Bool)

(assert (=> b!29910 (=> (not res!13804) (not e!15259))))

(assert (=> b!29910 (= res!13804 (not (isEmpty!323 (right!714 (left!711 res!5544)))))))

(declare-fun d!15585 () Bool)

(declare-fun res!13803 () Bool)

(assert (=> d!15585 (=> res!13803 e!15258)))

(assert (=> d!15585 (= res!13803 (not (is-CC!66 (left!711 res!5544))))))

(assert (=> d!15585 (= (concInv!61 (left!711 res!5544)) e!15258)))

(assert (= (and d!15585 (not res!13803)) b!29909))

(assert (= (and b!29909 res!13805) b!29910))

(assert (= (and b!29910 res!13804) b!29911))

(assert (= (and b!29911 res!13802) b!29912))

(declare-fun m!31923 () Bool)

(assert (=> b!29912 m!31923))

(declare-fun m!31925 () Bool)

(assert (=> b!29911 m!31925))

(declare-fun m!31927 () Bool)

(assert (=> b!29909 m!31927))

(declare-fun m!31929 () Bool)

(assert (=> b!29910 m!31929))

(assert (=> b!29701 d!15585))

(declare-fun b!29913 () Bool)

(declare-fun e!15260 () List!363)

(assert (=> b!29913 (= e!15260 Nil!358)))

(declare-fun b!29916 () Bool)

(declare-fun e!15261 () List!363)

(assert (=> b!29916 (= e!15261 (++!43 (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!29915 () Bool)

(assert (=> b!29915 (= e!15261 (Cons!357 (x!8953 (left!711 (left!711 ys!77))) Nil!358))))

(declare-fun b!29914 () Bool)

(assert (=> b!29914 (= e!15260 e!15261)))

(declare-fun c!6528 () Bool)

(assert (=> b!29914 (= c!6528 (is-Single!66 (left!711 (left!711 ys!77))))))

(declare-fun d!15587 () Bool)

(declare-fun lt!5477 () List!363)

(assert (=> d!15587 (= (size!275 lt!5477) (size!276 (left!711 (left!711 ys!77))))))

(assert (=> d!15587 (= lt!5477 e!15260)))

(declare-fun c!6527 () Bool)

(assert (=> d!15587 (= c!6527 (is-Empty!77 (left!711 (left!711 ys!77))))))

(assert (=> d!15587 (= (toList!118 (left!711 (left!711 ys!77))) lt!5477)))

(assert (= (and b!29914 c!6528) b!29915))

(assert (= (and b!29914 (not c!6528)) b!29916))

(assert (= (and d!15587 c!6527) b!29913))

(assert (= (and d!15587 (not c!6527)) b!29914))

(assert (=> b!29916 m!31867))

(assert (=> b!29916 m!31851))

(assert (=> b!29916 m!31867))

(assert (=> b!29916 m!31851))

(declare-fun m!31931 () Bool)

(assert (=> b!29916 m!31931))

(declare-fun m!31933 () Bool)

(assert (=> d!15587 m!31933))

(declare-fun m!31935 () Bool)

(assert (=> d!15587 m!31935))

(assert (=> b!29623 d!15587))

(assert (=> b!29623 d!15563))

(declare-fun b!29917 () Bool)

(declare-fun e!15262 () List!363)

(assert (=> b!29917 (= e!15262 Nil!358)))

(declare-fun b!29920 () Bool)

(declare-fun e!15263 () List!363)

(assert (=> b!29920 (= e!15263 (++!43 (toList!118 (left!711 (right!714 (left!711 ys!77)))) (toList!118 (right!714 (right!714 (left!711 ys!77))))))))

(declare-fun b!29919 () Bool)

(assert (=> b!29919 (= e!15263 (Cons!357 (x!8953 (right!714 (left!711 ys!77))) Nil!358))))

(declare-fun b!29918 () Bool)

(assert (=> b!29918 (= e!15262 e!15263)))

(declare-fun c!6530 () Bool)

(assert (=> b!29918 (= c!6530 (is-Single!66 (right!714 (left!711 ys!77))))))

(declare-fun d!15589 () Bool)

(declare-fun lt!5478 () List!363)

(assert (=> d!15589 (= (size!275 lt!5478) (size!276 (right!714 (left!711 ys!77))))))

(assert (=> d!15589 (= lt!5478 e!15262)))

(declare-fun c!6529 () Bool)

(assert (=> d!15589 (= c!6529 (is-Empty!77 (right!714 (left!711 ys!77))))))

(assert (=> d!15589 (= (toList!118 (right!714 (left!711 ys!77))) lt!5478)))

(assert (= (and b!29918 c!6530) b!29919))

(assert (= (and b!29918 (not c!6530)) b!29920))

(assert (= (and d!15589 c!6529) b!29917))

(assert (= (and d!15589 (not c!6529)) b!29918))

(declare-fun m!31937 () Bool)

(assert (=> b!29920 m!31937))

(declare-fun m!31939 () Bool)

(assert (=> b!29920 m!31939))

(assert (=> b!29920 m!31937))

(assert (=> b!29920 m!31939))

(declare-fun m!31941 () Bool)

(assert (=> b!29920 m!31941))

(declare-fun m!31943 () Bool)

(assert (=> d!15589 m!31943))

(declare-fun m!31945 () Bool)

(assert (=> d!15589 m!31945))

(assert (=> b!29623 d!15589))

(assert (=> b!29623 d!15505))

(declare-fun b!29922 () Bool)

(declare-fun e!15264 () List!363)

(assert (=> b!29922 (= e!15264 (Cons!357 (h!274 (toList!118 xs!533)) (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun b!29921 () Bool)

(assert (=> b!29921 (= e!15264 (toList!118 (left!711 (left!711 ys!77))))))

(declare-fun b!29923 () Bool)

(declare-fun res!13807 () Bool)

(declare-fun e!15265 () Bool)

(assert (=> b!29923 (=> (not res!13807) (not e!15265))))

(declare-fun lt!5479 () List!363)

(assert (=> b!29923 (= res!13807 (= (size!275 lt!5479) (+ (size!275 (toList!118 xs!533)) (size!275 (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun b!29924 () Bool)

(assert (=> b!29924 (= e!15265 (or (not (= (toList!118 (left!711 (left!711 ys!77))) Nil!358)) (= lt!5479 (toList!118 xs!533))))))

(declare-fun d!15591 () Bool)

(assert (=> d!15591 e!15265))

(declare-fun res!13806 () Bool)

(assert (=> d!15591 (=> (not res!13806) (not e!15265))))

(assert (=> d!15591 (= res!13806 (= (content!73 lt!5479) (union (content!73 (toList!118 xs!533)) (content!73 (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15591 (= lt!5479 e!15264)))

(declare-fun c!6531 () Bool)

(assert (=> d!15591 (= c!6531 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15591 (= (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) lt!5479)))

(assert (= (and d!15591 c!6531) b!29921))

(assert (= (and d!15591 (not c!6531)) b!29922))

(assert (= (and d!15591 res!13806) b!29923))

(assert (= (and b!29923 res!13807) b!29924))

(assert (=> b!29922 m!31515))

(declare-fun m!31947 () Bool)

(assert (=> b!29922 m!31947))

(declare-fun m!31949 () Bool)

(assert (=> b!29923 m!31949))

(assert (=> b!29923 m!31517))

(assert (=> b!29923 m!31689))

(assert (=> b!29923 m!31515))

(declare-fun m!31951 () Bool)

(assert (=> b!29923 m!31951))

(declare-fun m!31953 () Bool)

(assert (=> d!15591 m!31953))

(assert (=> d!15591 m!31517))

(assert (=> d!15591 m!31695))

(assert (=> d!15591 m!31515))

(declare-fun m!31955 () Bool)

(assert (=> d!15591 m!31955))

(assert (=> b!29623 d!15591))

(declare-fun b!29925 () Bool)

(declare-fun e!15266 () Bool)

(assert (=> b!29925 (= e!15266 (= (++!43 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (toList!118 (right!714 ys!77))) (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))))

(declare-fun lt!5480 () Bool)

(assert (=> b!29925 (= lt!5480 (appendAssoc!11 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))

(declare-fun d!15593 () Bool)

(assert (=> d!15593 e!15266))

(declare-fun c!6532 () Bool)

(assert (=> d!15593 (= c!6532 (is-Cons!357 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))))))

(assert (=> d!15593 (= (appendAssoc!11 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))) true)))

(declare-fun b!29926 () Bool)

(assert (=> b!29926 (= e!15266 (= (++!43 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (toList!118 (right!714 ys!77))) (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))))

(assert (= (and d!15593 c!6532) b!29925))

(assert (= (and d!15593 (not c!6532)) b!29926))

(assert (=> b!29925 m!31509))

(declare-fun m!31957 () Bool)

(assert (=> b!29925 m!31957))

(declare-fun m!31959 () Bool)

(assert (=> b!29925 m!31959))

(assert (=> b!29925 m!31509))

(assert (=> b!29925 m!31507))

(declare-fun m!31961 () Bool)

(assert (=> b!29925 m!31961))

(assert (=> b!29925 m!31507))

(assert (=> b!29925 m!31511))

(assert (=> b!29925 m!31957))

(assert (=> b!29925 m!31961))

(assert (=> b!29925 m!31511))

(declare-fun m!31963 () Bool)

(assert (=> b!29925 m!31963))

(assert (=> b!29925 m!31507))

(assert (=> b!29925 m!31511))

(declare-fun m!31965 () Bool)

(assert (=> b!29925 m!31965))

(assert (=> b!29926 m!31509))

(assert (=> b!29926 m!31507))

(assert (=> b!29926 m!31961))

(assert (=> b!29926 m!31961))

(assert (=> b!29926 m!31511))

(assert (=> b!29926 m!31963))

(assert (=> b!29926 m!31507))

(assert (=> b!29926 m!31511))

(assert (=> b!29926 m!31957))

(assert (=> b!29926 m!31509))

(assert (=> b!29926 m!31957))

(assert (=> b!29926 m!31959))

(assert (=> b!29623 d!15593))

(declare-fun b!29927 () Bool)

(declare-fun e!15267 () Bool)

(assert (=> b!29927 (= e!15267 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))))

(declare-fun lt!5481 () Bool)

(assert (=> b!29927 (= lt!5481 (appendAssoc!11 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))

(declare-fun d!15595 () Bool)

(assert (=> d!15595 e!15267))

(declare-fun c!6533 () Bool)

(assert (=> d!15595 (= c!6533 (is-Cons!357 (toList!118 xs!533)))))

(assert (=> d!15595 (= (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))) true)))

(declare-fun b!29928 () Bool)

(assert (=> b!29928 (= e!15267 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))))

(assert (= (and d!15595 c!6533) b!29927))

(assert (= (and d!15595 (not c!6533)) b!29928))

(assert (=> b!29927 m!31517))

(assert (=> b!29927 m!31883))

(declare-fun m!31967 () Bool)

(assert (=> b!29927 m!31967))

(assert (=> b!29927 m!31517))

(assert (=> b!29927 m!31515))

(assert (=> b!29927 m!31509))

(assert (=> b!29927 m!31515))

(assert (=> b!29927 m!31507))

(assert (=> b!29927 m!31883))

(assert (=> b!29927 m!31509))

(assert (=> b!29927 m!31507))

(assert (=> b!29927 m!31961))

(assert (=> b!29927 m!31515))

(assert (=> b!29927 m!31507))

(declare-fun m!31969 () Bool)

(assert (=> b!29927 m!31969))

(assert (=> b!29928 m!31517))

(assert (=> b!29928 m!31515))

(assert (=> b!29928 m!31509))

(assert (=> b!29928 m!31509))

(assert (=> b!29928 m!31507))

(assert (=> b!29928 m!31961))

(assert (=> b!29928 m!31515))

(assert (=> b!29928 m!31507))

(assert (=> b!29928 m!31883))

(assert (=> b!29928 m!31517))

(assert (=> b!29928 m!31883))

(assert (=> b!29928 m!31967))

(assert (=> b!29620 d!15595))

(assert (=> b!29620 d!15505))

(assert (=> b!29620 d!15587))

(assert (=> b!29620 d!15589))

(declare-fun d!15597 () Bool)

(declare-fun res!13811 () Bool)

(declare-fun e!15269 () Bool)

(assert (=> d!15597 (=> res!13811 e!15269)))

(assert (=> d!15597 (= res!13811 (not (is-CC!66 (left!711 ys!77))))))

(assert (=> d!15597 (= (balanced!62 (left!711 ys!77)) e!15269)))

(declare-fun b!29929 () Bool)

(declare-fun e!15268 () Bool)

(assert (=> b!29929 (= e!15269 e!15268)))

(declare-fun res!13810 () Bool)

(assert (=> b!29929 (=> (not res!13810) (not e!15268))))

(assert (=> b!29929 (= res!13810 (>= (- (level!55 (left!711 (left!711 ys!77))) (level!55 (right!714 (left!711 ys!77)))) (- 1)))))

(declare-fun b!29932 () Bool)

(assert (=> b!29932 (= e!15268 (balanced!62 (right!714 (left!711 ys!77))))))

(declare-fun b!29931 () Bool)

(declare-fun res!13809 () Bool)

(assert (=> b!29931 (=> (not res!13809) (not e!15268))))

(assert (=> b!29931 (= res!13809 (balanced!62 (left!711 (left!711 ys!77))))))

(declare-fun b!29930 () Bool)

(declare-fun res!13808 () Bool)

(assert (=> b!29930 (=> (not res!13808) (not e!15268))))

(assert (=> b!29930 (= res!13808 (<= (- (level!55 (left!711 (left!711 ys!77))) (level!55 (right!714 (left!711 ys!77)))) 1))))

(assert (= (and d!15597 (not res!13811)) b!29929))

(assert (= (and b!29929 res!13810) b!29930))

(assert (= (and b!29930 res!13808) b!29931))

(assert (= (and b!29931 res!13809) b!29932))

(assert (=> b!29929 m!31549))

(assert (=> b!29929 m!31547))

(declare-fun m!31971 () Bool)

(assert (=> b!29932 m!31971))

(assert (=> b!29931 m!31571))

(assert (=> b!29930 m!31549))

(assert (=> b!29930 m!31547))

(assert (=> b!29587 d!15597))

(declare-fun d!15599 () Bool)

(assert (=> d!15599 (= (isEmpty!323 (left!711 ys!77)) (= (left!711 ys!77) Empty!77))))

(assert (=> b!29565 d!15599))

(assert (=> b!29695 d!15573))

(assert (=> b!29695 d!15571))

(declare-fun b!29936 () Bool)

(declare-fun e!15271 () Bool)

(assert (=> b!29936 (= e!15271 (concInv!61 (right!714 (right!714 xs!533))))))

(declare-fun b!29935 () Bool)

(declare-fun res!13812 () Bool)

(assert (=> b!29935 (=> (not res!13812) (not e!15271))))

(assert (=> b!29935 (= res!13812 (concInv!61 (left!711 (right!714 xs!533))))))

(declare-fun b!29933 () Bool)

(declare-fun e!15270 () Bool)

(assert (=> b!29933 (= e!15270 e!15271)))

(declare-fun res!13815 () Bool)

(assert (=> b!29933 (=> (not res!13815) (not e!15271))))

(assert (=> b!29933 (= res!13815 (not (isEmpty!323 (left!711 (right!714 xs!533)))))))

(declare-fun b!29934 () Bool)

(declare-fun res!13814 () Bool)

(assert (=> b!29934 (=> (not res!13814) (not e!15271))))

(assert (=> b!29934 (= res!13814 (not (isEmpty!323 (right!714 (right!714 xs!533)))))))

(declare-fun d!15601 () Bool)

(declare-fun res!13813 () Bool)

(assert (=> d!15601 (=> res!13813 e!15270)))

(assert (=> d!15601 (= res!13813 (not (is-CC!66 (right!714 xs!533))))))

(assert (=> d!15601 (= (concInv!61 (right!714 xs!533)) e!15270)))

(assert (= (and d!15601 (not res!13813)) b!29933))

(assert (= (and b!29933 res!13815) b!29934))

(assert (= (and b!29934 res!13814) b!29935))

(assert (= (and b!29935 res!13812) b!29936))

(declare-fun m!31973 () Bool)

(assert (=> b!29936 m!31973))

(declare-fun m!31975 () Bool)

(assert (=> b!29935 m!31975))

(declare-fun m!31977 () Bool)

(assert (=> b!29933 m!31977))

(declare-fun m!31979 () Bool)

(assert (=> b!29934 m!31979))

(assert (=> b!29631 d!15601))

(declare-fun b!29937 () Bool)

(declare-fun e!15272 () Bool)

(declare-fun tp!6292 () Bool)

(declare-fun tp!6293 () Bool)

(assert (=> b!29937 (= e!15272 (and tp!6292 tp!6293))))

(declare-fun b!29938 () Bool)

(assert (=> b!29938 (= e!15272 tp_is_empty!179)))

(assert (=> b!29715 (= tp!6280 e!15272)))

(assert (= (and b!29715 (is-CC!66 (left!711 (right!714 ys!77)))) b!29937))

(assert (= (and b!29715 (is-Single!66 (left!711 (right!714 ys!77)))) b!29938))

(declare-fun b!29939 () Bool)

(declare-fun e!15273 () Bool)

(declare-fun tp!6294 () Bool)

(declare-fun tp!6295 () Bool)

(assert (=> b!29939 (= e!15273 (and tp!6294 tp!6295))))

(declare-fun b!29940 () Bool)

(assert (=> b!29940 (= e!15273 tp_is_empty!179)))

(assert (=> b!29715 (= tp!6281 e!15273)))

(assert (= (and b!29715 (is-CC!66 (right!714 (right!714 ys!77)))) b!29939))

(assert (= (and b!29715 (is-Single!66 (right!714 (right!714 ys!77)))) b!29940))

(declare-fun b!29941 () Bool)

(declare-fun e!15274 () Bool)

(declare-fun tp!6296 () Bool)

(declare-fun tp!6297 () Bool)

(assert (=> b!29941 (= e!15274 (and tp!6296 tp!6297))))

(declare-fun b!29942 () Bool)

(assert (=> b!29942 (= e!15274 tp_is_empty!179)))

(assert (=> b!29713 (= tp!6278 e!15274)))

(assert (= (and b!29713 (is-CC!66 (left!711 (left!711 ys!77)))) b!29941))

(assert (= (and b!29713 (is-Single!66 (left!711 (left!711 ys!77)))) b!29942))

(declare-fun b!29943 () Bool)

(declare-fun e!15275 () Bool)

(declare-fun tp!6298 () Bool)

(declare-fun tp!6299 () Bool)

(assert (=> b!29943 (= e!15275 (and tp!6298 tp!6299))))

(declare-fun b!29944 () Bool)

(assert (=> b!29944 (= e!15275 tp_is_empty!179)))

(assert (=> b!29713 (= tp!6279 e!15275)))

(assert (= (and b!29713 (is-CC!66 (right!714 (left!711 ys!77)))) b!29943))

(assert (= (and b!29713 (is-Single!66 (right!714 (left!711 ys!77)))) b!29944))

(declare-fun b!29945 () Bool)

(declare-fun e!15276 () Bool)

(declare-fun tp!6300 () Bool)

(declare-fun tp!6301 () Bool)

(assert (=> b!29945 (= e!15276 (and tp!6300 tp!6301))))

(declare-fun b!29946 () Bool)

(assert (=> b!29946 (= e!15276 tp_is_empty!179)))

(assert (=> b!29711 (= tp!6276 e!15276)))

(assert (= (and b!29711 (is-CC!66 (left!711 (right!714 res!5544)))) b!29945))

(assert (= (and b!29711 (is-Single!66 (left!711 (right!714 res!5544)))) b!29946))

(declare-fun b!29947 () Bool)

(declare-fun e!15277 () Bool)

(declare-fun tp!6302 () Bool)

(declare-fun tp!6303 () Bool)

(assert (=> b!29947 (= e!15277 (and tp!6302 tp!6303))))

(declare-fun b!29948 () Bool)

(assert (=> b!29948 (= e!15277 tp_is_empty!179)))

(assert (=> b!29711 (= tp!6277 e!15277)))

(assert (= (and b!29711 (is-CC!66 (right!714 (right!714 res!5544)))) b!29947))

(assert (= (and b!29711 (is-Single!66 (right!714 (right!714 res!5544)))) b!29948))

(declare-fun b!29949 () Bool)

(declare-fun e!15278 () Bool)

(declare-fun tp!6304 () Bool)

(declare-fun tp!6305 () Bool)

(assert (=> b!29949 (= e!15278 (and tp!6304 tp!6305))))

(declare-fun b!29950 () Bool)

(assert (=> b!29950 (= e!15278 tp_is_empty!179)))

(assert (=> b!29719 (= tp!6284 e!15278)))

(assert (= (and b!29719 (is-CC!66 (left!711 (right!714 xs!533)))) b!29949))

(assert (= (and b!29719 (is-Single!66 (left!711 (right!714 xs!533)))) b!29950))

(declare-fun b!29951 () Bool)

(declare-fun e!15279 () Bool)

(declare-fun tp!6306 () Bool)

(declare-fun tp!6307 () Bool)

(assert (=> b!29951 (= e!15279 (and tp!6306 tp!6307))))

(declare-fun b!29952 () Bool)

(assert (=> b!29952 (= e!15279 tp_is_empty!179)))

(assert (=> b!29719 (= tp!6285 e!15279)))

(assert (= (and b!29719 (is-CC!66 (right!714 (right!714 xs!533)))) b!29951))

(assert (= (and b!29719 (is-Single!66 (right!714 (right!714 xs!533)))) b!29952))

(declare-fun b!29953 () Bool)

(declare-fun e!15280 () Bool)

(declare-fun tp!6308 () Bool)

(declare-fun tp!6309 () Bool)

(assert (=> b!29953 (= e!15280 (and tp!6308 tp!6309))))

(declare-fun b!29954 () Bool)

(assert (=> b!29954 (= e!15280 tp_is_empty!179)))

(assert (=> b!29717 (= tp!6282 e!15280)))

(assert (= (and b!29717 (is-CC!66 (left!711 (left!711 xs!533)))) b!29953))

(assert (= (and b!29717 (is-Single!66 (left!711 (left!711 xs!533)))) b!29954))

(declare-fun b!29955 () Bool)

(declare-fun e!15281 () Bool)

(declare-fun tp!6310 () Bool)

(declare-fun tp!6311 () Bool)

(assert (=> b!29955 (= e!15281 (and tp!6310 tp!6311))))

(declare-fun b!29956 () Bool)

(assert (=> b!29956 (= e!15281 tp_is_empty!179)))

(assert (=> b!29717 (= tp!6283 e!15281)))

(assert (= (and b!29717 (is-CC!66 (right!714 (left!711 xs!533)))) b!29955))

(assert (= (and b!29717 (is-Single!66 (right!714 (left!711 xs!533)))) b!29956))

(declare-fun b!29957 () Bool)

(declare-fun e!15282 () Bool)

(declare-fun tp!6312 () Bool)

(declare-fun tp!6313 () Bool)

(assert (=> b!29957 (= e!15282 (and tp!6312 tp!6313))))

(declare-fun b!29958 () Bool)

(assert (=> b!29958 (= e!15282 tp_is_empty!179)))

(assert (=> b!29721 (= tp!6286 e!15282)))

(assert (= (and b!29721 (is-CC!66 (left!711 (left!711 nll!6)))) b!29957))

(assert (= (and b!29721 (is-Single!66 (left!711 (left!711 nll!6)))) b!29958))

(declare-fun b!29959 () Bool)

(declare-fun e!15283 () Bool)

(declare-fun tp!6314 () Bool)

(declare-fun tp!6315 () Bool)

(assert (=> b!29959 (= e!15283 (and tp!6314 tp!6315))))

(declare-fun b!29960 () Bool)

(assert (=> b!29960 (= e!15283 tp_is_empty!179)))

(assert (=> b!29721 (= tp!6287 e!15283)))

(assert (= (and b!29721 (is-CC!66 (right!714 (left!711 nll!6)))) b!29959))

(assert (= (and b!29721 (is-Single!66 (right!714 (left!711 nll!6)))) b!29960))

(declare-fun b!29961 () Bool)

(declare-fun e!15284 () Bool)

(declare-fun tp!6316 () Bool)

(declare-fun tp!6317 () Bool)

(assert (=> b!29961 (= e!15284 (and tp!6316 tp!6317))))

(declare-fun b!29962 () Bool)

(assert (=> b!29962 (= e!15284 tp_is_empty!179)))

(assert (=> b!29709 (= tp!6274 e!15284)))

(assert (= (and b!29709 (is-CC!66 (left!711 (left!711 res!5544)))) b!29961))

(assert (= (and b!29709 (is-Single!66 (left!711 (left!711 res!5544)))) b!29962))

(declare-fun b!29963 () Bool)

(declare-fun e!15285 () Bool)

(declare-fun tp!6318 () Bool)

(declare-fun tp!6319 () Bool)

(assert (=> b!29963 (= e!15285 (and tp!6318 tp!6319))))

(declare-fun b!29964 () Bool)

(assert (=> b!29964 (= e!15285 tp_is_empty!179)))

(assert (=> b!29709 (= tp!6275 e!15285)))

(assert (= (and b!29709 (is-CC!66 (right!714 (left!711 res!5544)))) b!29963))

(assert (= (and b!29709 (is-Single!66 (right!714 (left!711 res!5544)))) b!29964))

(declare-fun b!29965 () Bool)

(declare-fun e!15286 () Bool)

(declare-fun tp!6320 () Bool)

(declare-fun tp!6321 () Bool)

(assert (=> b!29965 (= e!15286 (and tp!6320 tp!6321))))

(declare-fun b!29966 () Bool)

(assert (=> b!29966 (= e!15286 tp_is_empty!179)))

(assert (=> b!29723 (= tp!6288 e!15286)))

(assert (= (and b!29723 (is-CC!66 (left!711 (right!714 nll!6)))) b!29965))

(assert (= (and b!29723 (is-Single!66 (left!711 (right!714 nll!6)))) b!29966))

(declare-fun b!29967 () Bool)

(declare-fun e!15287 () Bool)

(declare-fun tp!6322 () Bool)

(declare-fun tp!6323 () Bool)

(assert (=> b!29967 (= e!15287 (and tp!6322 tp!6323))))

(declare-fun b!29968 () Bool)

(assert (=> b!29968 (= e!15287 tp_is_empty!179)))

(assert (=> b!29723 (= tp!6289 e!15287)))

(assert (= (and b!29723 (is-CC!66 (right!714 (right!714 nll!6)))) b!29967))

(assert (= (and b!29723 (is-Single!66 (right!714 (right!714 nll!6)))) b!29968))

(declare-fun b!29969 () Bool)

(declare-fun e!15288 () Bool)

(declare-fun tp!6324 () Bool)

(declare-fun tp!6325 () Bool)

(assert (=> b!29969 (= e!15288 (and tp!6324 tp!6325))))

(declare-fun b!29970 () Bool)

(assert (=> b!29970 (= e!15288 tp_is_empty!179)))

(assert (=> b!29681 (= tp!6268 e!15288)))

(assert (= (and b!29681 (is-CC!66 (left!711 res!13705))) b!29969))

(assert (= (and b!29681 (is-Single!66 (left!711 res!13705))) b!29970))

(declare-fun b!29971 () Bool)

(declare-fun e!15289 () Bool)

(declare-fun tp!6326 () Bool)

(declare-fun tp!6327 () Bool)

(assert (=> b!29971 (= e!15289 (and tp!6326 tp!6327))))

(declare-fun b!29972 () Bool)

(assert (=> b!29972 (= e!15289 tp_is_empty!179)))

(assert (=> b!29681 (= tp!6269 e!15289)))

(assert (= (and b!29681 (is-CC!66 (right!714 res!13705))) b!29971))

(assert (= (and b!29681 (is-Single!66 (right!714 res!13705))) b!29972))

(push 1)

(assert (not b!29963))

(assert (not b!29955))

(assert (not b!29957))

(assert (not b!29825))

(assert (not b!29922))

(assert (not b!29971))

(assert (not b!29908))

(assert (not b!29856))

(assert (not b!29864))

(assert (not b!29905))

(assert (not b!29776))

(assert (not b!29907))

(assert (not b!29794))

(assert (not b!29937))

(assert (not b!29930))

(assert (not d!15509))

(assert (not b!29863))

(assert (not b!29852))

(assert (not b!29786))

(assert (not b!29904))

(assert (not b!29916))

(assert (not b!29757))

(assert (not b!29806))

(assert (not b!29787))

(assert (not b!29726))

(assert (not b!29947))

(assert (not b!29839))

(assert (not b!29928))

(assert (not b!29844))

(assert (not b!29878))

(assert (not b!29951))

(assert (not b!29799))

(assert (not b!29846))

(assert (not d!15491))

(assert (not b!29961))

(assert (not b!29869))

(assert (not b!29829))

(assert (not b!29805))

(assert (not b!29831))

(assert (not b!29909))

(assert (not b!29795))

(assert (not b!29900))

(assert (not b!29936))

(assert (not b!29765))

(assert (not b!29941))

(assert (not b!29755))

(assert (not b!29939))

(assert (not b!29758))

(assert (not b!29848))

(assert (not d!15591))

(assert (not d!15587))

(assert (not b!29927))

(assert (not b!29853))

(assert (not b!29767))

(assert (not d!15561))

(assert (not b!29949))

(assert (not b!29733))

(assert (not b!29764))

(assert (not d!15505))

(assert (not b!29929))

(assert (not b!29792))

(assert (not b!29859))

(assert (not b!29824))

(assert (not b!29867))

(assert (not b!29827))

(assert (not b!29851))

(assert (not b!29750))

(assert (not b!29870))

(assert (not b!29850))

(assert (not b!29902))

(assert (not b!29920))

(assert (not b!29791))

(assert (not b!29772))

(assert (not b!29814))

(assert (not d!15529))

(assert (not b!29882))

(assert (not b!29879))

(assert (not d!15489))

(assert (not d!15507))

(assert (not b!29871))

(assert (not b!29762))

(assert (not b!29894))

(assert (not b!29854))

(assert (not b!29953))

(assert (not b!29855))

(assert (not b!29896))

(assert (not b!29728))

(assert (not b!29734))

(assert (not b!29866))

(assert (not b!29803))

(assert (not d!15589))

(assert (not b!29797))

(assert (not b!29842))

(assert (not b!29886))

(assert (not b!29874))

(assert (not b!29813))

(assert (not b!29820))

(assert (not b!29790))

(assert (not b!29877))

(assert (not b!29935))

(assert tp_is_empty!179)

(assert (not b!29746))

(assert (not d!15531))

(assert (not b!29756))

(assert (not d!15563))

(assert (not b!29796))

(assert (not b!29809))

(assert (not b!29906))

(assert (not b!29912))

(assert (not b!29881))

(assert (not d!15487))

(assert (not b!29815))

(assert (not b!29841))

(assert (not d!15533))

(assert (not b!29926))

(assert (not b!29823))

(assert (not b!29969))

(assert (not d!15497))

(assert (not b!29923))

(assert (not b!29807))

(assert (not b!29898))

(assert (not b!29862))

(assert (not b!29875))

(assert (not b!29857))

(assert (not b!29943))

(assert (not b!29798))

(assert (not b!29760))

(assert (not b!29822))

(assert (not b!29812))

(assert (not b!29835))

(assert (not b!29933))

(assert (not b!29810))

(assert (not b!29826))

(assert (not b!29847))

(assert (not b!29754))

(assert (not b!29845))

(assert (not b!29890))

(assert (not b!29932))

(assert (not b!29945))

(assert (not b!29789))

(assert (not b!29800))

(assert (not b!29925))

(assert (not b!29959))

(assert (not b!29910))

(assert (not b!29793))

(assert (not b!29821))

(assert (not b!29802))

(assert (not b!29931))

(assert (not b!29865))

(assert (not b!29911))

(assert (not b!29768))

(assert (not b!29861))

(assert (not b!29892))

(assert (not b!29766))

(assert (not b!29934))

(assert (not b!29818))

(assert (not b!29816))

(assert (not b!29849))

(assert (not b!29880))

(assert (not b!29967))

(assert (not b!29868))

(assert (not b!29965))

(assert (not b!29899))

(assert (not d!15521))

(assert (not b!29901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!15603 () Bool)

(declare-fun res!13819 () Bool)

(declare-fun e!15291 () Bool)

(assert (=> d!15603 (=> res!13819 e!15291)))

(assert (=> d!15603 (= res!13819 (not (is-CC!66 (left!711 lt!5390))))))

(assert (=> d!15603 (= (balanced!62 (left!711 lt!5390)) e!15291)))

(declare-fun b!29973 () Bool)

(declare-fun e!15290 () Bool)

(assert (=> b!29973 (= e!15291 e!15290)))

(declare-fun res!13818 () Bool)

(assert (=> b!29973 (=> (not res!13818) (not e!15290))))

(assert (=> b!29973 (= res!13818 (>= (- (level!55 (left!711 (left!711 lt!5390))) (level!55 (right!714 (left!711 lt!5390)))) (- 1)))))

(declare-fun b!29976 () Bool)

(assert (=> b!29976 (= e!15290 (balanced!62 (right!714 (left!711 lt!5390))))))

(declare-fun b!29975 () Bool)

(declare-fun res!13817 () Bool)

(assert (=> b!29975 (=> (not res!13817) (not e!15290))))

(assert (=> b!29975 (= res!13817 (balanced!62 (left!711 (left!711 lt!5390))))))

(declare-fun b!29974 () Bool)

(declare-fun res!13816 () Bool)

(assert (=> b!29974 (=> (not res!13816) (not e!15290))))

(assert (=> b!29974 (= res!13816 (<= (- (level!55 (left!711 (left!711 lt!5390))) (level!55 (right!714 (left!711 lt!5390)))) 1))))

(assert (= (and d!15603 (not res!13819)) b!29973))

(assert (= (and b!29973 res!13818) b!29974))

(assert (= (and b!29974 res!13816) b!29975))

(assert (= (and b!29975 res!13817) b!29976))

(declare-fun m!31981 () Bool)

(assert (=> b!29973 m!31981))

(declare-fun m!31983 () Bool)

(assert (=> b!29973 m!31983))

(declare-fun m!31985 () Bool)

(assert (=> b!29976 m!31985))

(declare-fun m!31987 () Bool)

(assert (=> b!29975 m!31987))

(assert (=> b!29974 m!31981))

(assert (=> b!29974 m!31983))

(assert (=> b!29907 d!15603))

(declare-fun d!15605 () Bool)

(assert (=> d!15605 (= (isEmpty!323 (right!714 (left!711 xs!533))) (= (right!714 (left!711 xs!533)) Empty!77))))

(assert (=> b!29794 d!15605))

(declare-fun b!29978 () Bool)

(declare-fun e!15292 () Int)

(declare-fun lt!5484 () Int)

(declare-fun lt!5483 () Int)

(assert (=> b!29978 (= e!15292 (+ 1 (ite (>= lt!5484 lt!5483) lt!5484 lt!5483)))))

(assert (=> b!29978 (= lt!5483 (level!55 (right!714 (left!711 (right!714 xs!533)))))))

(assert (=> b!29978 (= lt!5484 (level!55 (left!711 (left!711 (right!714 xs!533)))))))

(declare-fun d!15607 () Bool)

(declare-fun lt!5482 () Int)

(assert (=> d!15607 (>= lt!5482 0)))

(assert (=> d!15607 (= lt!5482 e!15292)))

(declare-fun c!6534 () Bool)

(assert (=> d!15607 (= c!6534 (or (is-Empty!77 (left!711 (right!714 xs!533))) (is-Single!66 (left!711 (right!714 xs!533)))))))

(assert (=> d!15607 (= (level!55 (left!711 (right!714 xs!533))) lt!5482)))

(declare-fun b!29977 () Bool)

(assert (=> b!29977 (= e!15292 0)))

(assert (= (and d!15607 c!6534) b!29977))

(assert (= (and d!15607 (not c!6534)) b!29978))

(declare-fun m!31989 () Bool)

(assert (=> b!29978 m!31989))

(declare-fun m!31991 () Bool)

(assert (=> b!29978 m!31991))

(assert (=> b!29850 d!15607))

(declare-fun b!29980 () Bool)

(declare-fun e!15293 () Int)

(declare-fun lt!5487 () Int)

(declare-fun lt!5486 () Int)

(assert (=> b!29980 (= e!15293 (+ 1 (ite (>= lt!5487 lt!5486) lt!5487 lt!5486)))))

(assert (=> b!29980 (= lt!5486 (level!55 (right!714 (right!714 (right!714 xs!533)))))))

(assert (=> b!29980 (= lt!5487 (level!55 (left!711 (right!714 (right!714 xs!533)))))))

(declare-fun d!15609 () Bool)

(declare-fun lt!5485 () Int)

(assert (=> d!15609 (>= lt!5485 0)))

(assert (=> d!15609 (= lt!5485 e!15293)))

(declare-fun c!6535 () Bool)

(assert (=> d!15609 (= c!6535 (or (is-Empty!77 (right!714 (right!714 xs!533))) (is-Single!66 (right!714 (right!714 xs!533)))))))

(assert (=> d!15609 (= (level!55 (right!714 (right!714 xs!533))) lt!5485)))

(declare-fun b!29979 () Bool)

(assert (=> b!29979 (= e!15293 0)))

(assert (= (and d!15609 c!6535) b!29979))

(assert (= (and d!15609 (not c!6535)) b!29980))

(declare-fun m!31993 () Bool)

(assert (=> b!29980 m!31993))

(declare-fun m!31995 () Bool)

(assert (=> b!29980 m!31995))

(assert (=> b!29850 d!15609))

(declare-fun b!29984 () Bool)

(declare-fun e!15295 () Bool)

(assert (=> b!29984 (= e!15295 (concInv!61 (right!714 lt!5437)))))

(declare-fun b!29983 () Bool)

(declare-fun res!13820 () Bool)

(assert (=> b!29983 (=> (not res!13820) (not e!15295))))

(assert (=> b!29983 (= res!13820 (concInv!61 (left!711 lt!5437)))))

(declare-fun b!29981 () Bool)

(declare-fun e!15294 () Bool)

(assert (=> b!29981 (= e!15294 e!15295)))

(declare-fun res!13823 () Bool)

(assert (=> b!29981 (=> (not res!13823) (not e!15295))))

(assert (=> b!29981 (= res!13823 (not (isEmpty!323 (left!711 lt!5437))))))

(declare-fun b!29982 () Bool)

(declare-fun res!13822 () Bool)

(assert (=> b!29982 (=> (not res!13822) (not e!15295))))

(assert (=> b!29982 (= res!13822 (not (isEmpty!323 (right!714 lt!5437))))))

(declare-fun d!15611 () Bool)

(declare-fun res!13821 () Bool)

(assert (=> d!15611 (=> res!13821 e!15294)))

(assert (=> d!15611 (= res!13821 (not (is-CC!66 lt!5437)))))

(assert (=> d!15611 (= (concInv!61 lt!5437) e!15294)))

(assert (= (and d!15611 (not res!13821)) b!29981))

(assert (= (and b!29981 res!13823) b!29982))

(assert (= (and b!29982 res!13822) b!29983))

(assert (= (and b!29983 res!13820) b!29984))

(declare-fun m!31997 () Bool)

(assert (=> b!29984 m!31997))

(declare-fun m!31999 () Bool)

(assert (=> b!29983 m!31999))

(declare-fun m!32001 () Bool)

(assert (=> b!29981 m!32001))

(declare-fun m!32003 () Bool)

(assert (=> b!29982 m!32003))

(assert (=> b!29823 d!15611))

(declare-fun b!29986 () Bool)

(declare-fun e!15296 () Int)

(declare-fun lt!5490 () Int)

(declare-fun lt!5489 () Int)

(assert (=> b!29986 (= e!15296 (+ 1 (ite (>= lt!5490 lt!5489) lt!5490 lt!5489)))))

(assert (=> b!29986 (= lt!5489 (level!55 (right!714 (left!711 (right!714 res!5544)))))))

(assert (=> b!29986 (= lt!5490 (level!55 (left!711 (left!711 (right!714 res!5544)))))))

(declare-fun d!15613 () Bool)

(declare-fun lt!5488 () Int)

(assert (=> d!15613 (>= lt!5488 0)))

(assert (=> d!15613 (= lt!5488 e!15296)))

(declare-fun c!6536 () Bool)

(assert (=> d!15613 (= c!6536 (or (is-Empty!77 (left!711 (right!714 res!5544))) (is-Single!66 (left!711 (right!714 res!5544)))))))

(assert (=> d!15613 (= (level!55 (left!711 (right!714 res!5544))) lt!5488)))

(declare-fun b!29985 () Bool)

(assert (=> b!29985 (= e!15296 0)))

(assert (= (and d!15613 c!6536) b!29985))

(assert (= (and d!15613 (not c!6536)) b!29986))

(declare-fun m!32005 () Bool)

(assert (=> b!29986 m!32005))

(declare-fun m!32007 () Bool)

(assert (=> b!29986 m!32007))

(assert (=> b!29797 d!15613))

(declare-fun b!29988 () Bool)

(declare-fun e!15297 () Int)

(declare-fun lt!5493 () Int)

(declare-fun lt!5492 () Int)

(assert (=> b!29988 (= e!15297 (+ 1 (ite (>= lt!5493 lt!5492) lt!5493 lt!5492)))))

(assert (=> b!29988 (= lt!5492 (level!55 (right!714 (right!714 (right!714 res!5544)))))))

(assert (=> b!29988 (= lt!5493 (level!55 (left!711 (right!714 (right!714 res!5544)))))))

(declare-fun d!15615 () Bool)

(declare-fun lt!5491 () Int)

(assert (=> d!15615 (>= lt!5491 0)))

(assert (=> d!15615 (= lt!5491 e!15297)))

(declare-fun c!6537 () Bool)

(assert (=> d!15615 (= c!6537 (or (is-Empty!77 (right!714 (right!714 res!5544))) (is-Single!66 (right!714 (right!714 res!5544)))))))

(assert (=> d!15615 (= (level!55 (right!714 (right!714 res!5544))) lt!5491)))

(declare-fun b!29987 () Bool)

(assert (=> b!29987 (= e!15297 0)))

(assert (= (and d!15615 c!6537) b!29987))

(assert (= (and d!15615 (not c!6537)) b!29988))

(declare-fun m!32009 () Bool)

(assert (=> b!29988 m!32009))

(declare-fun m!32011 () Bool)

(assert (=> b!29988 m!32011))

(assert (=> b!29797 d!15615))

(declare-fun d!15617 () Bool)

(assert (=> d!15617 (= (isEmpty!323 (left!711 (right!714 res!5544))) (= (left!711 (right!714 res!5544)) Empty!77))))

(assert (=> b!29755 d!15617))

(assert (=> b!29931 d!15503))

(declare-fun b!29990 () Bool)

(declare-fun e!15298 () Int)

(declare-fun lt!5496 () Int)

(declare-fun lt!5495 () Int)

(assert (=> b!29990 (= e!15298 (+ 1 (ite (>= lt!5496 lt!5495) lt!5496 lt!5495)))))

(assert (=> b!29990 (= lt!5495 (level!55 (right!714 (right!714 (right!714 nll!6)))))))

(assert (=> b!29990 (= lt!5496 (level!55 (left!711 (right!714 (right!714 nll!6)))))))

(declare-fun d!15619 () Bool)

(declare-fun lt!5494 () Int)

(assert (=> d!15619 (>= lt!5494 0)))

(assert (=> d!15619 (= lt!5494 e!15298)))

(declare-fun c!6538 () Bool)

(assert (=> d!15619 (= c!6538 (or (is-Empty!77 (right!714 (right!714 nll!6))) (is-Single!66 (right!714 (right!714 nll!6)))))))

(assert (=> d!15619 (= (level!55 (right!714 (right!714 nll!6))) lt!5494)))

(declare-fun b!29989 () Bool)

(assert (=> b!29989 (= e!15298 0)))

(assert (= (and d!15619 c!6538) b!29989))

(assert (= (and d!15619 (not c!6538)) b!29990))

(declare-fun m!32013 () Bool)

(assert (=> b!29990 m!32013))

(declare-fun m!32015 () Bool)

(assert (=> b!29990 m!32015))

(assert (=> b!29726 d!15619))

(declare-fun b!29992 () Bool)

(declare-fun e!15299 () Int)

(declare-fun lt!5499 () Int)

(declare-fun lt!5498 () Int)

(assert (=> b!29992 (= e!15299 (+ 1 (ite (>= lt!5499 lt!5498) lt!5499 lt!5498)))))

(assert (=> b!29992 (= lt!5498 (level!55 (right!714 (left!711 (right!714 nll!6)))))))

(assert (=> b!29992 (= lt!5499 (level!55 (left!711 (left!711 (right!714 nll!6)))))))

(declare-fun d!15621 () Bool)

(declare-fun lt!5497 () Int)

(assert (=> d!15621 (>= lt!5497 0)))

(assert (=> d!15621 (= lt!5497 e!15299)))

(declare-fun c!6539 () Bool)

(assert (=> d!15621 (= c!6539 (or (is-Empty!77 (left!711 (right!714 nll!6))) (is-Single!66 (left!711 (right!714 nll!6)))))))

(assert (=> d!15621 (= (level!55 (left!711 (right!714 nll!6))) lt!5497)))

(declare-fun b!29991 () Bool)

(assert (=> b!29991 (= e!15299 0)))

(assert (= (and d!15621 c!6539) b!29991))

(assert (= (and d!15621 (not c!6539)) b!29992))

(declare-fun m!32017 () Bool)

(assert (=> b!29992 m!32017))

(declare-fun m!32019 () Bool)

(assert (=> b!29992 m!32019))

(assert (=> b!29726 d!15621))

(declare-fun b!29994 () Bool)

(declare-fun e!15300 () List!363)

(assert (=> b!29994 (= e!15300 (Cons!357 (h!274 (t!4377 (toList!118 xs!533))) (++!43 (t!4377 (t!4377 (toList!118 xs!533))) (toList!118 ys!77))))))

(declare-fun b!29993 () Bool)

(assert (=> b!29993 (= e!15300 (toList!118 ys!77))))

(declare-fun b!29995 () Bool)

(declare-fun res!13825 () Bool)

(declare-fun e!15301 () Bool)

(assert (=> b!29995 (=> (not res!13825) (not e!15301))))

(declare-fun lt!5500 () List!363)

(assert (=> b!29995 (= res!13825 (= (size!275 lt!5500) (+ (size!275 (t!4377 (toList!118 xs!533))) (size!275 (toList!118 ys!77)))))))

(declare-fun b!29996 () Bool)

(assert (=> b!29996 (= e!15301 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5500 (t!4377 (toList!118 xs!533)))))))

(declare-fun d!15623 () Bool)

(assert (=> d!15623 e!15301))

(declare-fun res!13824 () Bool)

(assert (=> d!15623 (=> (not res!13824) (not e!15301))))

(assert (=> d!15623 (= res!13824 (= (content!73 lt!5500) (union (content!73 (t!4377 (toList!118 xs!533))) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15623 (= lt!5500 e!15300)))

(declare-fun c!6540 () Bool)

(assert (=> d!15623 (= c!6540 (is-Nil!358 (t!4377 (toList!118 xs!533))))))

(assert (=> d!15623 (= (++!43 (t!4377 (toList!118 xs!533)) (toList!118 ys!77)) lt!5500)))

(assert (= (and d!15623 c!6540) b!29993))

(assert (= (and d!15623 (not c!6540)) b!29994))

(assert (= (and d!15623 res!13824) b!29995))

(assert (= (and b!29995 res!13825) b!29996))

(assert (=> b!29994 m!31523))

(declare-fun m!32021 () Bool)

(assert (=> b!29994 m!32021))

(declare-fun m!32023 () Bool)

(assert (=> b!29995 m!32023))

(declare-fun m!32025 () Bool)

(assert (=> b!29995 m!32025))

(assert (=> b!29995 m!31523))

(assert (=> b!29995 m!31691))

(declare-fun m!32027 () Bool)

(assert (=> d!15623 m!32027))

(declare-fun m!32029 () Bool)

(assert (=> d!15623 m!32029))

(assert (=> d!15623 m!31523))

(assert (=> d!15623 m!31697))

(assert (=> b!29786 d!15623))

(declare-fun b!29998 () Bool)

(declare-fun e!15302 () Int)

(declare-fun lt!5503 () Int)

(declare-fun lt!5502 () Int)

(assert (=> b!29998 (= e!15302 (+ 1 (ite (>= lt!5503 lt!5502) lt!5503 lt!5502)))))

(assert (=> b!29998 (= lt!5502 (level!55 (right!714 (right!714 lt!5390))))))

(assert (=> b!29998 (= lt!5503 (level!55 (left!711 (right!714 lt!5390))))))

(declare-fun d!15625 () Bool)

(declare-fun lt!5501 () Int)

(assert (=> d!15625 (>= lt!5501 0)))

(assert (=> d!15625 (= lt!5501 e!15302)))

(declare-fun c!6541 () Bool)

(assert (=> d!15625 (= c!6541 (or (is-Empty!77 (right!714 lt!5390)) (is-Single!66 (right!714 lt!5390))))))

(assert (=> d!15625 (= (level!55 (right!714 lt!5390)) lt!5501)))

(declare-fun b!29997 () Bool)

(assert (=> b!29997 (= e!15302 0)))

(assert (= (and d!15625 c!6541) b!29997))

(assert (= (and d!15625 (not c!6541)) b!29998))

(declare-fun m!32031 () Bool)

(assert (=> b!29998 m!32031))

(declare-fun m!32033 () Bool)

(assert (=> b!29998 m!32033))

(assert (=> b!29831 d!15625))

(declare-fun b!30000 () Bool)

(declare-fun e!15303 () Int)

(declare-fun lt!5506 () Int)

(declare-fun lt!5505 () Int)

(assert (=> b!30000 (= e!15303 (+ 1 (ite (>= lt!5506 lt!5505) lt!5506 lt!5505)))))

(assert (=> b!30000 (= lt!5505 (level!55 (right!714 (left!711 lt!5390))))))

(assert (=> b!30000 (= lt!5506 (level!55 (left!711 (left!711 lt!5390))))))

(declare-fun d!15627 () Bool)

(declare-fun lt!5504 () Int)

(assert (=> d!15627 (>= lt!5504 0)))

(assert (=> d!15627 (= lt!5504 e!15303)))

(declare-fun c!6542 () Bool)

(assert (=> d!15627 (= c!6542 (or (is-Empty!77 (left!711 lt!5390)) (is-Single!66 (left!711 lt!5390))))))

(assert (=> d!15627 (= (level!55 (left!711 lt!5390)) lt!5504)))

(declare-fun b!29999 () Bool)

(assert (=> b!29999 (= e!15303 0)))

(assert (= (and d!15627 c!6542) b!29999))

(assert (= (and d!15627 (not c!6542)) b!30000))

(assert (=> b!30000 m!31983))

(assert (=> b!30000 m!31981))

(assert (=> b!29831 d!15627))

(declare-fun d!15629 () Bool)

(assert (=> d!15629 (= (isEmpty!323 (left!711 (left!711 res!5544))) (= (left!711 (left!711 res!5544)) Empty!77))))

(assert (=> b!29909 d!15629))

(declare-fun b!30001 () Bool)

(declare-fun e!15304 () Bool)

(assert (=> b!30001 (= e!15304 (= (++!43 (++!43 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(declare-fun lt!5507 () Bool)

(assert (=> b!30001 (= lt!5507 (appendAssoc!11 (t!4377 (t!4377 (toList!118 (left!711 xs!533)))) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))

(declare-fun d!15631 () Bool)

(assert (=> d!15631 e!15304))

(declare-fun c!6543 () Bool)

(assert (=> d!15631 (= c!6543 (is-Cons!357 (t!4377 (toList!118 (left!711 xs!533)))))))

(assert (=> d!15631 (= (appendAssoc!11 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) true)))

(declare-fun b!30002 () Bool)

(assert (=> b!30002 (= e!15304 (= (++!43 (++!43 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(assert (= (and d!15631 c!6543) b!30001))

(assert (= (and d!15631 (not c!6543)) b!30002))

(assert (=> b!30001 m!31801))

(declare-fun m!32035 () Bool)

(assert (=> b!30001 m!32035))

(assert (=> b!30001 m!31533))

(declare-fun m!32037 () Bool)

(assert (=> b!30001 m!32037))

(assert (=> b!30001 m!31533))

(assert (=> b!30001 m!31531))

(assert (=> b!30001 m!31801))

(assert (=> b!30001 m!32037))

(assert (=> b!30001 m!31531))

(declare-fun m!32039 () Bool)

(assert (=> b!30001 m!32039))

(assert (=> b!30001 m!31533))

(assert (=> b!30001 m!31531))

(declare-fun m!32041 () Bool)

(assert (=> b!30001 m!32041))

(assert (=> b!30002 m!31533))

(assert (=> b!30002 m!32037))

(assert (=> b!30002 m!32037))

(assert (=> b!30002 m!31531))

(assert (=> b!30002 m!32039))

(assert (=> b!30002 m!31533))

(assert (=> b!30002 m!31531))

(assert (=> b!30002 m!31801))

(assert (=> b!30002 m!31801))

(assert (=> b!30002 m!32035))

(assert (=> b!29844 d!15631))

(declare-fun b!30004 () Bool)

(declare-fun e!15305 () List!363)

(assert (=> b!30004 (= e!15305 (Cons!357 (h!274 (toList!118 (left!711 (right!714 xs!533)))) (++!43 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))

(declare-fun b!30003 () Bool)

(assert (=> b!30003 (= e!15305 (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))

(declare-fun b!30005 () Bool)

(declare-fun res!13827 () Bool)

(declare-fun e!15306 () Bool)

(assert (=> b!30005 (=> (not res!13827) (not e!15306))))

(declare-fun lt!5508 () List!363)

(assert (=> b!30005 (= res!13827 (= (size!275 lt!5508) (+ (size!275 (toList!118 (left!711 (right!714 xs!533)))) (size!275 (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(declare-fun b!30006 () Bool)

(assert (=> b!30006 (= e!15306 (or (not (= (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)) Nil!358)) (= lt!5508 (toList!118 (left!711 (right!714 xs!533))))))))

(declare-fun d!15633 () Bool)

(assert (=> d!15633 e!15306))

(declare-fun res!13826 () Bool)

(assert (=> d!15633 (=> (not res!13826) (not e!15306))))

(assert (=> d!15633 (= res!13826 (= (content!73 lt!5508) (union (content!73 (toList!118 (left!711 (right!714 xs!533)))) (content!73 (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(assert (=> d!15633 (= lt!5508 e!15305)))

(declare-fun c!6544 () Bool)

(assert (=> d!15633 (= c!6544 (is-Nil!358 (toList!118 (left!711 (right!714 xs!533)))))))

(assert (=> d!15633 (= (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) lt!5508)))

(assert (= (and d!15633 c!6544) b!30003))

(assert (= (and d!15633 (not c!6544)) b!30004))

(assert (= (and d!15633 res!13826) b!30005))

(assert (= (and b!30005 res!13827) b!30006))

(assert (=> b!30004 m!31531))

(declare-fun m!32043 () Bool)

(assert (=> b!30004 m!32043))

(declare-fun m!32045 () Bool)

(assert (=> b!30005 m!32045))

(assert (=> b!30005 m!31533))

(declare-fun m!32047 () Bool)

(assert (=> b!30005 m!32047))

(assert (=> b!30005 m!31531))

(declare-fun m!32049 () Bool)

(assert (=> b!30005 m!32049))

(declare-fun m!32051 () Bool)

(assert (=> d!15633 m!32051))

(assert (=> d!15633 m!31533))

(declare-fun m!32053 () Bool)

(assert (=> d!15633 m!32053))

(assert (=> d!15633 m!31531))

(declare-fun m!32055 () Bool)

(assert (=> d!15633 m!32055))

(assert (=> b!29844 d!15633))

(declare-fun b!30008 () Bool)

(declare-fun e!15307 () List!363)

(assert (=> b!30008 (= e!15307 (Cons!357 (h!274 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))))) (++!43 (t!4377 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))

(declare-fun b!30007 () Bool)

(assert (=> b!30007 (= e!15307 (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))

(declare-fun b!30009 () Bool)

(declare-fun res!13829 () Bool)

(declare-fun e!15308 () Bool)

(assert (=> b!30009 (=> (not res!13829) (not e!15308))))

(declare-fun lt!5509 () List!363)

(assert (=> b!30009 (= res!13829 (= (size!275 lt!5509) (+ (size!275 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))))) (size!275 (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(declare-fun b!30010 () Bool)

(assert (=> b!30010 (= e!15308 (or (not (= (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)) Nil!358)) (= lt!5509 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))))))))

(declare-fun d!15635 () Bool)

(assert (=> d!15635 e!15308))

(declare-fun res!13828 () Bool)

(assert (=> d!15635 (=> (not res!13828) (not e!15308))))

(assert (=> d!15635 (= res!13828 (= (content!73 lt!5509) (union (content!73 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))))) (content!73 (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(assert (=> d!15635 (= lt!5509 e!15307)))

(declare-fun c!6545 () Bool)

(assert (=> d!15635 (= c!6545 (is-Nil!358 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))))))))

(assert (=> d!15635 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) lt!5509)))

(assert (= (and d!15635 c!6545) b!30007))

(assert (= (and d!15635 (not c!6545)) b!30008))

(assert (= (and d!15635 res!13828) b!30009))

(assert (= (and b!30009 res!13829) b!30010))

(assert (=> b!30008 m!31531))

(declare-fun m!32057 () Bool)

(assert (=> b!30008 m!32057))

(declare-fun m!32059 () Bool)

(assert (=> b!30009 m!32059))

(assert (=> b!30009 m!31805))

(declare-fun m!32061 () Bool)

(assert (=> b!30009 m!32061))

(assert (=> b!30009 m!31531))

(assert (=> b!30009 m!32049))

(declare-fun m!32063 () Bool)

(assert (=> d!15635 m!32063))

(assert (=> d!15635 m!31805))

(declare-fun m!32065 () Bool)

(assert (=> d!15635 m!32065))

(assert (=> d!15635 m!31531))

(assert (=> d!15635 m!32055))

(assert (=> b!29844 d!15635))

(declare-fun b!30012 () Bool)

(declare-fun e!15309 () List!363)

(assert (=> b!30012 (= e!15309 (Cons!357 (h!274 (toList!118 (left!711 xs!533))) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (left!711 (right!714 xs!533))))))))

(declare-fun b!30011 () Bool)

(assert (=> b!30011 (= e!15309 (toList!118 (left!711 (right!714 xs!533))))))

(declare-fun b!30013 () Bool)

(declare-fun res!13831 () Bool)

(declare-fun e!15310 () Bool)

(assert (=> b!30013 (=> (not res!13831) (not e!15310))))

(declare-fun lt!5510 () List!363)

(assert (=> b!30013 (= res!13831 (= (size!275 lt!5510) (+ (size!275 (toList!118 (left!711 xs!533))) (size!275 (toList!118 (left!711 (right!714 xs!533)))))))))

(declare-fun b!30014 () Bool)

(assert (=> b!30014 (= e!15310 (or (not (= (toList!118 (left!711 (right!714 xs!533))) Nil!358)) (= lt!5510 (toList!118 (left!711 xs!533)))))))

(declare-fun d!15637 () Bool)

(assert (=> d!15637 e!15310))

(declare-fun res!13830 () Bool)

(assert (=> d!15637 (=> (not res!13830) (not e!15310))))

(assert (=> d!15637 (= res!13830 (= (content!73 lt!5510) (union (content!73 (toList!118 (left!711 xs!533))) (content!73 (toList!118 (left!711 (right!714 xs!533)))))))))

(assert (=> d!15637 (= lt!5510 e!15309)))

(declare-fun c!6546 () Bool)

(assert (=> d!15637 (= c!6546 (is-Nil!358 (toList!118 (left!711 xs!533))))))

(assert (=> d!15637 (= (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))) lt!5510)))

(assert (= (and d!15637 c!6546) b!30011))

(assert (= (and d!15637 (not c!6546)) b!30012))

(assert (= (and d!15637 res!13830) b!30013))

(assert (= (and b!30013 res!13831) b!30014))

(assert (=> b!30012 m!31533))

(assert (=> b!30012 m!32037))

(declare-fun m!32067 () Bool)

(assert (=> b!30013 m!32067))

(assert (=> b!30013 m!31519))

(declare-fun m!32069 () Bool)

(assert (=> b!30013 m!32069))

(assert (=> b!30013 m!31533))

(assert (=> b!30013 m!32047))

(declare-fun m!32071 () Bool)

(assert (=> d!15637 m!32071))

(assert (=> d!15637 m!31519))

(declare-fun m!32073 () Bool)

(assert (=> d!15637 m!32073))

(assert (=> d!15637 m!31533))

(assert (=> d!15637 m!32053))

(assert (=> b!29844 d!15637))

(declare-fun b!30016 () Bool)

(declare-fun e!15311 () List!363)

(assert (=> b!30016 (= e!15311 (Cons!357 (h!274 (toList!118 (left!711 xs!533))) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))))

(declare-fun b!30015 () Bool)

(assert (=> b!30015 (= e!15311 (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))))))

(declare-fun b!30017 () Bool)

(declare-fun res!13833 () Bool)

(declare-fun e!15312 () Bool)

(assert (=> b!30017 (=> (not res!13833) (not e!15312))))

(declare-fun lt!5511 () List!363)

(assert (=> b!30017 (= res!13833 (= (size!275 lt!5511) (+ (size!275 (toList!118 (left!711 xs!533))) (size!275 (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))))

(declare-fun b!30018 () Bool)

(assert (=> b!30018 (= e!15312 (or (not (= (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77))) Nil!358)) (= lt!5511 (toList!118 (left!711 xs!533)))))))

(declare-fun d!15639 () Bool)

(assert (=> d!15639 e!15312))

(declare-fun res!13832 () Bool)

(assert (=> d!15639 (=> (not res!13832) (not e!15312))))

(assert (=> d!15639 (= res!13832 (= (content!73 lt!5511) (union (content!73 (toList!118 (left!711 xs!533))) (content!73 (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))))

(assert (=> d!15639 (= lt!5511 e!15311)))

(declare-fun c!6547 () Bool)

(assert (=> d!15639 (= c!6547 (is-Nil!358 (toList!118 (left!711 xs!533))))))

(assert (=> d!15639 (= (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))) lt!5511)))

(assert (= (and d!15639 c!6547) b!30015))

(assert (= (and d!15639 (not c!6547)) b!30016))

(assert (= (and d!15639 res!13832) b!30017))

(assert (= (and b!30017 res!13833) b!30018))

(assert (=> b!30016 m!31801))

(assert (=> b!30016 m!32035))

(declare-fun m!32075 () Bool)

(assert (=> b!30017 m!32075))

(assert (=> b!30017 m!31519))

(assert (=> b!30017 m!32069))

(assert (=> b!30017 m!31801))

(declare-fun m!32077 () Bool)

(assert (=> b!30017 m!32077))

(declare-fun m!32079 () Bool)

(assert (=> d!15639 m!32079))

(assert (=> d!15639 m!31519))

(assert (=> d!15639 m!32073))

(assert (=> d!15639 m!31801))

(declare-fun m!32081 () Bool)

(assert (=> d!15639 m!32081))

(assert (=> b!29844 d!15639))

(declare-fun b!30022 () Bool)

(declare-fun e!15314 () Bool)

(assert (=> b!30022 (= e!15314 (concInv!61 (right!714 (right!714 (left!711 ys!77)))))))

(declare-fun b!30021 () Bool)

(declare-fun res!13834 () Bool)

(assert (=> b!30021 (=> (not res!13834) (not e!15314))))

(assert (=> b!30021 (= res!13834 (concInv!61 (left!711 (right!714 (left!711 ys!77)))))))

(declare-fun b!30019 () Bool)

(declare-fun e!15313 () Bool)

(assert (=> b!30019 (= e!15313 e!15314)))

(declare-fun res!13837 () Bool)

(assert (=> b!30019 (=> (not res!13837) (not e!15314))))

(assert (=> b!30019 (= res!13837 (not (isEmpty!323 (left!711 (right!714 (left!711 ys!77))))))))

(declare-fun b!30020 () Bool)

(declare-fun res!13836 () Bool)

(assert (=> b!30020 (=> (not res!13836) (not e!15314))))

(assert (=> b!30020 (= res!13836 (not (isEmpty!323 (right!714 (right!714 (left!711 ys!77))))))))

(declare-fun d!15641 () Bool)

(declare-fun res!13835 () Bool)

(assert (=> d!15641 (=> res!13835 e!15313)))

(assert (=> d!15641 (= res!13835 (not (is-CC!66 (right!714 (left!711 ys!77)))))))

(assert (=> d!15641 (= (concInv!61 (right!714 (left!711 ys!77))) e!15313)))

(assert (= (and d!15641 (not res!13835)) b!30019))

(assert (= (and b!30019 res!13837) b!30020))

(assert (= (and b!30020 res!13836) b!30021))

(assert (= (and b!30021 res!13834) b!30022))

(declare-fun m!32083 () Bool)

(assert (=> b!30022 m!32083))

(declare-fun m!32085 () Bool)

(assert (=> b!30021 m!32085))

(declare-fun m!32087 () Bool)

(assert (=> b!30019 m!32087))

(declare-fun m!32089 () Bool)

(assert (=> b!30020 m!32089))

(assert (=> b!29849 d!15641))

(declare-fun d!15643 () Bool)

(assert (=> d!15643 (= (isEmpty!323 (left!711 (right!714 ys!77))) (= (left!711 (right!714 ys!77)) Empty!77))))

(assert (=> b!29862 d!15643))

(declare-fun b!30024 () Bool)

(declare-fun e!15315 () Int)

(declare-fun lt!5514 () Int)

(declare-fun lt!5513 () Int)

(assert (=> b!30024 (= e!15315 (+ 1 (ite (>= lt!5514 lt!5513) lt!5514 lt!5513)))))

(assert (=> b!30024 (= lt!5513 (level!55 (right!714 (right!714 (right!714 (left!711 ys!77))))))))

(assert (=> b!30024 (= lt!5514 (level!55 (left!711 (right!714 (right!714 (left!711 ys!77))))))))

(declare-fun d!15645 () Bool)

(declare-fun lt!5512 () Int)

(assert (=> d!15645 (>= lt!5512 0)))

(assert (=> d!15645 (= lt!5512 e!15315)))

(declare-fun c!6548 () Bool)

(assert (=> d!15645 (= c!6548 (or (is-Empty!77 (right!714 (right!714 (left!711 ys!77)))) (is-Single!66 (right!714 (right!714 (left!711 ys!77))))))))

(assert (=> d!15645 (= (level!55 (right!714 (right!714 (left!711 ys!77)))) lt!5512)))

(declare-fun b!30023 () Bool)

(assert (=> b!30023 (= e!15315 0)))

(assert (= (and d!15645 c!6548) b!30023))

(assert (= (and d!15645 (not c!6548)) b!30024))

(declare-fun m!32091 () Bool)

(assert (=> b!30024 m!32091))

(declare-fun m!32093 () Bool)

(assert (=> b!30024 m!32093))

(assert (=> b!29904 d!15645))

(declare-fun b!30026 () Bool)

(declare-fun e!15316 () Int)

(declare-fun lt!5517 () Int)

(declare-fun lt!5516 () Int)

(assert (=> b!30026 (= e!15316 (+ 1 (ite (>= lt!5517 lt!5516) lt!5517 lt!5516)))))

(assert (=> b!30026 (= lt!5516 (level!55 (right!714 (left!711 (right!714 (left!711 ys!77))))))))

(assert (=> b!30026 (= lt!5517 (level!55 (left!711 (left!711 (right!714 (left!711 ys!77))))))))

(declare-fun d!15647 () Bool)

(declare-fun lt!5515 () Int)

(assert (=> d!15647 (>= lt!5515 0)))

(assert (=> d!15647 (= lt!5515 e!15316)))

(declare-fun c!6549 () Bool)

(assert (=> d!15647 (= c!6549 (or (is-Empty!77 (left!711 (right!714 (left!711 ys!77)))) (is-Single!66 (left!711 (right!714 (left!711 ys!77))))))))

(assert (=> d!15647 (= (level!55 (left!711 (right!714 (left!711 ys!77)))) lt!5515)))

(declare-fun b!30025 () Bool)

(assert (=> b!30025 (= e!15316 0)))

(assert (= (and d!15647 c!6549) b!30025))

(assert (= (and d!15647 (not c!6549)) b!30026))

(declare-fun m!32095 () Bool)

(assert (=> b!30026 m!32095))

(declare-fun m!32097 () Bool)

(assert (=> b!30026 m!32097))

(assert (=> b!29904 d!15647))

(declare-fun b!30028 () Bool)

(declare-fun e!15317 () List!363)

(assert (=> b!30028 (= e!15317 (Cons!357 (h!274 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))))) (++!43 (t!4377 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))))) (toList!118 ys!77))))))

(declare-fun b!30027 () Bool)

(assert (=> b!30027 (= e!15317 (toList!118 ys!77))))

(declare-fun b!30029 () Bool)

(declare-fun res!13839 () Bool)

(declare-fun e!15318 () Bool)

(assert (=> b!30029 (=> (not res!13839) (not e!15318))))

(declare-fun lt!5518 () List!363)

(assert (=> b!30029 (= res!13839 (= (size!275 lt!5518) (+ (size!275 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))))) (size!275 (toList!118 ys!77)))))))

(declare-fun b!30030 () Bool)

(assert (=> b!30030 (= e!15318 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5518 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))))))))

(declare-fun d!15649 () Bool)

(assert (=> d!15649 e!15318))

(declare-fun res!13838 () Bool)

(assert (=> d!15649 (=> (not res!13838) (not e!15318))))

(assert (=> d!15649 (= res!13838 (= (content!73 lt!5518) (union (content!73 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))))) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15649 (= lt!5518 e!15317)))

(declare-fun c!6550 () Bool)

(assert (=> d!15649 (= c!6550 (is-Nil!358 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))))))))

(assert (=> d!15649 (= (++!43 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77)) lt!5518)))

(assert (= (and d!15649 c!6550) b!30027))

(assert (= (and d!15649 (not c!6550)) b!30028))

(assert (= (and d!15649 res!13838) b!30029))

(assert (= (and b!30029 res!13839) b!30030))

(assert (=> b!30028 m!31523))

(declare-fun m!32099 () Bool)

(assert (=> b!30028 m!32099))

(declare-fun m!32101 () Bool)

(assert (=> b!30029 m!32101))

(assert (=> b!30029 m!31629))

(declare-fun m!32103 () Bool)

(assert (=> b!30029 m!32103))

(assert (=> b!30029 m!31523))

(assert (=> b!30029 m!31691))

(declare-fun m!32105 () Bool)

(assert (=> d!15649 m!32105))

(assert (=> d!15649 m!31629))

(declare-fun m!32107 () Bool)

(assert (=> d!15649 m!32107))

(assert (=> d!15649 m!31523))

(assert (=> d!15649 m!31697))

(assert (=> b!29880 d!15649))

(declare-fun b!30032 () Bool)

(declare-fun e!15319 () List!363)

(assert (=> b!30032 (= e!15319 (Cons!357 (h!274 (toList!118 (left!711 (right!714 xs!533)))) (++!43 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (right!714 xs!533))))))))

(declare-fun b!30031 () Bool)

(assert (=> b!30031 (= e!15319 (toList!118 (right!714 (right!714 xs!533))))))

(declare-fun b!30033 () Bool)

(declare-fun res!13841 () Bool)

(declare-fun e!15320 () Bool)

(assert (=> b!30033 (=> (not res!13841) (not e!15320))))

(declare-fun lt!5519 () List!363)

(assert (=> b!30033 (= res!13841 (= (size!275 lt!5519) (+ (size!275 (toList!118 (left!711 (right!714 xs!533)))) (size!275 (toList!118 (right!714 (right!714 xs!533)))))))))

(declare-fun b!30034 () Bool)

(assert (=> b!30034 (= e!15320 (or (not (= (toList!118 (right!714 (right!714 xs!533))) Nil!358)) (= lt!5519 (toList!118 (left!711 (right!714 xs!533))))))))

(declare-fun d!15651 () Bool)

(assert (=> d!15651 e!15320))

(declare-fun res!13840 () Bool)

(assert (=> d!15651 (=> (not res!13840) (not e!15320))))

(assert (=> d!15651 (= res!13840 (= (content!73 lt!5519) (union (content!73 (toList!118 (left!711 (right!714 xs!533)))) (content!73 (toList!118 (right!714 (right!714 xs!533)))))))))

(assert (=> d!15651 (= lt!5519 e!15319)))

(declare-fun c!6551 () Bool)

(assert (=> d!15651 (= c!6551 (is-Nil!358 (toList!118 (left!711 (right!714 xs!533)))))))

(assert (=> d!15651 (= (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))) lt!5519)))

(assert (= (and d!15651 c!6551) b!30031))

(assert (= (and d!15651 (not c!6551)) b!30032))

(assert (= (and d!15651 res!13840) b!30033))

(assert (= (and b!30033 res!13841) b!30034))

(assert (=> b!30032 m!31529))

(declare-fun m!32109 () Bool)

(assert (=> b!30032 m!32109))

(declare-fun m!32111 () Bool)

(assert (=> b!30033 m!32111))

(assert (=> b!30033 m!31533))

(assert (=> b!30033 m!32047))

(assert (=> b!30033 m!31529))

(assert (=> b!30033 m!31795))

(declare-fun m!32113 () Bool)

(assert (=> d!15651 m!32113))

(assert (=> d!15651 m!31533))

(assert (=> d!15651 m!32053))

(assert (=> d!15651 m!31529))

(assert (=> d!15651 m!31799))

(assert (=> b!29880 d!15651))

(assert (=> b!29880 d!15633))

(assert (=> b!29880 d!15533))

(declare-fun b!30036 () Bool)

(declare-fun e!15321 () Int)

(declare-fun lt!5522 () Int)

(declare-fun lt!5521 () Int)

(assert (=> b!30036 (= e!15321 (+ 1 (ite (>= lt!5522 lt!5521) lt!5522 lt!5521)))))

(assert (=> b!30036 (= lt!5521 (level!55 (right!714 (right!714 (left!711 res!5544)))))))

(assert (=> b!30036 (= lt!5522 (level!55 (left!711 (right!714 (left!711 res!5544)))))))

(declare-fun d!15653 () Bool)

(declare-fun lt!5520 () Int)

(assert (=> d!15653 (>= lt!5520 0)))

(assert (=> d!15653 (= lt!5520 e!15321)))

(declare-fun c!6552 () Bool)

(assert (=> d!15653 (= c!6552 (or (is-Empty!77 (right!714 (left!711 res!5544))) (is-Single!66 (right!714 (left!711 res!5544)))))))

(assert (=> d!15653 (= (level!55 (right!714 (left!711 res!5544))) lt!5520)))

(declare-fun b!30035 () Bool)

(assert (=> b!30035 (= e!15321 0)))

(assert (= (and d!15653 c!6552) b!30035))

(assert (= (and d!15653 (not c!6552)) b!30036))

(declare-fun m!32115 () Bool)

(assert (=> b!30036 m!32115))

(declare-fun m!32117 () Bool)

(assert (=> b!30036 m!32117))

(assert (=> b!29898 d!15653))

(declare-fun b!30038 () Bool)

(declare-fun e!15322 () Int)

(declare-fun lt!5525 () Int)

(declare-fun lt!5524 () Int)

(assert (=> b!30038 (= e!15322 (+ 1 (ite (>= lt!5525 lt!5524) lt!5525 lt!5524)))))

(assert (=> b!30038 (= lt!5524 (level!55 (right!714 (left!711 (left!711 res!5544)))))))

(assert (=> b!30038 (= lt!5525 (level!55 (left!711 (left!711 (left!711 res!5544)))))))

(declare-fun d!15655 () Bool)

(declare-fun lt!5523 () Int)

(assert (=> d!15655 (>= lt!5523 0)))

(assert (=> d!15655 (= lt!5523 e!15322)))

(declare-fun c!6553 () Bool)

(assert (=> d!15655 (= c!6553 (or (is-Empty!77 (left!711 (left!711 res!5544))) (is-Single!66 (left!711 (left!711 res!5544)))))))

(assert (=> d!15655 (= (level!55 (left!711 (left!711 res!5544))) lt!5523)))

(declare-fun b!30037 () Bool)

(assert (=> b!30037 (= e!15322 0)))

(assert (= (and d!15655 c!6553) b!30037))

(assert (= (and d!15655 (not c!6553)) b!30038))

(declare-fun m!32119 () Bool)

(assert (=> b!30038 m!32119))

(declare-fun m!32121 () Bool)

(assert (=> b!30038 m!32121))

(assert (=> b!29898 d!15655))

(declare-fun d!15657 () Bool)

(declare-fun lt!5528 () Int)

(assert (=> d!15657 (>= lt!5528 0)))

(declare-fun e!15325 () Int)

(assert (=> d!15657 (= lt!5528 e!15325)))

(declare-fun c!6556 () Bool)

(assert (=> d!15657 (= c!6556 (is-Nil!358 lt!5448))))

(assert (=> d!15657 (= (size!275 lt!5448) lt!5528)))

(declare-fun b!30043 () Bool)

(assert (=> b!30043 (= e!15325 0)))

(declare-fun b!30044 () Bool)

(assert (=> b!30044 (= e!15325 (+ 1 (size!275 (t!4377 lt!5448))))))

(assert (= (and d!15657 c!6556) b!30043))

(assert (= (and d!15657 (not c!6556)) b!30044))

(declare-fun m!32123 () Bool)

(assert (=> b!30044 m!32123))

(assert (=> d!15529 d!15657))

(declare-fun d!15659 () Bool)

(declare-fun lt!5531 () Int)

(assert (=> d!15659 (>= lt!5531 0)))

(declare-fun e!15331 () Int)

(assert (=> d!15659 (= lt!5531 e!15331)))

(declare-fun c!6562 () Bool)

(assert (=> d!15659 (= c!6562 (is-Empty!77 (right!714 (right!714 xs!533))))))

(assert (=> d!15659 (= (size!276 (right!714 (right!714 xs!533))) lt!5531)))

(declare-fun b!30056 () Bool)

(declare-fun e!15330 () Int)

(assert (=> b!30056 (= e!15330 (+ (size!276 (left!711 (right!714 (right!714 xs!533)))) (size!276 (right!714 (right!714 (right!714 xs!533))))))))

(declare-fun b!30054 () Bool)

(assert (=> b!30054 (= e!15331 e!15330)))

(declare-fun c!6561 () Bool)

(assert (=> b!30054 (= c!6561 (is-Single!66 (right!714 (right!714 xs!533))))))

(declare-fun b!30055 () Bool)

(assert (=> b!30055 (= e!15330 1)))

(declare-fun b!30053 () Bool)

(assert (=> b!30053 (= e!15331 0)))

(assert (= (and b!30054 c!6561) b!30055))

(assert (= (and b!30054 (not c!6561)) b!30056))

(assert (= (and d!15659 c!6562) b!30053))

(assert (= (and d!15659 (not c!6562)) b!30054))

(declare-fun m!32125 () Bool)

(assert (=> b!30056 m!32125))

(declare-fun m!32127 () Bool)

(assert (=> b!30056 m!32127))

(assert (=> d!15529 d!15659))

(assert (=> d!15497 d!15587))

(assert (=> d!15497 d!15505))

(declare-fun b!30057 () Bool)

(declare-fun e!15332 () List!363)

(assert (=> b!30057 (= e!15332 Nil!358)))

(declare-fun b!30060 () Bool)

(declare-fun e!15333 () List!363)

(assert (=> b!30060 (= e!15333 (++!43 (toList!118 (left!711 lt!5390)) (toList!118 (right!714 lt!5390))))))

(declare-fun b!30059 () Bool)

(assert (=> b!30059 (= e!15333 (Cons!357 (x!8953 lt!5390) Nil!358))))

(declare-fun b!30058 () Bool)

(assert (=> b!30058 (= e!15332 e!15333)))

(declare-fun c!6564 () Bool)

(assert (=> b!30058 (= c!6564 (is-Single!66 lt!5390))))

(declare-fun d!15661 () Bool)

(declare-fun lt!5532 () List!363)

(assert (=> d!15661 (= (size!275 lt!5532) (size!276 lt!5390))))

(assert (=> d!15661 (= lt!5532 e!15332)))

(declare-fun c!6563 () Bool)

(assert (=> d!15661 (= c!6563 (is-Empty!77 lt!5390))))

(assert (=> d!15661 (= (toList!118 lt!5390) lt!5532)))

(assert (= (and b!30058 c!6564) b!30059))

(assert (= (and b!30058 (not c!6564)) b!30060))

(assert (= (and d!15661 c!6563) b!30057))

(assert (= (and d!15661 (not c!6563)) b!30058))

(declare-fun m!32129 () Bool)

(assert (=> b!30060 m!32129))

(declare-fun m!32131 () Bool)

(assert (=> b!30060 m!32131))

(assert (=> b!30060 m!32129))

(assert (=> b!30060 m!32131))

(declare-fun m!32133 () Bool)

(assert (=> b!30060 m!32133))

(declare-fun m!32135 () Bool)

(assert (=> d!15661 m!32135))

(declare-fun m!32137 () Bool)

(assert (=> d!15661 m!32137))

(assert (=> d!15497 d!15661))

(assert (=> d!15497 d!15591))

(declare-fun b!30064 () Bool)

(declare-fun e!15335 () Bool)

(assert (=> b!30064 (= e!15335 (concInv!61 (right!714 (left!711 (right!714 ys!77)))))))

(declare-fun b!30063 () Bool)

(declare-fun res!13842 () Bool)

(assert (=> b!30063 (=> (not res!13842) (not e!15335))))

(assert (=> b!30063 (= res!13842 (concInv!61 (left!711 (left!711 (right!714 ys!77)))))))

(declare-fun b!30061 () Bool)

(declare-fun e!15334 () Bool)

(assert (=> b!30061 (= e!15334 e!15335)))

(declare-fun res!13845 () Bool)

(assert (=> b!30061 (=> (not res!13845) (not e!15335))))

(assert (=> b!30061 (= res!13845 (not (isEmpty!323 (left!711 (left!711 (right!714 ys!77))))))))

(declare-fun b!30062 () Bool)

(declare-fun res!13844 () Bool)

(assert (=> b!30062 (=> (not res!13844) (not e!15335))))

(assert (=> b!30062 (= res!13844 (not (isEmpty!323 (right!714 (left!711 (right!714 ys!77))))))))

(declare-fun d!15663 () Bool)

(declare-fun res!13843 () Bool)

(assert (=> d!15663 (=> res!13843 e!15334)))

(assert (=> d!15663 (= res!13843 (not (is-CC!66 (left!711 (right!714 ys!77)))))))

(assert (=> d!15663 (= (concInv!61 (left!711 (right!714 ys!77))) e!15334)))

(assert (= (and d!15663 (not res!13843)) b!30061))

(assert (= (and b!30061 res!13845) b!30062))

(assert (= (and b!30062 res!13844) b!30063))

(assert (= (and b!30063 res!13842) b!30064))

(declare-fun m!32139 () Bool)

(assert (=> b!30064 m!32139))

(declare-fun m!32141 () Bool)

(assert (=> b!30063 m!32141))

(declare-fun m!32143 () Bool)

(assert (=> b!30061 m!32143))

(declare-fun m!32145 () Bool)

(assert (=> b!30062 m!32145))

(assert (=> b!29864 d!15663))

(declare-fun b!30066 () Bool)

(declare-fun e!15336 () Int)

(declare-fun lt!5535 () Int)

(declare-fun lt!5534 () Int)

(assert (=> b!30066 (= e!15336 (+ 1 (ite (>= lt!5535 lt!5534) lt!5535 lt!5534)))))

(assert (=> b!30066 (= lt!5534 (level!55 (right!714 (right!714 lt!5388))))))

(assert (=> b!30066 (= lt!5535 (level!55 (left!711 (right!714 lt!5388))))))

(declare-fun d!15665 () Bool)

(declare-fun lt!5533 () Int)

(assert (=> d!15665 (>= lt!5533 0)))

(assert (=> d!15665 (= lt!5533 e!15336)))

(declare-fun c!6565 () Bool)

(assert (=> d!15665 (= c!6565 (or (is-Empty!77 (right!714 lt!5388)) (is-Single!66 (right!714 lt!5388))))))

(assert (=> d!15665 (= (level!55 (right!714 lt!5388)) lt!5533)))

(declare-fun b!30065 () Bool)

(assert (=> b!30065 (= e!15336 0)))

(assert (= (and d!15665 c!6565) b!30065))

(assert (= (and d!15665 (not c!6565)) b!30066))

(declare-fun m!32147 () Bool)

(assert (=> b!30066 m!32147))

(declare-fun m!32149 () Bool)

(assert (=> b!30066 m!32149))

(assert (=> b!29802 d!15665))

(declare-fun b!30068 () Bool)

(declare-fun e!15337 () Int)

(declare-fun lt!5538 () Int)

(declare-fun lt!5537 () Int)

(assert (=> b!30068 (= e!15337 (+ 1 (ite (>= lt!5538 lt!5537) lt!5538 lt!5537)))))

(assert (=> b!30068 (= lt!5537 (level!55 (right!714 (left!711 lt!5388))))))

(assert (=> b!30068 (= lt!5538 (level!55 (left!711 (left!711 lt!5388))))))

(declare-fun d!15667 () Bool)

(declare-fun lt!5536 () Int)

(assert (=> d!15667 (>= lt!5536 0)))

(assert (=> d!15667 (= lt!5536 e!15337)))

(declare-fun c!6566 () Bool)

(assert (=> d!15667 (= c!6566 (or (is-Empty!77 (left!711 lt!5388)) (is-Single!66 (left!711 lt!5388))))))

(assert (=> d!15667 (= (level!55 (left!711 lt!5388)) lt!5536)))

(declare-fun b!30067 () Bool)

(assert (=> b!30067 (= e!15337 0)))

(assert (= (and d!15667 c!6566) b!30067))

(assert (= (and d!15667 (not c!6566)) b!30068))

(declare-fun m!32151 () Bool)

(assert (=> b!30068 m!32151))

(declare-fun m!32153 () Bool)

(assert (=> b!30068 m!32153))

(assert (=> b!29802 d!15667))

(assert (=> b!29790 d!15501))

(assert (=> b!29790 d!15499))

(declare-fun b!30069 () Bool)

(declare-fun e!15338 () List!363)

(assert (=> b!30069 (= e!15338 Nil!358)))

(declare-fun b!30072 () Bool)

(declare-fun e!15339 () List!363)

(assert (=> b!30072 (= e!15339 (++!43 (toList!118 (left!711 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!30071 () Bool)

(assert (=> b!30071 (= e!15339 (Cons!357 (x!8953 (left!711 (left!711 (left!711 (left!711 ys!77))))) Nil!358))))

(declare-fun b!30070 () Bool)

(assert (=> b!30070 (= e!15338 e!15339)))

(declare-fun c!6568 () Bool)

(assert (=> b!30070 (= c!6568 (is-Single!66 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun d!15669 () Bool)

(declare-fun lt!5539 () List!363)

(assert (=> d!15669 (= (size!275 lt!5539) (size!276 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15669 (= lt!5539 e!15338)))

(declare-fun c!6567 () Bool)

(assert (=> d!15669 (= c!6567 (is-Empty!77 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15669 (= (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) lt!5539)))

(assert (= (and b!30070 c!6568) b!30071))

(assert (= (and b!30070 (not c!6568)) b!30072))

(assert (= (and d!15669 c!6567) b!30069))

(assert (= (and d!15669 (not c!6567)) b!30070))

(declare-fun m!32155 () Bool)

(assert (=> b!30072 m!32155))

(declare-fun m!32157 () Bool)

(assert (=> b!30072 m!32157))

(assert (=> b!30072 m!32155))

(assert (=> b!30072 m!32157))

(declare-fun m!32159 () Bool)

(assert (=> b!30072 m!32159))

(declare-fun m!32161 () Bool)

(assert (=> d!15669 m!32161))

(declare-fun m!32163 () Bool)

(assert (=> d!15669 m!32163))

(assert (=> b!29878 d!15669))

(declare-fun b!30073 () Bool)

(declare-fun e!15340 () List!363)

(assert (=> b!30073 (= e!15340 Nil!358)))

(declare-fun b!30076 () Bool)

(declare-fun e!15341 () List!363)

(assert (=> b!30076 (= e!15341 (++!43 (toList!118 (left!711 (right!714 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (right!714 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!30075 () Bool)

(assert (=> b!30075 (= e!15341 (Cons!357 (x!8953 (right!714 (left!711 (left!711 (left!711 ys!77))))) Nil!358))))

(declare-fun b!30074 () Bool)

(assert (=> b!30074 (= e!15340 e!15341)))

(declare-fun c!6570 () Bool)

(assert (=> b!30074 (= c!6570 (is-Single!66 (right!714 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun d!15671 () Bool)

(declare-fun lt!5540 () List!363)

(assert (=> d!15671 (= (size!275 lt!5540) (size!276 (right!714 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15671 (= lt!5540 e!15340)))

(declare-fun c!6569 () Bool)

(assert (=> d!15671 (= c!6569 (is-Empty!77 (right!714 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15671 (= (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77))))) lt!5540)))

(assert (= (and b!30074 c!6570) b!30075))

(assert (= (and b!30074 (not c!6570)) b!30076))

(assert (= (and d!15671 c!6569) b!30073))

(assert (= (and d!15671 (not c!6569)) b!30074))

(declare-fun m!32165 () Bool)

(assert (=> b!30076 m!32165))

(declare-fun m!32167 () Bool)

(assert (=> b!30076 m!32167))

(assert (=> b!30076 m!32165))

(assert (=> b!30076 m!32167))

(declare-fun m!32169 () Bool)

(assert (=> b!30076 m!32169))

(declare-fun m!32171 () Bool)

(assert (=> d!15671 m!32171))

(declare-fun m!32173 () Bool)

(assert (=> d!15671 m!32173))

(assert (=> b!29878 d!15671))

(declare-fun b!30078 () Bool)

(declare-fun e!15342 () List!363)

(assert (=> b!30078 (= e!15342 (Cons!357 (h!274 (toList!118 xs!533)) (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun b!30077 () Bool)

(assert (=> b!30077 (= e!15342 (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!30079 () Bool)

(declare-fun res!13847 () Bool)

(declare-fun e!15343 () Bool)

(assert (=> b!30079 (=> (not res!13847) (not e!15343))))

(declare-fun lt!5541 () List!363)

(assert (=> b!30079 (= res!13847 (= (size!275 lt!5541) (+ (size!275 (toList!118 xs!533)) (size!275 (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30080 () Bool)

(assert (=> b!30080 (= e!15343 (or (not (= (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) Nil!358)) (= lt!5541 (toList!118 xs!533))))))

(declare-fun d!15673 () Bool)

(assert (=> d!15673 e!15343))

(declare-fun res!13846 () Bool)

(assert (=> d!15673 (=> (not res!13846) (not e!15343))))

(assert (=> d!15673 (= res!13846 (= (content!73 lt!5541) (union (content!73 (toList!118 xs!533)) (content!73 (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(assert (=> d!15673 (= lt!5541 e!15342)))

(declare-fun c!6571 () Bool)

(assert (=> d!15673 (= c!6571 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15673 (= (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) lt!5541)))

(assert (= (and d!15673 c!6571) b!30077))

(assert (= (and d!15673 (not c!6571)) b!30078))

(assert (= (and d!15673 res!13846) b!30079))

(assert (= (and b!30079 res!13847) b!30080))

(assert (=> b!30078 m!31855))

(declare-fun m!32175 () Bool)

(assert (=> b!30078 m!32175))

(declare-fun m!32177 () Bool)

(assert (=> b!30079 m!32177))

(assert (=> b!30079 m!31517))

(assert (=> b!30079 m!31689))

(assert (=> b!30079 m!31855))

(declare-fun m!32179 () Bool)

(assert (=> b!30079 m!32179))

(declare-fun m!32181 () Bool)

(assert (=> d!15673 m!32181))

(assert (=> d!15673 m!31517))

(assert (=> d!15673 m!31695))

(assert (=> d!15673 m!31855))

(declare-fun m!32183 () Bool)

(assert (=> d!15673 m!32183))

(assert (=> b!29878 d!15673))

(declare-fun b!30081 () Bool)

(declare-fun e!15344 () List!363)

(assert (=> b!30081 (= e!15344 Nil!358)))

(declare-fun b!30084 () Bool)

(declare-fun e!15345 () List!363)

(assert (=> b!30084 (= e!15345 (++!43 (toList!118 (left!711 (right!714 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (right!714 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30083 () Bool)

(assert (=> b!30083 (= e!15345 (Cons!357 (x!8953 (right!714 (left!711 (left!711 ys!77)))) Nil!358))))

(declare-fun b!30082 () Bool)

(assert (=> b!30082 (= e!15344 e!15345)))

(declare-fun c!6573 () Bool)

(assert (=> b!30082 (= c!6573 (is-Single!66 (right!714 (left!711 (left!711 ys!77)))))))

(declare-fun d!15675 () Bool)

(declare-fun lt!5542 () List!363)

(assert (=> d!15675 (= (size!275 lt!5542) (size!276 (right!714 (left!711 (left!711 ys!77)))))))

(assert (=> d!15675 (= lt!5542 e!15344)))

(declare-fun c!6572 () Bool)

(assert (=> d!15675 (= c!6572 (is-Empty!77 (right!714 (left!711 (left!711 ys!77)))))))

(assert (=> d!15675 (= (toList!118 (right!714 (left!711 (left!711 ys!77)))) lt!5542)))

(assert (= (and b!30082 c!6573) b!30083))

(assert (= (and b!30082 (not c!6573)) b!30084))

(assert (= (and d!15675 c!6572) b!30081))

(assert (= (and d!15675 (not c!6572)) b!30082))

(declare-fun m!32185 () Bool)

(assert (=> b!30084 m!32185))

(declare-fun m!32187 () Bool)

(assert (=> b!30084 m!32187))

(assert (=> b!30084 m!32185))

(assert (=> b!30084 m!32187))

(declare-fun m!32189 () Bool)

(assert (=> b!30084 m!32189))

(declare-fun m!32191 () Bool)

(assert (=> d!15675 m!32191))

(declare-fun m!32193 () Bool)

(assert (=> d!15675 m!32193))

(assert (=> b!29878 d!15675))

(assert (=> b!29878 d!15505))

(declare-fun b!30085 () Bool)

(declare-fun e!15346 () Bool)

(assert (=> b!30085 (= e!15346 (= (++!43 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (++!43 (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))))

(declare-fun lt!5543 () Bool)

(assert (=> b!30085 (= lt!5543 (appendAssoc!11 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun d!15677 () Bool)

(assert (=> d!15677 e!15346))

(declare-fun c!6574 () Bool)

(assert (=> d!15677 (= c!6574 (is-Cons!357 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> d!15677 (= (appendAssoc!11 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) true)))

(declare-fun b!30086 () Bool)

(assert (=> b!30086 (= e!15346 (= (++!43 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (++!43 (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))))

(assert (= (and d!15677 c!6574) b!30085))

(assert (= (and d!15677 (not c!6574)) b!30086))

(assert (=> b!30085 m!31849))

(declare-fun m!32195 () Bool)

(assert (=> b!30085 m!32195))

(declare-fun m!32197 () Bool)

(assert (=> b!30085 m!32197))

(assert (=> b!30085 m!31849))

(assert (=> b!30085 m!31847))

(declare-fun m!32199 () Bool)

(assert (=> b!30085 m!32199))

(assert (=> b!30085 m!31847))

(assert (=> b!30085 m!31851))

(assert (=> b!30085 m!32195))

(assert (=> b!30085 m!32199))

(assert (=> b!30085 m!31851))

(declare-fun m!32201 () Bool)

(assert (=> b!30085 m!32201))

(assert (=> b!30085 m!31847))

(assert (=> b!30085 m!31851))

(declare-fun m!32203 () Bool)

(assert (=> b!30085 m!32203))

(assert (=> b!30086 m!31849))

(assert (=> b!30086 m!31847))

(assert (=> b!30086 m!32199))

(assert (=> b!30086 m!32199))

(assert (=> b!30086 m!31851))

(assert (=> b!30086 m!32201))

(assert (=> b!30086 m!31847))

(assert (=> b!30086 m!31851))

(assert (=> b!30086 m!32195))

(assert (=> b!30086 m!31849))

(assert (=> b!30086 m!32195))

(assert (=> b!30086 m!32197))

(assert (=> b!29878 d!15677))

(declare-fun b!30087 () Bool)

(declare-fun e!15348 () Bool)

(declare-fun e!15350 () Bool)

(assert (=> b!30087 (= e!15348 e!15350)))

(declare-fun res!13849 () Bool)

(assert (=> b!30087 (=> (not res!13849) (not e!15350))))

(assert (=> b!30087 (= res!13849 (appendAssoc!11 (toList!118 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (toList!118 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (toList!118 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun b!30088 () Bool)

(declare-fun e!15349 () Bool)

(declare-fun e!15351 () Bool)

(assert (=> b!30088 (= e!15349 e!15351)))

(declare-fun res!13856 () Bool)

(assert (=> b!30088 (=> (not res!13856) (not e!15351))))

(assert (=> b!30088 (= res!13856 (appendAssoc!11 (toList!118 (left!711 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (toList!118 (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (toList!118 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30089 () Bool)

(declare-fun e!15352 () Bool)

(assert (=> b!30089 (= e!15350 e!15352)))

(declare-fun res!13853 () Bool)

(assert (=> b!30089 (=> res!13853 e!15352)))

(assert (=> b!30089 (= res!13853 (not (is-CC!66 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun b!30090 () Bool)

(declare-fun e!15355 () Bool)

(assert (=> b!30090 (= e!15355 e!15348)))

(declare-fun res!13852 () Bool)

(assert (=> b!30090 (=> res!13852 e!15348)))

(assert (=> b!30090 (= res!13852 (not (is-CC!66 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30091 () Bool)

(declare-fun e!15347 () Bool)

(declare-fun e!15353 () Bool)

(assert (=> b!30091 (= e!15347 e!15353)))

(declare-fun res!13848 () Bool)

(assert (=> b!30091 (=> (not res!13848) (not e!15353))))

(assert (=> b!30091 (= res!13848 (appendAssoc!11 (toList!118 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (toList!118 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (toList!118 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30092 () Bool)

(declare-fun e!15354 () Bool)

(assert (=> b!30092 (= e!15352 e!15354)))

(declare-fun res!13851 () Bool)

(assert (=> b!30092 (=> (not res!13851) (not e!15354))))

(assert (=> b!30092 (= res!13851 (appendAssoc!11 (toList!118 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (toList!118 (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) (toList!118 (right!714 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(declare-fun b!30093 () Bool)

(assert (=> b!30093 (= e!15353 e!15349)))

(declare-fun res!13855 () Bool)

(assert (=> b!30093 (=> res!13855 e!15349)))

(assert (=> b!30093 (= res!13855 (not (is-CC!66 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))))

(declare-fun b!30094 () Bool)

(assert (=> b!30094 (= e!15351 (appendAssoc!11 (toList!118 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (toList!118 (left!711 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (++!43 (toList!118 (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (toList!118 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun d!15679 () Bool)

(assert (=> d!15679 e!15355))

(declare-fun res!13854 () Bool)

(assert (=> d!15679 (=> (not res!13854) (not e!15355))))

(assert (=> d!15679 (= res!13854 e!15347)))

(declare-fun res!13850 () Bool)

(assert (=> d!15679 (=> res!13850 e!15347)))

(assert (=> d!15679 (= res!13850 (not (is-CC!66 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> d!15679 (= (appendAssocInst!15 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) true)))

(declare-fun b!30095 () Bool)

(assert (=> b!30095 (= e!15354 (appendAssoc!11 (++!43 (toList!118 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (toList!118 (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))) (toList!118 (right!714 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) (toList!118 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(assert (= (and d!15679 (not res!13850)) b!30091))

(assert (= (and b!30091 res!13848) b!30093))

(assert (= (and b!30093 (not res!13855)) b!30088))

(assert (= (and b!30088 res!13856) b!30094))

(assert (= (and d!15679 res!13854) b!30090))

(assert (= (and b!30090 (not res!13852)) b!30087))

(assert (= (and b!30087 res!13849) b!30089))

(assert (= (and b!30089 (not res!13853)) b!30092))

(assert (= (and b!30092 res!13851) b!30095))

(declare-fun m!32205 () Bool)

(assert (=> b!30095 m!32205))

(declare-fun m!32207 () Bool)

(assert (=> b!30095 m!32207))

(assert (=> b!30095 m!32205))

(declare-fun m!32209 () Bool)

(assert (=> b!30095 m!32209))

(declare-fun m!32211 () Bool)

(assert (=> b!30095 m!32211))

(declare-fun m!32213 () Bool)

(assert (=> b!30095 m!32213))

(assert (=> b!30095 m!32209))

(declare-fun m!32215 () Bool)

(assert (=> b!30095 m!32215))

(assert (=> b!30095 m!32213))

(assert (=> b!30095 m!32207))

(assert (=> b!30095 m!32215))

(declare-fun m!32217 () Bool)

(assert (=> b!30091 m!32217))

(declare-fun m!32219 () Bool)

(assert (=> b!30091 m!32219))

(declare-fun m!32221 () Bool)

(assert (=> b!30091 m!32221))

(assert (=> b!30091 m!32217))

(assert (=> b!30091 m!32219))

(assert (=> b!30091 m!32221))

(declare-fun m!32223 () Bool)

(assert (=> b!30091 m!32223))

(assert (=> b!30092 m!32215))

(assert (=> b!30092 m!32213))

(assert (=> b!30092 m!32205))

(assert (=> b!30092 m!32215))

(assert (=> b!30092 m!32213))

(assert (=> b!30092 m!32205))

(declare-fun m!32225 () Bool)

(assert (=> b!30092 m!32225))

(declare-fun m!32227 () Bool)

(assert (=> b!30094 m!32227))

(assert (=> b!30094 m!32221))

(declare-fun m!32229 () Bool)

(assert (=> b!30094 m!32229))

(assert (=> b!30094 m!32217))

(declare-fun m!32231 () Bool)

(assert (=> b!30094 m!32231))

(assert (=> b!30094 m!32229))

(declare-fun m!32233 () Bool)

(assert (=> b!30094 m!32233))

(assert (=> b!30094 m!32231))

(assert (=> b!30094 m!32227))

(assert (=> b!30094 m!32217))

(assert (=> b!30094 m!32221))

(assert (=> b!30088 m!32231))

(assert (=> b!30088 m!32227))

(assert (=> b!30088 m!32221))

(assert (=> b!30088 m!32231))

(assert (=> b!30088 m!32227))

(assert (=> b!30088 m!32221))

(declare-fun m!32235 () Bool)

(assert (=> b!30088 m!32235))

(assert (=> b!30087 m!32215))

(declare-fun m!32237 () Bool)

(assert (=> b!30087 m!32237))

(assert (=> b!30087 m!32209))

(assert (=> b!30087 m!32215))

(assert (=> b!30087 m!32237))

(assert (=> b!30087 m!32209))

(declare-fun m!32239 () Bool)

(assert (=> b!30087 m!32239))

(assert (=> b!29806 d!15679))

(declare-fun b!30099 () Bool)

(declare-fun e!15357 () Bool)

(assert (=> b!30099 (= e!15357 (concInv!61 (right!714 (right!714 (right!714 ys!77)))))))

(declare-fun b!30098 () Bool)

(declare-fun res!13857 () Bool)

(assert (=> b!30098 (=> (not res!13857) (not e!15357))))

(assert (=> b!30098 (= res!13857 (concInv!61 (left!711 (right!714 (right!714 ys!77)))))))

(declare-fun b!30096 () Bool)

(declare-fun e!15356 () Bool)

(assert (=> b!30096 (= e!15356 e!15357)))

(declare-fun res!13860 () Bool)

(assert (=> b!30096 (=> (not res!13860) (not e!15357))))

(assert (=> b!30096 (= res!13860 (not (isEmpty!323 (left!711 (right!714 (right!714 ys!77))))))))

(declare-fun b!30097 () Bool)

(declare-fun res!13859 () Bool)

(assert (=> b!30097 (=> (not res!13859) (not e!15357))))

(assert (=> b!30097 (= res!13859 (not (isEmpty!323 (right!714 (right!714 (right!714 ys!77))))))))

(declare-fun d!15681 () Bool)

(declare-fun res!13858 () Bool)

(assert (=> d!15681 (=> res!13858 e!15356)))

(assert (=> d!15681 (= res!13858 (not (is-CC!66 (right!714 (right!714 ys!77)))))))

(assert (=> d!15681 (= (concInv!61 (right!714 (right!714 ys!77))) e!15356)))

(assert (= (and d!15681 (not res!13858)) b!30096))

(assert (= (and b!30096 res!13860) b!30097))

(assert (= (and b!30097 res!13859) b!30098))

(assert (= (and b!30098 res!13857) b!30099))

(declare-fun m!32241 () Bool)

(assert (=> b!30099 m!32241))

(declare-fun m!32243 () Bool)

(assert (=> b!30098 m!32243))

(declare-fun m!32245 () Bool)

(assert (=> b!30096 m!32245))

(declare-fun m!32247 () Bool)

(assert (=> b!30097 m!32247))

(assert (=> b!29865 d!15681))

(declare-fun d!15683 () Bool)

(declare-fun res!13864 () Bool)

(declare-fun e!15359 () Bool)

(assert (=> d!15683 (=> res!13864 e!15359)))

(assert (=> d!15683 (= res!13864 (not (is-CC!66 (left!711 (left!711 xs!533)))))))

(assert (=> d!15683 (= (balanced!62 (left!711 (left!711 xs!533))) e!15359)))

(declare-fun b!30100 () Bool)

(declare-fun e!15358 () Bool)

(assert (=> b!30100 (= e!15359 e!15358)))

(declare-fun res!13863 () Bool)

(assert (=> b!30100 (=> (not res!13863) (not e!15358))))

(assert (=> b!30100 (= res!13863 (>= (- (level!55 (left!711 (left!711 (left!711 xs!533)))) (level!55 (right!714 (left!711 (left!711 xs!533))))) (- 1)))))

(declare-fun b!30103 () Bool)

(assert (=> b!30103 (= e!15358 (balanced!62 (right!714 (left!711 (left!711 xs!533)))))))

(declare-fun b!30102 () Bool)

(declare-fun res!13862 () Bool)

(assert (=> b!30102 (=> (not res!13862) (not e!15358))))

(assert (=> b!30102 (= res!13862 (balanced!62 (left!711 (left!711 (left!711 xs!533)))))))

(declare-fun b!30101 () Bool)

(declare-fun res!13861 () Bool)

(assert (=> b!30101 (=> (not res!13861) (not e!15358))))

(assert (=> b!30101 (= res!13861 (<= (- (level!55 (left!711 (left!711 (left!711 xs!533)))) (level!55 (right!714 (left!711 (left!711 xs!533))))) 1))))

(assert (= (and d!15683 (not res!13864)) b!30100))

(assert (= (and b!30100 res!13863) b!30101))

(assert (= (and b!30101 res!13861) b!30102))

(assert (= (and b!30102 res!13862) b!30103))

(declare-fun m!32249 () Bool)

(assert (=> b!30100 m!32249))

(declare-fun m!32251 () Bool)

(assert (=> b!30100 m!32251))

(declare-fun m!32253 () Bool)

(assert (=> b!30103 m!32253))

(declare-fun m!32255 () Bool)

(assert (=> b!30102 m!32255))

(assert (=> b!30101 m!32249))

(assert (=> b!30101 m!32251))

(assert (=> b!29826 d!15683))

(assert (=> b!29879 d!15651))

(assert (=> b!29879 d!15633))

(declare-fun b!30104 () Bool)

(declare-fun e!15360 () Bool)

(assert (=> b!30104 (= e!15360 (= (++!43 (++!43 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77)) (++!43 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))

(declare-fun lt!5544 () Bool)

(assert (=> b!30104 (= lt!5544 (appendAssoc!11 (t!4377 (t!4377 (toList!118 (left!711 (right!714 xs!533))))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))

(declare-fun d!15685 () Bool)

(assert (=> d!15685 e!15360))

(declare-fun c!6575 () Bool)

(assert (=> d!15685 (= c!6575 (is-Cons!357 (t!4377 (toList!118 (left!711 (right!714 xs!533))))))))

(assert (=> d!15685 (= (appendAssoc!11 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)) true)))

(declare-fun b!30105 () Bool)

(assert (=> b!30105 (= e!15360 (= (++!43 (++!43 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77)) (++!43 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 ys!77)))))))

(assert (= (and d!15685 c!6575) b!30104))

(assert (= (and d!15685 (not c!6575)) b!30105))

(assert (=> b!30104 m!31531))

(assert (=> b!30104 m!32043))

(assert (=> b!30104 m!31529))

(assert (=> b!30104 m!32109))

(assert (=> b!30104 m!31529))

(assert (=> b!30104 m!31523))

(assert (=> b!30104 m!31531))

(assert (=> b!30104 m!32109))

(assert (=> b!30104 m!31523))

(declare-fun m!32257 () Bool)

(assert (=> b!30104 m!32257))

(assert (=> b!30104 m!31529))

(assert (=> b!30104 m!31523))

(declare-fun m!32259 () Bool)

(assert (=> b!30104 m!32259))

(assert (=> b!30105 m!31529))

(assert (=> b!30105 m!32109))

(assert (=> b!30105 m!32109))

(assert (=> b!30105 m!31523))

(assert (=> b!30105 m!32257))

(assert (=> b!30105 m!31529))

(assert (=> b!30105 m!31523))

(assert (=> b!30105 m!31531))

(assert (=> b!30105 m!31531))

(assert (=> b!30105 m!32043))

(assert (=> b!29879 d!15685))

(assert (=> b!29879 d!15649))

(assert (=> b!29879 d!15533))

(declare-fun d!15687 () Bool)

(declare-fun lt!5545 () Int)

(assert (=> d!15687 (>= lt!5545 0)))

(declare-fun e!15361 () Int)

(assert (=> d!15687 (= lt!5545 e!15361)))

(declare-fun c!6576 () Bool)

(assert (=> d!15687 (= c!6576 (is-Nil!358 lt!5449))))

(assert (=> d!15687 (= (size!275 lt!5449) lt!5545)))

(declare-fun b!30106 () Bool)

(assert (=> b!30106 (= e!15361 0)))

(declare-fun b!30107 () Bool)

(assert (=> b!30107 (= e!15361 (+ 1 (size!275 (t!4377 lt!5449))))))

(assert (= (and d!15687 c!6576) b!30106))

(assert (= (and d!15687 (not c!6576)) b!30107))

(declare-fun m!32261 () Bool)

(assert (=> b!30107 m!32261))

(assert (=> d!15531 d!15687))

(declare-fun d!15689 () Bool)

(declare-fun lt!5546 () Int)

(assert (=> d!15689 (>= lt!5546 0)))

(declare-fun e!15363 () Int)

(assert (=> d!15689 (= lt!5546 e!15363)))

(declare-fun c!6578 () Bool)

(assert (=> d!15689 (= c!6578 (is-Empty!77 (left!711 (right!714 xs!533))))))

(assert (=> d!15689 (= (size!276 (left!711 (right!714 xs!533))) lt!5546)))

(declare-fun b!30111 () Bool)

(declare-fun e!15362 () Int)

(assert (=> b!30111 (= e!15362 (+ (size!276 (left!711 (left!711 (right!714 xs!533)))) (size!276 (right!714 (left!711 (right!714 xs!533))))))))

(declare-fun b!30109 () Bool)

(assert (=> b!30109 (= e!15363 e!15362)))

(declare-fun c!6577 () Bool)

(assert (=> b!30109 (= c!6577 (is-Single!66 (left!711 (right!714 xs!533))))))

(declare-fun b!30110 () Bool)

(assert (=> b!30110 (= e!15362 1)))

(declare-fun b!30108 () Bool)

(assert (=> b!30108 (= e!15363 0)))

(assert (= (and b!30109 c!6577) b!30110))

(assert (= (and b!30109 (not c!6577)) b!30111))

(assert (= (and d!15689 c!6578) b!30108))

(assert (= (and d!15689 (not c!6578)) b!30109))

(declare-fun m!32263 () Bool)

(assert (=> b!30111 m!32263))

(declare-fun m!32265 () Bool)

(assert (=> b!30111 m!32265))

(assert (=> d!15531 d!15689))

(declare-fun d!15691 () Bool)

(declare-fun lt!5547 () Int)

(assert (=> d!15691 (>= lt!5547 0)))

(declare-fun e!15364 () Int)

(assert (=> d!15691 (= lt!5547 e!15364)))

(declare-fun c!6579 () Bool)

(assert (=> d!15691 (= c!6579 (is-Nil!358 lt!5419))))

(assert (=> d!15691 (= (size!275 lt!5419) lt!5547)))

(declare-fun b!30112 () Bool)

(assert (=> b!30112 (= e!15364 0)))

(declare-fun b!30113 () Bool)

(assert (=> b!30113 (= e!15364 (+ 1 (size!275 (t!4377 lt!5419))))))

(assert (= (and d!15691 c!6579) b!30112))

(assert (= (and d!15691 (not c!6579)) b!30113))

(declare-fun m!32267 () Bool)

(assert (=> b!30113 m!32267))

(assert (=> d!15507 d!15691))

(declare-fun d!15693 () Bool)

(declare-fun lt!5548 () Int)

(assert (=> d!15693 (>= lt!5548 0)))

(declare-fun e!15366 () Int)

(assert (=> d!15693 (= lt!5548 e!15366)))

(declare-fun c!6581 () Bool)

(assert (=> d!15693 (= c!6581 (is-Empty!77 res!5544))))

(assert (=> d!15693 (= (size!276 res!5544) lt!5548)))

(declare-fun b!30117 () Bool)

(declare-fun e!15365 () Int)

(assert (=> b!30117 (= e!15365 (+ (size!276 (left!711 res!5544)) (size!276 (right!714 res!5544))))))

(declare-fun b!30115 () Bool)

(assert (=> b!30115 (= e!15366 e!15365)))

(declare-fun c!6580 () Bool)

(assert (=> b!30115 (= c!6580 (is-Single!66 res!5544))))

(declare-fun b!30116 () Bool)

(assert (=> b!30116 (= e!15365 1)))

(declare-fun b!30114 () Bool)

(assert (=> b!30114 (= e!15366 0)))

(assert (= (and b!30115 c!6580) b!30116))

(assert (= (and b!30115 (not c!6580)) b!30117))

(assert (= (and d!15693 c!6581) b!30114))

(assert (= (and d!15693 (not c!6581)) b!30115))

(declare-fun m!32269 () Bool)

(assert (=> b!30117 m!32269))

(declare-fun m!32271 () Bool)

(assert (=> b!30117 m!32271))

(assert (=> d!15507 d!15693))

(declare-fun b!30119 () Bool)

(declare-fun e!15367 () Int)

(declare-fun lt!5551 () Int)

(declare-fun lt!5550 () Int)

(assert (=> b!30119 (= e!15367 (+ 1 (ite (>= lt!5551 lt!5550) lt!5551 lt!5550)))))

(assert (=> b!30119 (= lt!5550 (level!55 (right!714 (right!714 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))))

(assert (=> b!30119 (= lt!5551 (level!55 (left!711 (right!714 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))))

(declare-fun d!15695 () Bool)

(declare-fun lt!5549 () Int)

(assert (=> d!15695 (>= lt!5549 0)))

(assert (=> d!15695 (= lt!5549 e!15367)))

(declare-fun c!6582 () Bool)

(assert (=> d!15695 (= c!6582 (or (is-Empty!77 (right!714 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))) (is-Single!66 (right!714 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))))

(assert (=> d!15695 (= (level!55 (right!714 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))) lt!5549)))

(declare-fun b!30118 () Bool)

(assert (=> b!30118 (= e!15367 0)))

(assert (= (and d!15695 c!6582) b!30118))

(assert (= (and d!15695 (not c!6582)) b!30119))

(declare-fun m!32273 () Bool)

(assert (=> b!30119 m!32273))

(declare-fun m!32275 () Bool)

(assert (=> b!30119 m!32275))

(assert (=> b!29894 d!15695))

(declare-fun b!30121 () Bool)

(declare-fun e!15368 () Int)

(declare-fun lt!5554 () Int)

(declare-fun lt!5553 () Int)

(assert (=> b!30121 (= e!15368 (+ 1 (ite (>= lt!5554 lt!5553) lt!5554 lt!5553)))))

(assert (=> b!30121 (= lt!5553 (level!55 (right!714 (left!711 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))))

(assert (=> b!30121 (= lt!5554 (level!55 (left!711 (left!711 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))))

(declare-fun d!15697 () Bool)

(declare-fun lt!5552 () Int)

(assert (=> d!15697 (>= lt!5552 0)))

(assert (=> d!15697 (= lt!5552 e!15368)))

(declare-fun c!6583 () Bool)

(assert (=> d!15697 (= c!6583 (or (is-Empty!77 (left!711 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))) (is-Single!66 (left!711 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77))))))))))

(assert (=> d!15697 (= (level!55 (left!711 (ite lt!5393 (left!711 xs!533) (right!714 (left!711 (left!711 ys!77)))))) lt!5552)))

(declare-fun b!30120 () Bool)

(assert (=> b!30120 (= e!15368 0)))

(assert (= (and d!15697 c!6583) b!30120))

(assert (= (and d!15697 (not c!6583)) b!30121))

(declare-fun m!32277 () Bool)

(assert (=> b!30121 m!32277))

(declare-fun m!32279 () Bool)

(assert (=> b!30121 m!32279))

(assert (=> b!29894 d!15697))

(declare-fun b!30123 () Bool)

(declare-fun e!15369 () List!363)

(assert (=> b!30123 (= e!15369 (Cons!357 (h!274 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 ys!77))))))))

(declare-fun b!30122 () Bool)

(assert (=> b!30122 (= e!15369 (toList!118 (right!714 (left!711 ys!77))))))

(declare-fun b!30124 () Bool)

(declare-fun res!13866 () Bool)

(declare-fun e!15370 () Bool)

(assert (=> b!30124 (=> (not res!13866) (not e!15370))))

(declare-fun lt!5555 () List!363)

(assert (=> b!30124 (= res!13866 (= (size!275 lt!5555) (+ (size!275 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (size!275 (toList!118 (right!714 (left!711 ys!77)))))))))

(declare-fun b!30125 () Bool)

(assert (=> b!30125 (= e!15370 (or (not (= (toList!118 (right!714 (left!711 ys!77))) Nil!358)) (= lt!5555 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15699 () Bool)

(assert (=> d!15699 e!15370))

(declare-fun res!13865 () Bool)

(assert (=> d!15699 (=> (not res!13865) (not e!15370))))

(assert (=> d!15699 (= res!13865 (= (content!73 lt!5555) (union (content!73 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (content!73 (toList!118 (right!714 (left!711 ys!77)))))))))

(assert (=> d!15699 (= lt!5555 e!15369)))

(declare-fun c!6584 () Bool)

(assert (=> d!15699 (= c!6584 (is-Nil!358 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))))))

(assert (=> d!15699 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) lt!5555)))

(assert (= (and d!15699 c!6584) b!30122))

(assert (= (and d!15699 (not c!6584)) b!30123))

(assert (= (and d!15699 res!13865) b!30124))

(assert (= (and b!30124 res!13866) b!30125))

(assert (=> b!30123 m!31507))

(declare-fun m!32281 () Bool)

(assert (=> b!30123 m!32281))

(declare-fun m!32283 () Bool)

(assert (=> b!30124 m!32283))

(assert (=> b!30124 m!31509))

(declare-fun m!32285 () Bool)

(assert (=> b!30124 m!32285))

(assert (=> b!30124 m!31507))

(declare-fun m!32287 () Bool)

(assert (=> b!30124 m!32287))

(declare-fun m!32289 () Bool)

(assert (=> d!15699 m!32289))

(assert (=> d!15699 m!31509))

(declare-fun m!32291 () Bool)

(assert (=> d!15699 m!32291))

(assert (=> d!15699 m!31507))

(declare-fun m!32293 () Bool)

(assert (=> d!15699 m!32293))

(assert (=> b!29928 d!15699))

(assert (=> b!29928 d!15591))

(declare-fun b!30127 () Bool)

(declare-fun e!15371 () List!363)

(assert (=> b!30127 (= e!15371 (Cons!357 (h!274 (toList!118 xs!533)) (++!43 (t!4377 (toList!118 xs!533)) (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))))

(declare-fun b!30126 () Bool)

(assert (=> b!30126 (= e!15371 (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))

(declare-fun b!30128 () Bool)

(declare-fun res!13868 () Bool)

(declare-fun e!15372 () Bool)

(assert (=> b!30128 (=> (not res!13868) (not e!15372))))

(declare-fun lt!5556 () List!363)

(assert (=> b!30128 (= res!13868 (= (size!275 lt!5556) (+ (size!275 (toList!118 xs!533)) (size!275 (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77))))))))))

(declare-fun b!30129 () Bool)

(assert (=> b!30129 (= e!15372 (or (not (= (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))) Nil!358)) (= lt!5556 (toList!118 xs!533))))))

(declare-fun d!15701 () Bool)

(assert (=> d!15701 e!15372))

(declare-fun res!13867 () Bool)

(assert (=> d!15701 (=> (not res!13867) (not e!15372))))

(assert (=> d!15701 (= res!13867 (= (content!73 lt!5556) (union (content!73 (toList!118 xs!533)) (content!73 (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77))))))))))

(assert (=> d!15701 (= lt!5556 e!15371)))

(declare-fun c!6585 () Bool)

(assert (=> d!15701 (= c!6585 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15701 (= (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77))))) lt!5556)))

(assert (= (and d!15701 c!6585) b!30126))

(assert (= (and d!15701 (not c!6585)) b!30127))

(assert (= (and d!15701 res!13867) b!30128))

(assert (= (and b!30128 res!13868) b!30129))

(assert (=> b!30127 m!31883))

(declare-fun m!32295 () Bool)

(assert (=> b!30127 m!32295))

(declare-fun m!32297 () Bool)

(assert (=> b!30128 m!32297))

(assert (=> b!30128 m!31517))

(assert (=> b!30128 m!31689))

(assert (=> b!30128 m!31883))

(declare-fun m!32299 () Bool)

(assert (=> b!30128 m!32299))

(declare-fun m!32301 () Bool)

(assert (=> d!15701 m!32301))

(assert (=> d!15701 m!31517))

(assert (=> d!15701 m!31695))

(assert (=> d!15701 m!31883))

(declare-fun m!32303 () Bool)

(assert (=> d!15701 m!32303))

(assert (=> b!29928 d!15701))

(declare-fun b!30131 () Bool)

(declare-fun e!15373 () List!363)

(assert (=> b!30131 (= e!15373 (Cons!357 (h!274 (toList!118 (left!711 (left!711 ys!77)))) (++!43 (t!4377 (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))))))))

(declare-fun b!30130 () Bool)

(assert (=> b!30130 (= e!15373 (toList!118 (right!714 (left!711 ys!77))))))

(declare-fun b!30132 () Bool)

(declare-fun res!13870 () Bool)

(declare-fun e!15374 () Bool)

(assert (=> b!30132 (=> (not res!13870) (not e!15374))))

(declare-fun lt!5557 () List!363)

(assert (=> b!30132 (= res!13870 (= (size!275 lt!5557) (+ (size!275 (toList!118 (left!711 (left!711 ys!77)))) (size!275 (toList!118 (right!714 (left!711 ys!77)))))))))

(declare-fun b!30133 () Bool)

(assert (=> b!30133 (= e!15374 (or (not (= (toList!118 (right!714 (left!711 ys!77))) Nil!358)) (= lt!5557 (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun d!15703 () Bool)

(assert (=> d!15703 e!15374))

(declare-fun res!13869 () Bool)

(assert (=> d!15703 (=> (not res!13869) (not e!15374))))

(assert (=> d!15703 (= res!13869 (= (content!73 lt!5557) (union (content!73 (toList!118 (left!711 (left!711 ys!77)))) (content!73 (toList!118 (right!714 (left!711 ys!77)))))))))

(assert (=> d!15703 (= lt!5557 e!15373)))

(declare-fun c!6586 () Bool)

(assert (=> d!15703 (= c!6586 (is-Nil!358 (toList!118 (left!711 (left!711 ys!77)))))))

(assert (=> d!15703 (= (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))) lt!5557)))

(assert (= (and d!15703 c!6586) b!30130))

(assert (= (and d!15703 (not c!6586)) b!30131))

(assert (= (and d!15703 res!13869) b!30132))

(assert (= (and b!30132 res!13870) b!30133))

(assert (=> b!30131 m!31507))

(declare-fun m!32305 () Bool)

(assert (=> b!30131 m!32305))

(declare-fun m!32307 () Bool)

(assert (=> b!30132 m!32307))

(assert (=> b!30132 m!31515))

(assert (=> b!30132 m!31951))

(assert (=> b!30132 m!31507))

(assert (=> b!30132 m!32287))

(declare-fun m!32309 () Bool)

(assert (=> d!15703 m!32309))

(assert (=> d!15703 m!31515))

(assert (=> d!15703 m!31955))

(assert (=> d!15703 m!31507))

(assert (=> d!15703 m!32293))

(assert (=> b!29928 d!15703))

(declare-fun b!30135 () Bool)

(declare-fun e!15375 () List!363)

(assert (=> b!30135 (= e!15375 (Cons!357 (h!274 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))))) (++!43 (t!4377 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))))) (toList!118 (right!714 ys!77)))))))

(declare-fun b!30134 () Bool)

(assert (=> b!30134 (= e!15375 (toList!118 (right!714 ys!77)))))

(declare-fun b!30136 () Bool)

(declare-fun res!13872 () Bool)

(declare-fun e!15376 () Bool)

(assert (=> b!30136 (=> (not res!13872) (not e!15376))))

(declare-fun lt!5558 () List!363)

(assert (=> b!30136 (= res!13872 (= (size!275 lt!5558) (+ (size!275 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))))) (size!275 (toList!118 (right!714 ys!77))))))))

(declare-fun b!30137 () Bool)

(assert (=> b!30137 (= e!15376 (or (not (= (toList!118 (right!714 ys!77)) Nil!358)) (= lt!5558 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))))))))

(declare-fun d!15705 () Bool)

(assert (=> d!15705 e!15376))

(declare-fun res!13871 () Bool)

(assert (=> d!15705 (=> (not res!13871) (not e!15376))))

(assert (=> d!15705 (= res!13871 (= (content!73 lt!5558) (union (content!73 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))))) (content!73 (toList!118 (right!714 ys!77))))))))

(assert (=> d!15705 (= lt!5558 e!15375)))

(declare-fun c!6587 () Bool)

(assert (=> d!15705 (= c!6587 (is-Nil!358 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77))))))))

(assert (=> d!15705 (= (++!43 (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (toList!118 (right!714 ys!77))) lt!5558)))

(assert (= (and d!15705 c!6587) b!30134))

(assert (= (and d!15705 (not c!6587)) b!30135))

(assert (= (and d!15705 res!13871) b!30136))

(assert (= (and b!30136 res!13872) b!30137))

(assert (=> b!30135 m!31511))

(declare-fun m!32311 () Bool)

(assert (=> b!30135 m!32311))

(declare-fun m!32313 () Bool)

(assert (=> b!30136 m!32313))

(assert (=> b!30136 m!31961))

(declare-fun m!32315 () Bool)

(assert (=> b!30136 m!32315))

(assert (=> b!30136 m!31511))

(declare-fun m!32317 () Bool)

(assert (=> b!30136 m!32317))

(declare-fun m!32319 () Bool)

(assert (=> d!15705 m!32319))

(assert (=> d!15705 m!31961))

(declare-fun m!32321 () Bool)

(assert (=> d!15705 m!32321))

(assert (=> d!15705 m!31511))

(declare-fun m!32323 () Bool)

(assert (=> d!15705 m!32323))

(assert (=> b!29926 d!15705))

(assert (=> b!29926 d!15699))

(declare-fun b!30139 () Bool)

(declare-fun e!15377 () List!363)

(assert (=> b!30139 (= e!15377 (Cons!357 (h!274 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))))

(declare-fun b!30138 () Bool)

(assert (=> b!30138 (= e!15377 (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))

(declare-fun b!30140 () Bool)

(declare-fun res!13874 () Bool)

(declare-fun e!15378 () Bool)

(assert (=> b!30140 (=> (not res!13874) (not e!15378))))

(declare-fun lt!5559 () List!363)

(assert (=> b!30140 (= res!13874 (= (size!275 lt!5559) (+ (size!275 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (size!275 (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77)))))))))

(declare-fun b!30141 () Bool)

(assert (=> b!30141 (= e!15378 (or (not (= (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))) Nil!358)) (= lt!5559 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15707 () Bool)

(assert (=> d!15707 e!15378))

(declare-fun res!13873 () Bool)

(assert (=> d!15707 (=> (not res!13873) (not e!15378))))

(assert (=> d!15707 (= res!13873 (= (content!73 lt!5559) (union (content!73 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (content!73 (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77)))))))))

(assert (=> d!15707 (= lt!5559 e!15377)))

(declare-fun c!6588 () Bool)

(assert (=> d!15707 (= c!6588 (is-Nil!358 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))))))

(assert (=> d!15707 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77)))) lt!5559)))

(assert (= (and d!15707 c!6588) b!30138))

(assert (= (and d!15707 (not c!6588)) b!30139))

(assert (= (and d!15707 res!13873) b!30140))

(assert (= (and b!30140 res!13874) b!30141))

(assert (=> b!30139 m!31957))

(declare-fun m!32325 () Bool)

(assert (=> b!30139 m!32325))

(declare-fun m!32327 () Bool)

(assert (=> b!30140 m!32327))

(assert (=> b!30140 m!31509))

(assert (=> b!30140 m!32285))

(assert (=> b!30140 m!31957))

(declare-fun m!32329 () Bool)

(assert (=> b!30140 m!32329))

(declare-fun m!32331 () Bool)

(assert (=> d!15707 m!32331))

(assert (=> d!15707 m!31509))

(assert (=> d!15707 m!32291))

(assert (=> d!15707 m!31957))

(declare-fun m!32333 () Bool)

(assert (=> d!15707 m!32333))

(assert (=> b!29926 d!15707))

(declare-fun b!30143 () Bool)

(declare-fun e!15379 () List!363)

(assert (=> b!30143 (= e!15379 (Cons!357 (h!274 (toList!118 (right!714 (left!711 ys!77)))) (++!43 (t!4377 (toList!118 (right!714 (left!711 ys!77)))) (toList!118 (right!714 ys!77)))))))

(declare-fun b!30142 () Bool)

(assert (=> b!30142 (= e!15379 (toList!118 (right!714 ys!77)))))

(declare-fun b!30144 () Bool)

(declare-fun res!13876 () Bool)

(declare-fun e!15380 () Bool)

(assert (=> b!30144 (=> (not res!13876) (not e!15380))))

(declare-fun lt!5560 () List!363)

(assert (=> b!30144 (= res!13876 (= (size!275 lt!5560) (+ (size!275 (toList!118 (right!714 (left!711 ys!77)))) (size!275 (toList!118 (right!714 ys!77))))))))

(declare-fun b!30145 () Bool)

(assert (=> b!30145 (= e!15380 (or (not (= (toList!118 (right!714 ys!77)) Nil!358)) (= lt!5560 (toList!118 (right!714 (left!711 ys!77))))))))

(declare-fun d!15709 () Bool)

(assert (=> d!15709 e!15380))

(declare-fun res!13875 () Bool)

(assert (=> d!15709 (=> (not res!13875) (not e!15380))))

(assert (=> d!15709 (= res!13875 (= (content!73 lt!5560) (union (content!73 (toList!118 (right!714 (left!711 ys!77)))) (content!73 (toList!118 (right!714 ys!77))))))))

(assert (=> d!15709 (= lt!5560 e!15379)))

(declare-fun c!6589 () Bool)

(assert (=> d!15709 (= c!6589 (is-Nil!358 (toList!118 (right!714 (left!711 ys!77)))))))

(assert (=> d!15709 (= (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))) lt!5560)))

(assert (= (and d!15709 c!6589) b!30142))

(assert (= (and d!15709 (not c!6589)) b!30143))

(assert (= (and d!15709 res!13875) b!30144))

(assert (= (and b!30144 res!13876) b!30145))

(assert (=> b!30143 m!31511))

(declare-fun m!32335 () Bool)

(assert (=> b!30143 m!32335))

(declare-fun m!32337 () Bool)

(assert (=> b!30144 m!32337))

(assert (=> b!30144 m!31507))

(assert (=> b!30144 m!32287))

(assert (=> b!30144 m!31511))

(assert (=> b!30144 m!32317))

(declare-fun m!32339 () Bool)

(assert (=> d!15709 m!32339))

(assert (=> d!15709 m!31507))

(assert (=> d!15709 m!32293))

(assert (=> d!15709 m!31511))

(assert (=> d!15709 m!32323))

(assert (=> b!29926 d!15709))

(declare-fun b!30147 () Bool)

(declare-fun e!15381 () Int)

(declare-fun lt!5563 () Int)

(declare-fun lt!5562 () Int)

(assert (=> b!30147 (= e!15381 (+ 1 (ite (>= lt!5563 lt!5562) lt!5563 lt!5562)))))

(assert (=> b!30147 (= lt!5562 (level!55 (right!714 (right!714 (left!711 nll!6)))))))

(assert (=> b!30147 (= lt!5563 (level!55 (left!711 (right!714 (left!711 nll!6)))))))

(declare-fun d!15711 () Bool)

(declare-fun lt!5561 () Int)

(assert (=> d!15711 (>= lt!5561 0)))

(assert (=> d!15711 (= lt!5561 e!15381)))

(declare-fun c!6590 () Bool)

(assert (=> d!15711 (= c!6590 (or (is-Empty!77 (right!714 (left!711 nll!6))) (is-Single!66 (right!714 (left!711 nll!6)))))))

(assert (=> d!15711 (= (level!55 (right!714 (left!711 nll!6))) lt!5561)))

(declare-fun b!30146 () Bool)

(assert (=> b!30146 (= e!15381 0)))

(assert (= (and d!15711 c!6590) b!30146))

(assert (= (and d!15711 (not c!6590)) b!30147))

(declare-fun m!32341 () Bool)

(assert (=> b!30147 m!32341))

(declare-fun m!32343 () Bool)

(assert (=> b!30147 m!32343))

(assert (=> b!29728 d!15711))

(declare-fun b!30149 () Bool)

(declare-fun e!15382 () Int)

(declare-fun lt!5566 () Int)

(declare-fun lt!5565 () Int)

(assert (=> b!30149 (= e!15382 (+ 1 (ite (>= lt!5566 lt!5565) lt!5566 lt!5565)))))

(assert (=> b!30149 (= lt!5565 (level!55 (right!714 (left!711 (left!711 nll!6)))))))

(assert (=> b!30149 (= lt!5566 (level!55 (left!711 (left!711 (left!711 nll!6)))))))

(declare-fun d!15713 () Bool)

(declare-fun lt!5564 () Int)

(assert (=> d!15713 (>= lt!5564 0)))

(assert (=> d!15713 (= lt!5564 e!15382)))

(declare-fun c!6591 () Bool)

(assert (=> d!15713 (= c!6591 (or (is-Empty!77 (left!711 (left!711 nll!6))) (is-Single!66 (left!711 (left!711 nll!6)))))))

(assert (=> d!15713 (= (level!55 (left!711 (left!711 nll!6))) lt!5564)))

(declare-fun b!30148 () Bool)

(assert (=> b!30148 (= e!15382 0)))

(assert (= (and d!15713 c!6591) b!30148))

(assert (= (and d!15713 (not c!6591)) b!30149))

(declare-fun m!32345 () Bool)

(assert (=> b!30149 m!32345))

(declare-fun m!32347 () Bool)

(assert (=> b!30149 m!32347))

(assert (=> b!29728 d!15713))

(declare-fun b!30151 () Bool)

(declare-fun e!15383 () Int)

(declare-fun lt!5569 () Int)

(declare-fun lt!5568 () Int)

(assert (=> b!30151 (= e!15383 (+ 1 (ite (>= lt!5569 lt!5568) lt!5569 lt!5568)))))

(assert (=> b!30151 (= lt!5568 (level!55 (right!714 (right!714 (left!711 (right!714 ys!77))))))))

(assert (=> b!30151 (= lt!5569 (level!55 (left!711 (right!714 (left!711 (right!714 ys!77))))))))

(declare-fun d!15715 () Bool)

(declare-fun lt!5567 () Int)

(assert (=> d!15715 (>= lt!5567 0)))

(assert (=> d!15715 (= lt!5567 e!15383)))

(declare-fun c!6592 () Bool)

(assert (=> d!15715 (= c!6592 (or (is-Empty!77 (right!714 (left!711 (right!714 ys!77)))) (is-Single!66 (right!714 (left!711 (right!714 ys!77))))))))

(assert (=> d!15715 (= (level!55 (right!714 (left!711 (right!714 ys!77)))) lt!5567)))

(declare-fun b!30150 () Bool)

(assert (=> b!30150 (= e!15383 0)))

(assert (= (and d!15715 c!6592) b!30150))

(assert (= (and d!15715 (not c!6592)) b!30151))

(declare-fun m!32349 () Bool)

(assert (=> b!30151 m!32349))

(declare-fun m!32351 () Bool)

(assert (=> b!30151 m!32351))

(assert (=> b!29764 d!15715))

(declare-fun b!30153 () Bool)

(declare-fun e!15384 () Int)

(declare-fun lt!5572 () Int)

(declare-fun lt!5571 () Int)

(assert (=> b!30153 (= e!15384 (+ 1 (ite (>= lt!5572 lt!5571) lt!5572 lt!5571)))))

(assert (=> b!30153 (= lt!5571 (level!55 (right!714 (left!711 (left!711 (right!714 ys!77))))))))

(assert (=> b!30153 (= lt!5572 (level!55 (left!711 (left!711 (left!711 (right!714 ys!77))))))))

(declare-fun d!15717 () Bool)

(declare-fun lt!5570 () Int)

(assert (=> d!15717 (>= lt!5570 0)))

(assert (=> d!15717 (= lt!5570 e!15384)))

(declare-fun c!6593 () Bool)

(assert (=> d!15717 (= c!6593 (or (is-Empty!77 (left!711 (left!711 (right!714 ys!77)))) (is-Single!66 (left!711 (left!711 (right!714 ys!77))))))))

(assert (=> d!15717 (= (level!55 (left!711 (left!711 (right!714 ys!77)))) lt!5570)))

(declare-fun b!30152 () Bool)

(assert (=> b!30152 (= e!15384 0)))

(assert (= (and d!15717 c!6593) b!30152))

(assert (= (and d!15717 (not c!6593)) b!30153))

(declare-fun m!32353 () Bool)

(assert (=> b!30153 m!32353))

(declare-fun m!32355 () Bool)

(assert (=> b!30153 m!32355))

(assert (=> b!29764 d!15717))

(declare-fun d!15719 () Bool)

(declare-fun c!6596 () Bool)

(assert (=> d!15719 (= c!6596 (is-Nil!358 lt!5422))))

(declare-fun e!15387 () (Set T!1835))

(assert (=> d!15719 (= (content!73 lt!5422) e!15387)))

(declare-fun b!30158 () Bool)

(assert (=> b!30158 (= e!15387 (as emptyset (Set T!1835)))))

(declare-fun b!30159 () Bool)

(assert (=> b!30159 (= e!15387 (union (insert (h!274 lt!5422) (as emptyset (Set T!1835))) (content!73 (t!4377 lt!5422))))))

(assert (= (and d!15719 c!6596) b!30158))

(assert (= (and d!15719 (not c!6596)) b!30159))

(declare-fun m!32357 () Bool)

(assert (=> b!30159 m!32357))

(declare-fun m!32359 () Bool)

(assert (=> b!30159 m!32359))

(assert (=> d!15509 d!15719))

(declare-fun d!15721 () Bool)

(declare-fun c!6597 () Bool)

(assert (=> d!15721 (= c!6597 (is-Nil!358 (toList!118 xs!533)))))

(declare-fun e!15388 () (Set T!1835))

(assert (=> d!15721 (= (content!73 (toList!118 xs!533)) e!15388)))

(declare-fun b!30160 () Bool)

(assert (=> b!30160 (= e!15388 (as emptyset (Set T!1835)))))

(declare-fun b!30161 () Bool)

(assert (=> b!30161 (= e!15388 (union (insert (h!274 (toList!118 xs!533)) (as emptyset (Set T!1835))) (content!73 (t!4377 (toList!118 xs!533)))))))

(assert (= (and d!15721 c!6597) b!30160))

(assert (= (and d!15721 (not c!6597)) b!30161))

(declare-fun m!32361 () Bool)

(assert (=> b!30161 m!32361))

(assert (=> b!30161 m!32029))

(assert (=> d!15509 d!15721))

(declare-fun d!15723 () Bool)

(declare-fun c!6598 () Bool)

(assert (=> d!15723 (= c!6598 (is-Nil!358 (toList!118 ys!77)))))

(declare-fun e!15389 () (Set T!1835))

(assert (=> d!15723 (= (content!73 (toList!118 ys!77)) e!15389)))

(declare-fun b!30162 () Bool)

(assert (=> b!30162 (= e!15389 (as emptyset (Set T!1835)))))

(declare-fun b!30163 () Bool)

(assert (=> b!30163 (= e!15389 (union (insert (h!274 (toList!118 ys!77)) (as emptyset (Set T!1835))) (content!73 (t!4377 (toList!118 ys!77)))))))

(assert (= (and d!15723 c!6598) b!30162))

(assert (= (and d!15723 (not c!6598)) b!30163))

(declare-fun m!32363 () Bool)

(assert (=> b!30163 m!32363))

(declare-fun m!32365 () Bool)

(assert (=> b!30163 m!32365))

(assert (=> d!15509 d!15723))

(declare-fun d!15725 () Bool)

(declare-fun lt!5573 () Int)

(assert (=> d!15725 (>= lt!5573 0)))

(declare-fun e!15390 () Int)

(assert (=> d!15725 (= lt!5573 e!15390)))

(declare-fun c!6599 () Bool)

(assert (=> d!15725 (= c!6599 (is-Nil!358 lt!5407))))

(assert (=> d!15725 (= (size!275 lt!5407) lt!5573)))

(declare-fun b!30164 () Bool)

(assert (=> b!30164 (= e!15390 0)))

(declare-fun b!30165 () Bool)

(assert (=> b!30165 (= e!15390 (+ 1 (size!275 (t!4377 lt!5407))))))

(assert (= (and d!15725 c!6599) b!30164))

(assert (= (and d!15725 (not c!6599)) b!30165))

(declare-fun m!32367 () Bool)

(assert (=> b!30165 m!32367))

(assert (=> d!15489 d!15725))

(declare-fun d!15727 () Bool)

(declare-fun lt!5574 () Int)

(assert (=> d!15727 (>= lt!5574 0)))

(declare-fun e!15392 () Int)

(assert (=> d!15727 (= lt!5574 e!15392)))

(declare-fun c!6601 () Bool)

(assert (=> d!15727 (= c!6601 (is-Empty!77 (right!714 xs!533)))))

(assert (=> d!15727 (= (size!276 (right!714 xs!533)) lt!5574)))

(declare-fun b!30169 () Bool)

(declare-fun e!15391 () Int)

(assert (=> b!30169 (= e!15391 (+ (size!276 (left!711 (right!714 xs!533))) (size!276 (right!714 (right!714 xs!533)))))))

(declare-fun b!30167 () Bool)

(assert (=> b!30167 (= e!15392 e!15391)))

(declare-fun c!6600 () Bool)

(assert (=> b!30167 (= c!6600 (is-Single!66 (right!714 xs!533)))))

(declare-fun b!30168 () Bool)

(assert (=> b!30168 (= e!15391 1)))

(declare-fun b!30166 () Bool)

(assert (=> b!30166 (= e!15392 0)))

(assert (= (and b!30167 c!6600) b!30168))

(assert (= (and b!30167 (not c!6600)) b!30169))

(assert (= (and d!15727 c!6601) b!30166))

(assert (= (and d!15727 (not c!6601)) b!30167))

(assert (=> b!30169 m!31789))

(assert (=> b!30169 m!31779))

(assert (=> d!15489 d!15727))

(declare-fun d!15729 () Bool)

(declare-fun res!13880 () Bool)

(declare-fun e!15394 () Bool)

(assert (=> d!15729 (=> res!13880 e!15394)))

(assert (=> d!15729 (= res!13880 (not (is-CC!66 (right!714 (left!711 res!5544)))))))

(assert (=> d!15729 (= (balanced!62 (right!714 (left!711 res!5544))) e!15394)))

(declare-fun b!30170 () Bool)

(declare-fun e!15393 () Bool)

(assert (=> b!30170 (= e!15394 e!15393)))

(declare-fun res!13879 () Bool)

(assert (=> b!30170 (=> (not res!13879) (not e!15393))))

(assert (=> b!30170 (= res!13879 (>= (- (level!55 (left!711 (right!714 (left!711 res!5544)))) (level!55 (right!714 (right!714 (left!711 res!5544))))) (- 1)))))

(declare-fun b!30173 () Bool)

(assert (=> b!30173 (= e!15393 (balanced!62 (right!714 (right!714 (left!711 res!5544)))))))

(declare-fun b!30172 () Bool)

(declare-fun res!13878 () Bool)

(assert (=> b!30172 (=> (not res!13878) (not e!15393))))

(assert (=> b!30172 (= res!13878 (balanced!62 (left!711 (right!714 (left!711 res!5544)))))))

(declare-fun b!30171 () Bool)

(declare-fun res!13877 () Bool)

(assert (=> b!30171 (=> (not res!13877) (not e!15393))))

(assert (=> b!30171 (= res!13877 (<= (- (level!55 (left!711 (right!714 (left!711 res!5544)))) (level!55 (right!714 (right!714 (left!711 res!5544))))) 1))))

(assert (= (and d!15729 (not res!13880)) b!30170))

(assert (= (and b!30170 res!13879) b!30171))

(assert (= (and b!30171 res!13877) b!30172))

(assert (= (and b!30172 res!13878) b!30173))

(assert (=> b!30170 m!32117))

(assert (=> b!30170 m!32115))

(declare-fun m!32369 () Bool)

(assert (=> b!30173 m!32369))

(declare-fun m!32371 () Bool)

(assert (=> b!30172 m!32371))

(assert (=> b!30171 m!32117))

(assert (=> b!30171 m!32115))

(assert (=> b!29857 d!15729))

(declare-fun b!30177 () Bool)

(declare-fun e!15396 () Bool)

(assert (=> b!30177 (= e!15396 (concInv!61 (right!714 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!30176 () Bool)

(declare-fun res!13881 () Bool)

(assert (=> b!30176 (=> (not res!13881) (not e!15396))))

(assert (=> b!30176 (= res!13881 (concInv!61 (left!711 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!30174 () Bool)

(declare-fun e!15395 () Bool)

(assert (=> b!30174 (= e!15395 e!15396)))

(declare-fun res!13884 () Bool)

(assert (=> b!30174 (=> (not res!13884) (not e!15396))))

(assert (=> b!30174 (= res!13884 (not (isEmpty!323 (left!711 (right!714 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30175 () Bool)

(declare-fun res!13883 () Bool)

(assert (=> b!30175 (=> (not res!13883) (not e!15396))))

(assert (=> b!30175 (= res!13883 (not (isEmpty!323 (right!714 (right!714 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15731 () Bool)

(declare-fun res!13882 () Bool)

(assert (=> d!15731 (=> res!13882 e!15395)))

(assert (=> d!15731 (= res!13882 (not (is-CC!66 (right!714 (left!711 (left!711 ys!77))))))))

(assert (=> d!15731 (= (concInv!61 (right!714 (left!711 (left!711 ys!77)))) e!15395)))

(assert (= (and d!15731 (not res!13882)) b!30174))

(assert (= (and b!30174 res!13884) b!30175))

(assert (= (and b!30175 res!13883) b!30176))

(assert (= (and b!30176 res!13881) b!30177))

(declare-fun m!32373 () Bool)

(assert (=> b!30177 m!32373))

(declare-fun m!32375 () Bool)

(assert (=> b!30176 m!32375))

(declare-fun m!32377 () Bool)

(assert (=> b!30174 m!32377))

(declare-fun m!32379 () Bool)

(assert (=> b!30175 m!32379))

(assert (=> b!29902 d!15731))

(declare-fun b!30179 () Bool)

(declare-fun e!15397 () List!363)

(assert (=> b!30179 (= e!15397 (Cons!357 (h!274 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)))) (++!43 (t!4377 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)))) (toList!118 ys!77))))))

(declare-fun b!30178 () Bool)

(assert (=> b!30178 (= e!15397 (toList!118 ys!77))))

(declare-fun b!30180 () Bool)

(declare-fun res!13886 () Bool)

(declare-fun e!15398 () Bool)

(assert (=> b!30180 (=> (not res!13886) (not e!15398))))

(declare-fun lt!5575 () List!363)

(assert (=> b!30180 (= res!13886 (= (size!275 lt!5575) (+ (size!275 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)))) (size!275 (toList!118 ys!77)))))))

(declare-fun b!30181 () Bool)

(assert (=> b!30181 (= e!15398 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5575 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))))))))

(declare-fun d!15733 () Bool)

(assert (=> d!15733 e!15398))

(declare-fun res!13885 () Bool)

(assert (=> d!15733 (=> (not res!13885) (not e!15398))))

(assert (=> d!15733 (= res!13885 (= (content!73 lt!5575) (union (content!73 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)))) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15733 (= lt!5575 e!15397)))

(declare-fun c!6602 () Bool)

(assert (=> d!15733 (= c!6602 (is-Nil!358 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)))))))

(assert (=> d!15733 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))) (toList!118 ys!77)) lt!5575)))

(assert (= (and d!15733 c!6602) b!30178))

(assert (= (and d!15733 (not c!6602)) b!30179))

(assert (= (and d!15733 res!13885) b!30180))

(assert (= (and b!30180 res!13886) b!30181))

(assert (=> b!30179 m!31523))

(declare-fun m!32381 () Bool)

(assert (=> b!30179 m!32381))

(declare-fun m!32383 () Bool)

(assert (=> b!30180 m!32383))

(assert (=> b!30180 m!31613))

(declare-fun m!32385 () Bool)

(assert (=> b!30180 m!32385))

(assert (=> b!30180 m!31523))

(assert (=> b!30180 m!31691))

(declare-fun m!32387 () Bool)

(assert (=> d!15733 m!32387))

(assert (=> d!15733 m!31613))

(declare-fun m!32389 () Bool)

(assert (=> d!15733 m!32389))

(assert (=> d!15733 m!31523))

(assert (=> d!15733 m!31697))

(assert (=> b!29734 d!15733))

(declare-fun b!30183 () Bool)

(declare-fun e!15399 () List!363)

(assert (=> b!30183 (= e!15399 (Cons!357 (h!274 (toList!118 (left!711 xs!533))) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (right!714 xs!533)))))))

(declare-fun b!30182 () Bool)

(assert (=> b!30182 (= e!15399 (toList!118 (right!714 xs!533)))))

(declare-fun b!30184 () Bool)

(declare-fun res!13888 () Bool)

(declare-fun e!15400 () Bool)

(assert (=> b!30184 (=> (not res!13888) (not e!15400))))

(declare-fun lt!5576 () List!363)

(assert (=> b!30184 (= res!13888 (= (size!275 lt!5576) (+ (size!275 (toList!118 (left!711 xs!533))) (size!275 (toList!118 (right!714 xs!533))))))))

(declare-fun b!30185 () Bool)

(assert (=> b!30185 (= e!15400 (or (not (= (toList!118 (right!714 xs!533)) Nil!358)) (= lt!5576 (toList!118 (left!711 xs!533)))))))

(declare-fun d!15735 () Bool)

(assert (=> d!15735 e!15400))

(declare-fun res!13887 () Bool)

(assert (=> d!15735 (=> (not res!13887) (not e!15400))))

(assert (=> d!15735 (= res!13887 (= (content!73 lt!5576) (union (content!73 (toList!118 (left!711 xs!533))) (content!73 (toList!118 (right!714 xs!533))))))))

(assert (=> d!15735 (= lt!5576 e!15399)))

(declare-fun c!6603 () Bool)

(assert (=> d!15735 (= c!6603 (is-Nil!358 (toList!118 (left!711 xs!533))))))

(assert (=> d!15735 (= (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))) lt!5576)))

(assert (= (and d!15735 c!6603) b!30182))

(assert (= (and d!15735 (not c!6603)) b!30183))

(assert (= (and d!15735 res!13887) b!30184))

(assert (= (and b!30184 res!13888) b!30185))

(assert (=> b!30183 m!31521))

(declare-fun m!32391 () Bool)

(assert (=> b!30183 m!32391))

(declare-fun m!32393 () Bool)

(assert (=> b!30184 m!32393))

(assert (=> b!30184 m!31519))

(assert (=> b!30184 m!32069))

(assert (=> b!30184 m!31521))

(declare-fun m!32395 () Bool)

(assert (=> b!30184 m!32395))

(declare-fun m!32397 () Bool)

(assert (=> d!15735 m!32397))

(assert (=> d!15735 m!31519))

(assert (=> d!15735 m!32073))

(assert (=> d!15735 m!31521))

(declare-fun m!32399 () Bool)

(assert (=> d!15735 m!32399))

(assert (=> b!29734 d!15735))

(declare-fun b!30187 () Bool)

(declare-fun e!15401 () List!363)

(assert (=> b!30187 (= e!15401 (Cons!357 (h!274 (toList!118 (left!711 xs!533))) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))))

(declare-fun b!30186 () Bool)

(assert (=> b!30186 (= e!15401 (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))

(declare-fun b!30188 () Bool)

(declare-fun res!13890 () Bool)

(declare-fun e!15402 () Bool)

(assert (=> b!30188 (=> (not res!13890) (not e!15402))))

(declare-fun lt!5577 () List!363)

(assert (=> b!30188 (= res!13890 (= (size!275 lt!5577) (+ (size!275 (toList!118 (left!711 xs!533))) (size!275 (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77))))))))

(declare-fun b!30189 () Bool)

(assert (=> b!30189 (= e!15402 (or (not (= (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)) Nil!358)) (= lt!5577 (toList!118 (left!711 xs!533)))))))

(declare-fun d!15737 () Bool)

(assert (=> d!15737 e!15402))

(declare-fun res!13889 () Bool)

(assert (=> d!15737 (=> (not res!13889) (not e!15402))))

(assert (=> d!15737 (= res!13889 (= (content!73 lt!5577) (union (content!73 (toList!118 (left!711 xs!533))) (content!73 (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77))))))))

(assert (=> d!15737 (= lt!5577 e!15401)))

(declare-fun c!6604 () Bool)

(assert (=> d!15737 (= c!6604 (is-Nil!358 (toList!118 (left!711 xs!533))))))

(assert (=> d!15737 (= (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77))) lt!5577)))

(assert (= (and d!15737 c!6604) b!30186))

(assert (= (and d!15737 (not c!6604)) b!30187))

(assert (= (and d!15737 res!13889) b!30188))

(assert (= (and b!30188 res!13890) b!30189))

(assert (=> b!30187 m!31609))

(declare-fun m!32401 () Bool)

(assert (=> b!30187 m!32401))

(declare-fun m!32403 () Bool)

(assert (=> b!30188 m!32403))

(assert (=> b!30188 m!31519))

(assert (=> b!30188 m!32069))

(assert (=> b!30188 m!31609))

(declare-fun m!32405 () Bool)

(assert (=> b!30188 m!32405))

(declare-fun m!32407 () Bool)

(assert (=> d!15737 m!32407))

(assert (=> d!15737 m!31519))

(assert (=> d!15737 m!32073))

(assert (=> d!15737 m!31609))

(declare-fun m!32409 () Bool)

(assert (=> d!15737 m!32409))

(assert (=> b!29734 d!15737))

(declare-fun b!30191 () Bool)

(declare-fun e!15403 () List!363)

(assert (=> b!30191 (= e!15403 (Cons!357 (h!274 (toList!118 (right!714 xs!533))) (++!43 (t!4377 (toList!118 (right!714 xs!533))) (toList!118 ys!77))))))

(declare-fun b!30190 () Bool)

(assert (=> b!30190 (= e!15403 (toList!118 ys!77))))

(declare-fun b!30192 () Bool)

(declare-fun res!13892 () Bool)

(declare-fun e!15404 () Bool)

(assert (=> b!30192 (=> (not res!13892) (not e!15404))))

(declare-fun lt!5578 () List!363)

(assert (=> b!30192 (= res!13892 (= (size!275 lt!5578) (+ (size!275 (toList!118 (right!714 xs!533))) (size!275 (toList!118 ys!77)))))))

(declare-fun b!30193 () Bool)

(assert (=> b!30193 (= e!15404 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5578 (toList!118 (right!714 xs!533)))))))

(declare-fun d!15739 () Bool)

(assert (=> d!15739 e!15404))

(declare-fun res!13891 () Bool)

(assert (=> d!15739 (=> (not res!13891) (not e!15404))))

(assert (=> d!15739 (= res!13891 (= (content!73 lt!5578) (union (content!73 (toList!118 (right!714 xs!533))) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15739 (= lt!5578 e!15403)))

(declare-fun c!6605 () Bool)

(assert (=> d!15739 (= c!6605 (is-Nil!358 (toList!118 (right!714 xs!533))))))

(assert (=> d!15739 (= (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)) lt!5578)))

(assert (= (and d!15739 c!6605) b!30190))

(assert (= (and d!15739 (not c!6605)) b!30191))

(assert (= (and d!15739 res!13891) b!30192))

(assert (= (and b!30192 res!13892) b!30193))

(assert (=> b!30191 m!31523))

(declare-fun m!32411 () Bool)

(assert (=> b!30191 m!32411))

(declare-fun m!32413 () Bool)

(assert (=> b!30192 m!32413))

(assert (=> b!30192 m!31521))

(assert (=> b!30192 m!32395))

(assert (=> b!30192 m!31523))

(assert (=> b!30192 m!31691))

(declare-fun m!32415 () Bool)

(assert (=> d!15739 m!32415))

(assert (=> d!15739 m!31521))

(assert (=> d!15739 m!32399))

(assert (=> d!15739 m!31523))

(assert (=> d!15739 m!31697))

(assert (=> b!29734 d!15739))

(declare-fun b!30195 () Bool)

(declare-fun e!15405 () List!363)

(assert (=> b!30195 (= e!15405 (Cons!357 (h!274 (t!4377 (toList!118 xs!533))) (++!43 (t!4377 (t!4377 (toList!118 xs!533))) (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun b!30194 () Bool)

(assert (=> b!30194 (= e!15405 (toList!118 (left!711 (left!711 ys!77))))))

(declare-fun b!30196 () Bool)

(declare-fun res!13894 () Bool)

(declare-fun e!15406 () Bool)

(assert (=> b!30196 (=> (not res!13894) (not e!15406))))

(declare-fun lt!5579 () List!363)

(assert (=> b!30196 (= res!13894 (= (size!275 lt!5579) (+ (size!275 (t!4377 (toList!118 xs!533))) (size!275 (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30197 () Bool)

(assert (=> b!30197 (= e!15406 (or (not (= (toList!118 (left!711 (left!711 ys!77))) Nil!358)) (= lt!5579 (t!4377 (toList!118 xs!533)))))))

(declare-fun d!15741 () Bool)

(assert (=> d!15741 e!15406))

(declare-fun res!13893 () Bool)

(assert (=> d!15741 (=> (not res!13893) (not e!15406))))

(assert (=> d!15741 (= res!13893 (= (content!73 lt!5579) (union (content!73 (t!4377 (toList!118 xs!533))) (content!73 (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15741 (= lt!5579 e!15405)))

(declare-fun c!6606 () Bool)

(assert (=> d!15741 (= c!6606 (is-Nil!358 (t!4377 (toList!118 xs!533))))))

(assert (=> d!15741 (= (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 ys!77)))) lt!5579)))

(assert (= (and d!15741 c!6606) b!30194))

(assert (= (and d!15741 (not c!6606)) b!30195))

(assert (= (and d!15741 res!13893) b!30196))

(assert (= (and b!30196 res!13894) b!30197))

(assert (=> b!30195 m!31515))

(declare-fun m!32417 () Bool)

(assert (=> b!30195 m!32417))

(declare-fun m!32419 () Bool)

(assert (=> b!30196 m!32419))

(assert (=> b!30196 m!32025))

(assert (=> b!30196 m!31515))

(assert (=> b!30196 m!31951))

(declare-fun m!32421 () Bool)

(assert (=> d!15741 m!32421))

(assert (=> d!15741 m!32029))

(assert (=> d!15741 m!31515))

(assert (=> d!15741 m!31955))

(assert (=> b!29922 d!15741))

(declare-fun b!30198 () Bool)

(declare-fun e!15407 () Bool)

(assert (=> b!30198 (= e!15407 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun lt!5580 () Bool)

(assert (=> b!30198 (= lt!5580 (appendAssoc!11 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15743 () Bool)

(assert (=> d!15743 e!15407))

(declare-fun c!6607 () Bool)

(assert (=> d!15743 (= c!6607 (is-Cons!357 (toList!118 xs!533)))))

(assert (=> d!15743 (= (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))) true)))

(declare-fun b!30199 () Bool)

(assert (=> b!30199 (= e!15407 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))))))))

(assert (= (and d!15743 c!6607) b!30198))

(assert (= (and d!15743 (not c!6607)) b!30199))

(assert (=> b!30198 m!31517))

(declare-fun m!32423 () Bool)

(assert (=> b!30198 m!32423))

(declare-fun m!32425 () Bool)

(assert (=> b!30198 m!32425))

(assert (=> b!30198 m!31517))

(assert (=> b!30198 m!31855))

(assert (=> b!30198 m!31849))

(assert (=> b!30198 m!31855))

(assert (=> b!30198 m!31847))

(assert (=> b!30198 m!32423))

(assert (=> b!30198 m!31849))

(assert (=> b!30198 m!31847))

(assert (=> b!30198 m!32199))

(assert (=> b!30198 m!31855))

(assert (=> b!30198 m!31847))

(declare-fun m!32427 () Bool)

(assert (=> b!30198 m!32427))

(assert (=> b!30199 m!31517))

(assert (=> b!30199 m!31855))

(assert (=> b!30199 m!31849))

(assert (=> b!30199 m!31849))

(assert (=> b!30199 m!31847))

(assert (=> b!30199 m!32199))

(assert (=> b!30199 m!31855))

(assert (=> b!30199 m!31847))

(assert (=> b!30199 m!32423))

(assert (=> b!30199 m!31517))

(assert (=> b!30199 m!32423))

(assert (=> b!30199 m!32425))

(assert (=> b!29875 d!15743))

(assert (=> b!29875 d!15505))

(assert (=> b!29875 d!15669))

(assert (=> b!29875 d!15671))

(declare-fun b!30201 () Bool)

(declare-fun e!15408 () List!363)

(assert (=> b!30201 (= e!15408 (Cons!357 (h!274 (toList!118 (left!711 (left!711 (right!714 xs!533))))) (++!43 (t!4377 (toList!118 (left!711 (left!711 (right!714 xs!533))))) (toList!118 (right!714 (left!711 (right!714 xs!533)))))))))

(declare-fun b!30200 () Bool)

(assert (=> b!30200 (= e!15408 (toList!118 (right!714 (left!711 (right!714 xs!533)))))))

(declare-fun b!30202 () Bool)

(declare-fun res!13896 () Bool)

(declare-fun e!15409 () Bool)

(assert (=> b!30202 (=> (not res!13896) (not e!15409))))

(declare-fun lt!5581 () List!363)

(assert (=> b!30202 (= res!13896 (= (size!275 lt!5581) (+ (size!275 (toList!118 (left!711 (left!711 (right!714 xs!533))))) (size!275 (toList!118 (right!714 (left!711 (right!714 xs!533))))))))))

(declare-fun b!30203 () Bool)

(assert (=> b!30203 (= e!15409 (or (not (= (toList!118 (right!714 (left!711 (right!714 xs!533)))) Nil!358)) (= lt!5581 (toList!118 (left!711 (left!711 (right!714 xs!533)))))))))

(declare-fun d!15745 () Bool)

(assert (=> d!15745 e!15409))

(declare-fun res!13895 () Bool)

(assert (=> d!15745 (=> (not res!13895) (not e!15409))))

(assert (=> d!15745 (= res!13895 (= (content!73 lt!5581) (union (content!73 (toList!118 (left!711 (left!711 (right!714 xs!533))))) (content!73 (toList!118 (right!714 (left!711 (right!714 xs!533))))))))))

(assert (=> d!15745 (= lt!5581 e!15408)))

(declare-fun c!6608 () Bool)

(assert (=> d!15745 (= c!6608 (is-Nil!358 (toList!118 (left!711 (left!711 (right!714 xs!533))))))))

(assert (=> d!15745 (= (++!43 (toList!118 (left!711 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (left!711 (right!714 xs!533))))) lt!5581)))

(assert (= (and d!15745 c!6608) b!30200))

(assert (= (and d!15745 (not c!6608)) b!30201))

(assert (= (and d!15745 res!13895) b!30202))

(assert (= (and b!30202 res!13896) b!30203))

(assert (=> b!30201 m!31783))

(declare-fun m!32429 () Bool)

(assert (=> b!30201 m!32429))

(declare-fun m!32431 () Bool)

(assert (=> b!30202 m!32431))

(assert (=> b!30202 m!31781))

(declare-fun m!32433 () Bool)

(assert (=> b!30202 m!32433))

(assert (=> b!30202 m!31783))

(declare-fun m!32435 () Bool)

(assert (=> b!30202 m!32435))

(declare-fun m!32437 () Bool)

(assert (=> d!15745 m!32437))

(assert (=> d!15745 m!31781))

(declare-fun m!32439 () Bool)

(assert (=> d!15745 m!32439))

(assert (=> d!15745 m!31783))

(declare-fun m!32441 () Bool)

(assert (=> d!15745 m!32441))

(assert (=> b!29839 d!15745))

(declare-fun b!30204 () Bool)

(declare-fun e!15410 () List!363)

(assert (=> b!30204 (= e!15410 Nil!358)))

(declare-fun b!30207 () Bool)

(declare-fun e!15411 () List!363)

(assert (=> b!30207 (= e!15411 (++!43 (toList!118 (left!711 (left!711 (left!711 (right!714 xs!533))))) (toList!118 (right!714 (left!711 (left!711 (right!714 xs!533)))))))))

(declare-fun b!30206 () Bool)

(assert (=> b!30206 (= e!15411 (Cons!357 (x!8953 (left!711 (left!711 (right!714 xs!533)))) Nil!358))))

(declare-fun b!30205 () Bool)

(assert (=> b!30205 (= e!15410 e!15411)))

(declare-fun c!6610 () Bool)

(assert (=> b!30205 (= c!6610 (is-Single!66 (left!711 (left!711 (right!714 xs!533)))))))

(declare-fun d!15747 () Bool)

(declare-fun lt!5582 () List!363)

(assert (=> d!15747 (= (size!275 lt!5582) (size!276 (left!711 (left!711 (right!714 xs!533)))))))

(assert (=> d!15747 (= lt!5582 e!15410)))

(declare-fun c!6609 () Bool)

(assert (=> d!15747 (= c!6609 (is-Empty!77 (left!711 (left!711 (right!714 xs!533)))))))

(assert (=> d!15747 (= (toList!118 (left!711 (left!711 (right!714 xs!533)))) lt!5582)))

(assert (= (and b!30205 c!6610) b!30206))

(assert (= (and b!30205 (not c!6610)) b!30207))

(assert (= (and d!15747 c!6609) b!30204))

(assert (= (and d!15747 (not c!6609)) b!30205))

(declare-fun m!32443 () Bool)

(assert (=> b!30207 m!32443))

(declare-fun m!32445 () Bool)

(assert (=> b!30207 m!32445))

(assert (=> b!30207 m!32443))

(assert (=> b!30207 m!32445))

(declare-fun m!32447 () Bool)

(assert (=> b!30207 m!32447))

(declare-fun m!32449 () Bool)

(assert (=> d!15747 m!32449))

(assert (=> d!15747 m!32263))

(assert (=> b!29839 d!15747))

(declare-fun b!30208 () Bool)

(declare-fun e!15412 () List!363)

(assert (=> b!30208 (= e!15412 Nil!358)))

(declare-fun b!30211 () Bool)

(declare-fun e!15413 () List!363)

(assert (=> b!30211 (= e!15413 (++!43 (toList!118 (left!711 (right!714 (left!711 (right!714 xs!533))))) (toList!118 (right!714 (right!714 (left!711 (right!714 xs!533)))))))))

(declare-fun b!30210 () Bool)

(assert (=> b!30210 (= e!15413 (Cons!357 (x!8953 (right!714 (left!711 (right!714 xs!533)))) Nil!358))))

(declare-fun b!30209 () Bool)

(assert (=> b!30209 (= e!15412 e!15413)))

(declare-fun c!6612 () Bool)

(assert (=> b!30209 (= c!6612 (is-Single!66 (right!714 (left!711 (right!714 xs!533)))))))

(declare-fun d!15749 () Bool)

(declare-fun lt!5583 () List!363)

(assert (=> d!15749 (= (size!275 lt!5583) (size!276 (right!714 (left!711 (right!714 xs!533)))))))

(assert (=> d!15749 (= lt!5583 e!15412)))

(declare-fun c!6611 () Bool)

(assert (=> d!15749 (= c!6611 (is-Empty!77 (right!714 (left!711 (right!714 xs!533)))))))

(assert (=> d!15749 (= (toList!118 (right!714 (left!711 (right!714 xs!533)))) lt!5583)))

(assert (= (and b!30209 c!6612) b!30210))

(assert (= (and b!30209 (not c!6612)) b!30211))

(assert (= (and d!15749 c!6611) b!30208))

(assert (= (and d!15749 (not c!6611)) b!30209))

(declare-fun m!32451 () Bool)

(assert (=> b!30211 m!32451))

(declare-fun m!32453 () Bool)

(assert (=> b!30211 m!32453))

(assert (=> b!30211 m!32451))

(assert (=> b!30211 m!32453))

(declare-fun m!32455 () Bool)

(assert (=> b!30211 m!32455))

(declare-fun m!32457 () Bool)

(assert (=> d!15749 m!32457))

(assert (=> d!15749 m!32265))

(assert (=> b!29839 d!15749))

(declare-fun b!30213 () Bool)

(declare-fun e!15414 () List!363)

(assert (=> b!30213 (= e!15414 (Cons!357 (h!274 (toList!118 (left!711 (right!714 (left!711 ys!77))))) (++!43 (t!4377 (toList!118 (left!711 (right!714 (left!711 ys!77))))) (toList!118 (right!714 (right!714 (left!711 ys!77)))))))))

(declare-fun b!30212 () Bool)

(assert (=> b!30212 (= e!15414 (toList!118 (right!714 (right!714 (left!711 ys!77)))))))

(declare-fun b!30214 () Bool)

(declare-fun res!13898 () Bool)

(declare-fun e!15415 () Bool)

(assert (=> b!30214 (=> (not res!13898) (not e!15415))))

(declare-fun lt!5584 () List!363)

(assert (=> b!30214 (= res!13898 (= (size!275 lt!5584) (+ (size!275 (toList!118 (left!711 (right!714 (left!711 ys!77))))) (size!275 (toList!118 (right!714 (right!714 (left!711 ys!77))))))))))

(declare-fun b!30215 () Bool)

(assert (=> b!30215 (= e!15415 (or (not (= (toList!118 (right!714 (right!714 (left!711 ys!77)))) Nil!358)) (= lt!5584 (toList!118 (left!711 (right!714 (left!711 ys!77)))))))))

(declare-fun d!15751 () Bool)

(assert (=> d!15751 e!15415))

(declare-fun res!13897 () Bool)

(assert (=> d!15751 (=> (not res!13897) (not e!15415))))

(assert (=> d!15751 (= res!13897 (= (content!73 lt!5584) (union (content!73 (toList!118 (left!711 (right!714 (left!711 ys!77))))) (content!73 (toList!118 (right!714 (right!714 (left!711 ys!77))))))))))

(assert (=> d!15751 (= lt!5584 e!15414)))

(declare-fun c!6613 () Bool)

(assert (=> d!15751 (= c!6613 (is-Nil!358 (toList!118 (left!711 (right!714 (left!711 ys!77))))))))

(assert (=> d!15751 (= (++!43 (toList!118 (left!711 (right!714 (left!711 ys!77)))) (toList!118 (right!714 (right!714 (left!711 ys!77))))) lt!5584)))

(assert (= (and d!15751 c!6613) b!30212))

(assert (= (and d!15751 (not c!6613)) b!30213))

(assert (= (and d!15751 res!13897) b!30214))

(assert (= (and b!30214 res!13898) b!30215))

(assert (=> b!30213 m!31939))

(declare-fun m!32459 () Bool)

(assert (=> b!30213 m!32459))

(declare-fun m!32461 () Bool)

(assert (=> b!30214 m!32461))

(assert (=> b!30214 m!31937))

(declare-fun m!32463 () Bool)

(assert (=> b!30214 m!32463))

(assert (=> b!30214 m!31939))

(declare-fun m!32465 () Bool)

(assert (=> b!30214 m!32465))

(declare-fun m!32467 () Bool)

(assert (=> d!15751 m!32467))

(assert (=> d!15751 m!31937))

(declare-fun m!32469 () Bool)

(assert (=> d!15751 m!32469))

(assert (=> d!15751 m!31939))

(declare-fun m!32471 () Bool)

(assert (=> d!15751 m!32471))

(assert (=> b!29920 d!15751))

(declare-fun b!30216 () Bool)

(declare-fun e!15416 () List!363)

(assert (=> b!30216 (= e!15416 Nil!358)))

(declare-fun b!30219 () Bool)

(declare-fun e!15417 () List!363)

(assert (=> b!30219 (= e!15417 (++!43 (toList!118 (left!711 (left!711 (right!714 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (right!714 (left!711 ys!77)))))))))

(declare-fun b!30218 () Bool)

(assert (=> b!30218 (= e!15417 (Cons!357 (x!8953 (left!711 (right!714 (left!711 ys!77)))) Nil!358))))

(declare-fun b!30217 () Bool)

(assert (=> b!30217 (= e!15416 e!15417)))

(declare-fun c!6615 () Bool)

(assert (=> b!30217 (= c!6615 (is-Single!66 (left!711 (right!714 (left!711 ys!77)))))))

(declare-fun d!15753 () Bool)

(declare-fun lt!5585 () List!363)

(assert (=> d!15753 (= (size!275 lt!5585) (size!276 (left!711 (right!714 (left!711 ys!77)))))))

(assert (=> d!15753 (= lt!5585 e!15416)))

(declare-fun c!6614 () Bool)

(assert (=> d!15753 (= c!6614 (is-Empty!77 (left!711 (right!714 (left!711 ys!77)))))))

(assert (=> d!15753 (= (toList!118 (left!711 (right!714 (left!711 ys!77)))) lt!5585)))

(assert (= (and b!30217 c!6615) b!30218))

(assert (= (and b!30217 (not c!6615)) b!30219))

(assert (= (and d!15753 c!6614) b!30216))

(assert (= (and d!15753 (not c!6614)) b!30217))

(declare-fun m!32473 () Bool)

(assert (=> b!30219 m!32473))

(declare-fun m!32475 () Bool)

(assert (=> b!30219 m!32475))

(assert (=> b!30219 m!32473))

(assert (=> b!30219 m!32475))

(declare-fun m!32477 () Bool)

(assert (=> b!30219 m!32477))

(declare-fun m!32479 () Bool)

(assert (=> d!15753 m!32479))

(declare-fun m!32481 () Bool)

(assert (=> d!15753 m!32481))

(assert (=> b!29920 d!15753))

(declare-fun b!30220 () Bool)

(declare-fun e!15418 () List!363)

(assert (=> b!30220 (= e!15418 Nil!358)))

(declare-fun b!30223 () Bool)

(declare-fun e!15419 () List!363)

(assert (=> b!30223 (= e!15419 (++!43 (toList!118 (left!711 (right!714 (right!714 (left!711 ys!77))))) (toList!118 (right!714 (right!714 (right!714 (left!711 ys!77)))))))))

(declare-fun b!30222 () Bool)

(assert (=> b!30222 (= e!15419 (Cons!357 (x!8953 (right!714 (right!714 (left!711 ys!77)))) Nil!358))))

(declare-fun b!30221 () Bool)

(assert (=> b!30221 (= e!15418 e!15419)))

(declare-fun c!6617 () Bool)

(assert (=> b!30221 (= c!6617 (is-Single!66 (right!714 (right!714 (left!711 ys!77)))))))

(declare-fun d!15755 () Bool)

(declare-fun lt!5586 () List!363)

(assert (=> d!15755 (= (size!275 lt!5586) (size!276 (right!714 (right!714 (left!711 ys!77)))))))

(assert (=> d!15755 (= lt!5586 e!15418)))

(declare-fun c!6616 () Bool)

(assert (=> d!15755 (= c!6616 (is-Empty!77 (right!714 (right!714 (left!711 ys!77)))))))

(assert (=> d!15755 (= (toList!118 (right!714 (right!714 (left!711 ys!77)))) lt!5586)))

(assert (= (and b!30221 c!6617) b!30222))

(assert (= (and b!30221 (not c!6617)) b!30223))

(assert (= (and d!15755 c!6616) b!30220))

(assert (= (and d!15755 (not c!6616)) b!30221))

(declare-fun m!32483 () Bool)

(assert (=> b!30223 m!32483))

(declare-fun m!32485 () Bool)

(assert (=> b!30223 m!32485))

(assert (=> b!30223 m!32483))

(assert (=> b!30223 m!32485))

(declare-fun m!32487 () Bool)

(assert (=> b!30223 m!32487))

(declare-fun m!32489 () Bool)

(assert (=> d!15755 m!32489))

(declare-fun m!32491 () Bool)

(assert (=> d!15755 m!32491))

(assert (=> b!29920 d!15755))

(declare-fun b!30225 () Bool)

(declare-fun e!15420 () Int)

(declare-fun lt!5589 () Int)

(declare-fun lt!5588 () Int)

(assert (=> b!30225 (= e!15420 (+ 1 (ite (>= lt!5589 lt!5588) lt!5589 lt!5588)))))

(assert (=> b!30225 (= lt!5588 (level!55 (right!714 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> b!30225 (= lt!5589 (level!55 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun d!15757 () Bool)

(declare-fun lt!5587 () Int)

(assert (=> d!15757 (>= lt!5587 0)))

(assert (=> d!15757 (= lt!5587 e!15420)))

(declare-fun c!6618 () Bool)

(assert (=> d!15757 (= c!6618 (or (is-Empty!77 (left!711 (left!711 (left!711 ys!77)))) (is-Single!66 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15757 (= (level!55 (left!711 (left!711 (left!711 ys!77)))) lt!5587)))

(declare-fun b!30224 () Bool)

(assert (=> b!30224 (= e!15420 0)))

(assert (= (and d!15757 c!6618) b!30224))

(assert (= (and d!15757 (not c!6618)) b!30225))

(declare-fun m!32493 () Bool)

(assert (=> b!30225 m!32493))

(declare-fun m!32495 () Bool)

(assert (=> b!30225 m!32495))

(assert (=> b!29766 d!15757))

(declare-fun b!30227 () Bool)

(declare-fun e!15421 () Int)

(declare-fun lt!5592 () Int)

(declare-fun lt!5591 () Int)

(assert (=> b!30227 (= e!15421 (+ 1 (ite (>= lt!5592 lt!5591) lt!5592 lt!5591)))))

(assert (=> b!30227 (= lt!5591 (level!55 (right!714 (right!714 (left!711 (left!711 ys!77))))))))

(assert (=> b!30227 (= lt!5592 (level!55 (left!711 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun d!15759 () Bool)

(declare-fun lt!5590 () Int)

(assert (=> d!15759 (>= lt!5590 0)))

(assert (=> d!15759 (= lt!5590 e!15421)))

(declare-fun c!6619 () Bool)

(assert (=> d!15759 (= c!6619 (or (is-Empty!77 (right!714 (left!711 (left!711 ys!77)))) (is-Single!66 (right!714 (left!711 (left!711 ys!77))))))))

(assert (=> d!15759 (= (level!55 (right!714 (left!711 (left!711 ys!77)))) lt!5590)))

(declare-fun b!30226 () Bool)

(assert (=> b!30226 (= e!15421 0)))

(assert (= (and d!15759 c!6619) b!30226))

(assert (= (and d!15759 (not c!6619)) b!30227))

(declare-fun m!32497 () Bool)

(assert (=> b!30227 m!32497))

(declare-fun m!32499 () Bool)

(assert (=> b!30227 m!32499))

(assert (=> b!29766 d!15759))

(declare-fun b!30229 () Bool)

(declare-fun e!15422 () Int)

(declare-fun lt!5595 () Int)

(declare-fun lt!5594 () Int)

(assert (=> b!30229 (= e!15422 (+ 1 (ite (>= lt!5595 lt!5594) lt!5595 lt!5594)))))

(assert (=> b!30229 (= lt!5594 (level!55 (right!714 (right!714 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))))

(assert (=> b!30229 (= lt!5595 (level!55 (left!711 (right!714 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15761 () Bool)

(declare-fun lt!5593 () Int)

(assert (=> d!15761 (>= lt!5593 0)))

(assert (=> d!15761 (= lt!5593 e!15422)))

(declare-fun c!6620 () Bool)

(assert (=> d!15761 (= c!6620 (or (is-Empty!77 (right!714 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))) (is-Single!66 (right!714 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15761 (= (level!55 (right!714 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))) lt!5593)))

(declare-fun b!30228 () Bool)

(assert (=> b!30228 (= e!15422 0)))

(assert (= (and d!15761 c!6620) b!30228))

(assert (= (and d!15761 (not c!6620)) b!30229))

(declare-fun m!32501 () Bool)

(assert (=> b!30229 m!32501))

(declare-fun m!32503 () Bool)

(assert (=> b!30229 m!32503))

(assert (=> b!29760 d!15761))

(declare-fun b!30231 () Bool)

(declare-fun e!15423 () Int)

(declare-fun lt!5598 () Int)

(declare-fun lt!5597 () Int)

(assert (=> b!30231 (= e!15423 (+ 1 (ite (>= lt!5598 lt!5597) lt!5598 lt!5597)))))

(assert (=> b!30231 (= lt!5597 (level!55 (right!714 (left!711 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))))

(assert (=> b!30231 (= lt!5598 (level!55 (left!711 (left!711 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15763 () Bool)

(declare-fun lt!5596 () Int)

(assert (=> d!15763 (>= lt!5596 0)))

(assert (=> d!15763 (= lt!5596 e!15423)))

(declare-fun c!6621 () Bool)

(assert (=> d!15763 (= c!6621 (or (is-Empty!77 (left!711 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))) (is-Single!66 (left!711 (ite lt!5383 xs!533 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15763 (= (level!55 (left!711 (ite lt!5383 xs!533 (left!711 (left!711 ys!77))))) lt!5596)))

(declare-fun b!30230 () Bool)

(assert (=> b!30230 (= e!15423 0)))

(assert (= (and d!15763 c!6621) b!30230))

(assert (= (and d!15763 (not c!6621)) b!30231))

(declare-fun m!32505 () Bool)

(assert (=> b!30231 m!32505))

(declare-fun m!32507 () Bool)

(assert (=> b!30231 m!32507))

(assert (=> b!29760 d!15763))

(declare-fun d!15765 () Bool)

(declare-fun res!13902 () Bool)

(declare-fun e!15425 () Bool)

(assert (=> d!15765 (=> res!13902 e!15425)))

(assert (=> d!15765 (= res!13902 (not (is-CC!66 lt!5437)))))

(assert (=> d!15765 (= (balanced!62 lt!5437) e!15425)))

(declare-fun b!30232 () Bool)

(declare-fun e!15424 () Bool)

(assert (=> b!30232 (= e!15425 e!15424)))

(declare-fun res!13901 () Bool)

(assert (=> b!30232 (=> (not res!13901) (not e!15424))))

(assert (=> b!30232 (= res!13901 (>= (- (level!55 (left!711 lt!5437)) (level!55 (right!714 lt!5437))) (- 1)))))

(declare-fun b!30235 () Bool)

(assert (=> b!30235 (= e!15424 (balanced!62 (right!714 lt!5437)))))

(declare-fun b!30234 () Bool)

(declare-fun res!13900 () Bool)

(assert (=> b!30234 (=> (not res!13900) (not e!15424))))

(assert (=> b!30234 (= res!13900 (balanced!62 (left!711 lt!5437)))))

(declare-fun b!30233 () Bool)

(declare-fun res!13899 () Bool)

(assert (=> b!30233 (=> (not res!13899) (not e!15424))))

(assert (=> b!30233 (= res!13899 (<= (- (level!55 (left!711 lt!5437)) (level!55 (right!714 lt!5437))) 1))))

(assert (= (and d!15765 (not res!13902)) b!30232))

(assert (= (and b!30232 res!13901) b!30233))

(assert (= (and b!30233 res!13899) b!30234))

(assert (= (and b!30234 res!13900) b!30235))

(declare-fun m!32509 () Bool)

(assert (=> b!30232 m!32509))

(declare-fun m!32511 () Bool)

(assert (=> b!30232 m!32511))

(declare-fun m!32513 () Bool)

(assert (=> b!30235 m!32513))

(declare-fun m!32515 () Bool)

(assert (=> b!30234 m!32515))

(assert (=> b!30233 m!32509))

(assert (=> b!30233 m!32511))

(assert (=> b!29809 d!15765))

(declare-fun b!30239 () Bool)

(declare-fun e!15427 () Bool)

(assert (=> b!30239 (= e!15427 (concInv!61 (right!714 (left!711 (left!711 xs!533)))))))

(declare-fun b!30238 () Bool)

(declare-fun res!13903 () Bool)

(assert (=> b!30238 (=> (not res!13903) (not e!15427))))

(assert (=> b!30238 (= res!13903 (concInv!61 (left!711 (left!711 (left!711 xs!533)))))))

(declare-fun b!30236 () Bool)

(declare-fun e!15426 () Bool)

(assert (=> b!30236 (= e!15426 e!15427)))

(declare-fun res!13906 () Bool)

(assert (=> b!30236 (=> (not res!13906) (not e!15427))))

(assert (=> b!30236 (= res!13906 (not (isEmpty!323 (left!711 (left!711 (left!711 xs!533))))))))

(declare-fun b!30237 () Bool)

(declare-fun res!13905 () Bool)

(assert (=> b!30237 (=> (not res!13905) (not e!15427))))

(assert (=> b!30237 (= res!13905 (not (isEmpty!323 (right!714 (left!711 (left!711 xs!533))))))))

(declare-fun d!15767 () Bool)

(declare-fun res!13904 () Bool)

(assert (=> d!15767 (=> res!13904 e!15426)))

(assert (=> d!15767 (= res!13904 (not (is-CC!66 (left!711 (left!711 xs!533)))))))

(assert (=> d!15767 (= (concInv!61 (left!711 (left!711 xs!533))) e!15426)))

(assert (= (and d!15767 (not res!13904)) b!30236))

(assert (= (and b!30236 res!13906) b!30237))

(assert (= (and b!30237 res!13905) b!30238))

(assert (= (and b!30238 res!13903) b!30239))

(declare-fun m!32517 () Bool)

(assert (=> b!30239 m!32517))

(declare-fun m!32519 () Bool)

(assert (=> b!30238 m!32519))

(declare-fun m!32521 () Bool)

(assert (=> b!30236 m!32521))

(declare-fun m!32523 () Bool)

(assert (=> b!30237 m!32523))

(assert (=> b!29795 d!15767))

(declare-fun b!30241 () Bool)

(declare-fun e!15428 () Int)

(declare-fun lt!5601 () Int)

(declare-fun lt!5600 () Int)

(assert (=> b!30241 (= e!15428 (+ 1 (ite (>= lt!5601 lt!5600) lt!5601 lt!5600)))))

(assert (=> b!30241 (= lt!5600 (level!55 (right!714 (right!714 (left!711 xs!533)))))))

(assert (=> b!30241 (= lt!5601 (level!55 (left!711 (right!714 (left!711 xs!533)))))))

(declare-fun d!15769 () Bool)

(declare-fun lt!5599 () Int)

(assert (=> d!15769 (>= lt!5599 0)))

(assert (=> d!15769 (= lt!5599 e!15428)))

(declare-fun c!6622 () Bool)

(assert (=> d!15769 (= c!6622 (or (is-Empty!77 (right!714 (left!711 xs!533))) (is-Single!66 (right!714 (left!711 xs!533)))))))

(assert (=> d!15769 (= (level!55 (right!714 (left!711 xs!533))) lt!5599)))

(declare-fun b!30240 () Bool)

(assert (=> b!30240 (= e!15428 0)))

(assert (= (and d!15769 c!6622) b!30240))

(assert (= (and d!15769 (not c!6622)) b!30241))

(declare-fun m!32525 () Bool)

(assert (=> b!30241 m!32525))

(declare-fun m!32527 () Bool)

(assert (=> b!30241 m!32527))

(assert (=> b!29859 d!15769))

(declare-fun b!30243 () Bool)

(declare-fun e!15429 () Int)

(declare-fun lt!5604 () Int)

(declare-fun lt!5603 () Int)

(assert (=> b!30243 (= e!15429 (+ 1 (ite (>= lt!5604 lt!5603) lt!5604 lt!5603)))))

(assert (=> b!30243 (= lt!5603 (level!55 (right!714 (left!711 (left!711 xs!533)))))))

(assert (=> b!30243 (= lt!5604 (level!55 (left!711 (left!711 (left!711 xs!533)))))))

(declare-fun d!15771 () Bool)

(declare-fun lt!5602 () Int)

(assert (=> d!15771 (>= lt!5602 0)))

(assert (=> d!15771 (= lt!5602 e!15429)))

(declare-fun c!6623 () Bool)

(assert (=> d!15771 (= c!6623 (or (is-Empty!77 (left!711 (left!711 xs!533))) (is-Single!66 (left!711 (left!711 xs!533)))))))

(assert (=> d!15771 (= (level!55 (left!711 (left!711 xs!533))) lt!5602)))

(declare-fun b!30242 () Bool)

(assert (=> b!30242 (= e!15429 0)))

(assert (= (and d!15771 c!6623) b!30242))

(assert (= (and d!15771 (not c!6623)) b!30243))

(assert (=> b!30243 m!32251))

(assert (=> b!30243 m!32249))

(assert (=> b!29859 d!15771))

(declare-fun d!15773 () Bool)

(declare-fun res!13910 () Bool)

(declare-fun e!15431 () Bool)

(assert (=> d!15773 (=> res!13910 e!15431)))

(assert (=> d!15773 (= res!13910 (not (is-CC!66 (right!714 (left!711 xs!533)))))))

(assert (=> d!15773 (= (balanced!62 (right!714 (left!711 xs!533))) e!15431)))

(declare-fun b!30244 () Bool)

(declare-fun e!15430 () Bool)

(assert (=> b!30244 (= e!15431 e!15430)))

(declare-fun res!13909 () Bool)

(assert (=> b!30244 (=> (not res!13909) (not e!15430))))

(assert (=> b!30244 (= res!13909 (>= (- (level!55 (left!711 (right!714 (left!711 xs!533)))) (level!55 (right!714 (right!714 (left!711 xs!533))))) (- 1)))))

(declare-fun b!30247 () Bool)

(assert (=> b!30247 (= e!15430 (balanced!62 (right!714 (right!714 (left!711 xs!533)))))))

(declare-fun b!30246 () Bool)

(declare-fun res!13908 () Bool)

(assert (=> b!30246 (=> (not res!13908) (not e!15430))))

(assert (=> b!30246 (= res!13908 (balanced!62 (left!711 (right!714 (left!711 xs!533)))))))

(declare-fun b!30245 () Bool)

(declare-fun res!13907 () Bool)

(assert (=> b!30245 (=> (not res!13907) (not e!15430))))

(assert (=> b!30245 (= res!13907 (<= (- (level!55 (left!711 (right!714 (left!711 xs!533)))) (level!55 (right!714 (right!714 (left!711 xs!533))))) 1))))

(assert (= (and d!15773 (not res!13910)) b!30244))

(assert (= (and b!30244 res!13909) b!30245))

(assert (= (and b!30245 res!13907) b!30246))

(assert (= (and b!30246 res!13908) b!30247))

(assert (=> b!30244 m!32527))

(assert (=> b!30244 m!32525))

(declare-fun m!32529 () Bool)

(assert (=> b!30247 m!32529))

(declare-fun m!32531 () Bool)

(assert (=> b!30246 m!32531))

(assert (=> b!30245 m!32527))

(assert (=> b!30245 m!32525))

(assert (=> b!29827 d!15773))

(declare-fun b!30248 () Bool)

(declare-fun e!15432 () Bool)

(assert (=> b!30248 (= e!15432 (= (++!43 (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 ys!77)))) (toList!118 (right!714 ys!77))) (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))))

(declare-fun lt!5605 () Bool)

(assert (=> b!30248 (= lt!5605 (appendAssoc!11 (t!4377 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))))) (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))

(declare-fun d!15775 () Bool)

(assert (=> d!15775 e!15432))

(declare-fun c!6624 () Bool)

(assert (=> d!15775 (= c!6624 (is-Cons!357 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15775 (= (appendAssoc!11 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))) true)))

(declare-fun b!30249 () Bool)

(assert (=> b!30249 (= e!15432 (= (++!43 (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 ys!77)))) (toList!118 (right!714 ys!77))) (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (toList!118 (right!714 (left!711 ys!77))) (toList!118 (right!714 ys!77))))))))

(assert (= (and d!15775 c!6624) b!30248))

(assert (= (and d!15775 (not c!6624)) b!30249))

(assert (=> b!30248 m!31957))

(assert (=> b!30248 m!32325))

(assert (=> b!30248 m!31507))

(assert (=> b!30248 m!32281))

(assert (=> b!30248 m!31507))

(assert (=> b!30248 m!31511))

(assert (=> b!30248 m!31957))

(assert (=> b!30248 m!32281))

(assert (=> b!30248 m!31511))

(declare-fun m!32533 () Bool)

(assert (=> b!30248 m!32533))

(assert (=> b!30248 m!31507))

(assert (=> b!30248 m!31511))

(declare-fun m!32535 () Bool)

(assert (=> b!30248 m!32535))

(assert (=> b!30249 m!31507))

(assert (=> b!30249 m!32281))

(assert (=> b!30249 m!32281))

(assert (=> b!30249 m!31511))

(assert (=> b!30249 m!32533))

(assert (=> b!30249 m!31507))

(assert (=> b!30249 m!31511))

(assert (=> b!30249 m!31957))

(assert (=> b!30249 m!31957))

(assert (=> b!30249 m!32325))

(assert (=> b!29925 d!15775))

(assert (=> b!29925 d!15709))

(assert (=> b!29925 d!15699))

(assert (=> b!29925 d!15705))

(assert (=> b!29925 d!15707))

(assert (=> b!29854 d!15655))

(assert (=> b!29854 d!15653))

(declare-fun b!30253 () Bool)

(declare-fun e!15434 () Bool)

(assert (=> b!30253 (= e!15434 (concInv!61 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30252 () Bool)

(declare-fun res!13911 () Bool)

(assert (=> b!30252 (=> (not res!13911) (not e!15434))))

(assert (=> b!30252 (= res!13911 (concInv!61 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30250 () Bool)

(declare-fun e!15433 () Bool)

(assert (=> b!30250 (= e!15433 e!15434)))

(declare-fun res!13914 () Bool)

(assert (=> b!30250 (=> (not res!13914) (not e!15434))))

(assert (=> b!30250 (= res!13914 (not (isEmpty!323 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun b!30251 () Bool)

(declare-fun res!13913 () Bool)

(assert (=> b!30251 (=> (not res!13913) (not e!15434))))

(assert (=> b!30251 (= res!13913 (not (isEmpty!323 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun d!15777 () Bool)

(declare-fun res!13912 () Bool)

(assert (=> d!15777 (=> res!13912 e!15433)))

(assert (=> d!15777 (= res!13912 (not (is-CC!66 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(assert (=> d!15777 (= (concInv!61 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) e!15433)))

(assert (= (and d!15777 (not res!13912)) b!30250))

(assert (= (and b!30250 res!13914) b!30251))

(assert (= (and b!30251 res!13913) b!30252))

(assert (= (and b!30252 res!13911) b!30253))

(declare-fun m!32537 () Bool)

(assert (=> b!30253 m!32537))

(declare-fun m!32539 () Bool)

(assert (=> b!30252 m!32539))

(declare-fun m!32541 () Bool)

(assert (=> b!30250 m!32541))

(declare-fun m!32543 () Bool)

(assert (=> b!30251 m!32543))

(assert (=> b!29807 d!15777))

(assert (=> b!29825 d!15771))

(assert (=> b!29825 d!15769))

(assert (=> b!29798 d!15613))

(assert (=> b!29798 d!15615))

(declare-fun d!15779 () Bool)

(declare-fun res!13918 () Bool)

(declare-fun e!15436 () Bool)

(assert (=> d!15779 (=> res!13918 e!15436)))

(assert (=> d!15779 (= res!13918 (not (is-CC!66 (right!714 (left!711 ys!77)))))))

(assert (=> d!15779 (= (balanced!62 (right!714 (left!711 ys!77))) e!15436)))

(declare-fun b!30254 () Bool)

(declare-fun e!15435 () Bool)

(assert (=> b!30254 (= e!15436 e!15435)))

(declare-fun res!13917 () Bool)

(assert (=> b!30254 (=> (not res!13917) (not e!15435))))

(assert (=> b!30254 (= res!13917 (>= (- (level!55 (left!711 (right!714 (left!711 ys!77)))) (level!55 (right!714 (right!714 (left!711 ys!77))))) (- 1)))))

(declare-fun b!30257 () Bool)

(assert (=> b!30257 (= e!15435 (balanced!62 (right!714 (right!714 (left!711 ys!77)))))))

(declare-fun b!30256 () Bool)

(declare-fun res!13916 () Bool)

(assert (=> b!30256 (=> (not res!13916) (not e!15435))))

(assert (=> b!30256 (= res!13916 (balanced!62 (left!711 (right!714 (left!711 ys!77)))))))

(declare-fun b!30255 () Bool)

(declare-fun res!13915 () Bool)

(assert (=> b!30255 (=> (not res!13915) (not e!15435))))

(assert (=> b!30255 (= res!13915 (<= (- (level!55 (left!711 (right!714 (left!711 ys!77)))) (level!55 (right!714 (right!714 (left!711 ys!77))))) 1))))

(assert (= (and d!15779 (not res!13918)) b!30254))

(assert (= (and b!30254 res!13917) b!30255))

(assert (= (and b!30255 res!13915) b!30256))

(assert (= (and b!30256 res!13916) b!30257))

(assert (=> b!30254 m!31917))

(assert (=> b!30254 m!31915))

(declare-fun m!32545 () Bool)

(assert (=> b!30257 m!32545))

(declare-fun m!32547 () Bool)

(assert (=> b!30256 m!32547))

(assert (=> b!30255 m!31917))

(assert (=> b!30255 m!31915))

(assert (=> b!29932 d!15779))

(declare-fun b!30261 () Bool)

(declare-fun e!15438 () Bool)

(assert (=> b!30261 (= e!15438 (concInv!61 (right!714 (right!714 (left!711 res!5544)))))))

(declare-fun b!30260 () Bool)

(declare-fun res!13919 () Bool)

(assert (=> b!30260 (=> (not res!13919) (not e!15438))))

(assert (=> b!30260 (= res!13919 (concInv!61 (left!711 (right!714 (left!711 res!5544)))))))

(declare-fun b!30258 () Bool)

(declare-fun e!15437 () Bool)

(assert (=> b!30258 (= e!15437 e!15438)))

(declare-fun res!13922 () Bool)

(assert (=> b!30258 (=> (not res!13922) (not e!15438))))

(assert (=> b!30258 (= res!13922 (not (isEmpty!323 (left!711 (right!714 (left!711 res!5544))))))))

(declare-fun b!30259 () Bool)

(declare-fun res!13921 () Bool)

(assert (=> b!30259 (=> (not res!13921) (not e!15438))))

(assert (=> b!30259 (= res!13921 (not (isEmpty!323 (right!714 (right!714 (left!711 res!5544))))))))

(declare-fun d!15781 () Bool)

(declare-fun res!13920 () Bool)

(assert (=> d!15781 (=> res!13920 e!15437)))

(assert (=> d!15781 (= res!13920 (not (is-CC!66 (right!714 (left!711 res!5544)))))))

(assert (=> d!15781 (= (concInv!61 (right!714 (left!711 res!5544))) e!15437)))

(assert (= (and d!15781 (not res!13920)) b!30258))

(assert (= (and b!30258 res!13922) b!30259))

(assert (= (and b!30259 res!13921) b!30260))

(assert (= (and b!30260 res!13919) b!30261))

(declare-fun m!32549 () Bool)

(assert (=> b!30261 m!32549))

(declare-fun m!32551 () Bool)

(assert (=> b!30260 m!32551))

(declare-fun m!32553 () Bool)

(assert (=> b!30258 m!32553))

(declare-fun m!32555 () Bool)

(assert (=> b!30259 m!32555))

(assert (=> b!29912 d!15781))

(declare-fun d!15783 () Bool)

(declare-fun c!6625 () Bool)

(assert (=> d!15783 (= c!6625 (is-Nil!358 lt!5479))))

(declare-fun e!15439 () (Set T!1835))

(assert (=> d!15783 (= (content!73 lt!5479) e!15439)))

(declare-fun b!30262 () Bool)

(assert (=> b!30262 (= e!15439 (as emptyset (Set T!1835)))))

(declare-fun b!30263 () Bool)

(assert (=> b!30263 (= e!15439 (union (insert (h!274 lt!5479) (as emptyset (Set T!1835))) (content!73 (t!4377 lt!5479))))))

(assert (= (and d!15783 c!6625) b!30262))

(assert (= (and d!15783 (not c!6625)) b!30263))

(declare-fun m!32557 () Bool)

(assert (=> b!30263 m!32557))

(declare-fun m!32559 () Bool)

(assert (=> b!30263 m!32559))

(assert (=> d!15591 d!15783))

(assert (=> d!15591 d!15721))

(declare-fun d!15785 () Bool)

(declare-fun c!6626 () Bool)

(assert (=> d!15785 (= c!6626 (is-Nil!358 (toList!118 (left!711 (left!711 ys!77)))))))

(declare-fun e!15440 () (Set T!1835))

(assert (=> d!15785 (= (content!73 (toList!118 (left!711 (left!711 ys!77)))) e!15440)))

(declare-fun b!30264 () Bool)

(assert (=> b!30264 (= e!15440 (as emptyset (Set T!1835)))))

(declare-fun b!30265 () Bool)

(assert (=> b!30265 (= e!15440 (union (insert (h!274 (toList!118 (left!711 (left!711 ys!77)))) (as emptyset (Set T!1835))) (content!73 (t!4377 (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (= (and d!15785 c!6626) b!30264))

(assert (= (and d!15785 (not c!6626)) b!30265))

(declare-fun m!32561 () Bool)

(assert (=> b!30265 m!32561))

(declare-fun m!32563 () Bool)

(assert (=> b!30265 m!32563))

(assert (=> d!15591 d!15785))

(declare-fun b!30269 () Bool)

(declare-fun e!15442 () Bool)

(assert (=> b!30269 (= e!15442 (concInv!61 (right!714 (right!714 (right!714 res!5544)))))))

(declare-fun b!30268 () Bool)

(declare-fun res!13923 () Bool)

(assert (=> b!30268 (=> (not res!13923) (not e!15442))))

(assert (=> b!30268 (= res!13923 (concInv!61 (left!711 (right!714 (right!714 res!5544)))))))

(declare-fun b!30266 () Bool)

(declare-fun e!15441 () Bool)

(assert (=> b!30266 (= e!15441 e!15442)))

(declare-fun res!13926 () Bool)

(assert (=> b!30266 (=> (not res!13926) (not e!15442))))

(assert (=> b!30266 (= res!13926 (not (isEmpty!323 (left!711 (right!714 (right!714 res!5544))))))))

(declare-fun b!30267 () Bool)

(declare-fun res!13925 () Bool)

(assert (=> b!30267 (=> (not res!13925) (not e!15442))))

(assert (=> b!30267 (= res!13925 (not (isEmpty!323 (right!714 (right!714 (right!714 res!5544))))))))

(declare-fun d!15787 () Bool)

(declare-fun res!13924 () Bool)

(assert (=> d!15787 (=> res!13924 e!15441)))

(assert (=> d!15787 (= res!13924 (not (is-CC!66 (right!714 (right!714 res!5544)))))))

(assert (=> d!15787 (= (concInv!61 (right!714 (right!714 res!5544))) e!15441)))

(assert (= (and d!15787 (not res!13924)) b!30266))

(assert (= (and b!30266 res!13926) b!30267))

(assert (= (and b!30267 res!13925) b!30268))

(assert (= (and b!30268 res!13923) b!30269))

(declare-fun m!32565 () Bool)

(assert (=> b!30269 m!32565))

(declare-fun m!32567 () Bool)

(assert (=> b!30268 m!32567))

(declare-fun m!32569 () Bool)

(assert (=> b!30266 m!32569))

(declare-fun m!32571 () Bool)

(assert (=> b!30267 m!32571))

(assert (=> b!29758 d!15787))

(assert (=> b!29906 d!15627))

(assert (=> b!29906 d!15625))

(declare-fun d!15789 () Bool)

(declare-fun lt!5606 () Int)

(assert (=> d!15789 (>= lt!5606 0)))

(declare-fun e!15443 () Int)

(assert (=> d!15789 (= lt!5606 e!15443)))

(declare-fun c!6627 () Bool)

(assert (=> d!15789 (= c!6627 (is-Nil!358 lt!5460))))

(assert (=> d!15789 (= (size!275 lt!5460) lt!5606)))

(declare-fun b!30270 () Bool)

(assert (=> b!30270 (= e!15443 0)))

(declare-fun b!30271 () Bool)

(assert (=> b!30271 (= e!15443 (+ 1 (size!275 (t!4377 lt!5460))))))

(assert (= (and d!15789 c!6627) b!30270))

(assert (= (and d!15789 (not c!6627)) b!30271))

(declare-fun m!32573 () Bool)

(assert (=> b!30271 m!32573))

(assert (=> d!15561 d!15789))

(declare-fun d!15791 () Bool)

(declare-fun lt!5607 () Int)

(assert (=> d!15791 (>= lt!5607 0)))

(declare-fun e!15445 () Int)

(assert (=> d!15791 (= lt!5607 e!15445)))

(declare-fun c!6629 () Bool)

(assert (=> d!15791 (= c!6629 (is-Empty!77 (left!711 ys!77)))))

(assert (=> d!15791 (= (size!276 (left!711 ys!77)) lt!5607)))

(declare-fun b!30275 () Bool)

(declare-fun e!15444 () Int)

(assert (=> b!30275 (= e!15444 (+ (size!276 (left!711 (left!711 ys!77))) (size!276 (right!714 (left!711 ys!77)))))))

(declare-fun b!30273 () Bool)

(assert (=> b!30273 (= e!15445 e!15444)))

(declare-fun c!6628 () Bool)

(assert (=> b!30273 (= c!6628 (is-Single!66 (left!711 ys!77)))))

(declare-fun b!30274 () Bool)

(assert (=> b!30274 (= e!15444 1)))

(declare-fun b!30272 () Bool)

(assert (=> b!30272 (= e!15445 0)))

(assert (= (and b!30273 c!6628) b!30274))

(assert (= (and b!30273 (not c!6628)) b!30275))

(assert (= (and d!15791 c!6629) b!30272))

(assert (= (and d!15791 (not c!6629)) b!30273))

(assert (=> b!30275 m!31935))

(assert (=> b!30275 m!31945))

(assert (=> d!15561 d!15791))

(declare-fun d!15793 () Bool)

(assert (=> d!15793 (= (isEmpty!323 (left!711 (left!711 (left!711 ys!77)))) (= (left!711 (left!711 (left!711 ys!77))) Empty!77))))

(assert (=> b!29899 d!15793))

(declare-fun d!15795 () Bool)

(declare-fun lt!5608 () Int)

(assert (=> d!15795 (>= lt!5608 0)))

(declare-fun e!15446 () Int)

(assert (=> d!15795 (= lt!5608 e!15446)))

(declare-fun c!6630 () Bool)

(assert (=> d!15795 (= c!6630 (is-Nil!358 lt!5478))))

(assert (=> d!15795 (= (size!275 lt!5478) lt!5608)))

(declare-fun b!30276 () Bool)

(assert (=> b!30276 (= e!15446 0)))

(declare-fun b!30277 () Bool)

(assert (=> b!30277 (= e!15446 (+ 1 (size!275 (t!4377 lt!5478))))))

(assert (= (and d!15795 c!6630) b!30276))

(assert (= (and d!15795 (not c!6630)) b!30277))

(declare-fun m!32575 () Bool)

(assert (=> b!30277 m!32575))

(assert (=> d!15589 d!15795))

(declare-fun d!15797 () Bool)

(declare-fun lt!5609 () Int)

(assert (=> d!15797 (>= lt!5609 0)))

(declare-fun e!15448 () Int)

(assert (=> d!15797 (= lt!5609 e!15448)))

(declare-fun c!6632 () Bool)

(assert (=> d!15797 (= c!6632 (is-Empty!77 (right!714 (left!711 ys!77))))))

(assert (=> d!15797 (= (size!276 (right!714 (left!711 ys!77))) lt!5609)))

(declare-fun b!30281 () Bool)

(declare-fun e!15447 () Int)

(assert (=> b!30281 (= e!15447 (+ (size!276 (left!711 (right!714 (left!711 ys!77)))) (size!276 (right!714 (right!714 (left!711 ys!77))))))))

(declare-fun b!30279 () Bool)

(assert (=> b!30279 (= e!15448 e!15447)))

(declare-fun c!6631 () Bool)

(assert (=> b!30279 (= c!6631 (is-Single!66 (right!714 (left!711 ys!77))))))

(declare-fun b!30280 () Bool)

(assert (=> b!30280 (= e!15447 1)))

(declare-fun b!30278 () Bool)

(assert (=> b!30278 (= e!15448 0)))

(assert (= (and b!30279 c!6631) b!30280))

(assert (= (and b!30279 (not c!6631)) b!30281))

(assert (= (and d!15797 c!6632) b!30278))

(assert (= (and d!15797 (not c!6632)) b!30279))

(assert (=> b!30281 m!32481))

(assert (=> b!30281 m!32491))

(assert (=> d!15589 d!15797))

(declare-fun b!30285 () Bool)

(declare-fun e!15450 () Bool)

(assert (=> b!30285 (= e!15450 (concInv!61 (right!714 (left!711 (right!714 res!5544)))))))

(declare-fun b!30284 () Bool)

(declare-fun res!13927 () Bool)

(assert (=> b!30284 (=> (not res!13927) (not e!15450))))

(assert (=> b!30284 (= res!13927 (concInv!61 (left!711 (left!711 (right!714 res!5544)))))))

(declare-fun b!30282 () Bool)

(declare-fun e!15449 () Bool)

(assert (=> b!30282 (= e!15449 e!15450)))

(declare-fun res!13930 () Bool)

(assert (=> b!30282 (=> (not res!13930) (not e!15450))))

(assert (=> b!30282 (= res!13930 (not (isEmpty!323 (left!711 (left!711 (right!714 res!5544))))))))

(declare-fun b!30283 () Bool)

(declare-fun res!13929 () Bool)

(assert (=> b!30283 (=> (not res!13929) (not e!15450))))

(assert (=> b!30283 (= res!13929 (not (isEmpty!323 (right!714 (left!711 (right!714 res!5544))))))))

(declare-fun d!15799 () Bool)

(declare-fun res!13928 () Bool)

(assert (=> d!15799 (=> res!13928 e!15449)))

(assert (=> d!15799 (= res!13928 (not (is-CC!66 (left!711 (right!714 res!5544)))))))

(assert (=> d!15799 (= (concInv!61 (left!711 (right!714 res!5544))) e!15449)))

(assert (= (and d!15799 (not res!13928)) b!30282))

(assert (= (and b!30282 res!13930) b!30283))

(assert (= (and b!30283 res!13929) b!30284))

(assert (= (and b!30284 res!13927) b!30285))

(declare-fun m!32577 () Bool)

(assert (=> b!30285 m!32577))

(declare-fun m!32579 () Bool)

(assert (=> b!30284 m!32579))

(declare-fun m!32581 () Bool)

(assert (=> b!30282 m!32581))

(declare-fun m!32583 () Bool)

(assert (=> b!30283 m!32583))

(assert (=> b!29757 d!15799))

(declare-fun d!15801 () Bool)

(assert (=> d!15801 (= (isEmpty!323 (right!714 (left!711 (left!711 ys!77)))) (= (right!714 (left!711 (left!711 ys!77))) Empty!77))))

(assert (=> b!29900 d!15801))

(assert (=> b!29905 d!15627))

(assert (=> b!29905 d!15625))

(declare-fun d!15803 () Bool)

(declare-fun lt!5610 () Int)

(assert (=> d!15803 (>= lt!5610 0)))

(declare-fun e!15451 () Int)

(assert (=> d!15803 (= lt!5610 e!15451)))

(declare-fun c!6633 () Bool)

(assert (=> d!15803 (= c!6633 (is-Nil!358 lt!5461))))

(assert (=> d!15803 (= (size!275 lt!5461) lt!5610)))

(declare-fun b!30286 () Bool)

(assert (=> b!30286 (= e!15451 0)))

(declare-fun b!30287 () Bool)

(assert (=> b!30287 (= e!15451 (+ 1 (size!275 (t!4377 lt!5461))))))

(assert (= (and d!15803 c!6633) b!30286))

(assert (= (and d!15803 (not c!6633)) b!30287))

(declare-fun m!32585 () Bool)

(assert (=> b!30287 m!32585))

(assert (=> d!15563 d!15803))

(declare-fun d!15805 () Bool)

(declare-fun lt!5611 () Int)

(assert (=> d!15805 (>= lt!5611 0)))

(declare-fun e!15453 () Int)

(assert (=> d!15805 (= lt!5611 e!15453)))

(declare-fun c!6635 () Bool)

(assert (=> d!15805 (= c!6635 (is-Empty!77 (right!714 ys!77)))))

(assert (=> d!15805 (= (size!276 (right!714 ys!77)) lt!5611)))

(declare-fun b!30291 () Bool)

(declare-fun e!15452 () Int)

(assert (=> b!30291 (= e!15452 (+ (size!276 (left!711 (right!714 ys!77))) (size!276 (right!714 (right!714 ys!77)))))))

(declare-fun b!30289 () Bool)

(assert (=> b!30289 (= e!15453 e!15452)))

(declare-fun c!6634 () Bool)

(assert (=> b!30289 (= c!6634 (is-Single!66 (right!714 ys!77)))))

(declare-fun b!30290 () Bool)

(assert (=> b!30290 (= e!15452 1)))

(declare-fun b!30288 () Bool)

(assert (=> b!30288 (= e!15453 0)))

(assert (= (and b!30289 c!6634) b!30290))

(assert (= (and b!30289 (not c!6634)) b!30291))

(assert (= (and d!15805 c!6635) b!30288))

(assert (= (and d!15805 (not c!6635)) b!30289))

(declare-fun m!32587 () Bool)

(assert (=> b!30291 m!32587))

(declare-fun m!32589 () Bool)

(assert (=> b!30291 m!32589))

(assert (=> d!15563 d!15805))

(declare-fun d!15807 () Bool)

(assert (=> d!15807 (= (isEmpty!323 (left!711 lt!5390)) (= (left!711 lt!5390) Empty!77))))

(assert (=> b!29866 d!15807))

(assert (=> b!29877 d!15587))

(assert (=> b!29877 d!15529))

(assert (=> b!29877 d!15531))

(declare-fun b!30293 () Bool)

(declare-fun e!15454 () List!363)

(assert (=> b!30293 (= e!15454 (Cons!357 (h!274 (toList!118 (right!714 (right!714 xs!533)))) (++!43 (t!4377 (toList!118 (right!714 (right!714 xs!533)))) (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun b!30292 () Bool)

(assert (=> b!30292 (= e!15454 (toList!118 (left!711 (left!711 ys!77))))))

(declare-fun b!30294 () Bool)

(declare-fun res!13932 () Bool)

(declare-fun e!15455 () Bool)

(assert (=> b!30294 (=> (not res!13932) (not e!15455))))

(declare-fun lt!5612 () List!363)

(assert (=> b!30294 (= res!13932 (= (size!275 lt!5612) (+ (size!275 (toList!118 (right!714 (right!714 xs!533)))) (size!275 (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30295 () Bool)

(assert (=> b!30295 (= e!15455 (or (not (= (toList!118 (left!711 (left!711 ys!77))) Nil!358)) (= lt!5612 (toList!118 (right!714 (right!714 xs!533))))))))

(declare-fun d!15809 () Bool)

(assert (=> d!15809 e!15455))

(declare-fun res!13931 () Bool)

(assert (=> d!15809 (=> (not res!13931) (not e!15455))))

(assert (=> d!15809 (= res!13931 (= (content!73 lt!5612) (union (content!73 (toList!118 (right!714 (right!714 xs!533)))) (content!73 (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (=> d!15809 (= lt!5612 e!15454)))

(declare-fun c!6636 () Bool)

(assert (=> d!15809 (= c!6636 (is-Nil!358 (toList!118 (right!714 (right!714 xs!533)))))))

(assert (=> d!15809 (= (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))) lt!5612)))

(assert (= (and d!15809 c!6636) b!30292))

(assert (= (and d!15809 (not c!6636)) b!30293))

(assert (= (and d!15809 res!13931) b!30294))

(assert (= (and b!30294 res!13932) b!30295))

(assert (=> b!30293 m!31515))

(declare-fun m!32591 () Bool)

(assert (=> b!30293 m!32591))

(declare-fun m!32593 () Bool)

(assert (=> b!30294 m!32593))

(assert (=> b!30294 m!31529))

(assert (=> b!30294 m!31795))

(assert (=> b!30294 m!31515))

(assert (=> b!30294 m!31951))

(declare-fun m!32595 () Bool)

(assert (=> d!15809 m!32595))

(assert (=> d!15809 m!31529))

(assert (=> d!15809 m!31799))

(assert (=> d!15809 m!31515))

(assert (=> d!15809 m!31955))

(assert (=> b!29877 d!15809))

(declare-fun b!30296 () Bool)

(declare-fun e!15456 () Bool)

(assert (=> b!30296 (= e!15456 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))))))))

(declare-fun lt!5613 () Bool)

(assert (=> b!30296 (= lt!5613 (appendAssoc!11 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))))))

(declare-fun d!15811 () Bool)

(assert (=> d!15811 e!15456))

(declare-fun c!6637 () Bool)

(assert (=> d!15811 (= c!6637 (is-Cons!357 (toList!118 (left!711 xs!533))))))

(assert (=> d!15811 (= (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))) true)))

(declare-fun b!30297 () Bool)

(assert (=> b!30297 (= e!15456 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (left!711 (right!714 xs!533)))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77))))))))))

(assert (= (and d!15811 c!6637) b!30296))

(assert (= (and d!15811 (not c!6637)) b!30297))

(assert (=> b!30296 m!31519))

(declare-fun m!32597 () Bool)

(assert (=> b!30296 m!32597))

(declare-fun m!32599 () Bool)

(assert (=> b!30296 m!32599))

(assert (=> b!30296 m!31519))

(assert (=> b!30296 m!31533))

(assert (=> b!30296 m!31805))

(assert (=> b!30296 m!31533))

(assert (=> b!30296 m!31861))

(assert (=> b!30296 m!32597))

(assert (=> b!30296 m!31805))

(assert (=> b!30296 m!31861))

(declare-fun m!32601 () Bool)

(assert (=> b!30296 m!32601))

(assert (=> b!30296 m!31533))

(assert (=> b!30296 m!31861))

(declare-fun m!32603 () Bool)

(assert (=> b!30296 m!32603))

(assert (=> b!30297 m!31519))

(assert (=> b!30297 m!31533))

(assert (=> b!30297 m!31805))

(assert (=> b!30297 m!31805))

(assert (=> b!30297 m!31861))

(assert (=> b!30297 m!32601))

(assert (=> b!30297 m!31533))

(assert (=> b!30297 m!31861))

(assert (=> b!30297 m!32597))

(assert (=> b!30297 m!31519))

(assert (=> b!30297 m!32597))

(assert (=> b!30297 m!32599))

(assert (=> b!29877 d!15811))

(assert (=> b!29877 d!15487))

(declare-fun b!30301 () Bool)

(declare-fun e!15458 () Bool)

(assert (=> b!30301 (= e!15458 (concInv!61 (right!714 (left!711 (left!711 res!5544)))))))

(declare-fun b!30300 () Bool)

(declare-fun res!13933 () Bool)

(assert (=> b!30300 (=> (not res!13933) (not e!15458))))

(assert (=> b!30300 (= res!13933 (concInv!61 (left!711 (left!711 (left!711 res!5544)))))))

(declare-fun b!30298 () Bool)

(declare-fun e!15457 () Bool)

(assert (=> b!30298 (= e!15457 e!15458)))

(declare-fun res!13936 () Bool)

(assert (=> b!30298 (=> (not res!13936) (not e!15458))))

(assert (=> b!30298 (= res!13936 (not (isEmpty!323 (left!711 (left!711 (left!711 res!5544))))))))

(declare-fun b!30299 () Bool)

(declare-fun res!13935 () Bool)

(assert (=> b!30299 (=> (not res!13935) (not e!15458))))

(assert (=> b!30299 (= res!13935 (not (isEmpty!323 (right!714 (left!711 (left!711 res!5544))))))))

(declare-fun d!15813 () Bool)

(declare-fun res!13934 () Bool)

(assert (=> d!15813 (=> res!13934 e!15457)))

(assert (=> d!15813 (= res!13934 (not (is-CC!66 (left!711 (left!711 res!5544)))))))

(assert (=> d!15813 (= (concInv!61 (left!711 (left!711 res!5544))) e!15457)))

(assert (= (and d!15813 (not res!13934)) b!30298))

(assert (= (and b!30298 res!13936) b!30299))

(assert (= (and b!30299 res!13935) b!30300))

(assert (= (and b!30300 res!13933) b!30301))

(declare-fun m!32605 () Bool)

(assert (=> b!30301 m!32605))

(declare-fun m!32607 () Bool)

(assert (=> b!30300 m!32607))

(declare-fun m!32609 () Bool)

(assert (=> b!30298 m!32609))

(declare-fun m!32611 () Bool)

(assert (=> b!30299 m!32611))

(assert (=> b!29911 d!15813))

(declare-fun d!15815 () Bool)

(assert (=> d!15815 (= (isEmpty!323 (right!714 (right!714 ys!77))) (= (right!714 (right!714 ys!77)) Empty!77))))

(assert (=> b!29863 d!15815))

(declare-fun b!30303 () Bool)

(declare-fun e!15459 () List!363)

(assert (=> b!30303 (= e!15459 (Cons!357 (h!274 (toList!118 (left!711 ys!77))) (++!43 (t!4377 (toList!118 (left!711 ys!77))) (toList!118 (right!714 ys!77)))))))

(declare-fun b!30302 () Bool)

(assert (=> b!30302 (= e!15459 (toList!118 (right!714 ys!77)))))

(declare-fun b!30304 () Bool)

(declare-fun res!13938 () Bool)

(declare-fun e!15460 () Bool)

(assert (=> b!30304 (=> (not res!13938) (not e!15460))))

(declare-fun lt!5614 () List!363)

(assert (=> b!30304 (= res!13938 (= (size!275 lt!5614) (+ (size!275 (toList!118 (left!711 ys!77))) (size!275 (toList!118 (right!714 ys!77))))))))

(declare-fun b!30305 () Bool)

(assert (=> b!30305 (= e!15460 (or (not (= (toList!118 (right!714 ys!77)) Nil!358)) (= lt!5614 (toList!118 (left!711 ys!77)))))))

(declare-fun d!15817 () Bool)

(assert (=> d!15817 e!15460))

(declare-fun res!13937 () Bool)

(assert (=> d!15817 (=> (not res!13937) (not e!15460))))

(assert (=> d!15817 (= res!13937 (= (content!73 lt!5614) (union (content!73 (toList!118 (left!711 ys!77))) (content!73 (toList!118 (right!714 ys!77))))))))

(assert (=> d!15817 (= lt!5614 e!15459)))

(declare-fun c!6638 () Bool)

(assert (=> d!15817 (= c!6638 (is-Nil!358 (toList!118 (left!711 ys!77))))))

(assert (=> d!15817 (= (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))) lt!5614)))

(assert (= (and d!15817 c!6638) b!30302))

(assert (= (and d!15817 (not c!6638)) b!30303))

(assert (= (and d!15817 res!13937) b!30304))

(assert (= (and b!30304 res!13938) b!30305))

(assert (=> b!30303 m!31511))

(declare-fun m!32613 () Bool)

(assert (=> b!30303 m!32613))

(declare-fun m!32615 () Bool)

(assert (=> b!30304 m!32615))

(assert (=> b!30304 m!31539))

(declare-fun m!32617 () Bool)

(assert (=> b!30304 m!32617))

(assert (=> b!30304 m!31511))

(assert (=> b!30304 m!32317))

(declare-fun m!32619 () Bool)

(assert (=> d!15817 m!32619))

(assert (=> d!15817 m!31539))

(declare-fun m!32621 () Bool)

(assert (=> d!15817 m!32621))

(assert (=> d!15817 m!31511))

(assert (=> d!15817 m!32323))

(assert (=> b!29754 d!15817))

(assert (=> b!29754 d!15561))

(assert (=> b!29754 d!15563))

(assert (=> b!29829 d!15759))

(assert (=> b!29829 d!15757))

(declare-fun d!15819 () Bool)

(declare-fun res!13942 () Bool)

(declare-fun e!15462 () Bool)

(assert (=> d!15819 (=> res!13942 e!15462)))

(assert (=> d!15819 (= res!13942 (not (is-CC!66 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15819 (= (balanced!62 (left!711 (left!711 (left!711 ys!77)))) e!15462)))

(declare-fun b!30306 () Bool)

(declare-fun e!15461 () Bool)

(assert (=> b!30306 (= e!15462 e!15461)))

(declare-fun res!13941 () Bool)

(assert (=> b!30306 (=> (not res!13941) (not e!15461))))

(assert (=> b!30306 (= res!13941 (>= (- (level!55 (left!711 (left!711 (left!711 (left!711 ys!77))))) (level!55 (right!714 (left!711 (left!711 (left!711 ys!77)))))) (- 1)))))

(declare-fun b!30309 () Bool)

(assert (=> b!30309 (= e!15461 (balanced!62 (right!714 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!30308 () Bool)

(declare-fun res!13940 () Bool)

(assert (=> b!30308 (=> (not res!13940) (not e!15461))))

(assert (=> b!30308 (= res!13940 (balanced!62 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!30307 () Bool)

(declare-fun res!13939 () Bool)

(assert (=> b!30307 (=> (not res!13939) (not e!15461))))

(assert (=> b!30307 (= res!13939 (<= (- (level!55 (left!711 (left!711 (left!711 (left!711 ys!77))))) (level!55 (right!714 (left!711 (left!711 (left!711 ys!77)))))) 1))))

(assert (= (and d!15819 (not res!13942)) b!30306))

(assert (= (and b!30306 res!13941) b!30307))

(assert (= (and b!30307 res!13939) b!30308))

(assert (= (and b!30308 res!13940) b!30309))

(assert (=> b!30306 m!32495))

(assert (=> b!30306 m!32493))

(declare-fun m!32623 () Bool)

(assert (=> b!30309 m!32623))

(declare-fun m!32625 () Bool)

(assert (=> b!30308 m!32625))

(assert (=> b!30307 m!32495))

(assert (=> b!30307 m!32493))

(assert (=> b!29767 d!15819))

(declare-fun b!30311 () Bool)

(declare-fun e!15463 () List!363)

(assert (=> b!30311 (= e!15463 (Cons!357 (h!274 (toList!118 (left!711 (left!711 xs!533)))) (++!43 (t!4377 (toList!118 (left!711 (left!711 xs!533)))) (toList!118 (right!714 (left!711 xs!533))))))))

(declare-fun b!30310 () Bool)

(assert (=> b!30310 (= e!15463 (toList!118 (right!714 (left!711 xs!533))))))

(declare-fun b!30312 () Bool)

(declare-fun res!13944 () Bool)

(declare-fun e!15464 () Bool)

(assert (=> b!30312 (=> (not res!13944) (not e!15464))))

(declare-fun lt!5615 () List!363)

(assert (=> b!30312 (= res!13944 (= (size!275 lt!5615) (+ (size!275 (toList!118 (left!711 (left!711 xs!533)))) (size!275 (toList!118 (right!714 (left!711 xs!533)))))))))

(declare-fun b!30313 () Bool)

(assert (=> b!30313 (= e!15464 (or (not (= (toList!118 (right!714 (left!711 xs!533))) Nil!358)) (= lt!5615 (toList!118 (left!711 (left!711 xs!533))))))))

(declare-fun d!15821 () Bool)

(assert (=> d!15821 e!15464))

(declare-fun res!13943 () Bool)

(assert (=> d!15821 (=> (not res!13943) (not e!15464))))

(assert (=> d!15821 (= res!13943 (= (content!73 lt!5615) (union (content!73 (toList!118 (left!711 (left!711 xs!533)))) (content!73 (toList!118 (right!714 (left!711 xs!533)))))))))

(assert (=> d!15821 (= lt!5615 e!15463)))

(declare-fun c!6639 () Bool)

(assert (=> d!15821 (= c!6639 (is-Nil!358 (toList!118 (left!711 (left!711 xs!533)))))))

(assert (=> d!15821 (= (++!43 (toList!118 (left!711 (left!711 xs!533))) (toList!118 (right!714 (left!711 xs!533)))) lt!5615)))

(assert (= (and d!15821 c!6639) b!30310))

(assert (= (and d!15821 (not c!6639)) b!30311))

(assert (= (and d!15821 res!13943) b!30312))

(assert (= (and b!30312 res!13944) b!30313))

(assert (=> b!30311 m!31621))

(declare-fun m!32627 () Bool)

(assert (=> b!30311 m!32627))

(declare-fun m!32629 () Bool)

(assert (=> b!30312 m!32629))

(assert (=> b!30312 m!31619))

(declare-fun m!32631 () Bool)

(assert (=> b!30312 m!32631))

(assert (=> b!30312 m!31621))

(declare-fun m!32633 () Bool)

(assert (=> b!30312 m!32633))

(declare-fun m!32635 () Bool)

(assert (=> d!15821 m!32635))

(assert (=> d!15821 m!31619))

(declare-fun m!32637 () Bool)

(assert (=> d!15821 m!32637))

(assert (=> d!15821 m!31621))

(declare-fun m!32639 () Bool)

(assert (=> d!15821 m!32639))

(assert (=> b!29746 d!15821))

(declare-fun b!30314 () Bool)

(declare-fun e!15465 () List!363)

(assert (=> b!30314 (= e!15465 Nil!358)))

(declare-fun b!30317 () Bool)

(declare-fun e!15466 () List!363)

(assert (=> b!30317 (= e!15466 (++!43 (toList!118 (left!711 (left!711 (left!711 xs!533)))) (toList!118 (right!714 (left!711 (left!711 xs!533))))))))

(declare-fun b!30316 () Bool)

(assert (=> b!30316 (= e!15466 (Cons!357 (x!8953 (left!711 (left!711 xs!533))) Nil!358))))

(declare-fun b!30315 () Bool)

(assert (=> b!30315 (= e!15465 e!15466)))

(declare-fun c!6641 () Bool)

(assert (=> b!30315 (= c!6641 (is-Single!66 (left!711 (left!711 xs!533))))))

(declare-fun d!15823 () Bool)

(declare-fun lt!5616 () List!363)

(assert (=> d!15823 (= (size!275 lt!5616) (size!276 (left!711 (left!711 xs!533))))))

(assert (=> d!15823 (= lt!5616 e!15465)))

(declare-fun c!6640 () Bool)

(assert (=> d!15823 (= c!6640 (is-Empty!77 (left!711 (left!711 xs!533))))))

(assert (=> d!15823 (= (toList!118 (left!711 (left!711 xs!533))) lt!5616)))

(assert (= (and b!30315 c!6641) b!30316))

(assert (= (and b!30315 (not c!6641)) b!30317))

(assert (= (and d!15823 c!6640) b!30314))

(assert (= (and d!15823 (not c!6640)) b!30315))

(declare-fun m!32641 () Bool)

(assert (=> b!30317 m!32641))

(declare-fun m!32643 () Bool)

(assert (=> b!30317 m!32643))

(assert (=> b!30317 m!32641))

(assert (=> b!30317 m!32643))

(declare-fun m!32645 () Bool)

(assert (=> b!30317 m!32645))

(declare-fun m!32647 () Bool)

(assert (=> d!15823 m!32647))

(declare-fun m!32649 () Bool)

(assert (=> d!15823 m!32649))

(assert (=> b!29746 d!15823))

(declare-fun b!30318 () Bool)

(declare-fun e!15467 () List!363)

(assert (=> b!30318 (= e!15467 Nil!358)))

(declare-fun b!30321 () Bool)

(declare-fun e!15468 () List!363)

(assert (=> b!30321 (= e!15468 (++!43 (toList!118 (left!711 (right!714 (left!711 xs!533)))) (toList!118 (right!714 (right!714 (left!711 xs!533))))))))

(declare-fun b!30320 () Bool)

(assert (=> b!30320 (= e!15468 (Cons!357 (x!8953 (right!714 (left!711 xs!533))) Nil!358))))

(declare-fun b!30319 () Bool)

(assert (=> b!30319 (= e!15467 e!15468)))

(declare-fun c!6643 () Bool)

(assert (=> b!30319 (= c!6643 (is-Single!66 (right!714 (left!711 xs!533))))))

(declare-fun d!15825 () Bool)

(declare-fun lt!5617 () List!363)

(assert (=> d!15825 (= (size!275 lt!5617) (size!276 (right!714 (left!711 xs!533))))))

(assert (=> d!15825 (= lt!5617 e!15467)))

(declare-fun c!6642 () Bool)

(assert (=> d!15825 (= c!6642 (is-Empty!77 (right!714 (left!711 xs!533))))))

(assert (=> d!15825 (= (toList!118 (right!714 (left!711 xs!533))) lt!5617)))

(assert (= (and b!30319 c!6643) b!30320))

(assert (= (and b!30319 (not c!6643)) b!30321))

(assert (= (and d!15825 c!6642) b!30318))

(assert (= (and d!15825 (not c!6642)) b!30319))

(declare-fun m!32651 () Bool)

(assert (=> b!30321 m!32651))

(declare-fun m!32653 () Bool)

(assert (=> b!30321 m!32653))

(assert (=> b!30321 m!32651))

(assert (=> b!30321 m!32653))

(declare-fun m!32655 () Bool)

(assert (=> b!30321 m!32655))

(declare-fun m!32657 () Bool)

(assert (=> d!15825 m!32657))

(declare-fun m!32659 () Bool)

(assert (=> d!15825 m!32659))

(assert (=> b!29746 d!15825))

(declare-fun b!30323 () Bool)

(declare-fun e!15469 () List!363)

(assert (=> b!30323 (= e!15469 (Cons!357 (h!274 (toList!118 (left!711 (right!714 ys!77)))) (++!43 (t!4377 (toList!118 (left!711 (right!714 ys!77)))) (toList!118 (right!714 (right!714 ys!77))))))))

(declare-fun b!30322 () Bool)

(assert (=> b!30322 (= e!15469 (toList!118 (right!714 (right!714 ys!77))))))

(declare-fun b!30324 () Bool)

(declare-fun res!13946 () Bool)

(declare-fun e!15470 () Bool)

(assert (=> b!30324 (=> (not res!13946) (not e!15470))))

(declare-fun lt!5618 () List!363)

(assert (=> b!30324 (= res!13946 (= (size!275 lt!5618) (+ (size!275 (toList!118 (left!711 (right!714 ys!77)))) (size!275 (toList!118 (right!714 (right!714 ys!77)))))))))

(declare-fun b!30325 () Bool)

(assert (=> b!30325 (= e!15470 (or (not (= (toList!118 (right!714 (right!714 ys!77))) Nil!358)) (= lt!5618 (toList!118 (left!711 (right!714 ys!77))))))))

(declare-fun d!15827 () Bool)

(assert (=> d!15827 e!15470))

(declare-fun res!13945 () Bool)

(assert (=> d!15827 (=> (not res!13945) (not e!15470))))

(assert (=> d!15827 (= res!13945 (= (content!73 lt!5618) (union (content!73 (toList!118 (left!711 (right!714 ys!77)))) (content!73 (toList!118 (right!714 (right!714 ys!77)))))))))

(assert (=> d!15827 (= lt!5618 e!15469)))

(declare-fun c!6644 () Bool)

(assert (=> d!15827 (= c!6644 (is-Nil!358 (toList!118 (left!711 (right!714 ys!77)))))))

(assert (=> d!15827 (= (++!43 (toList!118 (left!711 (right!714 ys!77))) (toList!118 (right!714 (right!714 ys!77)))) lt!5618)))

(assert (= (and d!15827 c!6644) b!30322))

(assert (= (and d!15827 (not c!6644)) b!30323))

(assert (= (and d!15827 res!13945) b!30324))

(assert (= (and b!30324 res!13946) b!30325))

(assert (=> b!30323 m!31891))

(declare-fun m!32661 () Bool)

(assert (=> b!30323 m!32661))

(declare-fun m!32663 () Bool)

(assert (=> b!30324 m!32663))

(assert (=> b!30324 m!31889))

(declare-fun m!32665 () Bool)

(assert (=> b!30324 m!32665))

(assert (=> b!30324 m!31891))

(declare-fun m!32667 () Bool)

(assert (=> b!30324 m!32667))

(declare-fun m!32669 () Bool)

(assert (=> d!15827 m!32669))

(assert (=> d!15827 m!31889))

(declare-fun m!32671 () Bool)

(assert (=> d!15827 m!32671))

(assert (=> d!15827 m!31891))

(declare-fun m!32673 () Bool)

(assert (=> d!15827 m!32673))

(assert (=> b!29890 d!15827))

(declare-fun b!30326 () Bool)

(declare-fun e!15471 () List!363)

(assert (=> b!30326 (= e!15471 Nil!358)))

(declare-fun b!30329 () Bool)

(declare-fun e!15472 () List!363)

(assert (=> b!30329 (= e!15472 (++!43 (toList!118 (left!711 (left!711 (right!714 ys!77)))) (toList!118 (right!714 (left!711 (right!714 ys!77))))))))

(declare-fun b!30328 () Bool)

(assert (=> b!30328 (= e!15472 (Cons!357 (x!8953 (left!711 (right!714 ys!77))) Nil!358))))

(declare-fun b!30327 () Bool)

(assert (=> b!30327 (= e!15471 e!15472)))

(declare-fun c!6646 () Bool)

(assert (=> b!30327 (= c!6646 (is-Single!66 (left!711 (right!714 ys!77))))))

(declare-fun d!15829 () Bool)

(declare-fun lt!5619 () List!363)

(assert (=> d!15829 (= (size!275 lt!5619) (size!276 (left!711 (right!714 ys!77))))))

(assert (=> d!15829 (= lt!5619 e!15471)))

(declare-fun c!6645 () Bool)

(assert (=> d!15829 (= c!6645 (is-Empty!77 (left!711 (right!714 ys!77))))))

(assert (=> d!15829 (= (toList!118 (left!711 (right!714 ys!77))) lt!5619)))

(assert (= (and b!30327 c!6646) b!30328))

(assert (= (and b!30327 (not c!6646)) b!30329))

(assert (= (and d!15829 c!6645) b!30326))

(assert (= (and d!15829 (not c!6645)) b!30327))

(declare-fun m!32675 () Bool)

(assert (=> b!30329 m!32675))

(declare-fun m!32677 () Bool)

(assert (=> b!30329 m!32677))

(assert (=> b!30329 m!32675))

(assert (=> b!30329 m!32677))

(declare-fun m!32679 () Bool)

(assert (=> b!30329 m!32679))

(declare-fun m!32681 () Bool)

(assert (=> d!15829 m!32681))

(assert (=> d!15829 m!32587))

(assert (=> b!29890 d!15829))

(declare-fun b!30330 () Bool)

(declare-fun e!15473 () List!363)

(assert (=> b!30330 (= e!15473 Nil!358)))

(declare-fun b!30333 () Bool)

(declare-fun e!15474 () List!363)

(assert (=> b!30333 (= e!15474 (++!43 (toList!118 (left!711 (right!714 (right!714 ys!77)))) (toList!118 (right!714 (right!714 (right!714 ys!77))))))))

(declare-fun b!30332 () Bool)

(assert (=> b!30332 (= e!15474 (Cons!357 (x!8953 (right!714 (right!714 ys!77))) Nil!358))))

(declare-fun b!30331 () Bool)

(assert (=> b!30331 (= e!15473 e!15474)))

(declare-fun c!6648 () Bool)

(assert (=> b!30331 (= c!6648 (is-Single!66 (right!714 (right!714 ys!77))))))

(declare-fun d!15831 () Bool)

(declare-fun lt!5620 () List!363)

(assert (=> d!15831 (= (size!275 lt!5620) (size!276 (right!714 (right!714 ys!77))))))

(assert (=> d!15831 (= lt!5620 e!15473)))

(declare-fun c!6647 () Bool)

(assert (=> d!15831 (= c!6647 (is-Empty!77 (right!714 (right!714 ys!77))))))

(assert (=> d!15831 (= (toList!118 (right!714 (right!714 ys!77))) lt!5620)))

(assert (= (and b!30331 c!6648) b!30332))

(assert (= (and b!30331 (not c!6648)) b!30333))

(assert (= (and d!15831 c!6647) b!30330))

(assert (= (and d!15831 (not c!6647)) b!30331))

(declare-fun m!32683 () Bool)

(assert (=> b!30333 m!32683))

(declare-fun m!32685 () Bool)

(assert (=> b!30333 m!32685))

(assert (=> b!30333 m!32683))

(assert (=> b!30333 m!32685))

(declare-fun m!32687 () Bool)

(assert (=> b!30333 m!32687))

(declare-fun m!32689 () Bool)

(assert (=> d!15831 m!32689))

(assert (=> d!15831 m!32589))

(assert (=> b!29890 d!15831))

(declare-fun d!15833 () Bool)

(declare-fun res!13950 () Bool)

(declare-fun e!15476 () Bool)

(assert (=> d!15833 (=> res!13950 e!15476)))

(assert (=> d!15833 (= res!13950 (not (is-CC!66 (right!714 (right!714 ys!77)))))))

(assert (=> d!15833 (= (balanced!62 (right!714 (right!714 ys!77))) e!15476)))

(declare-fun b!30334 () Bool)

(declare-fun e!15475 () Bool)

(assert (=> b!30334 (= e!15476 e!15475)))

(declare-fun res!13949 () Bool)

(assert (=> b!30334 (=> (not res!13949) (not e!15475))))

(assert (=> b!30334 (= res!13949 (>= (- (level!55 (left!711 (right!714 (right!714 ys!77)))) (level!55 (right!714 (right!714 (right!714 ys!77))))) (- 1)))))

(declare-fun b!30337 () Bool)

(assert (=> b!30337 (= e!15475 (balanced!62 (right!714 (right!714 (right!714 ys!77)))))))

(declare-fun b!30336 () Bool)

(declare-fun res!13948 () Bool)

(assert (=> b!30336 (=> (not res!13948) (not e!15475))))

(assert (=> b!30336 (= res!13948 (balanced!62 (left!711 (right!714 (right!714 ys!77)))))))

(declare-fun b!30335 () Bool)

(declare-fun res!13947 () Bool)

(assert (=> b!30335 (=> (not res!13947) (not e!15475))))

(assert (=> b!30335 (= res!13947 (<= (- (level!55 (left!711 (right!714 (right!714 ys!77)))) (level!55 (right!714 (right!714 (right!714 ys!77))))) 1))))

(assert (= (and d!15833 (not res!13950)) b!30334))

(assert (= (and b!30334 res!13949) b!30335))

(assert (= (and b!30335 res!13947) b!30336))

(assert (= (and b!30336 res!13948) b!30337))

(assert (=> b!30334 m!31657))

(assert (=> b!30334 m!31655))

(declare-fun m!32691 () Bool)

(assert (=> b!30337 m!32691))

(declare-fun m!32693 () Bool)

(assert (=> b!30336 m!32693))

(assert (=> b!30335 m!31657))

(assert (=> b!30335 m!31655))

(assert (=> b!29792 d!15833))

(declare-fun d!15835 () Bool)

(declare-fun lt!5621 () Int)

(assert (=> d!15835 (>= lt!5621 0)))

(declare-fun e!15477 () Int)

(assert (=> d!15835 (= lt!5621 e!15477)))

(declare-fun c!6649 () Bool)

(assert (=> d!15835 (= c!6649 (is-Nil!358 lt!5477))))

(assert (=> d!15835 (= (size!275 lt!5477) lt!5621)))

(declare-fun b!30338 () Bool)

(assert (=> b!30338 (= e!15477 0)))

(declare-fun b!30339 () Bool)

(assert (=> b!30339 (= e!15477 (+ 1 (size!275 (t!4377 lt!5477))))))

(assert (= (and d!15835 c!6649) b!30338))

(assert (= (and d!15835 (not c!6649)) b!30339))

(declare-fun m!32695 () Bool)

(assert (=> b!30339 m!32695))

(assert (=> d!15587 d!15835))

(declare-fun d!15837 () Bool)

(declare-fun lt!5622 () Int)

(assert (=> d!15837 (>= lt!5622 0)))

(declare-fun e!15479 () Int)

(assert (=> d!15837 (= lt!5622 e!15479)))

(declare-fun c!6651 () Bool)

(assert (=> d!15837 (= c!6651 (is-Empty!77 (left!711 (left!711 ys!77))))))

(assert (=> d!15837 (= (size!276 (left!711 (left!711 ys!77))) lt!5622)))

(declare-fun b!30343 () Bool)

(declare-fun e!15478 () Int)

(assert (=> b!30343 (= e!15478 (+ (size!276 (left!711 (left!711 (left!711 ys!77)))) (size!276 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!30341 () Bool)

(assert (=> b!30341 (= e!15479 e!15478)))

(declare-fun c!6650 () Bool)

(assert (=> b!30341 (= c!6650 (is-Single!66 (left!711 (left!711 ys!77))))))

(declare-fun b!30342 () Bool)

(assert (=> b!30342 (= e!15478 1)))

(declare-fun b!30340 () Bool)

(assert (=> b!30340 (= e!15479 0)))

(assert (= (and b!30341 c!6650) b!30342))

(assert (= (and b!30341 (not c!6650)) b!30343))

(assert (= (and d!15837 c!6651) b!30340))

(assert (= (and d!15837 (not c!6651)) b!30341))

(declare-fun m!32697 () Bool)

(assert (=> b!30343 m!32697))

(assert (=> b!30343 m!32193))

(assert (=> d!15587 d!15837))

(assert (=> b!29896 d!15615))

(assert (=> b!29896 d!15613))

(assert (=> b!29851 d!15607))

(assert (=> b!29851 d!15609))

(declare-fun d!15839 () Bool)

(declare-fun res!13954 () Bool)

(declare-fun e!15481 () Bool)

(assert (=> d!15839 (=> res!13954 e!15481)))

(assert (=> d!15839 (= res!13954 (not (is-CC!66 (left!711 (right!714 ys!77)))))))

(assert (=> d!15839 (= (balanced!62 (left!711 (right!714 ys!77))) e!15481)))

(declare-fun b!30344 () Bool)

(declare-fun e!15480 () Bool)

(assert (=> b!30344 (= e!15481 e!15480)))

(declare-fun res!13953 () Bool)

(assert (=> b!30344 (=> (not res!13953) (not e!15480))))

(assert (=> b!30344 (= res!13953 (>= (- (level!55 (left!711 (left!711 (right!714 ys!77)))) (level!55 (right!714 (left!711 (right!714 ys!77))))) (- 1)))))

(declare-fun b!30347 () Bool)

(assert (=> b!30347 (= e!15480 (balanced!62 (right!714 (left!711 (right!714 ys!77)))))))

(declare-fun b!30346 () Bool)

(declare-fun res!13952 () Bool)

(assert (=> b!30346 (=> (not res!13952) (not e!15480))))

(assert (=> b!30346 (= res!13952 (balanced!62 (left!711 (left!711 (right!714 ys!77)))))))

(declare-fun b!30345 () Bool)

(declare-fun res!13951 () Bool)

(assert (=> b!30345 (=> (not res!13951) (not e!15480))))

(assert (=> b!30345 (= res!13951 (<= (- (level!55 (left!711 (left!711 (right!714 ys!77)))) (level!55 (right!714 (left!711 (right!714 ys!77))))) 1))))

(assert (= (and d!15839 (not res!13954)) b!30344))

(assert (= (and b!30344 res!13953) b!30345))

(assert (= (and b!30345 res!13951) b!30346))

(assert (= (and b!30346 res!13952) b!30347))

(assert (=> b!30344 m!31661))

(assert (=> b!30344 m!31659))

(declare-fun m!32699 () Bool)

(assert (=> b!30347 m!32699))

(declare-fun m!32701 () Bool)

(assert (=> b!30346 m!32701))

(assert (=> b!30345 m!31661))

(assert (=> b!30345 m!31659))

(assert (=> b!29791 d!15839))

(declare-fun b!30349 () Bool)

(declare-fun e!15482 () List!363)

(assert (=> b!30349 (= e!15482 (Cons!357 (h!274 (toList!118 (left!711 res!5544))) (++!43 (t!4377 (toList!118 (left!711 res!5544))) (toList!118 (right!714 res!5544)))))))

(declare-fun b!30348 () Bool)

(assert (=> b!30348 (= e!15482 (toList!118 (right!714 res!5544)))))

(declare-fun b!30350 () Bool)

(declare-fun res!13956 () Bool)

(declare-fun e!15483 () Bool)

(assert (=> b!30350 (=> (not res!13956) (not e!15483))))

(declare-fun lt!5623 () List!363)

(assert (=> b!30350 (= res!13956 (= (size!275 lt!5623) (+ (size!275 (toList!118 (left!711 res!5544))) (size!275 (toList!118 (right!714 res!5544))))))))

(declare-fun b!30351 () Bool)

(assert (=> b!30351 (= e!15483 (or (not (= (toList!118 (right!714 res!5544)) Nil!358)) (= lt!5623 (toList!118 (left!711 res!5544)))))))

(declare-fun d!15841 () Bool)

(assert (=> d!15841 e!15483))

(declare-fun res!13955 () Bool)

(assert (=> d!15841 (=> (not res!13955) (not e!15483))))

(assert (=> d!15841 (= res!13955 (= (content!73 lt!5623) (union (content!73 (toList!118 (left!711 res!5544))) (content!73 (toList!118 (right!714 res!5544))))))))

(assert (=> d!15841 (= lt!5623 e!15482)))

(declare-fun c!6652 () Bool)

(assert (=> d!15841 (= c!6652 (is-Nil!358 (toList!118 (left!711 res!5544))))))

(assert (=> d!15841 (= (++!43 (toList!118 (left!711 res!5544)) (toList!118 (right!714 res!5544))) lt!5623)))

(assert (= (and d!15841 c!6652) b!30348))

(assert (= (and d!15841 (not c!6652)) b!30349))

(assert (= (and d!15841 res!13955) b!30350))

(assert (= (and b!30350 res!13956) b!30351))

(assert (=> b!30349 m!31677))

(declare-fun m!32703 () Bool)

(assert (=> b!30349 m!32703))

(declare-fun m!32705 () Bool)

(assert (=> b!30350 m!32705))

(assert (=> b!30350 m!31675))

(declare-fun m!32707 () Bool)

(assert (=> b!30350 m!32707))

(assert (=> b!30350 m!31677))

(declare-fun m!32709 () Bool)

(assert (=> b!30350 m!32709))

(declare-fun m!32711 () Bool)

(assert (=> d!15841 m!32711))

(assert (=> d!15841 m!31675))

(declare-fun m!32713 () Bool)

(assert (=> d!15841 m!32713))

(assert (=> d!15841 m!31677))

(declare-fun m!32715 () Bool)

(assert (=> d!15841 m!32715))

(assert (=> b!29776 d!15841))

(declare-fun b!30352 () Bool)

(declare-fun e!15484 () List!363)

(assert (=> b!30352 (= e!15484 Nil!358)))

(declare-fun b!30355 () Bool)

(declare-fun e!15485 () List!363)

(assert (=> b!30355 (= e!15485 (++!43 (toList!118 (left!711 (left!711 res!5544))) (toList!118 (right!714 (left!711 res!5544)))))))

(declare-fun b!30354 () Bool)

(assert (=> b!30354 (= e!15485 (Cons!357 (x!8953 (left!711 res!5544)) Nil!358))))

(declare-fun b!30353 () Bool)

(assert (=> b!30353 (= e!15484 e!15485)))

(declare-fun c!6654 () Bool)

(assert (=> b!30353 (= c!6654 (is-Single!66 (left!711 res!5544)))))

(declare-fun d!15843 () Bool)

(declare-fun lt!5624 () List!363)

(assert (=> d!15843 (= (size!275 lt!5624) (size!276 (left!711 res!5544)))))

(assert (=> d!15843 (= lt!5624 e!15484)))

(declare-fun c!6653 () Bool)

(assert (=> d!15843 (= c!6653 (is-Empty!77 (left!711 res!5544)))))

(assert (=> d!15843 (= (toList!118 (left!711 res!5544)) lt!5624)))

(assert (= (and b!30353 c!6654) b!30354))

(assert (= (and b!30353 (not c!6654)) b!30355))

(assert (= (and d!15843 c!6653) b!30352))

(assert (= (and d!15843 (not c!6653)) b!30353))

(declare-fun m!32717 () Bool)

(assert (=> b!30355 m!32717))

(declare-fun m!32719 () Bool)

(assert (=> b!30355 m!32719))

(assert (=> b!30355 m!32717))

(assert (=> b!30355 m!32719))

(declare-fun m!32721 () Bool)

(assert (=> b!30355 m!32721))

(declare-fun m!32723 () Bool)

(assert (=> d!15843 m!32723))

(assert (=> d!15843 m!32269))

(assert (=> b!29776 d!15843))

(declare-fun b!30356 () Bool)

(declare-fun e!15486 () List!363)

(assert (=> b!30356 (= e!15486 Nil!358)))

(declare-fun b!30359 () Bool)

(declare-fun e!15487 () List!363)

(assert (=> b!30359 (= e!15487 (++!43 (toList!118 (left!711 (right!714 res!5544))) (toList!118 (right!714 (right!714 res!5544)))))))

(declare-fun b!30358 () Bool)

(assert (=> b!30358 (= e!15487 (Cons!357 (x!8953 (right!714 res!5544)) Nil!358))))

(declare-fun b!30357 () Bool)

(assert (=> b!30357 (= e!15486 e!15487)))

(declare-fun c!6656 () Bool)

(assert (=> b!30357 (= c!6656 (is-Single!66 (right!714 res!5544)))))

(declare-fun d!15845 () Bool)

(declare-fun lt!5625 () List!363)

(assert (=> d!15845 (= (size!275 lt!5625) (size!276 (right!714 res!5544)))))

(assert (=> d!15845 (= lt!5625 e!15486)))

(declare-fun c!6655 () Bool)

(assert (=> d!15845 (= c!6655 (is-Empty!77 (right!714 res!5544)))))

(assert (=> d!15845 (= (toList!118 (right!714 res!5544)) lt!5625)))

(assert (= (and b!30357 c!6656) b!30358))

(assert (= (and b!30357 (not c!6656)) b!30359))

(assert (= (and d!15845 c!6655) b!30356))

(assert (= (and d!15845 (not c!6655)) b!30357))

(declare-fun m!32725 () Bool)

(assert (=> b!30359 m!32725))

(declare-fun m!32727 () Bool)

(assert (=> b!30359 m!32727))

(assert (=> b!30359 m!32725))

(assert (=> b!30359 m!32727))

(declare-fun m!32729 () Bool)

(assert (=> b!30359 m!32729))

(declare-fun m!32731 () Bool)

(assert (=> d!15845 m!32731))

(assert (=> d!15845 m!32271))

(assert (=> b!29776 d!15845))

(declare-fun b!30363 () Bool)

(declare-fun e!15489 () Bool)

(assert (=> b!30363 (= e!15489 (concInv!61 (right!714 (right!714 (right!714 xs!533)))))))

(declare-fun b!30362 () Bool)

(declare-fun res!13957 () Bool)

(assert (=> b!30362 (=> (not res!13957) (not e!15489))))

(assert (=> b!30362 (= res!13957 (concInv!61 (left!711 (right!714 (right!714 xs!533)))))))

(declare-fun b!30360 () Bool)

(declare-fun e!15488 () Bool)

(assert (=> b!30360 (= e!15488 e!15489)))

(declare-fun res!13960 () Bool)

(assert (=> b!30360 (=> (not res!13960) (not e!15489))))

(assert (=> b!30360 (= res!13960 (not (isEmpty!323 (left!711 (right!714 (right!714 xs!533))))))))

(declare-fun b!30361 () Bool)

(declare-fun res!13959 () Bool)

(assert (=> b!30361 (=> (not res!13959) (not e!15489))))

(assert (=> b!30361 (= res!13959 (not (isEmpty!323 (right!714 (right!714 (right!714 xs!533))))))))

(declare-fun d!15847 () Bool)

(declare-fun res!13958 () Bool)

(assert (=> d!15847 (=> res!13958 e!15488)))

(assert (=> d!15847 (= res!13958 (not (is-CC!66 (right!714 (right!714 xs!533)))))))

(assert (=> d!15847 (= (concInv!61 (right!714 (right!714 xs!533))) e!15488)))

(assert (= (and d!15847 (not res!13958)) b!30360))

(assert (= (and b!30360 res!13960) b!30361))

(assert (= (and b!30361 res!13959) b!30362))

(assert (= (and b!30362 res!13957) b!30363))

(declare-fun m!32733 () Bool)

(assert (=> b!30363 m!32733))

(declare-fun m!32735 () Bool)

(assert (=> b!30362 m!32735))

(declare-fun m!32737 () Bool)

(assert (=> b!30360 m!32737))

(declare-fun m!32739 () Bool)

(assert (=> b!30361 m!32739))

(assert (=> b!29936 d!15847))

(declare-fun d!15849 () Bool)

(assert (=> d!15849 (= (isEmpty!323 (left!711 (right!714 xs!533))) (= (left!711 (right!714 xs!533)) Empty!77))))

(assert (=> b!29933 d!15849))

(declare-fun d!15851 () Bool)

(assert (=> d!15851 (= (concatCorrectness!15 lt!5437 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (= (toList!118 lt!5437) (++!43 (toList!118 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (toList!118 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun bs!5106 () Bool)

(assert (= bs!5106 d!15851))

(declare-fun m!32741 () Bool)

(assert (=> bs!5106 m!32741))

(assert (=> bs!5106 m!32215))

(assert (=> bs!5106 m!32221))

(declare-fun m!32743 () Bool)

(assert (=> bs!5106 m!32743))

(assert (=> bs!5106 m!32221))

(assert (=> bs!5106 m!32215))

(assert (=> b!29818 d!15851))

(declare-fun d!15853 () Bool)

(assert (=> d!15853 (= (isEmpty!323 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (= (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) Empty!77))))

(assert (=> b!29803 d!15853))

(declare-fun b!30367 () Bool)

(declare-fun e!15491 () Bool)

(assert (=> b!30367 (= e!15491 (concInv!61 (right!714 (left!711 (right!714 xs!533)))))))

(declare-fun b!30366 () Bool)

(declare-fun res!13961 () Bool)

(assert (=> b!30366 (=> (not res!13961) (not e!15491))))

(assert (=> b!30366 (= res!13961 (concInv!61 (left!711 (left!711 (right!714 xs!533)))))))

(declare-fun b!30364 () Bool)

(declare-fun e!15490 () Bool)

(assert (=> b!30364 (= e!15490 e!15491)))

(declare-fun res!13964 () Bool)

(assert (=> b!30364 (=> (not res!13964) (not e!15491))))

(assert (=> b!30364 (= res!13964 (not (isEmpty!323 (left!711 (left!711 (right!714 xs!533))))))))

(declare-fun b!30365 () Bool)

(declare-fun res!13963 () Bool)

(assert (=> b!30365 (=> (not res!13963) (not e!15491))))

(assert (=> b!30365 (= res!13963 (not (isEmpty!323 (right!714 (left!711 (right!714 xs!533))))))))

(declare-fun d!15855 () Bool)

(declare-fun res!13962 () Bool)

(assert (=> d!15855 (=> res!13962 e!15490)))

(assert (=> d!15855 (= res!13962 (not (is-CC!66 (left!711 (right!714 xs!533)))))))

(assert (=> d!15855 (= (concInv!61 (left!711 (right!714 xs!533))) e!15490)))

(assert (= (and d!15855 (not res!13962)) b!30364))

(assert (= (and b!30364 res!13964) b!30365))

(assert (= (and b!30365 res!13963) b!30366))

(assert (= (and b!30366 res!13961) b!30367))

(declare-fun m!32745 () Bool)

(assert (=> b!30367 m!32745))

(declare-fun m!32747 () Bool)

(assert (=> b!30366 m!32747))

(declare-fun m!32749 () Bool)

(assert (=> b!30364 m!32749))

(declare-fun m!32751 () Bool)

(assert (=> b!30365 m!32751))

(assert (=> b!29935 d!15855))

(declare-fun d!15857 () Bool)

(declare-fun lt!5626 () Int)

(assert (=> d!15857 (>= lt!5626 0)))

(declare-fun e!15492 () Int)

(assert (=> d!15857 (= lt!5626 e!15492)))

(declare-fun c!6657 () Bool)

(assert (=> d!15857 (= c!6657 (is-Nil!358 lt!5450))))

(assert (=> d!15857 (= (size!275 lt!5450) lt!5626)))

(declare-fun b!30368 () Bool)

(assert (=> b!30368 (= e!15492 0)))

(declare-fun b!30369 () Bool)

(assert (=> b!30369 (= e!15492 (+ 1 (size!275 (t!4377 lt!5450))))))

(assert (= (and d!15857 c!6657) b!30368))

(assert (= (and d!15857 (not c!6657)) b!30369))

(declare-fun m!32753 () Bool)

(assert (=> b!30369 m!32753))

(assert (=> b!29842 d!15857))

(declare-fun d!15859 () Bool)

(declare-fun lt!5627 () Int)

(assert (=> d!15859 (>= lt!5627 0)))

(declare-fun e!15493 () Int)

(assert (=> d!15859 (= lt!5627 e!15493)))

(declare-fun c!6658 () Bool)

(assert (=> d!15859 (= c!6658 (is-Nil!358 (toList!118 (right!714 (right!714 xs!533)))))))

(assert (=> d!15859 (= (size!275 (toList!118 (right!714 (right!714 xs!533)))) lt!5627)))

(declare-fun b!30370 () Bool)

(assert (=> b!30370 (= e!15493 0)))

(declare-fun b!30371 () Bool)

(assert (=> b!30371 (= e!15493 (+ 1 (size!275 (t!4377 (toList!118 (right!714 (right!714 xs!533)))))))))

(assert (= (and d!15859 c!6658) b!30370))

(assert (= (and d!15859 (not c!6658)) b!30371))

(declare-fun m!32755 () Bool)

(assert (=> b!30371 m!32755))

(assert (=> b!29842 d!15859))

(declare-fun d!15861 () Bool)

(declare-fun lt!5628 () Int)

(assert (=> d!15861 (>= lt!5628 0)))

(declare-fun e!15494 () Int)

(assert (=> d!15861 (= lt!5628 e!15494)))

(declare-fun c!6659 () Bool)

(assert (=> d!15861 (= c!6659 (is-Nil!358 (toList!118 ys!77)))))

(assert (=> d!15861 (= (size!275 (toList!118 ys!77)) lt!5628)))

(declare-fun b!30372 () Bool)

(assert (=> b!30372 (= e!15494 0)))

(declare-fun b!30373 () Bool)

(assert (=> b!30373 (= e!15494 (+ 1 (size!275 (t!4377 (toList!118 ys!77)))))))

(assert (= (and d!15861 c!6659) b!30372))

(assert (= (and d!15861 (not c!6659)) b!30373))

(declare-fun m!32757 () Bool)

(assert (=> b!30373 m!32757))

(assert (=> b!29842 d!15861))

(assert (=> b!29848 d!15579))

(declare-fun d!15863 () Bool)

(declare-fun res!13968 () Bool)

(declare-fun e!15496 () Bool)

(assert (=> d!15863 (=> res!13968 e!15496)))

(assert (=> d!15863 (= res!13968 (not (is-CC!66 (right!714 (right!714 xs!533)))))))

(assert (=> d!15863 (= (balanced!62 (right!714 (right!714 xs!533))) e!15496)))

(declare-fun b!30374 () Bool)

(declare-fun e!15495 () Bool)

(assert (=> b!30374 (= e!15496 e!15495)))

(declare-fun res!13967 () Bool)

(assert (=> b!30374 (=> (not res!13967) (not e!15495))))

(assert (=> b!30374 (= res!13967 (>= (- (level!55 (left!711 (right!714 (right!714 xs!533)))) (level!55 (right!714 (right!714 (right!714 xs!533))))) (- 1)))))

(declare-fun b!30377 () Bool)

(assert (=> b!30377 (= e!15495 (balanced!62 (right!714 (right!714 (right!714 xs!533)))))))

(declare-fun b!30376 () Bool)

(declare-fun res!13966 () Bool)

(assert (=> b!30376 (=> (not res!13966) (not e!15495))))

(assert (=> b!30376 (= res!13966 (balanced!62 (left!711 (right!714 (right!714 xs!533)))))))

(declare-fun b!30375 () Bool)

(declare-fun res!13965 () Bool)

(assert (=> b!30375 (=> (not res!13965) (not e!15495))))

(assert (=> b!30375 (= res!13965 (<= (- (level!55 (left!711 (right!714 (right!714 xs!533)))) (level!55 (right!714 (right!714 (right!714 xs!533))))) 1))))

(assert (= (and d!15863 (not res!13968)) b!30374))

(assert (= (and b!30374 res!13967) b!30375))

(assert (= (and b!30375 res!13965) b!30376))

(assert (= (and b!30376 res!13966) b!30377))

(assert (=> b!30374 m!31995))

(assert (=> b!30374 m!31993))

(declare-fun m!32759 () Bool)

(assert (=> b!30377 m!32759))

(declare-fun m!32761 () Bool)

(assert (=> b!30376 m!32761))

(assert (=> b!30375 m!31995))

(assert (=> b!30375 m!31993))

(assert (=> b!29853 d!15863))

(assert (=> b!29750 d!15651))

(assert (=> b!29750 d!15531))

(assert (=> b!29750 d!15529))

(declare-fun d!15865 () Bool)

(assert (=> d!15865 (= (isEmpty!323 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (= (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) Empty!77))))

(assert (=> b!29813 d!15865))

(declare-fun d!15867 () Bool)

(declare-fun lt!5629 () Int)

(assert (=> d!15867 (>= lt!5629 0)))

(declare-fun e!15497 () Int)

(assert (=> d!15867 (= lt!5629 e!15497)))

(declare-fun c!6660 () Bool)

(assert (=> d!15867 (= c!6660 (is-Nil!358 lt!5408))))

(assert (=> d!15867 (= (size!275 lt!5408) lt!5629)))

(declare-fun b!30378 () Bool)

(assert (=> b!30378 (= e!15497 0)))

(declare-fun b!30379 () Bool)

(assert (=> b!30379 (= e!15497 (+ 1 (size!275 (t!4377 lt!5408))))))

(assert (= (and d!15867 c!6660) b!30378))

(assert (= (and d!15867 (not c!6660)) b!30379))

(declare-fun m!32763 () Bool)

(assert (=> b!30379 m!32763))

(assert (=> d!15491 d!15867))

(declare-fun d!15869 () Bool)

(declare-fun lt!5630 () Int)

(assert (=> d!15869 (>= lt!5630 0)))

(declare-fun e!15499 () Int)

(assert (=> d!15869 (= lt!5630 e!15499)))

(declare-fun c!6662 () Bool)

(assert (=> d!15869 (= c!6662 (is-Empty!77 ys!77))))

(assert (=> d!15869 (= (size!276 ys!77) lt!5630)))

(declare-fun b!30383 () Bool)

(declare-fun e!15498 () Int)

(assert (=> b!30383 (= e!15498 (+ (size!276 (left!711 ys!77)) (size!276 (right!714 ys!77))))))

(declare-fun b!30381 () Bool)

(assert (=> b!30381 (= e!15499 e!15498)))

(declare-fun c!6661 () Bool)

(assert (=> b!30381 (= c!6661 (is-Single!66 ys!77))))

(declare-fun b!30382 () Bool)

(assert (=> b!30382 (= e!15498 1)))

(declare-fun b!30380 () Bool)

(assert (=> b!30380 (= e!15499 0)))

(assert (= (and b!30381 c!6661) b!30382))

(assert (= (and b!30381 (not c!6661)) b!30383))

(assert (= (and d!15869 c!6662) b!30380))

(assert (= (and d!15869 (not c!6662)) b!30381))

(assert (=> b!30383 m!31887))

(assert (=> b!30383 m!31897))

(assert (=> d!15491 d!15869))

(assert (=> b!29886 d!15703))

(assert (=> b!29886 d!15587))

(assert (=> b!29886 d!15589))

(declare-fun d!15871 () Bool)

(assert (=> d!15871 (= (isEmpty!323 (left!711 (left!711 xs!533))) (= (left!711 (left!711 xs!533)) Empty!77))))

(assert (=> b!29793 d!15871))

(declare-fun d!15873 () Bool)

(assert (=> d!15873 (= (isEmpty!323 (right!714 (left!711 res!5544))) (= (right!714 (left!711 res!5544)) Empty!77))))

(assert (=> b!29910 d!15873))

(declare-fun b!30385 () Bool)

(declare-fun e!15500 () List!363)

(assert (=> b!30385 (= e!15500 (Cons!357 (h!274 (t!4377 (toList!118 (right!714 (right!714 xs!533))))) (++!43 (t!4377 (t!4377 (toList!118 (right!714 (right!714 xs!533))))) (toList!118 ys!77))))))

(declare-fun b!30384 () Bool)

(assert (=> b!30384 (= e!15500 (toList!118 ys!77))))

(declare-fun b!30386 () Bool)

(declare-fun res!13970 () Bool)

(declare-fun e!15501 () Bool)

(assert (=> b!30386 (=> (not res!13970) (not e!15501))))

(declare-fun lt!5631 () List!363)

(assert (=> b!30386 (= res!13970 (= (size!275 lt!5631) (+ (size!275 (t!4377 (toList!118 (right!714 (right!714 xs!533))))) (size!275 (toList!118 ys!77)))))))

(declare-fun b!30387 () Bool)

(assert (=> b!30387 (= e!15501 (or (not (= (toList!118 ys!77) Nil!358)) (= lt!5631 (t!4377 (toList!118 (right!714 (right!714 xs!533)))))))))

(declare-fun d!15875 () Bool)

(assert (=> d!15875 e!15501))

(declare-fun res!13969 () Bool)

(assert (=> d!15875 (=> (not res!13969) (not e!15501))))

(assert (=> d!15875 (= res!13969 (= (content!73 lt!5631) (union (content!73 (t!4377 (toList!118 (right!714 (right!714 xs!533))))) (content!73 (toList!118 ys!77)))))))

(assert (=> d!15875 (= lt!5631 e!15500)))

(declare-fun c!6663 () Bool)

(assert (=> d!15875 (= c!6663 (is-Nil!358 (t!4377 (toList!118 (right!714 (right!714 xs!533))))))))

(assert (=> d!15875 (= (++!43 (t!4377 (toList!118 (right!714 (right!714 xs!533)))) (toList!118 ys!77)) lt!5631)))

(assert (= (and d!15875 c!6663) b!30384))

(assert (= (and d!15875 (not c!6663)) b!30385))

(assert (= (and d!15875 res!13969) b!30386))

(assert (= (and b!30386 res!13970) b!30387))

(assert (=> b!30385 m!31523))

(declare-fun m!32765 () Bool)

(assert (=> b!30385 m!32765))

(declare-fun m!32767 () Bool)

(assert (=> b!30386 m!32767))

(assert (=> b!30386 m!32755))

(assert (=> b!30386 m!31523))

(assert (=> b!30386 m!31691))

(declare-fun m!32769 () Bool)

(assert (=> d!15875 m!32769))

(declare-fun m!32771 () Bool)

(assert (=> d!15875 m!32771))

(assert (=> d!15875 m!31523))

(assert (=> d!15875 m!31697))

(assert (=> b!29841 d!15875))

(declare-fun d!15877 () Bool)

(assert (=> d!15877 (= (isEmpty!323 (right!714 (right!714 res!5544))) (= (right!714 (right!714 res!5544)) Empty!77))))

(assert (=> b!29756 d!15877))

(declare-fun d!15879 () Bool)

(declare-fun res!13974 () Bool)

(declare-fun e!15503 () Bool)

(assert (=> d!15879 (=> res!13974 e!15503)))

(assert (=> d!15879 (= res!13974 (not (is-CC!66 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> d!15879 (= (balanced!62 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) e!15503)))

(declare-fun b!30388 () Bool)

(declare-fun e!15502 () Bool)

(assert (=> b!30388 (= e!15503 e!15502)))

(declare-fun res!13973 () Bool)

(assert (=> b!30388 (=> (not res!13973) (not e!15502))))

(assert (=> b!30388 (= res!13973 (>= (- (level!55 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (level!55 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (- 1)))))

(declare-fun b!30391 () Bool)

(assert (=> b!30391 (= e!15502 (balanced!62 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun b!30390 () Bool)

(declare-fun res!13972 () Bool)

(assert (=> b!30390 (=> (not res!13972) (not e!15502))))

(assert (=> b!30390 (= res!13972 (balanced!62 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun b!30389 () Bool)

(declare-fun res!13971 () Bool)

(assert (=> b!30389 (=> (not res!13971) (not e!15502))))

(assert (=> b!30389 (= res!13971 (<= (- (level!55 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (level!55 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) 1))))

(assert (= (and d!15879 (not res!13974)) b!30388))

(assert (= (and b!30388 res!13973) b!30389))

(assert (= (and b!30389 res!13971) b!30390))

(assert (= (and b!30390 res!13972) b!30391))

(declare-fun m!32773 () Bool)

(assert (=> b!30388 m!32773))

(declare-fun m!32775 () Bool)

(assert (=> b!30388 m!32775))

(declare-fun m!32777 () Bool)

(assert (=> b!30391 m!32777))

(declare-fun m!32779 () Bool)

(assert (=> b!30390 m!32779))

(assert (=> b!30389 m!32773))

(assert (=> b!30389 m!32775))

(assert (=> b!29812 d!15879))

(declare-fun b!30393 () Bool)

(declare-fun e!15504 () List!363)

(assert (=> b!30393 (= e!15504 (Cons!357 (h!274 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77)))) (++!43 (t!4377 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77)))) (toList!118 (right!714 ys!77)))))))

(declare-fun b!30392 () Bool)

(assert (=> b!30392 (= e!15504 (toList!118 (right!714 ys!77)))))

(declare-fun b!30394 () Bool)

(declare-fun res!13976 () Bool)

(declare-fun e!15505 () Bool)

(assert (=> b!30394 (=> (not res!13976) (not e!15505))))

(declare-fun lt!5632 () List!363)

(assert (=> b!30394 (= res!13976 (= (size!275 lt!5632) (+ (size!275 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77)))) (size!275 (toList!118 (right!714 ys!77))))))))

(declare-fun b!30395 () Bool)

(assert (=> b!30395 (= e!15505 (or (not (= (toList!118 (right!714 ys!77)) Nil!358)) (= lt!5632 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77))))))))

(declare-fun d!15881 () Bool)

(assert (=> d!15881 e!15505))

(declare-fun res!13975 () Bool)

(assert (=> d!15881 (=> (not res!13975) (not e!15505))))

(assert (=> d!15881 (= res!13975 (= (content!73 lt!5632) (union (content!73 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77)))) (content!73 (toList!118 (right!714 ys!77))))))))

(assert (=> d!15881 (= lt!5632 e!15504)))

(declare-fun c!6664 () Bool)

(assert (=> d!15881 (= c!6664 (is-Nil!358 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77)))))))

(assert (=> d!15881 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77))) (toList!118 (right!714 ys!77))) lt!5632)))

(assert (= (and d!15881 c!6664) b!30392))

(assert (= (and d!15881 (not c!6664)) b!30393))

(assert (= (and d!15881 res!13975) b!30394))

(assert (= (and b!30394 res!13976) b!30395))

(assert (=> b!30393 m!31511))

(declare-fun m!32781 () Bool)

(assert (=> b!30393 m!32781))

(declare-fun m!32783 () Bool)

(assert (=> b!30394 m!32783))

(assert (=> b!30394 m!31877))

(declare-fun m!32785 () Bool)

(assert (=> b!30394 m!32785))

(assert (=> b!30394 m!31511))

(assert (=> b!30394 m!32317))

(declare-fun m!32787 () Bool)

(assert (=> d!15881 m!32787))

(assert (=> d!15881 m!31877))

(declare-fun m!32789 () Bool)

(assert (=> d!15881 m!32789))

(assert (=> d!15881 m!31511))

(assert (=> d!15881 m!32323))

(assert (=> b!29882 d!15881))

(declare-fun b!30397 () Bool)

(declare-fun e!15506 () List!363)

(assert (=> b!30397 (= e!15506 (Cons!357 (h!274 (toList!118 xs!533)) (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 ys!77)))))))

(declare-fun b!30396 () Bool)

(assert (=> b!30396 (= e!15506 (toList!118 (left!711 ys!77)))))

(declare-fun b!30398 () Bool)

(declare-fun res!13978 () Bool)

(declare-fun e!15507 () Bool)

(assert (=> b!30398 (=> (not res!13978) (not e!15507))))

(declare-fun lt!5633 () List!363)

(assert (=> b!30398 (= res!13978 (= (size!275 lt!5633) (+ (size!275 (toList!118 xs!533)) (size!275 (toList!118 (left!711 ys!77))))))))

(declare-fun b!30399 () Bool)

(assert (=> b!30399 (= e!15507 (or (not (= (toList!118 (left!711 ys!77)) Nil!358)) (= lt!5633 (toList!118 xs!533))))))

(declare-fun d!15883 () Bool)

(assert (=> d!15883 e!15507))

(declare-fun res!13977 () Bool)

(assert (=> d!15883 (=> (not res!13977) (not e!15507))))

(assert (=> d!15883 (= res!13977 (= (content!73 lt!5633) (union (content!73 (toList!118 xs!533)) (content!73 (toList!118 (left!711 ys!77))))))))

(assert (=> d!15883 (= lt!5633 e!15506)))

(declare-fun c!6665 () Bool)

(assert (=> d!15883 (= c!6665 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15883 (= (++!43 (toList!118 xs!533) (toList!118 (left!711 ys!77))) lt!5633)))

(assert (= (and d!15883 c!6665) b!30396))

(assert (= (and d!15883 (not c!6665)) b!30397))

(assert (= (and d!15883 res!13977) b!30398))

(assert (= (and b!30398 res!13978) b!30399))

(assert (=> b!30397 m!31539))

(declare-fun m!32791 () Bool)

(assert (=> b!30397 m!32791))

(declare-fun m!32793 () Bool)

(assert (=> b!30398 m!32793))

(assert (=> b!30398 m!31517))

(assert (=> b!30398 m!31689))

(assert (=> b!30398 m!31539))

(assert (=> b!30398 m!32617))

(declare-fun m!32795 () Bool)

(assert (=> d!15883 m!32795))

(assert (=> d!15883 m!31517))

(assert (=> d!15883 m!31695))

(assert (=> d!15883 m!31539))

(assert (=> d!15883 m!32621))

(assert (=> b!29882 d!15883))

(declare-fun b!30401 () Bool)

(declare-fun e!15508 () List!363)

(assert (=> b!30401 (= e!15508 (Cons!357 (h!274 (toList!118 xs!533)) (++!43 (t!4377 (toList!118 xs!533)) (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))))

(declare-fun b!30400 () Bool)

(assert (=> b!30400 (= e!15508 (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))

(declare-fun b!30402 () Bool)

(declare-fun res!13980 () Bool)

(declare-fun e!15509 () Bool)

(assert (=> b!30402 (=> (not res!13980) (not e!15509))))

(declare-fun lt!5634 () List!363)

(assert (=> b!30402 (= res!13980 (= (size!275 lt!5634) (+ (size!275 (toList!118 xs!533)) (size!275 (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77)))))))))

(declare-fun b!30403 () Bool)

(assert (=> b!30403 (= e!15509 (or (not (= (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))) Nil!358)) (= lt!5634 (toList!118 xs!533))))))

(declare-fun d!15885 () Bool)

(assert (=> d!15885 e!15509))

(declare-fun res!13979 () Bool)

(assert (=> d!15885 (=> (not res!13979) (not e!15509))))

(assert (=> d!15885 (= res!13979 (= (content!73 lt!5634) (union (content!73 (toList!118 xs!533)) (content!73 (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77)))))))))

(assert (=> d!15885 (= lt!5634 e!15508)))

(declare-fun c!6666 () Bool)

(assert (=> d!15885 (= c!6666 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15885 (= (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77)))) lt!5634)))

(assert (= (and d!15885 c!6666) b!30400))

(assert (= (and d!15885 (not c!6666)) b!30401))

(assert (= (and d!15885 res!13979) b!30402))

(assert (= (and b!30402 res!13980) b!30403))

(assert (=> b!30401 m!31635))

(declare-fun m!32797 () Bool)

(assert (=> b!30401 m!32797))

(declare-fun m!32799 () Bool)

(assert (=> b!30402 m!32799))

(assert (=> b!30402 m!31517))

(assert (=> b!30402 m!31689))

(assert (=> b!30402 m!31635))

(declare-fun m!32801 () Bool)

(assert (=> b!30402 m!32801))

(declare-fun m!32803 () Bool)

(assert (=> d!15885 m!32803))

(assert (=> d!15885 m!31517))

(assert (=> d!15885 m!31695))

(assert (=> d!15885 m!31635))

(declare-fun m!32805 () Bool)

(assert (=> d!15885 m!32805))

(assert (=> b!29882 d!15885))

(assert (=> b!29882 d!15817))

(declare-fun d!15887 () Bool)

(declare-fun res!13984 () Bool)

(declare-fun e!15511 () Bool)

(assert (=> d!15887 (=> res!13984 e!15511)))

(assert (=> d!15887 (= res!13984 (not (is-CC!66 (left!711 (right!714 xs!533)))))))

(assert (=> d!15887 (= (balanced!62 (left!711 (right!714 xs!533))) e!15511)))

(declare-fun b!30404 () Bool)

(declare-fun e!15510 () Bool)

(assert (=> b!30404 (= e!15511 e!15510)))

(declare-fun res!13983 () Bool)

(assert (=> b!30404 (=> (not res!13983) (not e!15510))))

(assert (=> b!30404 (= res!13983 (>= (- (level!55 (left!711 (left!711 (right!714 xs!533)))) (level!55 (right!714 (left!711 (right!714 xs!533))))) (- 1)))))

(declare-fun b!30407 () Bool)

(assert (=> b!30407 (= e!15510 (balanced!62 (right!714 (left!711 (right!714 xs!533)))))))

(declare-fun b!30406 () Bool)

(declare-fun res!13982 () Bool)

(assert (=> b!30406 (=> (not res!13982) (not e!15510))))

(assert (=> b!30406 (= res!13982 (balanced!62 (left!711 (left!711 (right!714 xs!533)))))))

(declare-fun b!30405 () Bool)

(declare-fun res!13981 () Bool)

(assert (=> b!30405 (=> (not res!13981) (not e!15510))))

(assert (=> b!30405 (= res!13981 (<= (- (level!55 (left!711 (left!711 (right!714 xs!533)))) (level!55 (right!714 (left!711 (right!714 xs!533))))) 1))))

(assert (= (and d!15887 (not res!13984)) b!30404))

(assert (= (and b!30404 res!13983) b!30405))

(assert (= (and b!30405 res!13981) b!30406))

(assert (= (and b!30406 res!13982) b!30407))

(assert (=> b!30404 m!31991))

(assert (=> b!30404 m!31989))

(declare-fun m!32807 () Bool)

(assert (=> b!30407 m!32807))

(declare-fun m!32809 () Bool)

(assert (=> b!30406 m!32809))

(assert (=> b!30405 m!31991))

(assert (=> b!30405 m!31989))

(assert (=> b!29852 d!15887))

(assert (=> b!29765 d!15757))

(assert (=> b!29765 d!15759))

(declare-fun b!30408 () Bool)

(declare-fun e!15512 () Bool)

(assert (=> b!30408 (= e!15512 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (right!714 xs!533)) (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun lt!5635 () Bool)

(assert (=> b!30408 (= lt!5635 (appendAssoc!11 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (right!714 xs!533)) (toList!118 (left!711 (left!711 ys!77)))))))

(declare-fun d!15889 () Bool)

(assert (=> d!15889 e!15512))

(declare-fun c!6667 () Bool)

(assert (=> d!15889 (= c!6667 (is-Cons!357 (toList!118 (left!711 xs!533))))))

(assert (=> d!15889 (= (appendAssoc!11 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533)) (toList!118 (left!711 (left!711 ys!77)))) true)))

(declare-fun b!30409 () Bool)

(assert (=> b!30409 (= e!15512 (= (++!43 (++!43 (toList!118 (left!711 xs!533)) (toList!118 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (left!711 xs!533)) (++!43 (toList!118 (right!714 xs!533)) (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (= (and d!15889 c!6667) b!30408))

(assert (= (and d!15889 (not c!6667)) b!30409))

(assert (=> b!30408 m!31519))

(declare-fun m!32811 () Bool)

(assert (=> b!30408 m!32811))

(declare-fun m!32813 () Bool)

(assert (=> b!30408 m!32813))

(assert (=> b!30408 m!31519))

(assert (=> b!30408 m!31521))

(assert (=> b!30408 m!31613))

(assert (=> b!30408 m!31521))

(assert (=> b!30408 m!31515))

(assert (=> b!30408 m!32811))

(assert (=> b!30408 m!31613))

(assert (=> b!30408 m!31515))

(declare-fun m!32815 () Bool)

(assert (=> b!30408 m!32815))

(assert (=> b!30408 m!31521))

(assert (=> b!30408 m!31515))

(declare-fun m!32817 () Bool)

(assert (=> b!30408 m!32817))

(assert (=> b!30409 m!31519))

(assert (=> b!30409 m!31521))

(assert (=> b!30409 m!31613))

(assert (=> b!30409 m!31613))

(assert (=> b!30409 m!31515))

(assert (=> b!30409 m!32815))

(assert (=> b!30409 m!31521))

(assert (=> b!30409 m!31515))

(assert (=> b!30409 m!32811))

(assert (=> b!30409 m!31519))

(assert (=> b!30409 m!32811))

(assert (=> b!30409 m!32813))

(assert (=> b!29874 d!15889))

(assert (=> b!29874 d!15487))

(assert (=> b!29874 d!15489))

(assert (=> b!29874 d!15587))

(declare-fun d!15891 () Bool)

(declare-fun res!13988 () Bool)

(declare-fun e!15514 () Bool)

(assert (=> d!15891 (=> res!13988 e!15514)))

(assert (=> d!15891 (= res!13988 (not (is-CC!66 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(assert (=> d!15891 (= (balanced!62 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) e!15514)))

(declare-fun b!30410 () Bool)

(declare-fun e!15513 () Bool)

(assert (=> b!30410 (= e!15514 e!15513)))

(declare-fun res!13987 () Bool)

(assert (=> b!30410 (=> (not res!13987) (not e!15513))))

(assert (=> b!30410 (= res!13987 (>= (- (level!55 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (level!55 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) (- 1)))))

(declare-fun b!30413 () Bool)

(assert (=> b!30413 (= e!15513 (balanced!62 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30412 () Bool)

(declare-fun res!13986 () Bool)

(assert (=> b!30412 (=> (not res!13986) (not e!15513))))

(assert (=> b!30412 (= res!13986 (balanced!62 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun b!30411 () Bool)

(declare-fun res!13985 () Bool)

(assert (=> b!30411 (=> (not res!13985) (not e!15513))))

(assert (=> b!30411 (= res!13985 (<= (- (level!55 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (level!55 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) 1))))

(assert (= (and d!15891 (not res!13988)) b!30410))

(assert (= (and b!30410 res!13987) b!30411))

(assert (= (and b!30411 res!13985) b!30412))

(assert (= (and b!30412 res!13986) b!30413))

(declare-fun m!32819 () Bool)

(assert (=> b!30410 m!32819))

(declare-fun m!32821 () Bool)

(assert (=> b!30410 m!32821))

(declare-fun m!32823 () Bool)

(assert (=> b!30413 m!32823))

(declare-fun m!32825 () Bool)

(assert (=> b!30412 m!32825))

(assert (=> b!30411 m!32819))

(assert (=> b!30411 m!32821))

(assert (=> b!29815 d!15891))

(declare-fun d!15893 () Bool)

(declare-fun res!13992 () Bool)

(declare-fun e!15516 () Bool)

(assert (=> d!15893 (=> res!13992 e!15516)))

(assert (=> d!15893 (= res!13992 (not (is-CC!66 (left!711 (right!714 res!5544)))))))

(assert (=> d!15893 (= (balanced!62 (left!711 (right!714 res!5544))) e!15516)))

(declare-fun b!30414 () Bool)

(declare-fun e!15515 () Bool)

(assert (=> b!30414 (= e!15516 e!15515)))

(declare-fun res!13991 () Bool)

(assert (=> b!30414 (=> (not res!13991) (not e!15515))))

(assert (=> b!30414 (= res!13991 (>= (- (level!55 (left!711 (left!711 (right!714 res!5544)))) (level!55 (right!714 (left!711 (right!714 res!5544))))) (- 1)))))

(declare-fun b!30417 () Bool)

(assert (=> b!30417 (= e!15515 (balanced!62 (right!714 (left!711 (right!714 res!5544)))))))

(declare-fun b!30416 () Bool)

(declare-fun res!13990 () Bool)

(assert (=> b!30416 (=> (not res!13990) (not e!15515))))

(assert (=> b!30416 (= res!13990 (balanced!62 (left!711 (left!711 (right!714 res!5544)))))))

(declare-fun b!30415 () Bool)

(declare-fun res!13989 () Bool)

(assert (=> b!30415 (=> (not res!13989) (not e!15515))))

(assert (=> b!30415 (= res!13989 (<= (- (level!55 (left!711 (left!711 (right!714 res!5544)))) (level!55 (right!714 (left!711 (right!714 res!5544))))) 1))))

(assert (= (and d!15893 (not res!13992)) b!30414))

(assert (= (and b!30414 res!13991) b!30415))

(assert (= (and b!30415 res!13989) b!30416))

(assert (= (and b!30416 res!13990) b!30417))

(assert (=> b!30414 m!32007))

(assert (=> b!30414 m!32005))

(declare-fun m!32827 () Bool)

(assert (=> b!30417 m!32827))

(declare-fun m!32829 () Bool)

(assert (=> b!30416 m!32829))

(assert (=> b!30415 m!32007))

(assert (=> b!30415 m!32005))

(assert (=> b!29799 d!15893))

(declare-fun b!30421 () Bool)

(declare-fun e!15518 () Bool)

(assert (=> b!30421 (= e!15518 (concInv!61 (right!714 (left!711 lt!5390))))))

(declare-fun b!30420 () Bool)

(declare-fun res!13993 () Bool)

(assert (=> b!30420 (=> (not res!13993) (not e!15518))))

(assert (=> b!30420 (= res!13993 (concInv!61 (left!711 (left!711 lt!5390))))))

(declare-fun b!30418 () Bool)

(declare-fun e!15517 () Bool)

(assert (=> b!30418 (= e!15517 e!15518)))

(declare-fun res!13996 () Bool)

(assert (=> b!30418 (=> (not res!13996) (not e!15518))))

(assert (=> b!30418 (= res!13996 (not (isEmpty!323 (left!711 (left!711 lt!5390)))))))

(declare-fun b!30419 () Bool)

(declare-fun res!13995 () Bool)

(assert (=> b!30419 (=> (not res!13995) (not e!15518))))

(assert (=> b!30419 (= res!13995 (not (isEmpty!323 (right!714 (left!711 lt!5390)))))))

(declare-fun d!15895 () Bool)

(declare-fun res!13994 () Bool)

(assert (=> d!15895 (=> res!13994 e!15517)))

(assert (=> d!15895 (= res!13994 (not (is-CC!66 (left!711 lt!5390))))))

(assert (=> d!15895 (= (concInv!61 (left!711 lt!5390)) e!15517)))

(assert (= (and d!15895 (not res!13994)) b!30418))

(assert (= (and b!30418 res!13996) b!30419))

(assert (= (and b!30419 res!13995) b!30420))

(assert (= (and b!30420 res!13993) b!30421))

(declare-fun m!32831 () Bool)

(assert (=> b!30421 m!32831))

(declare-fun m!32833 () Bool)

(assert (=> b!30420 m!32833))

(declare-fun m!32835 () Bool)

(assert (=> b!30418 m!32835))

(declare-fun m!32837 () Bool)

(assert (=> b!30419 m!32837))

(assert (=> b!29868 d!15895))

(declare-fun b!30425 () Bool)

(declare-fun e!15520 () Bool)

(assert (=> b!30425 (= e!15520 (concInv!61 (right!714 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!30424 () Bool)

(declare-fun res!13997 () Bool)

(assert (=> b!30424 (=> (not res!13997) (not e!15520))))

(assert (=> b!30424 (= res!13997 (concInv!61 (left!711 (left!711 (left!711 (left!711 ys!77))))))))

(declare-fun b!30422 () Bool)

(declare-fun e!15519 () Bool)

(assert (=> b!30422 (= e!15519 e!15520)))

(declare-fun res!14000 () Bool)

(assert (=> b!30422 (=> (not res!14000) (not e!15520))))

(assert (=> b!30422 (= res!14000 (not (isEmpty!323 (left!711 (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30423 () Bool)

(declare-fun res!13999 () Bool)

(assert (=> b!30423 (=> (not res!13999) (not e!15520))))

(assert (=> b!30423 (= res!13999 (not (isEmpty!323 (right!714 (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15897 () Bool)

(declare-fun res!13998 () Bool)

(assert (=> d!15897 (=> res!13998 e!15519)))

(assert (=> d!15897 (= res!13998 (not (is-CC!66 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15897 (= (concInv!61 (left!711 (left!711 (left!711 ys!77)))) e!15519)))

(assert (= (and d!15897 (not res!13998)) b!30422))

(assert (= (and b!30422 res!14000) b!30423))

(assert (= (and b!30423 res!13999) b!30424))

(assert (= (and b!30424 res!13997) b!30425))

(declare-fun m!32839 () Bool)

(assert (=> b!30425 m!32839))

(declare-fun m!32841 () Bool)

(assert (=> b!30424 m!32841))

(declare-fun m!32843 () Bool)

(assert (=> b!30422 m!32843))

(declare-fun m!32845 () Bool)

(assert (=> b!30423 m!32845))

(assert (=> b!29901 d!15897))

(assert (=> b!29846 d!15519))

(declare-fun d!15899 () Bool)

(declare-fun res!14004 () Bool)

(declare-fun e!15522 () Bool)

(assert (=> d!15899 (=> res!14004 e!15522)))

(assert (=> d!15899 (= res!14004 (not (is-CC!66 (right!714 (left!711 (left!711 ys!77))))))))

(assert (=> d!15899 (= (balanced!62 (right!714 (left!711 (left!711 ys!77)))) e!15522)))

(declare-fun b!30426 () Bool)

(declare-fun e!15521 () Bool)

(assert (=> b!30426 (= e!15522 e!15521)))

(declare-fun res!14003 () Bool)

(assert (=> b!30426 (=> (not res!14003) (not e!15521))))

(assert (=> b!30426 (= res!14003 (>= (- (level!55 (left!711 (right!714 (left!711 (left!711 ys!77))))) (level!55 (right!714 (right!714 (left!711 (left!711 ys!77)))))) (- 1)))))

(declare-fun b!30429 () Bool)

(assert (=> b!30429 (= e!15521 (balanced!62 (right!714 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!30428 () Bool)

(declare-fun res!14002 () Bool)

(assert (=> b!30428 (=> (not res!14002) (not e!15521))))

(assert (=> b!30428 (= res!14002 (balanced!62 (left!711 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun b!30427 () Bool)

(declare-fun res!14001 () Bool)

(assert (=> b!30427 (=> (not res!14001) (not e!15521))))

(assert (=> b!30427 (= res!14001 (<= (- (level!55 (left!711 (right!714 (left!711 (left!711 ys!77))))) (level!55 (right!714 (right!714 (left!711 (left!711 ys!77)))))) 1))))

(assert (= (and d!15899 (not res!14004)) b!30426))

(assert (= (and b!30426 res!14003) b!30427))

(assert (= (and b!30427 res!14001) b!30428))

(assert (= (and b!30428 res!14002) b!30429))

(assert (=> b!30426 m!32499))

(assert (=> b!30426 m!32497))

(declare-fun m!32847 () Bool)

(assert (=> b!30429 m!32847))

(declare-fun m!32849 () Bool)

(assert (=> b!30428 m!32849))

(assert (=> b!30427 m!32499))

(assert (=> b!30427 m!32497))

(assert (=> b!29768 d!15899))

(declare-fun b!30433 () Bool)

(declare-fun e!15524 () Bool)

(assert (=> b!30433 (= e!15524 (concInv!61 (right!714 (right!714 lt!5390))))))

(declare-fun b!30432 () Bool)

(declare-fun res!14005 () Bool)

(assert (=> b!30432 (=> (not res!14005) (not e!15524))))

(assert (=> b!30432 (= res!14005 (concInv!61 (left!711 (right!714 lt!5390))))))

(declare-fun b!30430 () Bool)

(declare-fun e!15523 () Bool)

(assert (=> b!30430 (= e!15523 e!15524)))

(declare-fun res!14008 () Bool)

(assert (=> b!30430 (=> (not res!14008) (not e!15524))))

(assert (=> b!30430 (= res!14008 (not (isEmpty!323 (left!711 (right!714 lt!5390)))))))

(declare-fun b!30431 () Bool)

(declare-fun res!14007 () Bool)

(assert (=> b!30431 (=> (not res!14007) (not e!15524))))

(assert (=> b!30431 (= res!14007 (not (isEmpty!323 (right!714 (right!714 lt!5390)))))))

(declare-fun d!15901 () Bool)

(declare-fun res!14006 () Bool)

(assert (=> d!15901 (=> res!14006 e!15523)))

(assert (=> d!15901 (= res!14006 (not (is-CC!66 (right!714 lt!5390))))))

(assert (=> d!15901 (= (concInv!61 (right!714 lt!5390)) e!15523)))

(assert (= (and d!15901 (not res!14006)) b!30430))

(assert (= (and b!30430 res!14008) b!30431))

(assert (= (and b!30431 res!14007) b!30432))

(assert (= (and b!30432 res!14005) b!30433))

(declare-fun m!32851 () Bool)

(assert (=> b!30433 m!32851))

(declare-fun m!32853 () Bool)

(assert (=> b!30432 m!32853))

(declare-fun m!32855 () Bool)

(assert (=> b!30430 m!32855))

(declare-fun m!32857 () Bool)

(assert (=> b!30431 m!32857))

(assert (=> b!29869 d!15901))

(declare-fun d!15903 () Bool)

(assert (=> d!15903 (= (isEmpty!323 (right!714 (right!714 xs!533))) (= (right!714 (right!714 xs!533)) Empty!77))))

(assert (=> b!29934 d!15903))

(declare-fun b!30435 () Bool)

(declare-fun e!15525 () Int)

(declare-fun lt!5638 () Int)

(declare-fun lt!5637 () Int)

(assert (=> b!30435 (= e!15525 (+ 1 (ite (>= lt!5638 lt!5637) lt!5638 lt!5637)))))

(assert (=> b!30435 (= lt!5637 (level!55 (right!714 (ite lt!5430 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(assert (=> b!30435 (= lt!5638 (level!55 (left!711 (ite lt!5430 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(declare-fun d!15905 () Bool)

(declare-fun lt!5636 () Int)

(assert (=> d!15905 (>= lt!5636 0)))

(assert (=> d!15905 (= lt!5636 e!15525)))

(declare-fun c!6668 () Bool)

(assert (=> d!15905 (= c!6668 (or (is-Empty!77 (ite lt!5430 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) (is-Single!66 (ite lt!5430 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))

(assert (=> d!15905 (= (level!55 (ite lt!5430 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533) (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))) lt!5636)))

(declare-fun b!30434 () Bool)

(assert (=> b!30434 (= e!15525 0)))

(assert (= (and d!15905 c!6668) b!30434))

(assert (= (and d!15905 (not c!6668)) b!30435))

(declare-fun m!32859 () Bool)

(assert (=> b!30435 m!32859))

(declare-fun m!32861 () Bool)

(assert (=> b!30435 m!32861))

(assert (=> b!29821 d!15905))

(declare-fun b!30437 () Bool)

(declare-fun e!15526 () Int)

(declare-fun lt!5641 () Int)

(declare-fun lt!5640 () Int)

(assert (=> b!30437 (= e!15526 (+ 1 (ite (>= lt!5641 lt!5640) lt!5641 lt!5640)))))

(assert (=> b!30437 (= lt!5640 (level!55 (right!714 (right!714 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> b!30437 (= lt!5641 (level!55 (left!711 (right!714 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun d!15907 () Bool)

(declare-fun lt!5639 () Int)

(assert (=> d!15907 (>= lt!5639 0)))

(assert (=> d!15907 (= lt!5639 e!15526)))

(declare-fun c!6669 () Bool)

(assert (=> d!15907 (= c!6669 (or (is-Empty!77 (right!714 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))) (is-Single!66 (right!714 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> d!15907 (= (level!55 (right!714 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))) lt!5639)))

(declare-fun b!30436 () Bool)

(assert (=> b!30436 (= e!15526 0)))

(assert (= (and d!15907 c!6669) b!30436))

(assert (= (and d!15907 (not c!6669)) b!30437))

(declare-fun m!32863 () Bool)

(assert (=> b!30437 m!32863))

(declare-fun m!32865 () Bool)

(assert (=> b!30437 m!32865))

(assert (=> b!29892 d!15907))

(declare-fun b!30439 () Bool)

(declare-fun e!15527 () Int)

(declare-fun lt!5644 () Int)

(declare-fun lt!5643 () Int)

(assert (=> b!30439 (= e!15527 (+ 1 (ite (>= lt!5644 lt!5643) lt!5644 lt!5643)))))

(assert (=> b!30439 (= lt!5643 (level!55 (right!714 (left!711 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> b!30439 (= lt!5644 (level!55 (left!711 (left!711 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))))

(declare-fun d!15909 () Bool)

(declare-fun lt!5642 () Int)

(assert (=> d!15909 (>= lt!5642 0)))

(assert (=> d!15909 (= lt!5642 e!15527)))

(declare-fun c!6670 () Bool)

(assert (=> d!15909 (= c!6670 (or (is-Empty!77 (left!711 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))) (is-Single!66 (left!711 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77))))))))))

(assert (=> d!15909 (= (level!55 (left!711 (ite lt!5393 (right!714 xs!533) (left!711 (left!711 (left!711 ys!77)))))) lt!5642)))

(declare-fun b!30438 () Bool)

(assert (=> b!30438 (= e!15527 0)))

(assert (= (and d!15909 c!6670) b!30438))

(assert (= (and d!15909 (not c!6670)) b!30439))

(declare-fun m!32867 () Bool)

(assert (=> b!30439 m!32867))

(declare-fun m!32869 () Bool)

(assert (=> b!30439 m!32869))

(assert (=> b!29892 d!15909))

(declare-fun b!30441 () Bool)

(declare-fun e!15528 () Int)

(declare-fun lt!5647 () Int)

(declare-fun lt!5646 () Int)

(assert (=> b!30441 (= e!15528 (+ 1 (ite (>= lt!5647 lt!5646) lt!5647 lt!5646)))))

(assert (=> b!30441 (= lt!5646 (level!55 (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(assert (=> b!30441 (= lt!5647 (level!55 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(declare-fun d!15911 () Bool)

(declare-fun lt!5645 () Int)

(assert (=> d!15911 (>= lt!5645 0)))

(assert (=> d!15911 (= lt!5645 e!15528)))

(declare-fun c!6671 () Bool)

(assert (=> d!15911 (= c!6671 (or (is-Empty!77 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (is-Single!66 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))

(assert (=> d!15911 (= (level!55 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) lt!5645)))

(declare-fun b!30440 () Bool)

(assert (=> b!30440 (= e!15528 0)))

(assert (= (and d!15911 c!6671) b!30440))

(assert (= (and d!15911 (not c!6671)) b!30441))

(assert (=> b!30441 m!32821))

(assert (=> b!30441 m!32819))

(assert (=> d!15521 d!15911))

(declare-fun b!30443 () Bool)

(declare-fun e!15529 () Int)

(declare-fun lt!5650 () Int)

(declare-fun lt!5649 () Int)

(assert (=> b!30443 (= e!15529 (+ 1 (ite (>= lt!5650 lt!5649) lt!5650 lt!5649)))))

(assert (=> b!30443 (= lt!5649 (level!55 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> b!30443 (= lt!5650 (level!55 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun d!15913 () Bool)

(declare-fun lt!5648 () Int)

(assert (=> d!15913 (>= lt!5648 0)))

(assert (=> d!15913 (= lt!5648 e!15529)))

(declare-fun c!6672 () Bool)

(assert (=> d!15913 (= c!6672 (or (is-Empty!77 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (is-Single!66 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> d!15913 (= (level!55 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) lt!5648)))

(declare-fun b!30442 () Bool)

(assert (=> b!30442 (= e!15529 0)))

(assert (= (and d!15913 c!6672) b!30442))

(assert (= (and d!15913 (not c!6672)) b!30443))

(assert (=> b!30443 m!32775))

(assert (=> b!30443 m!32773))

(assert (=> d!15521 d!15913))

(declare-fun b!30447 () Bool)

(declare-fun e!15531 () Bool)

(assert (=> b!30447 (= e!15531 (concInv!61 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun b!30446 () Bool)

(declare-fun res!14009 () Bool)

(assert (=> b!30446 (=> (not res!14009) (not e!15531))))

(assert (=> b!30446 (= res!14009 (concInv!61 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun b!30444 () Bool)

(declare-fun e!15530 () Bool)

(assert (=> b!30444 (= e!15530 e!15531)))

(declare-fun res!14012 () Bool)

(assert (=> b!30444 (=> (not res!14012) (not e!15531))))

(assert (=> b!30444 (= res!14012 (not (isEmpty!323 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))))

(declare-fun b!30445 () Bool)

(declare-fun res!14011 () Bool)

(assert (=> b!30445 (=> (not res!14011) (not e!15531))))

(assert (=> b!30445 (= res!14011 (not (isEmpty!323 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))))

(declare-fun d!15915 () Bool)

(declare-fun res!14010 () Bool)

(assert (=> d!15915 (=> res!14010 e!15530)))

(assert (=> d!15915 (= res!14010 (not (is-CC!66 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> d!15915 (= (concInv!61 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) e!15530)))

(assert (= (and d!15915 (not res!14010)) b!30444))

(assert (= (and b!30444 res!14012) b!30445))

(assert (= (and b!30445 res!14011) b!30446))

(assert (= (and b!30446 res!14009) b!30447))

(declare-fun m!32871 () Bool)

(assert (=> b!30447 m!32871))

(declare-fun m!32873 () Bool)

(assert (=> b!30446 m!32873))

(declare-fun m!32875 () Bool)

(assert (=> b!30444 m!32875))

(declare-fun m!32877 () Bool)

(assert (=> b!30445 m!32877))

(assert (=> d!15521 d!15915))

(assert (=> b!29820 d!15911))

(assert (=> b!29820 d!15913))

(declare-fun b!30449 () Bool)

(declare-fun e!15532 () Int)

(declare-fun lt!5653 () Int)

(declare-fun lt!5652 () Int)

(assert (=> b!30449 (= e!15532 (+ 1 (ite (>= lt!5653 lt!5652) lt!5653 lt!5652)))))

(assert (=> b!30449 (= lt!5652 (level!55 (right!714 lt!5437)))))

(assert (=> b!30449 (= lt!5653 (level!55 (left!711 lt!5437)))))

(declare-fun d!15917 () Bool)

(declare-fun lt!5651 () Int)

(assert (=> d!15917 (>= lt!5651 0)))

(assert (=> d!15917 (= lt!5651 e!15532)))

(declare-fun c!6673 () Bool)

(assert (=> d!15917 (= c!6673 (or (is-Empty!77 lt!5437) (is-Single!66 lt!5437)))))

(assert (=> d!15917 (= (level!55 lt!5437) lt!5651)))

(declare-fun b!30448 () Bool)

(assert (=> b!30448 (= e!15532 0)))

(assert (= (and d!15917 c!6673) b!30448))

(assert (= (and d!15917 (not c!6673)) b!30449))

(assert (=> b!30449 m!32511))

(assert (=> b!30449 m!32509))

(assert (=> b!29820 d!15917))

(declare-fun d!15919 () Bool)

(declare-fun res!14016 () Bool)

(declare-fun e!15534 () Bool)

(assert (=> d!15919 (=> res!14016 e!15534)))

(assert (=> d!15919 (= res!14016 (not (is-CC!66 (right!714 (right!714 res!5544)))))))

(assert (=> d!15919 (= (balanced!62 (right!714 (right!714 res!5544))) e!15534)))

(declare-fun b!30450 () Bool)

(declare-fun e!15533 () Bool)

(assert (=> b!30450 (= e!15534 e!15533)))

(declare-fun res!14015 () Bool)

(assert (=> b!30450 (=> (not res!14015) (not e!15533))))

(assert (=> b!30450 (= res!14015 (>= (- (level!55 (left!711 (right!714 (right!714 res!5544)))) (level!55 (right!714 (right!714 (right!714 res!5544))))) (- 1)))))

(declare-fun b!30453 () Bool)

(assert (=> b!30453 (= e!15533 (balanced!62 (right!714 (right!714 (right!714 res!5544)))))))

(declare-fun b!30452 () Bool)

(declare-fun res!14014 () Bool)

(assert (=> b!30452 (=> (not res!14014) (not e!15533))))

(assert (=> b!30452 (= res!14014 (balanced!62 (left!711 (right!714 (right!714 res!5544)))))))

(declare-fun b!30451 () Bool)

(declare-fun res!14013 () Bool)

(assert (=> b!30451 (=> (not res!14013) (not e!15533))))

(assert (=> b!30451 (= res!14013 (<= (- (level!55 (left!711 (right!714 (right!714 res!5544)))) (level!55 (right!714 (right!714 (right!714 res!5544))))) 1))))

(assert (= (and d!15919 (not res!14016)) b!30450))

(assert (= (and b!30450 res!14015) b!30451))

(assert (= (and b!30451 res!14013) b!30452))

(assert (= (and b!30452 res!14014) b!30453))

(assert (=> b!30450 m!32011))

(assert (=> b!30450 m!32009))

(declare-fun m!32879 () Bool)

(assert (=> b!30453 m!32879))

(declare-fun m!32881 () Bool)

(assert (=> b!30452 m!32881))

(assert (=> b!30451 m!32011))

(assert (=> b!30451 m!32009))

(assert (=> b!29800 d!15919))

(declare-fun d!15921 () Bool)

(declare-fun lt!5654 () Int)

(assert (=> d!15921 (>= lt!5654 0)))

(declare-fun e!15535 () Int)

(assert (=> d!15921 (= lt!5654 e!15535)))

(declare-fun c!6674 () Bool)

(assert (=> d!15921 (= c!6674 (is-Nil!358 lt!5422))))

(assert (=> d!15921 (= (size!275 lt!5422) lt!5654)))

(declare-fun b!30454 () Bool)

(assert (=> b!30454 (= e!15535 0)))

(declare-fun b!30455 () Bool)

(assert (=> b!30455 (= e!15535 (+ 1 (size!275 (t!4377 lt!5422))))))

(assert (= (and d!15921 c!6674) b!30454))

(assert (= (and d!15921 (not c!6674)) b!30455))

(declare-fun m!32883 () Bool)

(assert (=> b!30455 m!32883))

(assert (=> b!29787 d!15921))

(declare-fun d!15923 () Bool)

(declare-fun lt!5655 () Int)

(assert (=> d!15923 (>= lt!5655 0)))

(declare-fun e!15536 () Int)

(assert (=> d!15923 (= lt!5655 e!15536)))

(declare-fun c!6675 () Bool)

(assert (=> d!15923 (= c!6675 (is-Nil!358 (toList!118 xs!533)))))

(assert (=> d!15923 (= (size!275 (toList!118 xs!533)) lt!5655)))

(declare-fun b!30456 () Bool)

(assert (=> b!30456 (= e!15536 0)))

(declare-fun b!30457 () Bool)

(assert (=> b!30457 (= e!15536 (+ 1 (size!275 (t!4377 (toList!118 xs!533)))))))

(assert (= (and d!15923 c!6675) b!30456))

(assert (= (and d!15923 (not c!6675)) b!30457))

(assert (=> b!30457 m!32025))

(assert (=> b!29787 d!15923))

(assert (=> b!29787 d!15861))

(assert (=> b!29733 d!15735))

(assert (=> b!29733 d!15739))

(assert (=> b!29733 d!15733))

(declare-fun b!30458 () Bool)

(declare-fun e!15537 () Bool)

(assert (=> b!30458 (= e!15537 (= (++!43 (++!43 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (right!714 xs!533))) (toList!118 ys!77)) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))))

(declare-fun lt!5656 () Bool)

(assert (=> b!30458 (= lt!5656 (appendAssoc!11 (t!4377 (t!4377 (toList!118 (left!711 xs!533)))) (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))

(declare-fun d!15925 () Bool)

(assert (=> d!15925 e!15537))

(declare-fun c!6676 () Bool)

(assert (=> d!15925 (= c!6676 (is-Cons!357 (t!4377 (toList!118 (left!711 xs!533)))))))

(assert (=> d!15925 (= (appendAssoc!11 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (right!714 xs!533)) (toList!118 ys!77)) true)))

(declare-fun b!30459 () Bool)

(assert (=> b!30459 (= e!15537 (= (++!43 (++!43 (t!4377 (toList!118 (left!711 xs!533))) (toList!118 (right!714 xs!533))) (toList!118 ys!77)) (++!43 (t!4377 (toList!118 (left!711 xs!533))) (++!43 (toList!118 (right!714 xs!533)) (toList!118 ys!77)))))))

(assert (= (and d!15925 c!6676) b!30458))

(assert (= (and d!15925 (not c!6676)) b!30459))

(assert (=> b!30458 m!31609))

(assert (=> b!30458 m!32401))

(assert (=> b!30458 m!31521))

(assert (=> b!30458 m!32391))

(assert (=> b!30458 m!31521))

(assert (=> b!30458 m!31523))

(assert (=> b!30458 m!31609))

(assert (=> b!30458 m!32391))

(assert (=> b!30458 m!31523))

(declare-fun m!32885 () Bool)

(assert (=> b!30458 m!32885))

(assert (=> b!30458 m!31521))

(assert (=> b!30458 m!31523))

(declare-fun m!32887 () Bool)

(assert (=> b!30458 m!32887))

(assert (=> b!30459 m!31521))

(assert (=> b!30459 m!32391))

(assert (=> b!30459 m!32391))

(assert (=> b!30459 m!31523))

(assert (=> b!30459 m!32885))

(assert (=> b!30459 m!31521))

(assert (=> b!30459 m!31523))

(assert (=> b!30459 m!31609))

(assert (=> b!30459 m!31609))

(assert (=> b!30459 m!32401))

(assert (=> b!29733 d!15925))

(assert (=> b!29733 d!15737))

(assert (=> b!29845 d!15635))

(assert (=> b!29845 d!15637))

(assert (=> b!29845 d!15639))

(assert (=> b!29845 d!15633))

(declare-fun d!15927 () Bool)

(assert (=> d!15927 (= (isEmpty!323 (right!714 lt!5390)) (= (right!714 lt!5390) Empty!77))))

(assert (=> b!29867 d!15927))

(assert (=> b!29855 d!15655))

(assert (=> b!29855 d!15653))

(declare-fun b!30460 () Bool)

(declare-fun e!15538 () Bool)

(assert (=> b!30460 (= e!15538 (= (++!43 (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (++!43 (t!4377 (toList!118 xs!533)) (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))))

(declare-fun lt!5657 () Bool)

(assert (=> b!30460 (= lt!5657 (appendAssoc!11 (t!4377 (t!4377 (toList!118 xs!533))) (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))

(declare-fun d!15929 () Bool)

(assert (=> d!15929 e!15538))

(declare-fun c!6677 () Bool)

(assert (=> d!15929 (= c!6677 (is-Cons!357 (t!4377 (toList!118 xs!533))))))

(assert (=> d!15929 (= (appendAssoc!11 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))) true)))

(declare-fun b!30461 () Bool)

(assert (=> b!30461 (= e!15538 (= (++!43 (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 ys!77)))) (++!43 (t!4377 (toList!118 xs!533)) (++!43 (toList!118 (left!711 (left!711 ys!77))) (toList!118 (right!714 (left!711 ys!77)))))))))

(assert (= (and d!15929 c!6677) b!30460))

(assert (= (and d!15929 (not c!6677)) b!30461))

(assert (=> b!30460 m!31883))

(assert (=> b!30460 m!32295))

(assert (=> b!30460 m!31515))

(assert (=> b!30460 m!31947))

(assert (=> b!30460 m!31515))

(assert (=> b!30460 m!31507))

(assert (=> b!30460 m!31883))

(assert (=> b!30460 m!31947))

(assert (=> b!30460 m!31507))

(declare-fun m!32889 () Bool)

(assert (=> b!30460 m!32889))

(assert (=> b!30460 m!31515))

(assert (=> b!30460 m!31507))

(declare-fun m!32891 () Bool)

(assert (=> b!30460 m!32891))

(assert (=> b!30461 m!31515))

(assert (=> b!30461 m!31947))

(assert (=> b!30461 m!31947))

(assert (=> b!30461 m!31507))

(assert (=> b!30461 m!32889))

(assert (=> b!30461 m!31515))

(assert (=> b!30461 m!31507))

(assert (=> b!30461 m!31883))

(assert (=> b!30461 m!31883))

(assert (=> b!30461 m!32295))

(assert (=> b!29927 d!15929))

(assert (=> b!29927 d!15699))

(assert (=> b!29927 d!15703))

(assert (=> b!29927 d!15701))

(assert (=> b!29927 d!15591))

(declare-fun b!30463 () Bool)

(declare-fun e!15539 () List!363)

(assert (=> b!30463 (= e!15539 (Cons!357 (h!274 (toList!118 (left!711 (right!714 (right!714 xs!533))))) (++!43 (t!4377 (toList!118 (left!711 (right!714 (right!714 xs!533))))) (toList!118 (right!714 (right!714 (right!714 xs!533)))))))))

(declare-fun b!30462 () Bool)

(assert (=> b!30462 (= e!15539 (toList!118 (right!714 (right!714 (right!714 xs!533)))))))

(declare-fun b!30464 () Bool)

(declare-fun res!14018 () Bool)

(declare-fun e!15540 () Bool)

(assert (=> b!30464 (=> (not res!14018) (not e!15540))))

(declare-fun lt!5658 () List!363)

(assert (=> b!30464 (= res!14018 (= (size!275 lt!5658) (+ (size!275 (toList!118 (left!711 (right!714 (right!714 xs!533))))) (size!275 (toList!118 (right!714 (right!714 (right!714 xs!533))))))))))

(declare-fun b!30465 () Bool)

(assert (=> b!30465 (= e!15540 (or (not (= (toList!118 (right!714 (right!714 (right!714 xs!533)))) Nil!358)) (= lt!5658 (toList!118 (left!711 (right!714 (right!714 xs!533)))))))))

(declare-fun d!15931 () Bool)

(assert (=> d!15931 e!15540))

(declare-fun res!14017 () Bool)

(assert (=> d!15931 (=> (not res!14017) (not e!15540))))

(assert (=> d!15931 (= res!14017 (= (content!73 lt!5658) (union (content!73 (toList!118 (left!711 (right!714 (right!714 xs!533))))) (content!73 (toList!118 (right!714 (right!714 (right!714 xs!533))))))))))

(assert (=> d!15931 (= lt!5658 e!15539)))

(declare-fun c!6678 () Bool)

(assert (=> d!15931 (= c!6678 (is-Nil!358 (toList!118 (left!711 (right!714 (right!714 xs!533))))))))

(assert (=> d!15931 (= (++!43 (toList!118 (left!711 (right!714 (right!714 xs!533)))) (toList!118 (right!714 (right!714 (right!714 xs!533))))) lt!5658)))

(assert (= (and d!15931 c!6678) b!30462))

(assert (= (and d!15931 (not c!6678)) b!30463))

(assert (= (and d!15931 res!14017) b!30464))

(assert (= (and b!30464 res!14018) b!30465))

(assert (=> b!30463 m!31773))

(declare-fun m!32893 () Bool)

(assert (=> b!30463 m!32893))

(declare-fun m!32895 () Bool)

(assert (=> b!30464 m!32895))

(assert (=> b!30464 m!31771))

(declare-fun m!32897 () Bool)

(assert (=> b!30464 m!32897))

(assert (=> b!30464 m!31773))

(declare-fun m!32899 () Bool)

(assert (=> b!30464 m!32899))

(declare-fun m!32901 () Bool)

(assert (=> d!15931 m!32901))

(assert (=> d!15931 m!31771))

(declare-fun m!32903 () Bool)

(assert (=> d!15931 m!32903))

(assert (=> d!15931 m!31773))

(declare-fun m!32905 () Bool)

(assert (=> d!15931 m!32905))

(assert (=> b!29835 d!15931))

(declare-fun b!30466 () Bool)

(declare-fun e!15541 () List!363)

(assert (=> b!30466 (= e!15541 Nil!358)))

(declare-fun b!30469 () Bool)

(declare-fun e!15542 () List!363)

(assert (=> b!30469 (= e!15542 (++!43 (toList!118 (left!711 (left!711 (right!714 (right!714 xs!533))))) (toList!118 (right!714 (left!711 (right!714 (right!714 xs!533)))))))))

(declare-fun b!30468 () Bool)

(assert (=> b!30468 (= e!15542 (Cons!357 (x!8953 (left!711 (right!714 (right!714 xs!533)))) Nil!358))))

(declare-fun b!30467 () Bool)

(assert (=> b!30467 (= e!15541 e!15542)))

(declare-fun c!6680 () Bool)

(assert (=> b!30467 (= c!6680 (is-Single!66 (left!711 (right!714 (right!714 xs!533)))))))

(declare-fun d!15933 () Bool)

(declare-fun lt!5659 () List!363)

(assert (=> d!15933 (= (size!275 lt!5659) (size!276 (left!711 (right!714 (right!714 xs!533)))))))

(assert (=> d!15933 (= lt!5659 e!15541)))

(declare-fun c!6679 () Bool)

(assert (=> d!15933 (= c!6679 (is-Empty!77 (left!711 (right!714 (right!714 xs!533)))))))

(assert (=> d!15933 (= (toList!118 (left!711 (right!714 (right!714 xs!533)))) lt!5659)))

(assert (= (and b!30467 c!6680) b!30468))

(assert (= (and b!30467 (not c!6680)) b!30469))

(assert (= (and d!15933 c!6679) b!30466))

(assert (= (and d!15933 (not c!6679)) b!30467))

(declare-fun m!32907 () Bool)

(assert (=> b!30469 m!32907))

(declare-fun m!32909 () Bool)

(assert (=> b!30469 m!32909))

(assert (=> b!30469 m!32907))

(assert (=> b!30469 m!32909))

(declare-fun m!32911 () Bool)

(assert (=> b!30469 m!32911))

(declare-fun m!32913 () Bool)

(assert (=> d!15933 m!32913))

(assert (=> d!15933 m!32125))

(assert (=> b!29835 d!15933))

(declare-fun b!30470 () Bool)

(declare-fun e!15543 () List!363)

(assert (=> b!30470 (= e!15543 Nil!358)))

(declare-fun b!30473 () Bool)

(declare-fun e!15544 () List!363)

(assert (=> b!30473 (= e!15544 (++!43 (toList!118 (left!711 (right!714 (right!714 (right!714 xs!533))))) (toList!118 (right!714 (right!714 (right!714 (right!714 xs!533)))))))))

(declare-fun b!30472 () Bool)

(assert (=> b!30472 (= e!15544 (Cons!357 (x!8953 (right!714 (right!714 (right!714 xs!533)))) Nil!358))))

(declare-fun b!30471 () Bool)

(assert (=> b!30471 (= e!15543 e!15544)))

(declare-fun c!6682 () Bool)

(assert (=> b!30471 (= c!6682 (is-Single!66 (right!714 (right!714 (right!714 xs!533)))))))

(declare-fun d!15935 () Bool)

(declare-fun lt!5660 () List!363)

(assert (=> d!15935 (= (size!275 lt!5660) (size!276 (right!714 (right!714 (right!714 xs!533)))))))

(assert (=> d!15935 (= lt!5660 e!15543)))

(declare-fun c!6681 () Bool)

(assert (=> d!15935 (= c!6681 (is-Empty!77 (right!714 (right!714 (right!714 xs!533)))))))

(assert (=> d!15935 (= (toList!118 (right!714 (right!714 (right!714 xs!533)))) lt!5660)))

(assert (= (and b!30471 c!6682) b!30472))

(assert (= (and b!30471 (not c!6682)) b!30473))

(assert (= (and d!15935 c!6681) b!30470))

(assert (= (and d!15935 (not c!6681)) b!30471))

(declare-fun m!32915 () Bool)

(assert (=> b!30473 m!32915))

(declare-fun m!32917 () Bool)

(assert (=> b!30473 m!32917))

(assert (=> b!30473 m!32915))

(assert (=> b!30473 m!32917))

(declare-fun m!32919 () Bool)

(assert (=> b!30473 m!32919))

(declare-fun m!32921 () Bool)

(assert (=> d!15935 m!32921))

(assert (=> d!15935 m!32127))

(assert (=> b!29835 d!15935))

(declare-fun b!30475 () Bool)

(declare-fun e!15545 () Int)

(declare-fun lt!5663 () Int)

(declare-fun lt!5662 () Int)

(assert (=> b!30475 (= e!15545 (+ 1 (ite (>= lt!5663 lt!5662) lt!5663 lt!5662)))))

(assert (=> b!30475 (= lt!5662 (level!55 (right!714 lt!5435)))))

(assert (=> b!30475 (= lt!5663 (level!55 (left!711 lt!5435)))))

(declare-fun d!15937 () Bool)

(declare-fun lt!5661 () Int)

(assert (=> d!15937 (>= lt!5661 0)))

(assert (=> d!15937 (= lt!5661 e!15545)))

(declare-fun c!6683 () Bool)

(assert (=> d!15937 (= c!6683 (or (is-Empty!77 lt!5435) (is-Single!66 lt!5435)))))

(assert (=> d!15937 (= (level!55 lt!5435) lt!5661)))

(declare-fun b!30474 () Bool)

(assert (=> b!30474 (= e!15545 0)))

(assert (= (and d!15937 c!6683) b!30474))

(assert (= (and d!15937 (not c!6683)) b!30475))

(declare-fun m!32923 () Bool)

(assert (=> b!30475 m!32923))

(declare-fun m!32925 () Bool)

(assert (=> b!30475 m!32925))

(assert (=> b!29822 d!15937))

(assert (=> b!29861 d!15609))

(assert (=> b!29861 d!15607))

(declare-fun d!15939 () Bool)

(declare-fun res!14022 () Bool)

(declare-fun e!15547 () Bool)

(assert (=> d!15939 (=> res!14022 e!15547)))

(assert (=> d!15939 (= res!14022 (not (is-CC!66 (right!714 lt!5390))))))

(assert (=> d!15939 (= (balanced!62 (right!714 lt!5390)) e!15547)))

(declare-fun b!30476 () Bool)

(declare-fun e!15546 () Bool)

(assert (=> b!30476 (= e!15547 e!15546)))

(declare-fun res!14021 () Bool)

(assert (=> b!30476 (=> (not res!14021) (not e!15546))))

(assert (=> b!30476 (= res!14021 (>= (- (level!55 (left!711 (right!714 lt!5390))) (level!55 (right!714 (right!714 lt!5390)))) (- 1)))))

(declare-fun b!30479 () Bool)

(assert (=> b!30479 (= e!15546 (balanced!62 (right!714 (right!714 lt!5390))))))

(declare-fun b!30478 () Bool)

(declare-fun res!14020 () Bool)

(assert (=> b!30478 (=> (not res!14020) (not e!15546))))

(assert (=> b!30478 (= res!14020 (balanced!62 (left!711 (right!714 lt!5390))))))

(declare-fun b!30477 () Bool)

(declare-fun res!14019 () Bool)

(assert (=> b!30477 (=> (not res!14019) (not e!15546))))

(assert (=> b!30477 (= res!14019 (<= (- (level!55 (left!711 (right!714 lt!5390))) (level!55 (right!714 (right!714 lt!5390)))) 1))))

(assert (= (and d!15939 (not res!14022)) b!30476))

(assert (= (and b!30476 res!14021) b!30477))

(assert (= (and b!30477 res!14019) b!30478))

(assert (= (and b!30478 res!14020) b!30479))

(assert (=> b!30476 m!32033))

(assert (=> b!30476 m!32031))

(declare-fun m!32927 () Bool)

(assert (=> b!30479 m!32927))

(declare-fun m!32929 () Bool)

(assert (=> b!30478 m!32929))

(assert (=> b!30477 m!32033))

(assert (=> b!30477 m!32031))

(assert (=> b!29908 d!15939))

(assert (=> b!29929 d!15525))

(assert (=> b!29929 d!15581))

(declare-fun d!15941 () Bool)

(assert (=> d!15941 (= (isEmpty!323 (right!714 (left!711 ys!77))) (= (right!714 (left!711 ys!77)) Empty!77))))

(assert (=> b!29847 d!15941))

(declare-fun b!30480 () Bool)

(declare-fun e!15548 () Bool)

(assert (=> b!30480 (= e!15548 (= (++!43 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))))))))

(declare-fun lt!5664 () Bool)

(assert (=> b!30480 (= lt!5664 (appendAssoc!11 (t!4377 (toList!118 (left!711 (right!714 xs!533)))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))))))

(declare-fun d!15943 () Bool)

(assert (=> d!15943 e!15548))

(declare-fun c!6684 () Bool)

(assert (=> d!15943 (= c!6684 (is-Cons!357 (toList!118 (left!711 (right!714 xs!533)))))))

(assert (=> d!15943 (= (appendAssoc!11 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))) true)))

(declare-fun b!30481 () Bool)

(assert (=> b!30481 (= e!15548 (= (++!43 (++!43 (toList!118 (left!711 (right!714 xs!533))) (toList!118 (right!714 (right!714 xs!533)))) (toList!118 (left!711 (left!711 ys!77)))) (++!43 (toList!118 (left!711 (right!714 xs!533))) (++!43 (toList!118 (right!714 (right!714 xs!533))) (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (= (and d!15943 c!6684) b!30480))

(assert (= (and d!15943 (not c!6684)) b!30481))

(assert (=> b!30480 m!31533))

(assert (=> b!30480 m!31861))

(assert (=> b!30480 m!32597))

(assert (=> b!30480 m!31533))

(assert (=> b!30480 m!31529))

(assert (=> b!30480 m!31629))

(assert (=> b!30480 m!31529))

(assert (=> b!30480 m!31515))

(assert (=> b!30480 m!31861))

(assert (=> b!30480 m!31629))

(assert (=> b!30480 m!31515))

(declare-fun m!32931 () Bool)

(assert (=> b!30480 m!32931))

(assert (=> b!30480 m!31529))

(assert (=> b!30480 m!31515))

(declare-fun m!32933 () Bool)

(assert (=> b!30480 m!32933))

(assert (=> b!30481 m!31533))

(assert (=> b!30481 m!31529))

(assert (=> b!30481 m!31629))

(assert (=> b!30481 m!31629))

(assert (=> b!30481 m!31515))

(assert (=> b!30481 m!32931))

(assert (=> b!30481 m!31529))

(assert (=> b!30481 m!31515))

(assert (=> b!30481 m!31861))

(assert (=> b!30481 m!31533))

(assert (=> b!30481 m!31861))

(assert (=> b!30481 m!32597))

(assert (=> b!29871 d!15943))

(assert (=> b!29871 d!15531))

(assert (=> b!29871 d!15529))

(assert (=> b!29871 d!15587))

(declare-fun b!30483 () Bool)

(declare-fun e!15549 () List!363)

(assert (=> b!30483 (= e!15549 (Cons!357 (h!274 (toList!118 (left!711 (left!711 (left!711 ys!77))))) (++!43 (t!4377 (toList!118 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30482 () Bool)

(assert (=> b!30482 (= e!15549 (toList!118 (right!714 (left!711 (left!711 ys!77)))))))

(declare-fun b!30484 () Bool)

(declare-fun res!14024 () Bool)

(declare-fun e!15550 () Bool)

(assert (=> b!30484 (=> (not res!14024) (not e!15550))))

(declare-fun lt!5665 () List!363)

(assert (=> b!30484 (= res!14024 (= (size!275 lt!5665) (+ (size!275 (toList!118 (left!711 (left!711 (left!711 ys!77))))) (size!275 (toList!118 (right!714 (left!711 (left!711 ys!77))))))))))

(declare-fun b!30485 () Bool)

(assert (=> b!30485 (= e!15550 (or (not (= (toList!118 (right!714 (left!711 (left!711 ys!77)))) Nil!358)) (= lt!5665 (toList!118 (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun d!15945 () Bool)

(assert (=> d!15945 e!15550))

(declare-fun res!14023 () Bool)

(assert (=> d!15945 (=> (not res!14023) (not e!15550))))

(assert (=> d!15945 (= res!14023 (= (content!73 lt!5665) (union (content!73 (toList!118 (left!711 (left!711 (left!711 ys!77))))) (content!73 (toList!118 (right!714 (left!711 (left!711 ys!77))))))))))

(assert (=> d!15945 (= lt!5665 e!15549)))

(declare-fun c!6685 () Bool)

(assert (=> d!15945 (= c!6685 (is-Nil!358 (toList!118 (left!711 (left!711 (left!711 ys!77))))))))

(assert (=> d!15945 (= (++!43 (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) lt!5665)))

(assert (= (and d!15945 c!6685) b!30482))

(assert (= (and d!15945 (not c!6685)) b!30483))

(assert (= (and d!15945 res!14023) b!30484))

(assert (= (and b!30484 res!14024) b!30485))

(assert (=> b!30483 m!31851))

(declare-fun m!32935 () Bool)

(assert (=> b!30483 m!32935))

(declare-fun m!32937 () Bool)

(assert (=> b!30484 m!32937))

(assert (=> b!30484 m!31867))

(declare-fun m!32939 () Bool)

(assert (=> b!30484 m!32939))

(assert (=> b!30484 m!31851))

(declare-fun m!32941 () Bool)

(assert (=> b!30484 m!32941))

(declare-fun m!32943 () Bool)

(assert (=> d!15945 m!32943))

(assert (=> d!15945 m!31867))

(declare-fun m!32945 () Bool)

(assert (=> d!15945 m!32945))

(assert (=> d!15945 m!31851))

(declare-fun m!32947 () Bool)

(assert (=> d!15945 m!32947))

(assert (=> b!29916 d!15945))

(declare-fun b!30486 () Bool)

(declare-fun e!15551 () List!363)

(assert (=> b!30486 (= e!15551 Nil!358)))

(declare-fun b!30489 () Bool)

(declare-fun e!15552 () List!363)

(assert (=> b!30489 (= e!15552 (++!43 (toList!118 (left!711 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 (left!711 ys!77)))))))))

(declare-fun b!30488 () Bool)

(assert (=> b!30488 (= e!15552 (Cons!357 (x!8953 (left!711 (left!711 (left!711 ys!77)))) Nil!358))))

(declare-fun b!30487 () Bool)

(assert (=> b!30487 (= e!15551 e!15552)))

(declare-fun c!6687 () Bool)

(assert (=> b!30487 (= c!6687 (is-Single!66 (left!711 (left!711 (left!711 ys!77)))))))

(declare-fun d!15947 () Bool)

(declare-fun lt!5666 () List!363)

(assert (=> d!15947 (= (size!275 lt!5666) (size!276 (left!711 (left!711 (left!711 ys!77)))))))

(assert (=> d!15947 (= lt!5666 e!15551)))

(declare-fun c!6686 () Bool)

(assert (=> d!15947 (= c!6686 (is-Empty!77 (left!711 (left!711 (left!711 ys!77)))))))

(assert (=> d!15947 (= (toList!118 (left!711 (left!711 (left!711 ys!77)))) lt!5666)))

(assert (= (and b!30487 c!6687) b!30488))

(assert (= (and b!30487 (not c!6687)) b!30489))

(assert (= (and d!15947 c!6686) b!30486))

(assert (= (and d!15947 (not c!6686)) b!30487))

(assert (=> b!30489 m!31855))

(assert (=> b!30489 m!31847))

(assert (=> b!30489 m!31855))

(assert (=> b!30489 m!31847))

(assert (=> b!30489 m!32423))

(declare-fun m!32949 () Bool)

(assert (=> d!15947 m!32949))

(assert (=> d!15947 m!32697))

(assert (=> b!29916 d!15947))

(assert (=> b!29916 d!15675))

(declare-fun d!15949 () Bool)

(declare-fun c!6688 () Bool)

(assert (=> d!15949 (= c!6688 (is-Nil!358 lt!5450))))

(declare-fun e!15553 () (Set T!1835))

(assert (=> d!15949 (= (content!73 lt!5450) e!15553)))

(declare-fun b!30490 () Bool)

(assert (=> b!30490 (= e!15553 (as emptyset (Set T!1835)))))

(declare-fun b!30491 () Bool)

(assert (=> b!30491 (= e!15553 (union (insert (h!274 lt!5450) (as emptyset (Set T!1835))) (content!73 (t!4377 lt!5450))))))

(assert (= (and d!15949 c!6688) b!30490))

(assert (= (and d!15949 (not c!6688)) b!30491))

(declare-fun m!32951 () Bool)

(assert (=> b!30491 m!32951))

(declare-fun m!32953 () Bool)

(assert (=> b!30491 m!32953))

(assert (=> d!15533 d!15949))

(declare-fun d!15951 () Bool)

(declare-fun c!6689 () Bool)

(assert (=> d!15951 (= c!6689 (is-Nil!358 (toList!118 (right!714 (right!714 xs!533)))))))

(declare-fun e!15554 () (Set T!1835))

(assert (=> d!15951 (= (content!73 (toList!118 (right!714 (right!714 xs!533)))) e!15554)))

(declare-fun b!30492 () Bool)

(assert (=> b!30492 (= e!15554 (as emptyset (Set T!1835)))))

(declare-fun b!30493 () Bool)

(assert (=> b!30493 (= e!15554 (union (insert (h!274 (toList!118 (right!714 (right!714 xs!533)))) (as emptyset (Set T!1835))) (content!73 (t!4377 (toList!118 (right!714 (right!714 xs!533)))))))))

(assert (= (and d!15951 c!6689) b!30492))

(assert (= (and d!15951 (not c!6689)) b!30493))

(declare-fun m!32955 () Bool)

(assert (=> b!30493 m!32955))

(assert (=> b!30493 m!32771))

(assert (=> d!15533 d!15951))

(assert (=> d!15533 d!15723))

(declare-fun b!30494 () Bool)

(declare-fun e!15562 () Bool)

(assert (=> b!30494 (= e!15562 (not (isEmpty!323 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))))

(declare-fun b!30495 () Bool)

(declare-fun e!15558 () Bool)

(assert (=> b!30495 (= e!15558 tp_is_empty!179)))

(declare-fun lt!5672 () Bool)

(declare-fun lt!5679 () Int)

(declare-fun e!15563 () Conc!67)

(declare-fun b!30496 () Bool)

(declare-fun lt!5675 () Int)

(assert (=> b!30496 (= e!15563 (concatNonEmpty!18 (ite lt!5672 (ite (>= lt!5675 lt!5679) (right!714 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (right!714 (right!714 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))) (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (ite lt!5672 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))) (ite (>= lt!5675 lt!5679) (left!711 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))) (left!711 (left!711 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))))))

(declare-fun b!30497 () Bool)

(declare-fun res!14029 () Bool)

(declare-fun e!15559 () Bool)

(assert (=> b!30497 (=> (not res!14029) (not e!15559))))

(assert (=> b!30497 (= res!14029 (appendAssocInst!15 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(declare-fun b!30498 () Bool)

(declare-fun res!14031 () Bool)

(assert (=> b!30498 (=> (not res!14031) (not e!15562))))

(assert (=> b!30498 (= res!14031 (concInv!61 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(declare-fun b!30499 () Bool)

(declare-fun e!15555 () Int)

(declare-fun res!14026 () Int)

(assert (=> b!30499 (= e!15555 res!14026)))

(assert (=> b!30499 true))

(assert (=> b!30499 true))

(declare-fun d!15953 () Bool)

(declare-fun e!15561 () Bool)

(assert (=> d!15953 e!15561))

(declare-fun res!14038 () Bool)

(assert (=> d!15953 (=> (not res!14038) (not e!15561))))

(declare-fun lt!5678 () Conc!67)

(assert (=> d!15953 (= res!14038 (is-CC!66 lt!5678))))

(declare-fun e!15557 () Conc!67)

(assert (=> d!15953 (= lt!5678 e!15557)))

(declare-fun c!6692 () Bool)

(declare-fun lt!5682 () Int)

(assert (=> d!15953 (= c!6692 (and (>= lt!5682 (- 1)) (<= lt!5682 1)))))

(assert (=> d!15953 (= lt!5682 (- (level!55 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))) (level!55 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))))

(assert (=> d!15953 e!15562))

(declare-fun res!14037 () Bool)

(assert (=> d!15953 (=> (not res!14037) (not e!15562))))

(declare-fun e!15560 () Bool)

(assert (=> d!15953 (= res!14037 e!15560)))

(declare-fun res!14028 () Bool)

(assert (=> d!15953 (=> (not res!14028) (not e!15560))))

(assert (=> d!15953 (= res!14028 (concInv!61 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> d!15953 (= (concatNonEmpty!18 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))) lt!5678)))

(declare-fun b!30500 () Bool)

(declare-fun res!14034 () Bool)

(assert (=> b!30500 (=> (not res!14034) (not e!15559))))

(assert (=> b!30500 (= res!14034 (balanced!62 lt!5678))))

(declare-fun b!30501 () Bool)

(declare-fun tp!6328 () Bool)

(declare-fun tp!6329 () Bool)

(assert (=> b!30501 (= e!15558 (and tp!6328 tp!6329))))

(declare-fun b!30502 () Bool)

(assert (=> b!30502 (= e!15557 (CC!66 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(declare-fun b!30503 () Bool)

(assert (=> b!30503 (= e!15560 (balanced!62 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(declare-fun b!30504 () Bool)

(declare-fun res!14032 () Bool)

(assert (=> b!30504 (=> (not res!14032) (not e!15562))))

(assert (=> b!30504 (= res!14032 (not (isEmpty!323 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))))))

(declare-fun b!30505 () Bool)

(assert (=> b!30505 (= e!15561 e!15559)))

(declare-fun res!14035 () Bool)

(assert (=> b!30505 (=> (not res!14035) (not e!15559))))

(declare-fun lt!5677 () Int)

(declare-fun lt!5670 () Int)

(declare-fun lt!5669 () Int)

(assert (=> b!30505 (= res!14035 (<= lt!5677 (+ (ite (>= lt!5670 lt!5669) lt!5670 lt!5669) 1)))))

(assert (=> b!30505 (= lt!5669 (level!55 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(assert (=> b!30505 (= lt!5670 (level!55 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> b!30505 (= lt!5677 (level!55 lt!5678))))

(declare-fun b!30506 () Bool)

(declare-fun res!14027 () Bool)

(assert (=> b!30506 (=> (not res!14027) (not e!15562))))

(assert (=> b!30506 (= res!14027 (balanced!62 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(declare-fun lt!5667 () Int)

(declare-fun lt!5676 () Conc!67)

(declare-fun lt!5681 () Bool)

(declare-fun b!30507 () Bool)

(declare-fun lt!5668 () Int)

(assert (=> b!30507 (= e!15557 (ite lt!5681 (let ((res!13643 lt!5676)) (ite (>= lt!5675 lt!5679) (CC!66 (left!711 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) res!13643) (ite (= lt!5667 (- lt!5668 3)) (CC!66 (left!711 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (CC!66 (left!711 (right!714 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) res!13643)) (CC!66 (CC!66 (left!711 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (left!711 (right!714 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))) res!13643)))) (let ((res!13646 lt!5676)) (ite (>= lt!5675 lt!5679) (CC!66 res!13646 (right!714 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))) (ite (= lt!5667 (- lt!5668 3)) (CC!66 (CC!66 res!13646 (right!714 (left!711 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))) (right!714 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))) (CC!66 res!13646 (CC!66 (right!714 (left!711 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))) (right!714 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))))))))

(assert (=> b!30507 (= lt!5668 e!15555)))

(declare-fun c!6693 () Bool)

(declare-fun lt!5671 () Bool)

(assert (=> b!30507 (= c!6693 (or lt!5671 (and (not lt!5681) (not (>= lt!5675 lt!5679)))))))

(assert (=> b!30507 (= lt!5671 (and lt!5681 (not (>= lt!5675 lt!5679))))))

(declare-fun e!15556 () Int)

(assert (=> b!30507 (= lt!5667 e!15556)))

(declare-fun c!6691 () Bool)

(assert (=> b!30507 (= c!6691 (or (and lt!5681 (not (>= lt!5675 lt!5679))) (and (not lt!5681) (not (>= lt!5675 lt!5679)))))))

(assert (=> b!30507 (= lt!5676 e!15563)))

(declare-fun c!6690 () Bool)

(assert (=> b!30507 (= c!6690 (or lt!5672 (not lt!5681)))))

(assert (=> b!30507 (= lt!5672 lt!5681)))

(assert (=> b!30507 (= lt!5679 (level!55 (ite lt!5681 (right!714 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (left!711 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))))

(assert (=> b!30507 (= lt!5675 (level!55 (ite lt!5681 (left!711 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))) (right!714 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))))

(assert (=> b!30507 (= lt!5681 (< lt!5682 (- 1)))))

(declare-fun b!30508 () Bool)

(declare-fun res!14036 () Conc!67)

(assert (=> b!30508 (= e!15563 res!14036)))

(assert (=> b!30508 true))

(assert (=> b!30508 e!15558))

(declare-fun b!30509 () Bool)

(assert (=> b!30509 (= e!15559 (concatCorrectness!15 lt!5678 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(declare-fun b!30510 () Bool)

(declare-fun res!14025 () Int)

(assert (=> b!30510 (= e!15556 res!14025)))

(assert (=> b!30510 true))

(declare-fun b!30511 () Bool)

(declare-fun res!14033 () Bool)

(assert (=> b!30511 (=> (not res!14033) (not e!15559))))

(declare-fun lt!5674 () Int)

(declare-fun lt!5680 () Int)

(declare-fun lt!5673 () Int)

(assert (=> b!30511 (= res!14033 (>= lt!5674 (ite (>= lt!5673 lt!5680) lt!5673 lt!5680)))))

(assert (=> b!30511 (= lt!5680 (level!55 (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))))))))

(assert (=> b!30511 (= lt!5673 (level!55 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533))))))

(assert (=> b!30511 (= lt!5674 (level!55 lt!5678))))

(declare-fun b!30512 () Bool)

(assert (=> b!30512 (= e!15555 (level!55 (ite lt!5671 (ite lt!5431 (ite (>= lt!5434 lt!5438) (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)))) (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (ite lt!5431 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))) (ite (>= lt!5434 lt!5438) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))) (left!711 (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))))

(declare-fun b!30513 () Bool)

(assert (=> b!30513 (= e!15556 (level!55 lt!5676))))

(declare-fun b!30514 () Bool)

(declare-fun res!14030 () Bool)

(assert (=> b!30514 (=> (not res!14030) (not e!15559))))

(assert (=> b!30514 (= res!14030 (concInv!61 lt!5678))))

(assert (= (and d!15953 res!14028) b!30503))

(assert (= (and d!15953 res!14037) b!30498))

(assert (= (and b!30498 res!14031) b!30506))

(assert (= (and b!30506 res!14027) b!30504))

(assert (= (and b!30504 res!14032) b!30494))

(assert (= (and b!30508 (is-CC!66 res!14036)) b!30501))

(assert (= (and b!30508 (is-Single!66 res!14036)) b!30495))

(assert (= (and b!30507 c!6690) b!30496))

(assert (= (and b!30507 (not c!6690)) b!30508))

(assert (= (and b!30507 c!6691) b!30513))

(assert (= (and b!30507 (not c!6691)) b!30510))

(assert (= (and b!30507 c!6693) b!30512))

(assert (= (and b!30507 (not c!6693)) b!30499))

(assert (= (and d!15953 c!6692) b!30502))

(assert (= (and d!15953 (not c!6692)) b!30507))

(assert (= (and d!15953 res!14038) b!30505))

(assert (= (and b!30505 res!14035) b!30511))

(assert (= (and b!30511 res!14033) b!30514))

(assert (= (and b!30514 res!14030) b!30500))

(assert (= (and b!30500 res!14034) b!30497))

(assert (= (and b!30497 res!14029) b!30509))

(declare-fun m!32957 () Bool)

(assert (=> b!30505 m!32957))

(declare-fun m!32959 () Bool)

(assert (=> b!30505 m!32959))

(declare-fun m!32961 () Bool)

(assert (=> b!30505 m!32961))

(declare-fun m!32963 () Bool)

(assert (=> b!30504 m!32963))

(declare-fun m!32965 () Bool)

(assert (=> b!30496 m!32965))

(declare-fun m!32967 () Bool)

(assert (=> b!30512 m!32967))

(assert (=> b!30511 m!32957))

(assert (=> b!30511 m!32959))

(assert (=> b!30511 m!32961))

(declare-fun m!32969 () Bool)

(assert (=> b!30494 m!32969))

(declare-fun m!32971 () Bool)

(assert (=> b!30509 m!32971))

(declare-fun m!32973 () Bool)

(assert (=> b!30500 m!32973))

(declare-fun m!32975 () Bool)

(assert (=> b!30506 m!32975))

(declare-fun m!32977 () Bool)

(assert (=> b!30503 m!32977))

(declare-fun m!32979 () Bool)

(assert (=> b!30514 m!32979))

(assert (=> d!15953 m!32957))

(assert (=> d!15953 m!32959))

(declare-fun m!32981 () Bool)

(assert (=> d!15953 m!32981))

(declare-fun m!32983 () Bool)

(assert (=> b!30498 m!32983))

(declare-fun m!32985 () Bool)

(assert (=> b!30497 m!32985))

(declare-fun m!32987 () Bool)

(assert (=> b!30507 m!32987))

(declare-fun m!32989 () Bool)

(assert (=> b!30507 m!32989))

(declare-fun m!32991 () Bool)

(assert (=> b!30513 m!32991))

(assert (=> b!29805 d!15953))

(assert (=> b!29814 d!15911))

(assert (=> b!29814 d!15913))

(assert (=> b!29814 d!15917))

(assert (=> b!29772 d!15735))

(assert (=> b!29772 d!15487))

(assert (=> b!29772 d!15489))

(declare-fun b!30515 () Bool)

(declare-fun e!15564 () Bool)

(assert (=> b!30515 (= e!15564 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))))

(declare-fun lt!5683 () Bool)

(assert (=> b!30515 (= lt!5683 (appendAssoc!11 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))

(declare-fun d!15955 () Bool)

(assert (=> d!15955 e!15564))

(declare-fun c!6694 () Bool)

(assert (=> d!15955 (= c!6694 (is-Cons!357 (toList!118 xs!533)))))

(assert (=> d!15955 (= (appendAssoc!11 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) true)))

(declare-fun b!30516 () Bool)

(assert (=> b!30516 (= e!15564 (= (++!43 (++!43 (toList!118 xs!533) (toList!118 (left!711 (left!711 (left!711 ys!77))))) (toList!118 (right!714 (left!711 (left!711 ys!77))))) (++!43 (toList!118 xs!533) (++!43 (toList!118 (left!711 (left!711 (left!711 ys!77)))) (toList!118 (right!714 (left!711 (left!711 ys!77))))))))))

(assert (= (and d!15955 c!6694) b!30515))

(assert (= (and d!15955 (not c!6694)) b!30516))

(assert (=> b!30515 m!31517))

(assert (=> b!30515 m!31931))

(declare-fun m!32993 () Bool)

(assert (=> b!30515 m!32993))

(assert (=> b!30515 m!31517))

(assert (=> b!30515 m!31867))

(declare-fun m!32995 () Bool)

(assert (=> b!30515 m!32995))

(assert (=> b!30515 m!31867))

(assert (=> b!30515 m!31851))

(assert (=> b!30515 m!31931))

(assert (=> b!30515 m!32995))

(assert (=> b!30515 m!31851))

(declare-fun m!32997 () Bool)

(assert (=> b!30515 m!32997))

(assert (=> b!30515 m!31867))

(assert (=> b!30515 m!31851))

(declare-fun m!32999 () Bool)

(assert (=> b!30515 m!32999))

(assert (=> b!30516 m!31517))

(assert (=> b!30516 m!31867))

(assert (=> b!30516 m!32995))

(assert (=> b!30516 m!32995))

(assert (=> b!30516 m!31851))

(assert (=> b!30516 m!32997))

(assert (=> b!30516 m!31867))

(assert (=> b!30516 m!31851))

(assert (=> b!30516 m!31931))

(assert (=> b!30516 m!31517))

(assert (=> b!30516 m!31931))

(assert (=> b!30516 m!32993))

(assert (=> b!29870 d!15955))

(assert (=> b!29870 d!15505))

(assert (=> b!29870 d!15947))

(assert (=> b!29870 d!15675))

(assert (=> b!29789 d!15501))

(assert (=> b!29789 d!15499))

(declare-fun b!30520 () Bool)

(declare-fun e!15566 () Bool)

(assert (=> b!30520 (= e!15566 (concInv!61 (right!714 (right!714 (left!711 xs!533)))))))

(declare-fun b!30519 () Bool)

(declare-fun res!14039 () Bool)

(assert (=> b!30519 (=> (not res!14039) (not e!15566))))

(assert (=> b!30519 (= res!14039 (concInv!61 (left!711 (right!714 (left!711 xs!533)))))))

(declare-fun b!30517 () Bool)

(declare-fun e!15565 () Bool)

(assert (=> b!30517 (= e!15565 e!15566)))

(declare-fun res!14042 () Bool)

(assert (=> b!30517 (=> (not res!14042) (not e!15566))))

(assert (=> b!30517 (= res!14042 (not (isEmpty!323 (left!711 (right!714 (left!711 xs!533))))))))

(declare-fun b!30518 () Bool)

(declare-fun res!14041 () Bool)

(assert (=> b!30518 (=> (not res!14041) (not e!15566))))

(assert (=> b!30518 (= res!14041 (not (isEmpty!323 (right!714 (right!714 (left!711 xs!533))))))))

(declare-fun d!15957 () Bool)

(declare-fun res!14040 () Bool)

(assert (=> d!15957 (=> res!14040 e!15565)))

(assert (=> d!15957 (= res!14040 (not (is-CC!66 (right!714 (left!711 xs!533)))))))

(assert (=> d!15957 (= (concInv!61 (right!714 (left!711 xs!533))) e!15565)))

(assert (= (and d!15957 (not res!14040)) b!30517))

(assert (= (and b!30517 res!14042) b!30518))

(assert (= (and b!30518 res!14041) b!30519))

(assert (= (and b!30519 res!14039) b!30520))

(declare-fun m!33001 () Bool)

(assert (=> b!30520 m!33001))

(declare-fun m!33003 () Bool)

(assert (=> b!30519 m!33003))

(declare-fun m!33005 () Bool)

(assert (=> b!30517 m!33005))

(declare-fun m!33007 () Bool)

(assert (=> b!30518 m!33007))

(assert (=> b!29796 d!15957))

(declare-fun d!15959 () Bool)

(declare-fun lt!5684 () Int)

(assert (=> d!15959 (>= lt!5684 0)))

(declare-fun e!15567 () Int)

(assert (=> d!15959 (= lt!5684 e!15567)))

(declare-fun c!6695 () Bool)

(assert (=> d!15959 (= c!6695 (is-Nil!358 lt!5406))))

(assert (=> d!15959 (= (size!275 lt!5406) lt!5684)))

(declare-fun b!30521 () Bool)

(assert (=> b!30521 (= e!15567 0)))

(declare-fun b!30522 () Bool)

(assert (=> b!30522 (= e!15567 (+ 1 (size!275 (t!4377 lt!5406))))))

(assert (= (and d!15959 c!6695) b!30521))

(assert (= (and d!15959 (not c!6695)) b!30522))

(declare-fun m!33009 () Bool)

(assert (=> b!30522 m!33009))

(assert (=> d!15487 d!15959))

(declare-fun d!15961 () Bool)

(declare-fun lt!5685 () Int)

(assert (=> d!15961 (>= lt!5685 0)))

(declare-fun e!15569 () Int)

(assert (=> d!15961 (= lt!5685 e!15569)))

(declare-fun c!6697 () Bool)

(assert (=> d!15961 (= c!6697 (is-Empty!77 (left!711 xs!533)))))

(assert (=> d!15961 (= (size!276 (left!711 xs!533)) lt!5685)))

(declare-fun b!30526 () Bool)

(declare-fun e!15568 () Int)

(assert (=> b!30526 (= e!15568 (+ (size!276 (left!711 (left!711 xs!533))) (size!276 (right!714 (left!711 xs!533)))))))

(declare-fun b!30524 () Bool)

(assert (=> b!30524 (= e!15569 e!15568)))

(declare-fun c!6696 () Bool)

(assert (=> b!30524 (= c!6696 (is-Single!66 (left!711 xs!533)))))

(declare-fun b!30525 () Bool)

(assert (=> b!30525 (= e!15568 1)))

(declare-fun b!30523 () Bool)

(assert (=> b!30523 (= e!15569 0)))

(assert (= (and b!30524 c!6696) b!30525))

(assert (= (and b!30524 (not c!6696)) b!30526))

(assert (= (and d!15961 c!6697) b!30523))

(assert (= (and d!15961 (not c!6697)) b!30524))

(assert (=> b!30526 m!32649))

(assert (=> b!30526 m!32659))

(assert (=> d!15487 d!15961))

(declare-fun d!15963 () Bool)

(declare-fun res!14046 () Bool)

(declare-fun e!15571 () Bool)

(assert (=> d!15963 (=> res!14046 e!15571)))

(assert (=> d!15963 (= res!14046 (not (is-CC!66 (left!711 (left!711 res!5544)))))))

(assert (=> d!15963 (= (balanced!62 (left!711 (left!711 res!5544))) e!15571)))

(declare-fun b!30527 () Bool)

(declare-fun e!15570 () Bool)

(assert (=> b!30527 (= e!15571 e!15570)))

(declare-fun res!14045 () Bool)

(assert (=> b!30527 (=> (not res!14045) (not e!15570))))

(assert (=> b!30527 (= res!14045 (>= (- (level!55 (left!711 (left!711 (left!711 res!5544)))) (level!55 (right!714 (left!711 (left!711 res!5544))))) (- 1)))))

(declare-fun b!30530 () Bool)

(assert (=> b!30530 (= e!15570 (balanced!62 (right!714 (left!711 (left!711 res!5544)))))))

(declare-fun b!30529 () Bool)

(declare-fun res!14044 () Bool)

(assert (=> b!30529 (=> (not res!14044) (not e!15570))))

(assert (=> b!30529 (= res!14044 (balanced!62 (left!711 (left!711 (left!711 res!5544)))))))

(declare-fun b!30528 () Bool)

(declare-fun res!14043 () Bool)

(assert (=> b!30528 (=> (not res!14043) (not e!15570))))

(assert (=> b!30528 (= res!14043 (<= (- (level!55 (left!711 (left!711 (left!711 res!5544)))) (level!55 (right!714 (left!711 (left!711 res!5544))))) 1))))

(assert (= (and d!15963 (not res!14046)) b!30527))

(assert (= (and b!30527 res!14045) b!30528))

(assert (= (and b!30528 res!14043) b!30529))

(assert (= (and b!30529 res!14044) b!30530))

(assert (=> b!30527 m!32121))

(assert (=> b!30527 m!32119))

(declare-fun m!33011 () Bool)

(assert (=> b!30530 m!33011))

(declare-fun m!33013 () Bool)

(assert (=> b!30529 m!33013))

(assert (=> b!30528 m!32121))

(assert (=> b!30528 m!32119))

(assert (=> b!29856 d!15963))

(declare-fun d!15965 () Bool)

(declare-fun lt!5686 () Int)

(assert (=> d!15965 (>= lt!5686 0)))

(declare-fun e!15572 () Int)

(assert (=> d!15965 (= lt!5686 e!15572)))

(declare-fun c!6698 () Bool)

(assert (=> d!15965 (= c!6698 (is-Nil!358 lt!5479))))

(assert (=> d!15965 (= (size!275 lt!5479) lt!5686)))

(declare-fun b!30531 () Bool)

(assert (=> b!30531 (= e!15572 0)))

(declare-fun b!30532 () Bool)

(assert (=> b!30532 (= e!15572 (+ 1 (size!275 (t!4377 lt!5479))))))

(assert (= (and d!15965 c!6698) b!30531))

(assert (= (and d!15965 (not c!6698)) b!30532))

(declare-fun m!33015 () Bool)

(assert (=> b!30532 m!33015))

(assert (=> b!29923 d!15965))

(assert (=> b!29923 d!15923))

(declare-fun d!15967 () Bool)

(declare-fun lt!5687 () Int)

(assert (=> d!15967 (>= lt!5687 0)))

(declare-fun e!15573 () Int)

(assert (=> d!15967 (= lt!5687 e!15573)))

(declare-fun c!6699 () Bool)

(assert (=> d!15967 (= c!6699 (is-Nil!358 (toList!118 (left!711 (left!711 ys!77)))))))

(assert (=> d!15967 (= (size!275 (toList!118 (left!711 (left!711 ys!77)))) lt!5687)))

(declare-fun b!30533 () Bool)

(assert (=> b!30533 (= e!15573 0)))

(declare-fun b!30534 () Bool)

(assert (=> b!30534 (= e!15573 (+ 1 (size!275 (t!4377 (toList!118 (left!711 (left!711 ys!77)))))))))

(assert (= (and d!15967 c!6699) b!30533))

(assert (= (and d!15967 (not c!6699)) b!30534))

(declare-fun m!33017 () Bool)

(assert (=> b!30534 m!33017))

(assert (=> b!29923 d!15967))

(declare-fun b!30536 () Bool)

(declare-fun e!15574 () Int)

(declare-fun lt!5690 () Int)

(declare-fun lt!5689 () Int)

(assert (=> b!30536 (= e!15574 (+ 1 (ite (>= lt!5690 lt!5689) lt!5690 lt!5689)))))

(assert (=> b!30536 (= lt!5689 (level!55 (right!714 (right!714 (right!714 (right!714 ys!77))))))))

(assert (=> b!30536 (= lt!5690 (level!55 (left!711 (right!714 (right!714 (right!714 ys!77))))))))

(declare-fun d!15969 () Bool)

(declare-fun lt!5688 () Int)

(assert (=> d!15969 (>= lt!5688 0)))

(assert (=> d!15969 (= lt!5688 e!15574)))

(declare-fun c!6700 () Bool)

(assert (=> d!15969 (= c!6700 (or (is-Empty!77 (right!714 (right!714 (right!714 ys!77)))) (is-Single!66 (right!714 (right!714 (right!714 ys!77))))))))

(assert (=> d!15969 (= (level!55 (right!714 (right!714 (right!714 ys!77)))) lt!5688)))

(declare-fun b!30535 () Bool)

(assert (=> b!30535 (= e!15574 0)))

(assert (= (and d!15969 c!6700) b!30535))

(assert (= (and d!15969 (not c!6700)) b!30536))

(declare-fun m!33019 () Bool)

(assert (=> b!30536 m!33019))

(declare-fun m!33021 () Bool)

(assert (=> b!30536 m!33021))

(assert (=> b!29762 d!15969))

(declare-fun b!30538 () Bool)

(declare-fun e!15575 () Int)

(declare-fun lt!5693 () Int)

(declare-fun lt!5692 () Int)

(assert (=> b!30538 (= e!15575 (+ 1 (ite (>= lt!5693 lt!5692) lt!5693 lt!5692)))))

(assert (=> b!30538 (= lt!5692 (level!55 (right!714 (left!711 (right!714 (right!714 ys!77))))))))

(assert (=> b!30538 (= lt!5693 (level!55 (left!711 (left!711 (right!714 (right!714 ys!77))))))))

(declare-fun d!15971 () Bool)

(declare-fun lt!5691 () Int)

(assert (=> d!15971 (>= lt!5691 0)))

(assert (=> d!15971 (= lt!5691 e!15575)))

(declare-fun c!6701 () Bool)

(assert (=> d!15971 (= c!6701 (or (is-Empty!77 (left!711 (right!714 (right!714 ys!77)))) (is-Single!66 (left!711 (right!714 (right!714 ys!77))))))))

(assert (=> d!15971 (= (level!55 (left!711 (right!714 (right!714 ys!77)))) lt!5691)))

(declare-fun b!30537 () Bool)

(assert (=> b!30537 (= e!15575 0)))

(assert (= (and d!15971 c!6701) b!30537))

(assert (= (and d!15971 (not c!6701)) b!30538))

(declare-fun m!33023 () Bool)

(assert (=> b!30538 m!33023))

(declare-fun m!33025 () Bool)

(assert (=> b!30538 m!33025))

(assert (=> b!29762 d!15971))

(declare-fun b!30540 () Bool)

(declare-fun e!15576 () Int)

(declare-fun lt!5696 () Int)

(declare-fun lt!5695 () Int)

(assert (=> b!30540 (= e!15576 (+ 1 (ite (>= lt!5696 lt!5695) lt!5696 lt!5695)))))

(assert (=> b!30540 (= lt!5695 (level!55 (right!714 (ite lt!5440 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(assert (=> b!30540 (= lt!5696 (level!55 (left!711 (ite lt!5440 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(declare-fun d!15973 () Bool)

(declare-fun lt!5694 () Int)

(assert (=> d!15973 (>= lt!5694 0)))

(assert (=> d!15973 (= lt!5694 e!15576)))

(declare-fun c!6702 () Bool)

(assert (=> d!15973 (= c!6702 (or (is-Empty!77 (ite lt!5440 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) (is-Single!66 (ite lt!5440 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(assert (=> d!15973 (= (level!55 (ite lt!5440 (right!714 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (left!711 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) lt!5694)))

(declare-fun b!30539 () Bool)

(assert (=> b!30539 (= e!15576 0)))

(assert (= (and d!15973 c!6702) b!30539))

(assert (= (and d!15973 (not c!6702)) b!30540))

(declare-fun m!33027 () Bool)

(assert (=> b!30540 m!33027))

(declare-fun m!33029 () Bool)

(assert (=> b!30540 m!33029))

(assert (=> b!29816 d!15973))

(declare-fun b!30542 () Bool)

(declare-fun e!15577 () Int)

(declare-fun lt!5699 () Int)

(declare-fun lt!5698 () Int)

(assert (=> b!30542 (= e!15577 (+ 1 (ite (>= lt!5699 lt!5698) lt!5699 lt!5698)))))

(assert (=> b!30542 (= lt!5698 (level!55 (right!714 (ite lt!5440 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(assert (=> b!30542 (= lt!5699 (level!55 (left!711 (ite lt!5440 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(declare-fun d!15975 () Bool)

(declare-fun lt!5697 () Int)

(assert (=> d!15975 (>= lt!5697 0)))

(assert (=> d!15975 (= lt!5697 e!15577)))

(declare-fun c!6703 () Bool)

(assert (=> d!15975 (= c!6703 (or (is-Empty!77 (ite lt!5440 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) (is-Single!66 (ite lt!5440 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77)))))))))))))

(assert (=> d!15975 (= (level!55 (ite lt!5440 (left!711 (ite lt!5384 (ite (>= lt!5387 lt!5391) (right!714 xs!533) (right!714 (right!714 xs!533))) xs!533)) (right!714 (ite lt!5384 (left!711 (left!711 ys!77)) (ite (>= lt!5387 lt!5391) (left!711 (left!711 (left!711 ys!77))) (left!711 (left!711 (left!711 (left!711 ys!77))))))))) lt!5697)))

(declare-fun b!30541 () Bool)

(assert (=> b!30541 (= e!15577 0)))

(assert (= (and d!15975 c!6703) b!30541))

(assert (= (and d!15975 (not c!6703)) b!30542))

(declare-fun m!33031 () Bool)

(assert (=> b!30542 m!33031))

(declare-fun m!33033 () Bool)

(assert (=> b!30542 m!33033))

(assert (=> b!29816 d!15975))

(declare-fun d!15977 () Bool)

(declare-fun lt!5700 () Int)

(assert (=> d!15977 (>= lt!5700 0)))

(declare-fun e!15578 () Int)

(assert (=> d!15977 (= lt!5700 e!15578)))

(declare-fun c!6704 () Bool)

(assert (=> d!15977 (= c!6704 (is-Nil!358 lt!5418))))

(assert (=> d!15977 (= (size!275 lt!5418) lt!5700)))

(declare-fun b!30543 () Bool)

(assert (=> b!30543 (= e!15578 0)))

(declare-fun b!30544 () Bool)

(assert (=> b!30544 (= e!15578 (+ 1 (size!275 (t!4377 lt!5418))))))

(assert (= (and d!15977 c!6704) b!30543))

(assert (= (and d!15977 (not c!6704)) b!30544))

(declare-fun m!33035 () Bool)

(assert (=> b!30544 m!33035))

(assert (=> d!15505 d!15977))

(declare-fun d!15979 () Bool)

(declare-fun lt!5701 () Int)

(assert (=> d!15979 (>= lt!5701 0)))

(declare-fun e!15580 () Int)

(assert (=> d!15979 (= lt!5701 e!15580)))

(declare-fun c!6706 () Bool)

(assert (=> d!15979 (= c!6706 (is-Empty!77 xs!533))))

(assert (=> d!15979 (= (size!276 xs!533) lt!5701)))

(declare-fun b!30548 () Bool)

(declare-fun e!15579 () Int)

(assert (=> b!30548 (= e!15579 (+ (size!276 (left!711 xs!533)) (size!276 (right!714 xs!533))))))

(declare-fun b!30546 () Bool)

(assert (=> b!30546 (= e!15580 e!15579)))

(declare-fun c!6705 () Bool)

(assert (=> b!30546 (= c!6705 (is-Single!66 xs!533))))

(declare-fun b!30547 () Bool)

(assert (=> b!30547 (= e!15579 1)))

(declare-fun b!30545 () Bool)

(assert (=> b!30545 (= e!15580 0)))

(assert (= (and b!30546 c!6705) b!30547))

(assert (= (and b!30546 (not c!6705)) b!30548))

(assert (= (and d!15979 c!6706) b!30545))

(assert (= (and d!15979 (not c!6706)) b!30546))

(assert (=> b!30548 m!31627))

(assert (=> b!30548 m!31633))

(assert (=> d!15505 d!15979))

(assert (=> b!29824 d!15771))

(assert (=> b!29824 d!15769))

(declare-fun b!30549 () Bool)

(declare-fun e!15581 () Bool)

(assert (=> b!30549 (= e!15581 (= (++!43 (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 ys!77))) (toList!118 (right!714 ys!77))) (++!43 (t!4377 (toList!118 xs!533)) (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))))

(declare-fun lt!5702 () Bool)

(assert (=> b!30549 (= lt!5702 (appendAssoc!11 (t!4377 (t!4377 (toList!118 xs!533))) (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))

(declare-fun d!15981 () Bool)

(assert (=> d!15981 e!15581))

(declare-fun c!6707 () Bool)

(assert (=> d!15981 (= c!6707 (is-Cons!357 (t!4377 (toList!118 xs!533))))))

(assert (=> d!15981 (= (appendAssoc!11 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))) true)))

(declare-fun b!30550 () Bool)

(assert (=> b!30550 (= e!15581 (= (++!43 (++!43 (t!4377 (toList!118 xs!533)) (toList!118 (left!711 ys!77))) (toList!118 (right!714 ys!77))) (++!43 (t!4377 (toList!118 xs!533)) (++!43 (toList!118 (left!711 ys!77)) (toList!118 (right!714 ys!77))))))))

(assert (= (and d!15981 c!6707) b!30549))

(assert (= (and d!15981 (not c!6707)) b!30550))

(assert (=> b!30549 m!31635))

(assert (=> b!30549 m!32797))

(assert (=> b!30549 m!31539))

(assert (=> b!30549 m!32791))

(assert (=> b!30549 m!31539))

(assert (=> b!30549 m!31511))

(assert (=> b!30549 m!31635))

(assert (=> b!30549 m!32791))

(assert (=> b!30549 m!31511))

(declare-fun m!33037 () Bool)

(assert (=> b!30549 m!33037))

(assert (=> b!30549 m!31539))

(assert (=> b!30549 m!31511))

(declare-fun m!33039 () Bool)

(assert (=> b!30549 m!33039))

(assert (=> b!30550 m!31539))

(assert (=> b!30550 m!32791))

(assert (=> b!30550 m!32791))

(assert (=> b!30550 m!31511))

(assert (=> b!30550 m!33037))

(assert (=> b!30550 m!31539))

(assert (=> b!30550 m!31511))

(assert (=> b!30550 m!31635))

(assert (=> b!30550 m!31635))

(assert (=> b!30550 m!32797))

(assert (=> b!29881 d!15981))

(assert (=> b!29881 d!15817))

(assert (=> b!29881 d!15881))

(assert (=> b!29881 d!15885))

(assert (=> b!29881 d!15883))

(assert (=> b!29930 d!15525))

(assert (=> b!29930 d!15581))

(declare-fun b!30551 () Bool)

(declare-fun e!15582 () Bool)

(declare-fun tp!6330 () Bool)

(declare-fun tp!6331 () Bool)

(assert (=> b!30551 (= e!15582 (and tp!6330 tp!6331))))

(declare-fun b!30552 () Bool)

(assert (=> b!30552 (= e!15582 tp_is_empty!179)))

(assert (=> b!29969 (= tp!6324 e!15582)))

(assert (= (and b!29969 (is-CC!66 (left!711 (left!711 res!13705)))) b!30551))

(assert (= (and b!29969 (is-Single!66 (left!711 (left!711 res!13705)))) b!30552))

(declare-fun b!30553 () Bool)

(declare-fun e!15583 () Bool)

(declare-fun tp!6332 () Bool)

(declare-fun tp!6333 () Bool)

(assert (=> b!30553 (= e!15583 (and tp!6332 tp!6333))))

(declare-fun b!30554 () Bool)

(assert (=> b!30554 (= e!15583 tp_is_empty!179)))

(assert (=> b!29969 (= tp!6325 e!15583)))

(assert (= (and b!29969 (is-CC!66 (right!714 (left!711 res!13705)))) b!30553))

(assert (= (and b!29969 (is-Single!66 (right!714 (left!711 res!13705)))) b!30554))

(declare-fun b!30555 () Bool)

(declare-fun e!15584 () Bool)

(declare-fun tp!6334 () Bool)

(declare-fun tp!6335 () Bool)

(assert (=> b!30555 (= e!15584 (and tp!6334 tp!6335))))

(declare-fun b!30556 () Bool)

(assert (=> b!30556 (= e!15584 tp_is_empty!179)))

(assert (=> b!29941 (= tp!6296 e!15584)))

(assert (= (and b!29941 (is-CC!66 (left!711 (left!711 (left!711 ys!77))))) b!30555))

(assert (= (and b!29941 (is-Single!66 (left!711 (left!711 (left!711 ys!77))))) b!30556))

(declare-fun b!30557 () Bool)

(declare-fun e!15585 () Bool)

(declare-fun tp!6336 () Bool)

(declare-fun tp!6337 () Bool)

(assert (=> b!30557 (= e!15585 (and tp!6336 tp!6337))))

(declare-fun b!30558 () Bool)

(assert (=> b!30558 (= e!15585 tp_is_empty!179)))

(assert (=> b!29941 (= tp!6297 e!15585)))

(assert (= (and b!29941 (is-CC!66 (right!714 (left!711 (left!711 ys!77))))) b!30557))

(assert (= (and b!29941 (is-Single!66 (right!714 (left!711 (left!711 ys!77))))) b!30558))

(declare-fun b!30559 () Bool)

(declare-fun e!15586 () Bool)

(declare-fun tp!6338 () Bool)

(declare-fun tp!6339 () Bool)

(assert (=> b!30559 (= e!15586 (and tp!6338 tp!6339))))

(declare-fun b!30560 () Bool)

(assert (=> b!30560 (= e!15586 tp_is_empty!179)))

(assert (=> b!29967 (= tp!6322 e!15586)))

(assert (= (and b!29967 (is-CC!66 (left!711 (right!714 (right!714 nll!6))))) b!30559))

(assert (= (and b!29967 (is-Single!66 (left!711 (right!714 (right!714 nll!6))))) b!30560))

(declare-fun b!30561 () Bool)

(declare-fun e!15587 () Bool)

(declare-fun tp!6340 () Bool)

(declare-fun tp!6341 () Bool)

(assert (=> b!30561 (= e!15587 (and tp!6340 tp!6341))))

(declare-fun b!30562 () Bool)

(assert (=> b!30562 (= e!15587 tp_is_empty!179)))

(assert (=> b!29967 (= tp!6323 e!15587)))

(assert (= (and b!29967 (is-CC!66 (right!714 (right!714 (right!714 nll!6))))) b!30561))

(assert (= (and b!29967 (is-Single!66 (right!714 (right!714 (right!714 nll!6))))) b!30562))

(declare-fun b!30563 () Bool)

(declare-fun e!15588 () Bool)

(declare-fun tp!6342 () Bool)

(declare-fun tp!6343 () Bool)

(assert (=> b!30563 (= e!15588 (and tp!6342 tp!6343))))

(declare-fun b!30564 () Bool)

(assert (=> b!30564 (= e!15588 tp_is_empty!179)))

(assert (=> b!29953 (= tp!6308 e!15588)))

(assert (= (and b!29953 (is-CC!66 (left!711 (left!711 (left!711 xs!533))))) b!30563))

(assert (= (and b!29953 (is-Single!66 (left!711 (left!711 (left!711 xs!533))))) b!30564))

(declare-fun b!30565 () Bool)

(declare-fun e!15589 () Bool)

(declare-fun tp!6344 () Bool)

(declare-fun tp!6345 () Bool)

(assert (=> b!30565 (= e!15589 (and tp!6344 tp!6345))))

(declare-fun b!30566 () Bool)

(assert (=> b!30566 (= e!15589 tp_is_empty!179)))

(assert (=> b!29953 (= tp!6309 e!15589)))

(assert (= (and b!29953 (is-CC!66 (right!714 (left!711 (left!711 xs!533))))) b!30565))

(assert (= (and b!29953 (is-Single!66 (right!714 (left!711 (left!711 xs!533))))) b!30566))

(declare-fun b!30567 () Bool)

(declare-fun e!15590 () Bool)

(declare-fun tp!6346 () Bool)

(declare-fun tp!6347 () Bool)

(assert (=> b!30567 (= e!15590 (and tp!6346 tp!6347))))

(declare-fun b!30568 () Bool)

(assert (=> b!30568 (= e!15590 tp_is_empty!179)))

(assert (=> b!29957 (= tp!6312 e!15590)))

(assert (= (and b!29957 (is-CC!66 (left!711 (left!711 (left!711 nll!6))))) b!30567))

(assert (= (and b!29957 (is-Single!66 (left!711 (left!711 (left!711 nll!6))))) b!30568))

(declare-fun b!30569 () Bool)

(declare-fun e!15591 () Bool)

(declare-fun tp!6348 () Bool)

(declare-fun tp!6349 () Bool)

(assert (=> b!30569 (= e!15591 (and tp!6348 tp!6349))))

(declare-fun b!30570 () Bool)

(assert (=> b!30570 (= e!15591 tp_is_empty!179)))

(assert (=> b!29957 (= tp!6313 e!15591)))

(assert (= (and b!29957 (is-CC!66 (right!714 (left!711 (left!711 nll!6))))) b!30569))

(assert (= (and b!29957 (is-Single!66 (right!714 (left!711 (left!711 nll!6))))) b!30570))

(declare-fun b!30571 () Bool)

(declare-fun e!15592 () Bool)

(declare-fun tp!6350 () Bool)

(declare-fun tp!6351 () Bool)

(assert (=> b!30571 (= e!15592 (and tp!6350 tp!6351))))

(declare-fun b!30572 () Bool)

(assert (=> b!30572 (= e!15592 tp_is_empty!179)))

(assert (=> b!29951 (= tp!6306 e!15592)))

(assert (= (and b!29951 (is-CC!66 (left!711 (right!714 (right!714 xs!533))))) b!30571))

(assert (= (and b!29951 (is-Single!66 (left!711 (right!714 (right!714 xs!533))))) b!30572))

(declare-fun b!30573 () Bool)

(declare-fun e!15593 () Bool)

(declare-fun tp!6352 () Bool)

(declare-fun tp!6353 () Bool)

(assert (=> b!30573 (= e!15593 (and tp!6352 tp!6353))))

(declare-fun b!30574 () Bool)

(assert (=> b!30574 (= e!15593 tp_is_empty!179)))

(assert (=> b!29951 (= tp!6307 e!15593)))

(assert (= (and b!29951 (is-CC!66 (right!714 (right!714 (right!714 xs!533))))) b!30573))

(assert (= (and b!29951 (is-Single!66 (right!714 (right!714 (right!714 xs!533))))) b!30574))

(declare-fun b!30575 () Bool)

(declare-fun e!15594 () Bool)

(declare-fun tp!6354 () Bool)

(declare-fun tp!6355 () Bool)

(assert (=> b!30575 (= e!15594 (and tp!6354 tp!6355))))

(declare-fun b!30576 () Bool)

(assert (=> b!30576 (= e!15594 tp_is_empty!179)))

(assert (=> b!29947 (= tp!6302 e!15594)))

(assert (= (and b!29947 (is-CC!66 (left!711 (right!714 (right!714 res!5544))))) b!30575))

(assert (= (and b!29947 (is-Single!66 (left!711 (right!714 (right!714 res!5544))))) b!30576))

(declare-fun b!30577 () Bool)

(declare-fun e!15595 () Bool)

(declare-fun tp!6356 () Bool)

(declare-fun tp!6357 () Bool)

(assert (=> b!30577 (= e!15595 (and tp!6356 tp!6357))))

(declare-fun b!30578 () Bool)

(assert (=> b!30578 (= e!15595 tp_is_empty!179)))

(assert (=> b!29947 (= tp!6303 e!15595)))

(assert (= (and b!29947 (is-CC!66 (right!714 (right!714 (right!714 res!5544))))) b!30577))

(assert (= (and b!29947 (is-Single!66 (right!714 (right!714 (right!714 res!5544))))) b!30578))

(declare-fun b!30579 () Bool)

(declare-fun e!15596 () Bool)

(declare-fun tp!6358 () Bool)

(declare-fun tp!6359 () Bool)

(assert (=> b!30579 (= e!15596 (and tp!6358 tp!6359))))

(declare-fun b!30580 () Bool)

(assert (=> b!30580 (= e!15596 tp_is_empty!179)))

(assert (=> b!29939 (= tp!6294 e!15596)))

(assert (= (and b!29939 (is-CC!66 (left!711 (right!714 (right!714 ys!77))))) b!30579))

(assert (= (and b!29939 (is-Single!66 (left!711 (right!714 (right!714 ys!77))))) b!30580))

(declare-fun b!30581 () Bool)

(declare-fun e!15597 () Bool)

(declare-fun tp!6360 () Bool)

(declare-fun tp!6361 () Bool)

(assert (=> b!30581 (= e!15597 (and tp!6360 tp!6361))))

(declare-fun b!30582 () Bool)

(assert (=> b!30582 (= e!15597 tp_is_empty!179)))

(assert (=> b!29939 (= tp!6295 e!15597)))

(assert (= (and b!29939 (is-CC!66 (right!714 (right!714 (right!714 ys!77))))) b!30581))

(assert (= (and b!29939 (is-Single!66 (right!714 (right!714 (right!714 ys!77))))) b!30582))

(declare-fun b!30583 () Bool)

(declare-fun e!15598 () Bool)

(declare-fun tp!6362 () Bool)

(declare-fun tp!6363 () Bool)

(assert (=> b!30583 (= e!15598 (and tp!6362 tp!6363))))

(declare-fun b!30584 () Bool)

(assert (=> b!30584 (= e!15598 tp_is_empty!179)))

(assert (=> b!29961 (= tp!6316 e!15598)))

(assert (= (and b!29961 (is-CC!66 (left!711 (left!711 (left!711 res!5544))))) b!30583))

(assert (= (and b!29961 (is-Single!66 (left!711 (left!711 (left!711 res!5544))))) b!30584))

(declare-fun b!30585 () Bool)

(declare-fun e!15599 () Bool)

(declare-fun tp!6364 () Bool)

(declare-fun tp!6365 () Bool)

(assert (=> b!30585 (= e!15599 (and tp!6364 tp!6365))))

(declare-fun b!30586 () Bool)

(assert (=> b!30586 (= e!15599 tp_is_empty!179)))

(assert (=> b!29961 (= tp!6317 e!15599)))

(assert (= (and b!29961 (is-CC!66 (right!714 (left!711 (left!711 res!5544))))) b!30585))

(assert (= (and b!29961 (is-Single!66 (right!714 (left!711 (left!711 res!5544))))) b!30586))

(declare-fun b!30587 () Bool)

(declare-fun e!15600 () Bool)

(declare-fun tp!6366 () Bool)

(declare-fun tp!6367 () Bool)

(assert (=> b!30587 (= e!15600 (and tp!6366 tp!6367))))

(declare-fun b!30588 () Bool)

(assert (=> b!30588 (= e!15600 tp_is_empty!179)))

(assert (=> b!29971 (= tp!6326 e!15600)))

(assert (= (and b!29971 (is-CC!66 (left!711 (right!714 res!13705)))) b!30587))

(assert (= (and b!29971 (is-Single!66 (left!711 (right!714 res!13705)))) b!30588))

(declare-fun b!30589 () Bool)

(declare-fun e!15601 () Bool)

(declare-fun tp!6368 () Bool)

(declare-fun tp!6369 () Bool)

(assert (=> b!30589 (= e!15601 (and tp!6368 tp!6369))))

(declare-fun b!30590 () Bool)

(assert (=> b!30590 (= e!15601 tp_is_empty!179)))

(assert (=> b!29971 (= tp!6327 e!15601)))

(assert (= (and b!29971 (is-CC!66 (right!714 (right!714 res!13705)))) b!30589))

(assert (= (and b!29971 (is-Single!66 (right!714 (right!714 res!13705)))) b!30590))

(declare-fun b!30591 () Bool)

(declare-fun e!15602 () Bool)

(declare-fun tp!6370 () Bool)

(declare-fun tp!6371 () Bool)

(assert (=> b!30591 (= e!15602 (and tp!6370 tp!6371))))

(declare-fun b!30592 () Bool)

(assert (=> b!30592 (= e!15602 tp_is_empty!179)))

(assert (=> b!29945 (= tp!6300 e!15602)))

(assert (= (and b!29945 (is-CC!66 (left!711 (left!711 (right!714 res!5544))))) b!30591))

(assert (= (and b!29945 (is-Single!66 (left!711 (left!711 (right!714 res!5544))))) b!30592))

(declare-fun b!30593 () Bool)

(declare-fun e!15603 () Bool)

(declare-fun tp!6372 () Bool)

(declare-fun tp!6373 () Bool)

(assert (=> b!30593 (= e!15603 (and tp!6372 tp!6373))))

(declare-fun b!30594 () Bool)

(assert (=> b!30594 (= e!15603 tp_is_empty!179)))

(assert (=> b!29945 (= tp!6301 e!15603)))

(assert (= (and b!29945 (is-CC!66 (right!714 (left!711 (right!714 res!5544))))) b!30593))

(assert (= (and b!29945 (is-Single!66 (right!714 (left!711 (right!714 res!5544))))) b!30594))

(declare-fun b!30595 () Bool)

(declare-fun e!15604 () Bool)

(declare-fun tp!6374 () Bool)

(declare-fun tp!6375 () Bool)

(assert (=> b!30595 (= e!15604 (and tp!6374 tp!6375))))

(declare-fun b!30596 () Bool)

(assert (=> b!30596 (= e!15604 tp_is_empty!179)))

(assert (=> b!29965 (= tp!6320 e!15604)))

(assert (= (and b!29965 (is-CC!66 (left!711 (left!711 (right!714 nll!6))))) b!30595))

(assert (= (and b!29965 (is-Single!66 (left!711 (left!711 (right!714 nll!6))))) b!30596))

(declare-fun b!30597 () Bool)

(declare-fun e!15605 () Bool)

(declare-fun tp!6376 () Bool)

(declare-fun tp!6377 () Bool)

(assert (=> b!30597 (= e!15605 (and tp!6376 tp!6377))))

(declare-fun b!30598 () Bool)

(assert (=> b!30598 (= e!15605 tp_is_empty!179)))

(assert (=> b!29965 (= tp!6321 e!15605)))

(assert (= (and b!29965 (is-CC!66 (right!714 (left!711 (right!714 nll!6))))) b!30597))

(assert (= (and b!29965 (is-Single!66 (right!714 (left!711 (right!714 nll!6))))) b!30598))

(declare-fun b!30599 () Bool)

(declare-fun e!15606 () Bool)

(declare-fun tp!6378 () Bool)

(declare-fun tp!6379 () Bool)

(assert (=> b!30599 (= e!15606 (and tp!6378 tp!6379))))

(declare-fun b!30600 () Bool)

(assert (=> b!30600 (= e!15606 tp_is_empty!179)))

(assert (=> b!29963 (= tp!6318 e!15606)))

(assert (= (and b!29963 (is-CC!66 (left!711 (right!714 (left!711 res!5544))))) b!30599))

(assert (= (and b!29963 (is-Single!66 (left!711 (right!714 (left!711 res!5544))))) b!30600))

(declare-fun b!30601 () Bool)

(declare-fun e!15607 () Bool)

(declare-fun tp!6380 () Bool)

(declare-fun tp!6381 () Bool)

(assert (=> b!30601 (= e!15607 (and tp!6380 tp!6381))))

(declare-fun b!30602 () Bool)

(assert (=> b!30602 (= e!15607 tp_is_empty!179)))

(assert (=> b!29963 (= tp!6319 e!15607)))

(assert (= (and b!29963 (is-CC!66 (right!714 (right!714 (left!711 res!5544))))) b!30601))

(assert (= (and b!29963 (is-Single!66 (right!714 (right!714 (left!711 res!5544))))) b!30602))

(declare-fun b!30603 () Bool)

(declare-fun e!15608 () Bool)

(declare-fun tp!6382 () Bool)

(declare-fun tp!6383 () Bool)

(assert (=> b!30603 (= e!15608 (and tp!6382 tp!6383))))

(declare-fun b!30604 () Bool)

(assert (=> b!30604 (= e!15608 tp_is_empty!179)))

(assert (=> b!29955 (= tp!6310 e!15608)))

(assert (= (and b!29955 (is-CC!66 (left!711 (right!714 (left!711 xs!533))))) b!30603))

(assert (= (and b!29955 (is-Single!66 (left!711 (right!714 (left!711 xs!533))))) b!30604))

(declare-fun b!30605 () Bool)

(declare-fun e!15609 () Bool)

(declare-fun tp!6384 () Bool)

(declare-fun tp!6385 () Bool)

(assert (=> b!30605 (= e!15609 (and tp!6384 tp!6385))))

(declare-fun b!30606 () Bool)

(assert (=> b!30606 (= e!15609 tp_is_empty!179)))

(assert (=> b!29955 (= tp!6311 e!15609)))

(assert (= (and b!29955 (is-CC!66 (right!714 (right!714 (left!711 xs!533))))) b!30605))

(assert (= (and b!29955 (is-Single!66 (right!714 (right!714 (left!711 xs!533))))) b!30606))

(declare-fun b!30607 () Bool)

(declare-fun e!15610 () Bool)

(declare-fun tp!6386 () Bool)

(declare-fun tp!6387 () Bool)

(assert (=> b!30607 (= e!15610 (and tp!6386 tp!6387))))

(declare-fun b!30608 () Bool)

(assert (=> b!30608 (= e!15610 tp_is_empty!179)))

(assert (=> b!29943 (= tp!6298 e!15610)))

(assert (= (and b!29943 (is-CC!66 (left!711 (right!714 (left!711 ys!77))))) b!30607))

(assert (= (and b!29943 (is-Single!66 (left!711 (right!714 (left!711 ys!77))))) b!30608))

(declare-fun b!30609 () Bool)

(declare-fun e!15611 () Bool)

(declare-fun tp!6388 () Bool)

(declare-fun tp!6389 () Bool)

(assert (=> b!30609 (= e!15611 (and tp!6388 tp!6389))))

(declare-fun b!30610 () Bool)

(assert (=> b!30610 (= e!15611 tp_is_empty!179)))

(assert (=> b!29943 (= tp!6299 e!15611)))

(assert (= (and b!29943 (is-CC!66 (right!714 (right!714 (left!711 ys!77))))) b!30609))

(assert (= (and b!29943 (is-Single!66 (right!714 (right!714 (left!711 ys!77))))) b!30610))

(declare-fun b!30611 () Bool)

(declare-fun e!15612 () Bool)

(declare-fun tp!6390 () Bool)

(declare-fun tp!6391 () Bool)

(assert (=> b!30611 (= e!15612 (and tp!6390 tp!6391))))

(declare-fun b!30612 () Bool)

(assert (=> b!30612 (= e!15612 tp_is_empty!179)))

(assert (=> b!29937 (= tp!6292 e!15612)))

(assert (= (and b!29937 (is-CC!66 (left!711 (left!711 (right!714 ys!77))))) b!30611))

(assert (= (and b!29937 (is-Single!66 (left!711 (left!711 (right!714 ys!77))))) b!30612))

(declare-fun b!30613 () Bool)

(declare-fun e!15613 () Bool)

(declare-fun tp!6392 () Bool)

(declare-fun tp!6393 () Bool)

(assert (=> b!30613 (= e!15613 (and tp!6392 tp!6393))))

(declare-fun b!30614 () Bool)

(assert (=> b!30614 (= e!15613 tp_is_empty!179)))

(assert (=> b!29937 (= tp!6293 e!15613)))

(assert (= (and b!29937 (is-CC!66 (right!714 (left!711 (right!714 ys!77))))) b!30613))

(assert (= (and b!29937 (is-Single!66 (right!714 (left!711 (right!714 ys!77))))) b!30614))

(declare-fun b!30615 () Bool)

(declare-fun e!15614 () Bool)

(declare-fun tp!6394 () Bool)

(declare-fun tp!6395 () Bool)

(assert (=> b!30615 (= e!15614 (and tp!6394 tp!6395))))

(declare-fun b!30616 () Bool)

(assert (=> b!30616 (= e!15614 tp_is_empty!179)))

(assert (=> b!29810 (= tp!6290 e!15614)))

(assert (= (and b!29810 (is-CC!66 (left!711 res!13756))) b!30615))

(assert (= (and b!29810 (is-Single!66 (left!711 res!13756))) b!30616))

(declare-fun b!30617 () Bool)

(declare-fun e!15615 () Bool)

(declare-fun tp!6396 () Bool)

(declare-fun tp!6397 () Bool)

(assert (=> b!30617 (= e!15615 (and tp!6396 tp!6397))))

(declare-fun b!30618 () Bool)

(assert (=> b!30618 (= e!15615 tp_is_empty!179)))

(assert (=> b!29810 (= tp!6291 e!15615)))

(assert (= (and b!29810 (is-CC!66 (right!714 res!13756))) b!30617))

(assert (= (and b!29810 (is-Single!66 (right!714 res!13756))) b!30618))

(declare-fun b!30619 () Bool)

(declare-fun e!15616 () Bool)

(declare-fun tp!6398 () Bool)

(declare-fun tp!6399 () Bool)

(assert (=> b!30619 (= e!15616 (and tp!6398 tp!6399))))

(declare-fun b!30620 () Bool)

(assert (=> b!30620 (= e!15616 tp_is_empty!179)))

(assert (=> b!29949 (= tp!6304 e!15616)))

(assert (= (and b!29949 (is-CC!66 (left!711 (left!711 (right!714 xs!533))))) b!30619))

(assert (= (and b!29949 (is-Single!66 (left!711 (left!711 (right!714 xs!533))))) b!30620))

(declare-fun b!30621 () Bool)

(declare-fun e!15617 () Bool)

(declare-fun tp!6400 () Bool)

(declare-fun tp!6401 () Bool)

(assert (=> b!30621 (= e!15617 (and tp!6400 tp!6401))))

(declare-fun b!30622 () Bool)

(assert (=> b!30622 (= e!15617 tp_is_empty!179)))

(assert (=> b!29949 (= tp!6305 e!15617)))

(assert (= (and b!29949 (is-CC!66 (right!714 (left!711 (right!714 xs!533))))) b!30621))

(assert (= (and b!29949 (is-Single!66 (right!714 (left!711 (right!714 xs!533))))) b!30622))

(declare-fun b!30623 () Bool)

(declare-fun e!15618 () Bool)

(declare-fun tp!6402 () Bool)

(declare-fun tp!6403 () Bool)

(assert (=> b!30623 (= e!15618 (and tp!6402 tp!6403))))

(declare-fun b!30624 () Bool)

(assert (=> b!30624 (= e!15618 tp_is_empty!179)))

(assert (=> b!29959 (= tp!6314 e!15618)))

(assert (= (and b!29959 (is-CC!66 (left!711 (right!714 (left!711 nll!6))))) b!30623))

(assert (= (and b!29959 (is-Single!66 (left!711 (right!714 (left!711 nll!6))))) b!30624))

(declare-fun b!30625 () Bool)

(declare-fun e!15619 () Bool)

(declare-fun tp!6404 () Bool)

(declare-fun tp!6405 () Bool)

(assert (=> b!30625 (= e!15619 (and tp!6404 tp!6405))))

(declare-fun b!30626 () Bool)

(assert (=> b!30626 (= e!15619 tp_is_empty!179)))

(assert (=> b!29959 (= tp!6315 e!15619)))

(assert (= (and b!29959 (is-CC!66 (right!714 (right!714 (left!711 nll!6))))) b!30625))

(assert (= (and b!29959 (is-Single!66 (right!714 (right!714 (left!711 nll!6))))) b!30626))

(push 1)

(assert (not b!30005))

(assert (not b!30559))

(assert (not b!30113))

(assert (not d!15661))

(assert (not b!30246))

(assert (not d!15701))

(assert (not b!30550))

(assert (not b!30455))

(assert (not b!30484))

(assert (not b!30101))

(assert (not b!29978))

(assert (not b!30343))

(assert (not b!30411))

(assert (not d!15875))

(assert (not b!30376))

(assert (not b!30088))

(assert (not b!30405))

(assert (not b!30099))

(assert (not b!30350))

(assert (not b!30266))

(assert (not b!30094))

(assert (not b!30233))

(assert (not d!15831))

(assert (not b!30084))

(assert (not b!30245))

(assert (not b!30501))

(assert (not b!30363))

(assert (not b!30339))

(assert (not b!30098))

(assert (not b!29976))

(assert (not b!30323))

(assert (not b!30066))

(assert (not b!30494))

(assert (not b!30032))

(assert (not b!30219))

(assert (not b!30308))

(assert (not b!30406))

(assert (not b!30398))

(assert (not b!30170))

(assert (not b!30413))

(assert (not b!30573))

(assert (not b!30428))

(assert (not b!30312))

(assert (not b!30213))

(assert (not b!30234))

(assert (not b!30095))

(assert (not b!30386))

(assert (not b!30444))

(assert (not b!30147))

(assert (not b!30236))

(assert (not b!30418))

(assert (not b!30619))

(assert (not b!30117))

(assert (not b!30241))

(assert (not d!15935))

(assert (not b!29998))

(assert (not b!30509))

(assert (not d!15755))

(assert (not b!30275))

(assert (not b!30477))

(assert (not b!30388))

(assert (not b!30072))

(assert (not b!30567))

(assert (not b!30198))

(assert (not b!30364))

(assert (not b!30609))

(assert (not d!15845))

(assert (not b!30304))

(assert (not b!30092))

(assert (not b!30100))

(assert (not b!30173))

(assert (not b!30285))

(assert (not b!30397))

(assert (not b!30385))

(assert (not b!30140))

(assert (not b!30227))

(assert (not b!30334))

(assert (not b!30507))

(assert (not d!15841))

(assert (not b!30298))

(assert (not b!30361))

(assert (not b!30549))

(assert (not b!30132))

(assert (not b!29995))

(assert (not b!29980))

(assert (not b!30374))

(assert (not b!30177))

(assert (not b!30256))

(assert (not b!30371))

(assert (not b!30044))

(assert (not b!30369))

(assert (not b!30469))

(assert (not b!30607))

(assert (not b!30259))

(assert (not b!30367))

(assert (not b!30561))

(assert (not b!30605))

(assert (not b!30062))

(assert (not d!15651))

(assert (not b!30301))

(assert (not b!30424))

(assert (not b!29981))

(assert (not b!30476))

(assert (not b!30577))

(assert (not b!30555))

(assert (not b!30201))

(assert (not b!30435))

(assert (not d!15637))

(assert (not d!15639))

(assert (not b!30163))

(assert (not b!30344))

(assert (not b!30473))

(assert (not b!30493))

(assert (not b!30171))

(assert (not b!30293))

(assert (not b!30076))

(assert (not d!15673))

(assert (not b!30299))

(assert (not b!30527))

(assert (not b!30478))

(assert (not b!30528))

(assert (not b!30390))

(assert (not b!30591))

(assert (not b!30180))

(assert (not b!30165))

(assert (not b!30265))

(assert (not b!30441))

(assert (not b!30124))

(assert (not b!30355))

(assert (not b!30421))

(assert (not b!30211))

(assert (not b!30349))

(assert (not b!30557))

(assert (not b!30415))

(assert (not b!30223))

(assert (not b!30252))

(assert (not b!30296))

(assert (not b!30479))

(assert (not b!30601))

(assert (not b!30489))

(assert (not b!30263))

(assert (not b!30464))

(assert (not b!30033))

(assert (not d!15669))

(assert (not b!30504))

(assert (not b!30534))

(assert (not b!29975))

(assert (not b!29984))

(assert (not b!30563))

(assert (not b!30432))

(assert (not b!30447))

(assert (not d!15753))

(assert (not d!15747))

(assert (not b!30599))

(assert (not b!30284))

(assert (not b!30611))

(assert (not d!15933))

(assert (not b!29986))

(assert (not b!30446))

(assert (not b!30451))

(assert (not d!15885))

(assert (not b!30420))

(assert (not b!30260))

(assert (not b!30500))

(assert (not d!15671))

(assert (not b!30423))

(assert (not b!30187))

(assert (not b!30409))

(assert (not b!30401))

(assert (not d!15953))

(assert (not b!30430))

(assert (not b!30583))

(assert (not b!30091))

(assert (not b!30248))

(assert (not b!30268))

(assert (not b!30012))

(assert (not b!30450))

(assert (not b!30481))

(assert (not b!30085))

(assert (not b!30512))

(assert (not b!30410))

(assert (not b!30375))

(assert (not b!30516))

(assert (not b!30529))

(assert (not b!30408))

(assert (not b!30107))

(assert (not b!30377))

(assert (not b!30565))

(assert (not b!30102))

(assert (not b!30079))

(assert (not b!30097))

(assert (not b!30505))

(assert (not b!30169))

(assert (not b!30135))

(assert (not b!30625))

(assert (not b!30346))

(assert (not b!30427))

(assert (not b!30231))

(assert (not b!30019))

(assert (not b!30337))

(assert (not b!30366))

(assert (not d!15745))

(assert (not b!30404))

(assert (not b!30506))

(assert (not b!30294))

(assert (not d!15829))

(assert (not b!30365))

(assert (not b!30511))

(assert (not b!30419))

(assert (not b!30360))

(assert (not b!30587))

(assert (not b!30317))

(assert (not b!30029))

(assert (not b!30595))

(assert (not b!30389))

(assert (not d!15675))

(assert (not b!30229))

(assert (not d!15827))

(assert (not b!30414))

(assert (not b!30333))

(assert (not b!30086))

(assert (not b!30569))

(assert (not d!15751))

(assert (not b!30617))

(assert (not b!30373))

(assert (not b!30393))

(assert (not b!30579))

(assert (not b!30195))

(assert (not b!30475))

(assert (not b!30300))

(assert (not b!30383))

(assert (not b!30548))

(assert (not b!30536))

(assert (not d!15881))

(assert (not b!30196))

(assert (not b!30443))

(assert (not b!30235))

(assert (not b!30001))

(assert (not b!30463))

(assert (not b!30111))

(assert (not b!30307))

(assert (not b!30013))

(assert (not b!30174))

(assert (not b!30593))

(assert (not d!15635))

(assert (not b!30225))

(assert (not b!30269))

(assert (not b!30192))

(assert (not b!30585))

(assert (not b!30483))

(assert (not d!15851))

(assert (not d!15735))

(assert (not b!30297))

(assert (not b!30431))

(assert (not b!30016))

(assert (not b!30151))

(assert (not d!15703))

(assert (not d!15705))

(assert (not b!30480))

(assert (not b!30191))

(assert (not b!30309))

(assert (not b!29994))

(assert (not d!15737))

(assert (not b!30232))

(assert (not b!30038))

(assert (not b!30267))

(assert (not b!30136))

(assert (not b!30379))

(assert (not b!30515))

(assert (not b!30004))

(assert (not b!30407))

(assert (not b!30064))

(assert (not b!30261))

(assert (not b!30281))

(assert (not b!30061))

(assert (not b!30020))

(assert (not b!30008))

(assert (not b!30291))

(assert (not b!30324))

(assert (not b!30000))

(assert (not b!30277))

(assert (not d!15623))

(assert (not b!30159))

(assert (not b!30188))

(assert (not b!30452))

(assert tp_is_empty!179)

(assert (not d!15817))

(assert (not b!30143))

(assert (not b!30002))

(assert (not b!30254))

(assert (not b!30575))

(assert (not b!30172))

(assert (not b!29990))

(assert (not b!30522))

(assert (not d!15633))

(assert (not b!30022))

(assert (not b!30303))

(assert (not d!15749))

(assert (not b!30425))

(assert (not b!30244))

(assert (not b!30417))

(assert (not b!30329))

(assert (not b!30144))

(assert (not b!29992))

(assert (not b!30017))

(assert (not b!30542))

(assert (not d!15821))

(assert (not d!15707))

(assert (not b!30520))

(assert (not b!30540))

(assert (not b!30257))

(assert (not b!30060))

(assert (not b!30096))

(assert (not b!30517))

(assert (not b!30250))

(assert (not d!15823))

(assert (not b!30335))

(assert (not b!30394))

(assert (not d!15947))

(assert (not b!30247))

(assert (not b!30449))

(assert (not b!30437))

(assert (not b!30621))

(assert (not b!30412))

(assert (not b!30306))

(assert (not b!30121))

(assert (not b!30426))

(assert (not b!30416))

(assert (not b!30445))

(assert (not d!15883))

(assert (not b!30258))

(assert (not b!30497))

(assert (not b!30202))

(assert (not b!30253))

(assert (not b!30063))

(assert (not b!30347))

(assert (not b!30271))

(assert (not b!30514))

(assert (not b!30551))

(assert (not b!30068))

(assert (not b!30139))

(assert (not b!30243))

(assert (not b!30402))

(assert (not b!30175))

(assert (not b!29973))

(assert (not b!30496))

(assert (not b!29982))

(assert (not d!15931))

(assert (not b!30429))

(assert (not b!30498))

(assert (not b!29983))

(assert (not b!30538))

(assert (not b!30623))

(assert (not b!30461))

(assert (not b!30119))

(assert (not b!30251))

(assert (not b!30056))

(assert (not b!30532))

(assert (not d!15649))

(assert (not b!30513))

(assert (not b!30321))

(assert (not d!15945))

(assert (not b!30603))

(assert (not b!30544))

(assert (not b!30028))

(assert (not b!29974))

(assert (not b!30458))

(assert (not b!30613))

(assert (not d!15739))

(assert (not b!30179))

(assert (not b!30518))

(assert (not b!30283))

(assert (not d!15699))

(assert (not b!30123))

(assert (not b!30009))

(assert (not b!30104))

(assert (not b!30526))

(assert (not b!30491))

(assert (not b!30433))

(assert (not b!30249))

(assert (not b!30161))

(assert (not b!30519))

(assert (not b!30359))

(assert (not b!30131))

(assert (not b!30571))

(assert (not d!15825))

(assert (not b!30457))

(assert (not b!30078))

(assert (not b!30238))

(assert (not b!30422))

(assert (not b!30103))

(assert (not b!30439))

(assert (not b!30153))

(assert (not b!30287))

(assert (not b!30391))

(assert (not b!30105))

(assert (not b!30026))

(assert (not b!30345))

(assert (not b!30597))

(assert (not b!30311))

(assert (not b!30036))

(assert (not d!15809))

(assert (not b!30553))

(assert (not b!30199))

(assert (not b!30021))

(assert (not b!30589))

(assert (not b!30214))

(assert (not b!30207))

(assert (not b!30239))

(assert (not b!30615))

(assert (not b!30255))

(assert (not b!30460))

(assert (not b!30237))

(assert (not b!30149))

(assert (not b!30336))

(assert (not b!30362))

(assert (not b!30282))

(assert (not b!30453))

(assert (not b!30183))

(assert (not b!30087))

(assert (not d!15709))

(assert (not b!30024))

(assert (not d!15733))

(assert (not b!30128))

(assert (not b!30530))

(assert (not b!30184))

(assert (not b!30581))

(assert (not d!15741))

(assert (not b!30127))

(assert (not b!30176))

(assert (not d!15843))

(assert (not b!30503))

(assert (not b!30459))

(assert (not b!29988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

