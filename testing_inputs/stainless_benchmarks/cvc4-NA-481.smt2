; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3194 () Bool)

(assert start!3194)

(declare-fun b!17483 () Bool)

(declare-fun e!9447 () Bool)

(declare-fun tp!4133 () Bool)

(declare-fun tp!4132 () Bool)

(assert (=> b!17483 (= e!9447 (and tp!4133 tp!4132))))

(declare-fun b!17484 () Bool)

(declare-fun res!7256 () Bool)

(declare-fun e!9451 () Bool)

(assert (=> b!17484 (=> res!7256 e!9451)))

(declare-datatypes () ((T!1717 (T!1718 (val!31 Int)))))

(declare-datatypes () ((Conc!13 (CC!12 (left!657 Conc!13) (right!660 Conc!13)) (Single!12 (x!8724 T!1717)) (Empty!23))))

(declare-fun xs!637 () Conc!13)

(declare-datatypes () ((tuple2!110 (tuple2!111 (_1!55 Conc!13) (_2!55 Conc!13)))))

(declare-fun res!5668 () tuple2!110)

(declare-fun level!12 (Conc!13) Int)

(assert (=> b!17484 (= res!7256 (< (level!12 xs!637) (level!12 (_1!55 res!5668))))))

(declare-fun res!7257 () Bool)

(declare-fun e!9448 () Bool)

(assert (=> start!3194 (=> (not res!7257) (not e!9448))))

(declare-fun concInv!12 (Conc!13) Bool)

(assert (=> start!3194 (= res!7257 (concInv!12 xs!637))))

(assert (=> start!3194 e!9448))

(declare-fun e!9450 () Bool)

(assert (=> start!3194 e!9450))

(assert (=> start!3194 true))

(declare-fun e!9449 () Bool)

(assert (=> start!3194 (and e!9449 e!9447)))

(declare-fun b!17485 () Bool)

(declare-fun res!7258 () Bool)

(assert (=> b!17485 (=> res!7258 e!9451)))

(declare-fun balanced!13 (Conc!13) Bool)

(assert (=> b!17485 (= res!7258 (not (balanced!13 (_2!55 res!5668))))))

(declare-fun b!17486 () Bool)

(declare-fun res!7251 () Bool)

(assert (=> b!17486 (=> (not res!7251) (not e!9448))))

(assert (=> b!17486 (= res!7251 (= res!5668 (tuple2!111 (left!657 xs!637) (right!660 xs!637))))))

(declare-fun b!17487 () Bool)

(declare-fun tp_is_empty!61 () Bool)

(assert (=> b!17487 (= e!9449 tp_is_empty!61)))

(declare-fun b!17488 () Bool)

(declare-fun res!7260 () Bool)

(assert (=> b!17488 (=> res!7260 e!9451)))

(assert (=> b!17488 (= res!7260 (< (level!12 xs!637) (level!12 (_2!55 res!5668))))))

(declare-fun b!17489 () Bool)

(declare-fun res!7254 () Bool)

(assert (=> b!17489 (=> (not res!7254) (not e!9448))))

(assert (=> b!17489 (= res!7254 (balanced!13 xs!637))))

(declare-fun b!17490 () Bool)

(assert (=> b!17490 (= e!9450 tp_is_empty!61)))

(declare-fun b!17491 () Bool)

(assert (=> b!17491 (= e!9448 e!9451)))

(declare-fun res!7261 () Bool)

(assert (=> b!17491 (=> res!7261 e!9451)))

(assert (=> b!17491 (= res!7261 (not (concInv!12 (_1!55 res!5668))))))

(declare-fun b!17492 () Bool)

(declare-fun res!7259 () Bool)

(assert (=> b!17492 (=> res!7259 e!9451)))

(declare-fun n!315 () Int)

(declare-fun instSplitAxiom!10 (Conc!13 Int) Bool)

(assert (=> b!17492 (= res!7259 (not (instSplitAxiom!10 xs!637 n!315)))))

(declare-fun b!17493 () Bool)

(declare-fun res!7253 () Bool)

(assert (=> b!17493 (=> (not res!7253) (not e!9448))))

(assert (=> b!17493 (= res!7253 (and (not (is-Empty!23 xs!637)) (not (is-Single!12 xs!637))))))

(declare-fun b!17494 () Bool)

(declare-fun res!7255 () Bool)

(assert (=> b!17494 (=> res!7255 e!9451)))

(assert (=> b!17494 (= res!7255 (not (balanced!13 (_1!55 res!5668))))))

(declare-fun b!17495 () Bool)

(assert (=> b!17495 (= e!9447 tp_is_empty!61)))

(declare-fun b!17496 () Bool)

(declare-fun splitCorrectness!8 (tuple2!110 Conc!13 Int) Bool)

(assert (=> b!17496 (= e!9451 (not (splitCorrectness!8 res!5668 xs!637 n!315)))))

(declare-fun b!17497 () Bool)

(declare-fun res!7252 () Bool)

(assert (=> b!17497 (=> (not res!7252) (not e!9448))))

(declare-fun size!196 (Conc!13) Int)

(assert (=> b!17497 (= res!7252 (>= n!315 (size!196 (left!657 xs!637))))))

(declare-fun b!17498 () Bool)

(declare-fun res!7263 () Bool)

(assert (=> b!17498 (=> (not res!7263) (not e!9448))))

(assert (=> b!17498 (= res!7263 (<= n!315 (size!196 (left!657 xs!637))))))

(declare-fun b!17499 () Bool)

(declare-fun tp!4129 () Bool)

(declare-fun tp!4134 () Bool)

(assert (=> b!17499 (= e!9449 (and tp!4129 tp!4134))))

(declare-fun b!17500 () Bool)

(declare-fun res!7262 () Bool)

(assert (=> b!17500 (=> res!7262 e!9451)))

(assert (=> b!17500 (= res!7262 (not (concInv!12 (_2!55 res!5668))))))

(declare-fun b!17501 () Bool)

(declare-fun tp!4130 () Bool)

(declare-fun tp!4131 () Bool)

(assert (=> b!17501 (= e!9450 (and tp!4130 tp!4131))))

(assert (= (and start!3194 res!7257) b!17489))

(assert (= (and b!17489 res!7254) b!17493))

(assert (= (and b!17493 res!7253) b!17497))

(assert (= (and b!17497 res!7252) b!17498))

(assert (= (and b!17498 res!7263) b!17486))

(assert (= (and b!17486 res!7251) b!17491))

(assert (= (and b!17491 (not res!7261)) b!17494))

(assert (= (and b!17494 (not res!7255)) b!17500))

(assert (= (and b!17500 (not res!7262)) b!17485))

(assert (= (and b!17485 (not res!7258)) b!17484))

(assert (= (and b!17484 (not res!7256)) b!17488))

(assert (= (and b!17488 (not res!7260)) b!17492))

(assert (= (and b!17492 (not res!7259)) b!17496))

(assert (= (and start!3194 (is-CC!12 xs!637)) b!17501))

(assert (= (and start!3194 (is-Single!12 xs!637)) b!17490))

(assert (= (and start!3194 (is-CC!12 (_1!55 res!5668))) b!17499))

(assert (= (and start!3194 (is-Single!12 (_1!55 res!5668))) b!17487))

(assert (= (and start!3194 (is-CC!12 (_2!55 res!5668))) b!17483))

(assert (= (and start!3194 (is-Single!12 (_2!55 res!5668))) b!17495))

(declare-fun m!20665 () Bool)

(assert (=> b!17498 m!20665))

(declare-fun m!20667 () Bool)

(assert (=> b!17496 m!20667))

(declare-fun m!20669 () Bool)

(assert (=> b!17500 m!20669))

(declare-fun m!20671 () Bool)

(assert (=> b!17489 m!20671))

(declare-fun m!20673 () Bool)

(assert (=> b!17488 m!20673))

(declare-fun m!20675 () Bool)

(assert (=> b!17488 m!20675))

(declare-fun m!20677 () Bool)

(assert (=> b!17492 m!20677))

(assert (=> b!17484 m!20673))

(declare-fun m!20679 () Bool)

(assert (=> b!17484 m!20679))

(declare-fun m!20681 () Bool)

(assert (=> b!17491 m!20681))

(declare-fun m!20683 () Bool)

(assert (=> start!3194 m!20683))

(declare-fun m!20685 () Bool)

(assert (=> b!17485 m!20685))

(declare-fun m!20687 () Bool)

(assert (=> b!17494 m!20687))

(assert (=> b!17497 m!20665))

(push 1)

(assert (not b!17489))

(assert (not b!17488))

(assert (not b!17500))

(assert (not b!17501))

(assert (not b!17498))

(assert (not b!17499))

(assert tp_is_empty!61)

(assert (not b!17485))

(assert (not b!17492))

(assert (not start!3194))

(assert (not b!17496))

(assert (not b!17497))

(assert (not b!17484))

(assert (not b!17491))

(assert (not b!17483))

(assert (not b!17494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12033 () Bool)

(declare-fun res!7266 () Bool)

(declare-fun e!9454 () Bool)

(assert (=> d!12033 (=> (not res!7266) (not e!9454))))

(declare-datatypes () ((List!326 (Cons!320 (h!234 T!1717) (t!4307 List!326)) (Nil!321))))

(declare-fun toList!86 (Conc!13) List!326)

(declare-fun take!11 (List!326 Int) List!326)

(assert (=> d!12033 (= res!7266 (= (toList!86 (_1!55 res!5668)) (take!11 (toList!86 xs!637) n!315)))))

(assert (=> d!12033 (= (splitCorrectness!8 res!5668 xs!637 n!315) e!9454)))

(declare-fun b!17504 () Bool)

(declare-fun drop!9 (List!326 Int) List!326)

(assert (=> b!17504 (= e!9454 (= (toList!86 (_2!55 res!5668)) (drop!9 (toList!86 xs!637) n!315)))))

(assert (= (and d!12033 res!7266) b!17504))

(declare-fun m!20689 () Bool)

(assert (=> d!12033 m!20689))

(declare-fun m!20691 () Bool)

(assert (=> d!12033 m!20691))

(assert (=> d!12033 m!20691))

(declare-fun m!20693 () Bool)

(assert (=> d!12033 m!20693))

(declare-fun m!20695 () Bool)

(assert (=> b!17504 m!20695))

(assert (=> b!17504 m!20691))

(assert (=> b!17504 m!20691))

(declare-fun m!20697 () Bool)

(assert (=> b!17504 m!20697))

(assert (=> b!17496 d!12033))

(declare-fun d!12035 () Bool)

(declare-fun e!9457 () Bool)

(assert (=> d!12035 e!9457))

(declare-fun res!7269 () Bool)

(assert (=> d!12035 (=> res!7269 e!9457)))

(assert (=> d!12035 (= res!7269 (not (is-CC!12 xs!637)))))

(assert (=> d!12035 (= (instSplitAxiom!10 xs!637 n!315) true)))

(declare-fun b!17507 () Bool)

(declare-fun appendTakeDrop!7 (List!326 List!326 Int) Bool)

(assert (=> b!17507 (= e!9457 (appendTakeDrop!7 (toList!86 (left!657 xs!637)) (toList!86 (right!660 xs!637)) n!315))))

(assert (= (and d!12035 (not res!7269)) b!17507))

(declare-fun m!20699 () Bool)

(assert (=> b!17507 m!20699))

(declare-fun m!20701 () Bool)

(assert (=> b!17507 m!20701))

(assert (=> b!17507 m!20699))

(assert (=> b!17507 m!20701))

(declare-fun m!20703 () Bool)

(assert (=> b!17507 m!20703))

(assert (=> b!17492 d!12035))

(declare-fun b!17519 () Bool)

(declare-fun e!9462 () Int)

(assert (=> b!17519 (= e!9462 (+ (size!196 (left!657 (left!657 xs!637))) (size!196 (right!660 (left!657 xs!637)))))))

(declare-fun b!17518 () Bool)

(assert (=> b!17518 (= e!9462 1)))

(declare-fun d!12037 () Bool)

(declare-fun lt!2658 () Int)

(assert (=> d!12037 (>= lt!2658 0)))

(declare-fun e!9463 () Int)

(assert (=> d!12037 (= lt!2658 e!9463)))

(declare-fun c!4487 () Bool)

(assert (=> d!12037 (= c!4487 (is-Empty!23 (left!657 xs!637)))))

(assert (=> d!12037 (= (size!196 (left!657 xs!637)) lt!2658)))

(declare-fun b!17516 () Bool)

(assert (=> b!17516 (= e!9463 0)))

(declare-fun b!17517 () Bool)

(assert (=> b!17517 (= e!9463 e!9462)))

(declare-fun c!4486 () Bool)

(assert (=> b!17517 (= c!4486 (is-Single!12 (left!657 xs!637)))))

(assert (= (and b!17517 c!4486) b!17518))

(assert (= (and b!17517 (not c!4486)) b!17519))

(assert (= (and d!12037 c!4487) b!17516))

(assert (= (and d!12037 (not c!4487)) b!17517))

(declare-fun m!20705 () Bool)

(assert (=> b!17519 m!20705))

(declare-fun m!20707 () Bool)

(assert (=> b!17519 m!20707))

(assert (=> b!17498 d!12037))

(declare-fun b!17525 () Bool)

(declare-fun e!9466 () Int)

(declare-fun lt!2666 () Int)

(declare-fun lt!2665 () Int)

(assert (=> b!17525 (= e!9466 (+ 1 (ite (>= lt!2666 lt!2665) lt!2666 lt!2665)))))

(assert (=> b!17525 (= lt!2665 (level!12 (right!660 xs!637)))))

(assert (=> b!17525 (= lt!2666 (level!12 (left!657 xs!637)))))

(declare-fun d!12039 () Bool)

(declare-fun lt!2667 () Int)

(assert (=> d!12039 (>= lt!2667 0)))

(assert (=> d!12039 (= lt!2667 e!9466)))

(declare-fun c!4490 () Bool)

(assert (=> d!12039 (= c!4490 (or (is-Empty!23 xs!637) (is-Single!12 xs!637)))))

(assert (=> d!12039 (= (level!12 xs!637) lt!2667)))

(declare-fun b!17524 () Bool)

(assert (=> b!17524 (= e!9466 0)))

(assert (= (and d!12039 c!4490) b!17524))

(assert (= (and d!12039 (not c!4490)) b!17525))

(declare-fun m!20709 () Bool)

(assert (=> b!17525 m!20709))

(declare-fun m!20711 () Bool)

(assert (=> b!17525 m!20711))

(assert (=> b!17484 d!12039))

(declare-fun b!17527 () Bool)

(declare-fun e!9467 () Int)

(declare-fun lt!2669 () Int)

(declare-fun lt!2668 () Int)

(assert (=> b!17527 (= e!9467 (+ 1 (ite (>= lt!2669 lt!2668) lt!2669 lt!2668)))))

(assert (=> b!17527 (= lt!2668 (level!12 (right!660 (_1!55 res!5668))))))

(assert (=> b!17527 (= lt!2669 (level!12 (left!657 (_1!55 res!5668))))))

(declare-fun d!12041 () Bool)

(declare-fun lt!2670 () Int)

(assert (=> d!12041 (>= lt!2670 0)))

(assert (=> d!12041 (= lt!2670 e!9467)))

(declare-fun c!4491 () Bool)

(assert (=> d!12041 (= c!4491 (or (is-Empty!23 (_1!55 res!5668)) (is-Single!12 (_1!55 res!5668))))))

(assert (=> d!12041 (= (level!12 (_1!55 res!5668)) lt!2670)))

(declare-fun b!17526 () Bool)

(assert (=> b!17526 (= e!9467 0)))

(assert (= (and d!12041 c!4491) b!17526))

(assert (= (and d!12041 (not c!4491)) b!17527))

(declare-fun m!20713 () Bool)

(assert (=> b!17527 m!20713))

(declare-fun m!20715 () Bool)

(assert (=> b!17527 m!20715))

(assert (=> b!17484 d!12041))

(assert (=> b!17488 d!12039))

(declare-fun b!17529 () Bool)

(declare-fun e!9468 () Int)

(declare-fun lt!2672 () Int)

(declare-fun lt!2671 () Int)

(assert (=> b!17529 (= e!9468 (+ 1 (ite (>= lt!2672 lt!2671) lt!2672 lt!2671)))))

(assert (=> b!17529 (= lt!2671 (level!12 (right!660 (_2!55 res!5668))))))

(assert (=> b!17529 (= lt!2672 (level!12 (left!657 (_2!55 res!5668))))))

(declare-fun d!12043 () Bool)

(declare-fun lt!2673 () Int)

(assert (=> d!12043 (>= lt!2673 0)))

(assert (=> d!12043 (= lt!2673 e!9468)))

(declare-fun c!4492 () Bool)

(assert (=> d!12043 (= c!4492 (or (is-Empty!23 (_2!55 res!5668)) (is-Single!12 (_2!55 res!5668))))))

(assert (=> d!12043 (= (level!12 (_2!55 res!5668)) lt!2673)))

(declare-fun b!17528 () Bool)

(assert (=> b!17528 (= e!9468 0)))

(assert (= (and d!12043 c!4492) b!17528))

(assert (= (and d!12043 (not c!4492)) b!17529))

(declare-fun m!20717 () Bool)

(assert (=> b!17529 m!20717))

(declare-fun m!20719 () Bool)

(assert (=> b!17529 m!20719))

(assert (=> b!17488 d!12043))

(assert (=> b!17497 d!12037))

(declare-fun b!17540 () Bool)

(declare-fun res!7278 () Bool)

(declare-fun e!9473 () Bool)

(assert (=> b!17540 (=> (not res!7278) (not e!9473))))

(assert (=> b!17540 (= res!7278 (balanced!13 (left!657 (_1!55 res!5668))))))

(declare-fun b!17538 () Bool)

(declare-fun e!9474 () Bool)

(assert (=> b!17538 (= e!9474 e!9473)))

(declare-fun res!7279 () Bool)

(assert (=> b!17538 (=> (not res!7279) (not e!9473))))

(assert (=> b!17538 (= res!7279 (>= (- (level!12 (left!657 (_1!55 res!5668))) (level!12 (right!660 (_1!55 res!5668)))) (- 1)))))

(declare-fun d!12045 () Bool)

(declare-fun res!7281 () Bool)

(assert (=> d!12045 (=> res!7281 e!9474)))

(assert (=> d!12045 (= res!7281 (not (is-CC!12 (_1!55 res!5668))))))

(assert (=> d!12045 (= (balanced!13 (_1!55 res!5668)) e!9474)))

(declare-fun b!17541 () Bool)

(assert (=> b!17541 (= e!9473 (balanced!13 (right!660 (_1!55 res!5668))))))

(declare-fun b!17539 () Bool)

(declare-fun res!7280 () Bool)

(assert (=> b!17539 (=> (not res!7280) (not e!9473))))

(assert (=> b!17539 (= res!7280 (<= (- (level!12 (left!657 (_1!55 res!5668))) (level!12 (right!660 (_1!55 res!5668)))) 1))))

(assert (= (and d!12045 (not res!7281)) b!17538))

(assert (= (and b!17538 res!7279) b!17539))

(assert (= (and b!17539 res!7280) b!17540))

(assert (= (and b!17540 res!7278) b!17541))

(declare-fun m!20721 () Bool)

(assert (=> b!17540 m!20721))

(assert (=> b!17538 m!20715))

(assert (=> b!17538 m!20713))

(declare-fun m!20723 () Bool)

(assert (=> b!17541 m!20723))

(assert (=> b!17539 m!20715))

(assert (=> b!17539 m!20713))

(assert (=> b!17494 d!12045))

(declare-fun b!17544 () Bool)

(declare-fun res!7282 () Bool)

(declare-fun e!9475 () Bool)

(assert (=> b!17544 (=> (not res!7282) (not e!9475))))

(assert (=> b!17544 (= res!7282 (balanced!13 (left!657 xs!637)))))

(declare-fun b!17542 () Bool)

(declare-fun e!9476 () Bool)

(assert (=> b!17542 (= e!9476 e!9475)))

(declare-fun res!7283 () Bool)

(assert (=> b!17542 (=> (not res!7283) (not e!9475))))

(assert (=> b!17542 (= res!7283 (>= (- (level!12 (left!657 xs!637)) (level!12 (right!660 xs!637))) (- 1)))))

(declare-fun d!12047 () Bool)

(declare-fun res!7285 () Bool)

(assert (=> d!12047 (=> res!7285 e!9476)))

(assert (=> d!12047 (= res!7285 (not (is-CC!12 xs!637)))))

(assert (=> d!12047 (= (balanced!13 xs!637) e!9476)))

(declare-fun b!17545 () Bool)

(assert (=> b!17545 (= e!9475 (balanced!13 (right!660 xs!637)))))

(declare-fun b!17543 () Bool)

(declare-fun res!7284 () Bool)

(assert (=> b!17543 (=> (not res!7284) (not e!9475))))

(assert (=> b!17543 (= res!7284 (<= (- (level!12 (left!657 xs!637)) (level!12 (right!660 xs!637))) 1))))

(assert (= (and d!12047 (not res!7285)) b!17542))

(assert (= (and b!17542 res!7283) b!17543))

(assert (= (and b!17543 res!7284) b!17544))

(assert (= (and b!17544 res!7282) b!17545))

(declare-fun m!20725 () Bool)

(assert (=> b!17544 m!20725))

(assert (=> b!17542 m!20711))

(assert (=> b!17542 m!20709))

(declare-fun m!20727 () Bool)

(assert (=> b!17545 m!20727))

(assert (=> b!17543 m!20711))

(assert (=> b!17543 m!20709))

(assert (=> b!17489 d!12047))

(declare-fun b!17555 () Bool)

(declare-fun res!7297 () Bool)

(declare-fun e!9481 () Bool)

(assert (=> b!17555 (=> (not res!7297) (not e!9481))))

(declare-fun isEmpty!277 (Conc!13) Bool)

(assert (=> b!17555 (= res!7297 (not (isEmpty!277 (right!660 xs!637))))))

(declare-fun d!12049 () Bool)

(declare-fun res!7295 () Bool)

(declare-fun e!9482 () Bool)

(assert (=> d!12049 (=> res!7295 e!9482)))

(assert (=> d!12049 (= res!7295 (not (is-CC!12 xs!637)))))

(assert (=> d!12049 (= (concInv!12 xs!637) e!9482)))

(declare-fun b!17554 () Bool)

(assert (=> b!17554 (= e!9482 e!9481)))

(declare-fun res!7296 () Bool)

(assert (=> b!17554 (=> (not res!7296) (not e!9481))))

(assert (=> b!17554 (= res!7296 (not (isEmpty!277 (left!657 xs!637))))))

(declare-fun b!17556 () Bool)

(declare-fun res!7294 () Bool)

(assert (=> b!17556 (=> (not res!7294) (not e!9481))))

(assert (=> b!17556 (= res!7294 (concInv!12 (left!657 xs!637)))))

(declare-fun b!17557 () Bool)

(assert (=> b!17557 (= e!9481 (concInv!12 (right!660 xs!637)))))

(assert (= (and d!12049 (not res!7295)) b!17554))

(assert (= (and b!17554 res!7296) b!17555))

(assert (= (and b!17555 res!7297) b!17556))

(assert (= (and b!17556 res!7294) b!17557))

(declare-fun m!20729 () Bool)

(assert (=> b!17555 m!20729))

(declare-fun m!20731 () Bool)

(assert (=> b!17554 m!20731))

(declare-fun m!20733 () Bool)

(assert (=> b!17556 m!20733))

(declare-fun m!20735 () Bool)

(assert (=> b!17557 m!20735))

(assert (=> start!3194 d!12049))

(declare-fun b!17560 () Bool)

(declare-fun res!7298 () Bool)

(declare-fun e!9483 () Bool)

(assert (=> b!17560 (=> (not res!7298) (not e!9483))))

(assert (=> b!17560 (= res!7298 (balanced!13 (left!657 (_2!55 res!5668))))))

(declare-fun b!17558 () Bool)

(declare-fun e!9484 () Bool)

(assert (=> b!17558 (= e!9484 e!9483)))

(declare-fun res!7299 () Bool)

(assert (=> b!17558 (=> (not res!7299) (not e!9483))))

(assert (=> b!17558 (= res!7299 (>= (- (level!12 (left!657 (_2!55 res!5668))) (level!12 (right!660 (_2!55 res!5668)))) (- 1)))))

(declare-fun d!12051 () Bool)

(declare-fun res!7301 () Bool)

(assert (=> d!12051 (=> res!7301 e!9484)))

(assert (=> d!12051 (= res!7301 (not (is-CC!12 (_2!55 res!5668))))))

(assert (=> d!12051 (= (balanced!13 (_2!55 res!5668)) e!9484)))

(declare-fun b!17561 () Bool)

(assert (=> b!17561 (= e!9483 (balanced!13 (right!660 (_2!55 res!5668))))))

(declare-fun b!17559 () Bool)

(declare-fun res!7300 () Bool)

(assert (=> b!17559 (=> (not res!7300) (not e!9483))))

(assert (=> b!17559 (= res!7300 (<= (- (level!12 (left!657 (_2!55 res!5668))) (level!12 (right!660 (_2!55 res!5668)))) 1))))

(assert (= (and d!12051 (not res!7301)) b!17558))

(assert (= (and b!17558 res!7299) b!17559))

(assert (= (and b!17559 res!7300) b!17560))

(assert (= (and b!17560 res!7298) b!17561))

(declare-fun m!20737 () Bool)

(assert (=> b!17560 m!20737))

(assert (=> b!17558 m!20719))

(assert (=> b!17558 m!20717))

(declare-fun m!20739 () Bool)

(assert (=> b!17561 m!20739))

(assert (=> b!17559 m!20719))

(assert (=> b!17559 m!20717))

(assert (=> b!17485 d!12051))

(declare-fun b!17563 () Bool)

(declare-fun res!7305 () Bool)

(declare-fun e!9485 () Bool)

(assert (=> b!17563 (=> (not res!7305) (not e!9485))))

(assert (=> b!17563 (= res!7305 (not (isEmpty!277 (right!660 (_2!55 res!5668)))))))

(declare-fun d!12053 () Bool)

(declare-fun res!7303 () Bool)

(declare-fun e!9486 () Bool)

(assert (=> d!12053 (=> res!7303 e!9486)))

(assert (=> d!12053 (= res!7303 (not (is-CC!12 (_2!55 res!5668))))))

(assert (=> d!12053 (= (concInv!12 (_2!55 res!5668)) e!9486)))

(declare-fun b!17562 () Bool)

(assert (=> b!17562 (= e!9486 e!9485)))

(declare-fun res!7304 () Bool)

(assert (=> b!17562 (=> (not res!7304) (not e!9485))))

(assert (=> b!17562 (= res!7304 (not (isEmpty!277 (left!657 (_2!55 res!5668)))))))

(declare-fun b!17564 () Bool)

(declare-fun res!7302 () Bool)

(assert (=> b!17564 (=> (not res!7302) (not e!9485))))

(assert (=> b!17564 (= res!7302 (concInv!12 (left!657 (_2!55 res!5668))))))

(declare-fun b!17565 () Bool)

(assert (=> b!17565 (= e!9485 (concInv!12 (right!660 (_2!55 res!5668))))))

(assert (= (and d!12053 (not res!7303)) b!17562))

(assert (= (and b!17562 res!7304) b!17563))

(assert (= (and b!17563 res!7305) b!17564))

(assert (= (and b!17564 res!7302) b!17565))

(declare-fun m!20741 () Bool)

(assert (=> b!17563 m!20741))

(declare-fun m!20743 () Bool)

(assert (=> b!17562 m!20743))

(declare-fun m!20745 () Bool)

(assert (=> b!17564 m!20745))

(declare-fun m!20747 () Bool)

(assert (=> b!17565 m!20747))

(assert (=> b!17500 d!12053))

(declare-fun b!17567 () Bool)

(declare-fun res!7309 () Bool)

(declare-fun e!9487 () Bool)

(assert (=> b!17567 (=> (not res!7309) (not e!9487))))

(assert (=> b!17567 (= res!7309 (not (isEmpty!277 (right!660 (_1!55 res!5668)))))))

(declare-fun d!12055 () Bool)

(declare-fun res!7307 () Bool)

(declare-fun e!9488 () Bool)

(assert (=> d!12055 (=> res!7307 e!9488)))

(assert (=> d!12055 (= res!7307 (not (is-CC!12 (_1!55 res!5668))))))

(assert (=> d!12055 (= (concInv!12 (_1!55 res!5668)) e!9488)))

(declare-fun b!17566 () Bool)

(assert (=> b!17566 (= e!9488 e!9487)))

(declare-fun res!7308 () Bool)

(assert (=> b!17566 (=> (not res!7308) (not e!9487))))

(assert (=> b!17566 (= res!7308 (not (isEmpty!277 (left!657 (_1!55 res!5668)))))))

(declare-fun b!17568 () Bool)

(declare-fun res!7306 () Bool)

(assert (=> b!17568 (=> (not res!7306) (not e!9487))))

(assert (=> b!17568 (= res!7306 (concInv!12 (left!657 (_1!55 res!5668))))))

(declare-fun b!17569 () Bool)

(assert (=> b!17569 (= e!9487 (concInv!12 (right!660 (_1!55 res!5668))))))

(assert (= (and d!12055 (not res!7307)) b!17566))

(assert (= (and b!17566 res!7308) b!17567))

(assert (= (and b!17567 res!7309) b!17568))

(assert (= (and b!17568 res!7306) b!17569))

(declare-fun m!20749 () Bool)

(assert (=> b!17567 m!20749))

(declare-fun m!20751 () Bool)

(assert (=> b!17566 m!20751))

(declare-fun m!20753 () Bool)

(assert (=> b!17568 m!20753))

(declare-fun m!20755 () Bool)

(assert (=> b!17569 m!20755))

(assert (=> b!17491 d!12055))

(declare-fun b!17576 () Bool)

(declare-fun e!9491 () Bool)

(declare-fun tp!4139 () Bool)

(declare-fun tp!4140 () Bool)

(assert (=> b!17576 (= e!9491 (and tp!4139 tp!4140))))

(declare-fun b!17577 () Bool)

(assert (=> b!17577 (= e!9491 tp_is_empty!61)))

(assert (=> b!17499 (= tp!4129 e!9491)))

(assert (= (and b!17499 (is-CC!12 (left!657 (_1!55 res!5668)))) b!17576))

(assert (= (and b!17499 (is-Single!12 (left!657 (_1!55 res!5668)))) b!17577))

(declare-fun b!17578 () Bool)

(declare-fun e!9492 () Bool)

(declare-fun tp!4141 () Bool)

(declare-fun tp!4142 () Bool)

(assert (=> b!17578 (= e!9492 (and tp!4141 tp!4142))))

(declare-fun b!17579 () Bool)

(assert (=> b!17579 (= e!9492 tp_is_empty!61)))

(assert (=> b!17499 (= tp!4134 e!9492)))

(assert (= (and b!17499 (is-CC!12 (right!660 (_1!55 res!5668)))) b!17578))

(assert (= (and b!17499 (is-Single!12 (right!660 (_1!55 res!5668)))) b!17579))

(declare-fun b!17580 () Bool)

(declare-fun e!9493 () Bool)

(declare-fun tp!4143 () Bool)

(declare-fun tp!4144 () Bool)

(assert (=> b!17580 (= e!9493 (and tp!4143 tp!4144))))

(declare-fun b!17581 () Bool)

(assert (=> b!17581 (= e!9493 tp_is_empty!61)))

(assert (=> b!17501 (= tp!4130 e!9493)))

(assert (= (and b!17501 (is-CC!12 (left!657 xs!637))) b!17580))

(assert (= (and b!17501 (is-Single!12 (left!657 xs!637))) b!17581))

(declare-fun b!17582 () Bool)

(declare-fun e!9494 () Bool)

(declare-fun tp!4145 () Bool)

(declare-fun tp!4146 () Bool)

(assert (=> b!17582 (= e!9494 (and tp!4145 tp!4146))))

(declare-fun b!17583 () Bool)

(assert (=> b!17583 (= e!9494 tp_is_empty!61)))

(assert (=> b!17501 (= tp!4131 e!9494)))

(assert (= (and b!17501 (is-CC!12 (right!660 xs!637))) b!17582))

(assert (= (and b!17501 (is-Single!12 (right!660 xs!637))) b!17583))

(declare-fun b!17584 () Bool)

(declare-fun e!9495 () Bool)

(declare-fun tp!4147 () Bool)

(declare-fun tp!4148 () Bool)

(assert (=> b!17584 (= e!9495 (and tp!4147 tp!4148))))

(declare-fun b!17585 () Bool)

(assert (=> b!17585 (= e!9495 tp_is_empty!61)))

(assert (=> b!17483 (= tp!4133 e!9495)))

(assert (= (and b!17483 (is-CC!12 (left!657 (_2!55 res!5668)))) b!17584))

(assert (= (and b!17483 (is-Single!12 (left!657 (_2!55 res!5668)))) b!17585))

(declare-fun b!17586 () Bool)

(declare-fun e!9496 () Bool)

(declare-fun tp!4149 () Bool)

(declare-fun tp!4150 () Bool)

(assert (=> b!17586 (= e!9496 (and tp!4149 tp!4150))))

(declare-fun b!17587 () Bool)

(assert (=> b!17587 (= e!9496 tp_is_empty!61)))

(assert (=> b!17483 (= tp!4132 e!9496)))

(assert (= (and b!17483 (is-CC!12 (right!660 (_2!55 res!5668)))) b!17586))

(assert (= (and b!17483 (is-Single!12 (right!660 (_2!55 res!5668)))) b!17587))

(push 1)

(assert (not b!17559))

(assert (not b!17560))

(assert (not b!17555))

(assert (not b!17527))

(assert (not b!17544))

(assert (not b!17565))

(assert (not b!17504))

(assert (not b!17584))

(assert (not b!17543))

(assert (not d!12033))

(assert (not b!17519))

(assert (not b!17563))

(assert (not b!17576))

(assert (not b!17538))

(assert (not b!17562))

(assert (not b!17569))

(assert (not b!17566))

(assert (not b!17558))

(assert tp_is_empty!61)

(assert (not b!17525))

(assert (not b!17567))

(assert (not b!17568))

(assert (not b!17564))

(assert (not b!17529))

(assert (not b!17586))

(assert (not b!17540))

(assert (not b!17541))

(assert (not b!17507))

(assert (not b!17578))

(assert (not b!17545))

(assert (not b!17556))

(assert (not b!17582))

(assert (not b!17554))

(assert (not b!17542))

(assert (not b!17557))

(assert (not b!17561))

(assert (not b!17539))

(assert (not b!17580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!17589 () Bool)

(declare-fun e!9497 () Int)

(declare-fun lt!2675 () Int)

(declare-fun lt!2674 () Int)

(assert (=> b!17589 (= e!9497 (+ 1 (ite (>= lt!2675 lt!2674) lt!2675 lt!2674)))))

(assert (=> b!17589 (= lt!2674 (level!12 (right!660 (left!657 xs!637))))))

(assert (=> b!17589 (= lt!2675 (level!12 (left!657 (left!657 xs!637))))))

(declare-fun d!12057 () Bool)

(declare-fun lt!2676 () Int)

(assert (=> d!12057 (>= lt!2676 0)))

(assert (=> d!12057 (= lt!2676 e!9497)))

(declare-fun c!4493 () Bool)

(assert (=> d!12057 (= c!4493 (or (is-Empty!23 (left!657 xs!637)) (is-Single!12 (left!657 xs!637))))))

(assert (=> d!12057 (= (level!12 (left!657 xs!637)) lt!2676)))

(declare-fun b!17588 () Bool)

(assert (=> b!17588 (= e!9497 0)))

(assert (= (and d!12057 c!4493) b!17588))

(assert (= (and d!12057 (not c!4493)) b!17589))

(declare-fun m!20757 () Bool)

(assert (=> b!17589 m!20757))

(declare-fun m!20759 () Bool)

(assert (=> b!17589 m!20759))

(assert (=> b!17543 d!12057))

(declare-fun b!17591 () Bool)

(declare-fun e!9498 () Int)

(declare-fun lt!2678 () Int)

(declare-fun lt!2677 () Int)

(assert (=> b!17591 (= e!9498 (+ 1 (ite (>= lt!2678 lt!2677) lt!2678 lt!2677)))))

(assert (=> b!17591 (= lt!2677 (level!12 (right!660 (right!660 xs!637))))))

(assert (=> b!17591 (= lt!2678 (level!12 (left!657 (right!660 xs!637))))))

(declare-fun d!12059 () Bool)

(declare-fun lt!2679 () Int)

(assert (=> d!12059 (>= lt!2679 0)))

(assert (=> d!12059 (= lt!2679 e!9498)))

(declare-fun c!4494 () Bool)

(assert (=> d!12059 (= c!4494 (or (is-Empty!23 (right!660 xs!637)) (is-Single!12 (right!660 xs!637))))))

(assert (=> d!12059 (= (level!12 (right!660 xs!637)) lt!2679)))

(declare-fun b!17590 () Bool)

(assert (=> b!17590 (= e!9498 0)))

(assert (= (and d!12059 c!4494) b!17590))

(assert (= (and d!12059 (not c!4494)) b!17591))

(declare-fun m!20761 () Bool)

(assert (=> b!17591 m!20761))

(declare-fun m!20763 () Bool)

(assert (=> b!17591 m!20763))

(assert (=> b!17543 d!12059))

(declare-fun d!12061 () Bool)

(assert (=> d!12061 (= (isEmpty!277 (right!660 (_2!55 res!5668))) (= (right!660 (_2!55 res!5668)) Empty!23))))

(assert (=> b!17563 d!12061))

(declare-fun b!17594 () Bool)

(declare-fun res!7310 () Bool)

(declare-fun e!9499 () Bool)

(assert (=> b!17594 (=> (not res!7310) (not e!9499))))

(assert (=> b!17594 (= res!7310 (balanced!13 (left!657 (left!657 xs!637))))))

(declare-fun b!17592 () Bool)

(declare-fun e!9500 () Bool)

(assert (=> b!17592 (= e!9500 e!9499)))

(declare-fun res!7311 () Bool)

(assert (=> b!17592 (=> (not res!7311) (not e!9499))))

(assert (=> b!17592 (= res!7311 (>= (- (level!12 (left!657 (left!657 xs!637))) (level!12 (right!660 (left!657 xs!637)))) (- 1)))))

(declare-fun d!12063 () Bool)

(declare-fun res!7313 () Bool)

(assert (=> d!12063 (=> res!7313 e!9500)))

(assert (=> d!12063 (= res!7313 (not (is-CC!12 (left!657 xs!637))))))

(assert (=> d!12063 (= (balanced!13 (left!657 xs!637)) e!9500)))

(declare-fun b!17595 () Bool)

(assert (=> b!17595 (= e!9499 (balanced!13 (right!660 (left!657 xs!637))))))

(declare-fun b!17593 () Bool)

(declare-fun res!7312 () Bool)

(assert (=> b!17593 (=> (not res!7312) (not e!9499))))

(assert (=> b!17593 (= res!7312 (<= (- (level!12 (left!657 (left!657 xs!637))) (level!12 (right!660 (left!657 xs!637)))) 1))))

(assert (= (and d!12063 (not res!7313)) b!17592))

(assert (= (and b!17592 res!7311) b!17593))

(assert (= (and b!17593 res!7312) b!17594))

(assert (= (and b!17594 res!7310) b!17595))

(declare-fun m!20765 () Bool)

(assert (=> b!17594 m!20765))

(assert (=> b!17592 m!20759))

(assert (=> b!17592 m!20757))

(declare-fun m!20767 () Bool)

(assert (=> b!17595 m!20767))

(assert (=> b!17593 m!20759))

(assert (=> b!17593 m!20757))

(assert (=> b!17544 d!12063))

(declare-fun b!17597 () Bool)

(declare-fun e!9501 () Int)

(declare-fun lt!2681 () Int)

(declare-fun lt!2680 () Int)

(assert (=> b!17597 (= e!9501 (+ 1 (ite (>= lt!2681 lt!2680) lt!2681 lt!2680)))))

(assert (=> b!17597 (= lt!2680 (level!12 (right!660 (left!657 (_1!55 res!5668)))))))

(assert (=> b!17597 (= lt!2681 (level!12 (left!657 (left!657 (_1!55 res!5668)))))))

(declare-fun d!12065 () Bool)

(declare-fun lt!2682 () Int)

(assert (=> d!12065 (>= lt!2682 0)))

(assert (=> d!12065 (= lt!2682 e!9501)))

(declare-fun c!4495 () Bool)

(assert (=> d!12065 (= c!4495 (or (is-Empty!23 (left!657 (_1!55 res!5668))) (is-Single!12 (left!657 (_1!55 res!5668)))))))

(assert (=> d!12065 (= (level!12 (left!657 (_1!55 res!5668))) lt!2682)))

(declare-fun b!17596 () Bool)

(assert (=> b!17596 (= e!9501 0)))

(assert (= (and d!12065 c!4495) b!17596))

(assert (= (and d!12065 (not c!4495)) b!17597))

(declare-fun m!20769 () Bool)

(assert (=> b!17597 m!20769))

(declare-fun m!20771 () Bool)

(assert (=> b!17597 m!20771))

(assert (=> b!17538 d!12065))

(declare-fun b!17599 () Bool)

(declare-fun e!9502 () Int)

(declare-fun lt!2684 () Int)

(declare-fun lt!2683 () Int)

(assert (=> b!17599 (= e!9502 (+ 1 (ite (>= lt!2684 lt!2683) lt!2684 lt!2683)))))

(assert (=> b!17599 (= lt!2683 (level!12 (right!660 (right!660 (_1!55 res!5668)))))))

(assert (=> b!17599 (= lt!2684 (level!12 (left!657 (right!660 (_1!55 res!5668)))))))

(declare-fun d!12067 () Bool)

(declare-fun lt!2685 () Int)

(assert (=> d!12067 (>= lt!2685 0)))

(assert (=> d!12067 (= lt!2685 e!9502)))

(declare-fun c!4496 () Bool)

(assert (=> d!12067 (= c!4496 (or (is-Empty!23 (right!660 (_1!55 res!5668))) (is-Single!12 (right!660 (_1!55 res!5668)))))))

(assert (=> d!12067 (= (level!12 (right!660 (_1!55 res!5668))) lt!2685)))

(declare-fun b!17598 () Bool)

(assert (=> b!17598 (= e!9502 0)))

(assert (= (and d!12067 c!4496) b!17598))

(assert (= (and d!12067 (not c!4496)) b!17599))

(declare-fun m!20773 () Bool)

(assert (=> b!17599 m!20773))

(declare-fun m!20775 () Bool)

(assert (=> b!17599 m!20775))

(assert (=> b!17538 d!12067))

(declare-fun d!12069 () Bool)

(assert (=> d!12069 (= (isEmpty!277 (left!657 (_1!55 res!5668))) (= (left!657 (_1!55 res!5668)) Empty!23))))

(assert (=> b!17566 d!12069))

(declare-fun b!17602 () Bool)

(declare-fun res!7314 () Bool)

(declare-fun e!9503 () Bool)

(assert (=> b!17602 (=> (not res!7314) (not e!9503))))

(assert (=> b!17602 (= res!7314 (balanced!13 (left!657 (right!660 (_1!55 res!5668)))))))

(declare-fun b!17600 () Bool)

(declare-fun e!9504 () Bool)

(assert (=> b!17600 (= e!9504 e!9503)))

(declare-fun res!7315 () Bool)

(assert (=> b!17600 (=> (not res!7315) (not e!9503))))

(assert (=> b!17600 (= res!7315 (>= (- (level!12 (left!657 (right!660 (_1!55 res!5668)))) (level!12 (right!660 (right!660 (_1!55 res!5668))))) (- 1)))))

(declare-fun d!12071 () Bool)

(declare-fun res!7317 () Bool)

(assert (=> d!12071 (=> res!7317 e!9504)))

(assert (=> d!12071 (= res!7317 (not (is-CC!12 (right!660 (_1!55 res!5668)))))))

(assert (=> d!12071 (= (balanced!13 (right!660 (_1!55 res!5668))) e!9504)))

(declare-fun b!17603 () Bool)

(assert (=> b!17603 (= e!9503 (balanced!13 (right!660 (right!660 (_1!55 res!5668)))))))

(declare-fun b!17601 () Bool)

(declare-fun res!7316 () Bool)

(assert (=> b!17601 (=> (not res!7316) (not e!9503))))

(assert (=> b!17601 (= res!7316 (<= (- (level!12 (left!657 (right!660 (_1!55 res!5668)))) (level!12 (right!660 (right!660 (_1!55 res!5668))))) 1))))

(assert (= (and d!12071 (not res!7317)) b!17600))

(assert (= (and b!17600 res!7315) b!17601))

(assert (= (and b!17601 res!7316) b!17602))

(assert (= (and b!17602 res!7314) b!17603))

(declare-fun m!20777 () Bool)

(assert (=> b!17602 m!20777))

(assert (=> b!17600 m!20775))

(assert (=> b!17600 m!20773))

(declare-fun m!20779 () Bool)

(assert (=> b!17603 m!20779))

(assert (=> b!17601 m!20775))

(assert (=> b!17601 m!20773))

(assert (=> b!17541 d!12071))

(assert (=> b!17527 d!12067))

(assert (=> b!17527 d!12065))

(declare-fun d!12073 () Bool)

(assert (=> d!12073 (= (isEmpty!277 (right!660 xs!637)) (= (right!660 xs!637) Empty!23))))

(assert (=> b!17555 d!12073))

(assert (=> b!17525 d!12059))

(assert (=> b!17525 d!12057))

(declare-fun b!17606 () Bool)

(declare-fun res!7318 () Bool)

(declare-fun e!9505 () Bool)

(assert (=> b!17606 (=> (not res!7318) (not e!9505))))

(assert (=> b!17606 (= res!7318 (balanced!13 (left!657 (left!657 (_2!55 res!5668)))))))

(declare-fun b!17604 () Bool)

(declare-fun e!9506 () Bool)

(assert (=> b!17604 (= e!9506 e!9505)))

(declare-fun res!7319 () Bool)

(assert (=> b!17604 (=> (not res!7319) (not e!9505))))

(assert (=> b!17604 (= res!7319 (>= (- (level!12 (left!657 (left!657 (_2!55 res!5668)))) (level!12 (right!660 (left!657 (_2!55 res!5668))))) (- 1)))))

(declare-fun d!12075 () Bool)

(declare-fun res!7321 () Bool)

(assert (=> d!12075 (=> res!7321 e!9506)))

(assert (=> d!12075 (= res!7321 (not (is-CC!12 (left!657 (_2!55 res!5668)))))))

(assert (=> d!12075 (= (balanced!13 (left!657 (_2!55 res!5668))) e!9506)))

(declare-fun b!17607 () Bool)

(assert (=> b!17607 (= e!9505 (balanced!13 (right!660 (left!657 (_2!55 res!5668)))))))

(declare-fun b!17605 () Bool)

(declare-fun res!7320 () Bool)

(assert (=> b!17605 (=> (not res!7320) (not e!9505))))

(assert (=> b!17605 (= res!7320 (<= (- (level!12 (left!657 (left!657 (_2!55 res!5668)))) (level!12 (right!660 (left!657 (_2!55 res!5668))))) 1))))

(assert (= (and d!12075 (not res!7321)) b!17604))

(assert (= (and b!17604 res!7319) b!17605))

(assert (= (and b!17605 res!7320) b!17606))

(assert (= (and b!17606 res!7318) b!17607))

(declare-fun m!20781 () Bool)

(assert (=> b!17606 m!20781))

(declare-fun m!20783 () Bool)

(assert (=> b!17604 m!20783))

(declare-fun m!20785 () Bool)

(assert (=> b!17604 m!20785))

(declare-fun m!20787 () Bool)

(assert (=> b!17607 m!20787))

(assert (=> b!17605 m!20783))

(assert (=> b!17605 m!20785))

(assert (=> b!17560 d!12075))

(declare-fun d!12077 () Bool)

(declare-fun e!9523 () Bool)

(assert (=> d!12077 e!9523))

(declare-fun res!7333 () Bool)

(assert (=> d!12077 (=> (not res!7333) (not e!9523))))

(declare-fun e!9522 () List!326)

(declare-fun ++!11 (List!326 List!326) List!326)

(assert (=> d!12077 (= res!7333 (= (take!11 (++!11 (toList!86 (left!657 xs!637)) (toList!86 (right!660 xs!637))) n!315) e!9522))))

(declare-fun c!4506 () Bool)

(declare-fun size!197 (List!326) Int)

(assert (=> d!12077 (= c!4506 (< n!315 (size!197 (toList!86 (left!657 xs!637)))))))

(declare-fun lt!2688 () Bool)

(declare-fun e!9524 () Bool)

(assert (=> d!12077 (= lt!2688 e!9524)))

(declare-fun res!7334 () Bool)

(assert (=> d!12077 (=> res!7334 e!9524)))

(assert (=> d!12077 (= res!7334 (or (is-Nil!321 (toList!86 (left!657 xs!637))) (<= n!315 0)))))

(assert (=> d!12077 (= (appendTakeDrop!7 (toList!86 (left!657 xs!637)) (toList!86 (right!660 xs!637)) n!315) true)))

(declare-fun b!17628 () Bool)

(assert (=> b!17628 (= e!9524 (appendTakeDrop!7 (t!4307 (toList!86 (left!657 xs!637))) (toList!86 (right!660 xs!637)) (- n!315 1)))))

(declare-fun b!17629 () Bool)

(declare-fun e!9521 () List!326)

(assert (=> b!17629 (= e!9521 (++!11 (drop!9 (toList!86 (left!657 xs!637)) n!315) (toList!86 (right!660 xs!637))))))

(declare-fun b!17630 () Bool)

(declare-fun e!9520 () List!326)

(assert (=> b!17630 (= e!9520 (++!11 (toList!86 (left!657 xs!637)) (take!11 (toList!86 (right!660 xs!637)) (- n!315 (size!197 (toList!86 (left!657 xs!637)))))))))

(declare-fun b!17631 () Bool)

(declare-fun e!9519 () List!326)

(assert (=> b!17631 (= e!9519 (toList!86 (right!660 xs!637)))))

(declare-fun b!17632 () Bool)

(assert (=> b!17632 (= e!9522 (take!11 (toList!86 (left!657 xs!637)) n!315))))

(declare-fun b!17633 () Bool)

(assert (=> b!17633 (= e!9523 (= (drop!9 (++!11 (toList!86 (left!657 xs!637)) (toList!86 (right!660 xs!637))) n!315) e!9521))))

(declare-fun c!4505 () Bool)

(assert (=> b!17633 (= c!4505 (< n!315 (size!197 (toList!86 (left!657 xs!637)))))))

(declare-fun b!17634 () Bool)

(assert (=> b!17634 (= e!9519 (drop!9 (toList!86 (right!660 xs!637)) (- n!315 (size!197 (toList!86 (left!657 xs!637))))))))

(declare-fun b!17635 () Bool)

(assert (=> b!17635 (= e!9521 e!9519)))

(declare-fun c!4508 () Bool)

(assert (=> b!17635 (= c!4508 (> n!315 (size!197 (toList!86 (left!657 xs!637)))))))

(declare-fun b!17636 () Bool)

(assert (=> b!17636 (= e!9522 e!9520)))

(declare-fun c!4507 () Bool)

(assert (=> b!17636 (= c!4507 (> n!315 (size!197 (toList!86 (left!657 xs!637)))))))

(declare-fun b!17637 () Bool)

(assert (=> b!17637 (= e!9520 (toList!86 (left!657 xs!637)))))

(assert (= (and d!12077 (not res!7334)) b!17628))

(assert (= (and b!17636 c!4507) b!17630))

(assert (= (and b!17636 (not c!4507)) b!17637))

(assert (= (and d!12077 c!4506) b!17632))

(assert (= (and d!12077 (not c!4506)) b!17636))

(assert (= (and d!12077 res!7333) b!17633))

(assert (= (and b!17635 c!4508) b!17634))

(assert (= (and b!17635 (not c!4508)) b!17631))

(assert (= (and b!17633 c!4505) b!17629))

(assert (= (and b!17633 (not c!4505)) b!17635))

(assert (=> b!17634 m!20699))

(declare-fun m!20789 () Bool)

(assert (=> b!17634 m!20789))

(assert (=> b!17634 m!20701))

(declare-fun m!20791 () Bool)

(assert (=> b!17634 m!20791))

(assert (=> b!17628 m!20701))

(declare-fun m!20793 () Bool)

(assert (=> b!17628 m!20793))

(assert (=> b!17636 m!20699))

(assert (=> b!17636 m!20789))

(assert (=> d!12077 m!20699))

(assert (=> d!12077 m!20701))

(declare-fun m!20795 () Bool)

(assert (=> d!12077 m!20795))

(assert (=> d!12077 m!20795))

(declare-fun m!20797 () Bool)

(assert (=> d!12077 m!20797))

(assert (=> d!12077 m!20699))

(assert (=> d!12077 m!20789))

(assert (=> b!17632 m!20699))

(declare-fun m!20799 () Bool)

(assert (=> b!17632 m!20799))

(assert (=> b!17630 m!20699))

(assert (=> b!17630 m!20789))

(assert (=> b!17630 m!20701))

(declare-fun m!20801 () Bool)

(assert (=> b!17630 m!20801))

(assert (=> b!17630 m!20699))

(assert (=> b!17630 m!20801))

(declare-fun m!20803 () Bool)

(assert (=> b!17630 m!20803))

(assert (=> b!17629 m!20699))

(declare-fun m!20805 () Bool)

(assert (=> b!17629 m!20805))

(assert (=> b!17629 m!20805))

(assert (=> b!17629 m!20701))

(declare-fun m!20807 () Bool)

(assert (=> b!17629 m!20807))

(assert (=> b!17633 m!20699))

(assert (=> b!17633 m!20701))

(assert (=> b!17633 m!20795))

(assert (=> b!17633 m!20795))

(declare-fun m!20809 () Bool)

(assert (=> b!17633 m!20809))

(assert (=> b!17633 m!20699))

(assert (=> b!17633 m!20789))

(assert (=> b!17635 m!20699))

(assert (=> b!17635 m!20789))

(assert (=> b!17507 d!12077))

(declare-fun d!12079 () Bool)

(declare-fun lt!2691 () List!326)

(assert (=> d!12079 (= (size!197 lt!2691) (size!196 (left!657 xs!637)))))

(declare-fun e!9530 () List!326)

(assert (=> d!12079 (= lt!2691 e!9530)))

(declare-fun c!4513 () Bool)

(assert (=> d!12079 (= c!4513 (is-Empty!23 (left!657 xs!637)))))

(assert (=> d!12079 (= (toList!86 (left!657 xs!637)) lt!2691)))

(declare-fun b!17648 () Bool)

(declare-fun e!9529 () List!326)

(assert (=> b!17648 (= e!9529 (Cons!320 (x!8724 (left!657 xs!637)) Nil!321))))

(declare-fun b!17649 () Bool)

(assert (=> b!17649 (= e!9529 (++!11 (toList!86 (left!657 (left!657 xs!637))) (toList!86 (right!660 (left!657 xs!637)))))))

(declare-fun b!17647 () Bool)

(assert (=> b!17647 (= e!9530 e!9529)))

(declare-fun c!4514 () Bool)

(assert (=> b!17647 (= c!4514 (is-Single!12 (left!657 xs!637)))))

(declare-fun b!17646 () Bool)

(assert (=> b!17646 (= e!9530 Nil!321)))

(assert (= (and b!17647 c!4514) b!17648))

(assert (= (and b!17647 (not c!4514)) b!17649))

(assert (= (and d!12079 c!4513) b!17646))

(assert (= (and d!12079 (not c!4513)) b!17647))

(declare-fun m!20811 () Bool)

(assert (=> d!12079 m!20811))

(assert (=> d!12079 m!20665))

(declare-fun m!20813 () Bool)

(assert (=> b!17649 m!20813))

(declare-fun m!20815 () Bool)

(assert (=> b!17649 m!20815))

(assert (=> b!17649 m!20813))

(assert (=> b!17649 m!20815))

(declare-fun m!20817 () Bool)

(assert (=> b!17649 m!20817))

(assert (=> b!17507 d!12079))

(declare-fun d!12081 () Bool)

(declare-fun lt!2692 () List!326)

(assert (=> d!12081 (= (size!197 lt!2692) (size!196 (right!660 xs!637)))))

(declare-fun e!9532 () List!326)

(assert (=> d!12081 (= lt!2692 e!9532)))

(declare-fun c!4515 () Bool)

(assert (=> d!12081 (= c!4515 (is-Empty!23 (right!660 xs!637)))))

(assert (=> d!12081 (= (toList!86 (right!660 xs!637)) lt!2692)))

(declare-fun b!17652 () Bool)

(declare-fun e!9531 () List!326)

(assert (=> b!17652 (= e!9531 (Cons!320 (x!8724 (right!660 xs!637)) Nil!321))))

(declare-fun b!17653 () Bool)

(assert (=> b!17653 (= e!9531 (++!11 (toList!86 (left!657 (right!660 xs!637))) (toList!86 (right!660 (right!660 xs!637)))))))

(declare-fun b!17651 () Bool)

(assert (=> b!17651 (= e!9532 e!9531)))

(declare-fun c!4516 () Bool)

(assert (=> b!17651 (= c!4516 (is-Single!12 (right!660 xs!637)))))

(declare-fun b!17650 () Bool)

(assert (=> b!17650 (= e!9532 Nil!321)))

(assert (= (and b!17651 c!4516) b!17652))

(assert (= (and b!17651 (not c!4516)) b!17653))

(assert (= (and d!12081 c!4515) b!17650))

(assert (= (and d!12081 (not c!4515)) b!17651))

(declare-fun m!20819 () Bool)

(assert (=> d!12081 m!20819))

(declare-fun m!20821 () Bool)

(assert (=> d!12081 m!20821))

(declare-fun m!20823 () Bool)

(assert (=> b!17653 m!20823))

(declare-fun m!20825 () Bool)

(assert (=> b!17653 m!20825))

(assert (=> b!17653 m!20823))

(assert (=> b!17653 m!20825))

(declare-fun m!20827 () Bool)

(assert (=> b!17653 m!20827))

(assert (=> b!17507 d!12081))

(declare-fun b!17655 () Bool)

(declare-fun res!7339 () Bool)

(declare-fun e!9533 () Bool)

(assert (=> b!17655 (=> (not res!7339) (not e!9533))))

(assert (=> b!17655 (= res!7339 (not (isEmpty!277 (right!660 (left!657 (_2!55 res!5668))))))))

(declare-fun d!12083 () Bool)

(declare-fun res!7337 () Bool)

(declare-fun e!9534 () Bool)

(assert (=> d!12083 (=> res!7337 e!9534)))

(assert (=> d!12083 (= res!7337 (not (is-CC!12 (left!657 (_2!55 res!5668)))))))

(assert (=> d!12083 (= (concInv!12 (left!657 (_2!55 res!5668))) e!9534)))

(declare-fun b!17654 () Bool)

(assert (=> b!17654 (= e!9534 e!9533)))

(declare-fun res!7338 () Bool)

(assert (=> b!17654 (=> (not res!7338) (not e!9533))))

(assert (=> b!17654 (= res!7338 (not (isEmpty!277 (left!657 (left!657 (_2!55 res!5668))))))))

(declare-fun b!17656 () Bool)

(declare-fun res!7336 () Bool)

(assert (=> b!17656 (=> (not res!7336) (not e!9533))))

(assert (=> b!17656 (= res!7336 (concInv!12 (left!657 (left!657 (_2!55 res!5668)))))))

(declare-fun b!17657 () Bool)

(assert (=> b!17657 (= e!9533 (concInv!12 (right!660 (left!657 (_2!55 res!5668)))))))

(assert (= (and d!12083 (not res!7337)) b!17654))

(assert (= (and b!17654 res!7338) b!17655))

(assert (= (and b!17655 res!7339) b!17656))

(assert (= (and b!17656 res!7336) b!17657))

(declare-fun m!20829 () Bool)

(assert (=> b!17655 m!20829))

(declare-fun m!20831 () Bool)

(assert (=> b!17654 m!20831))

(declare-fun m!20833 () Bool)

(assert (=> b!17656 m!20833))

(declare-fun m!20835 () Bool)

(assert (=> b!17657 m!20835))

(assert (=> b!17564 d!12083))

(declare-fun b!17660 () Bool)

(declare-fun res!7340 () Bool)

(declare-fun e!9535 () Bool)

(assert (=> b!17660 (=> (not res!7340) (not e!9535))))

(assert (=> b!17660 (= res!7340 (balanced!13 (left!657 (left!657 (_1!55 res!5668)))))))

(declare-fun b!17658 () Bool)

(declare-fun e!9536 () Bool)

(assert (=> b!17658 (= e!9536 e!9535)))

(declare-fun res!7341 () Bool)

(assert (=> b!17658 (=> (not res!7341) (not e!9535))))

(assert (=> b!17658 (= res!7341 (>= (- (level!12 (left!657 (left!657 (_1!55 res!5668)))) (level!12 (right!660 (left!657 (_1!55 res!5668))))) (- 1)))))

(declare-fun d!12085 () Bool)

(declare-fun res!7343 () Bool)

(assert (=> d!12085 (=> res!7343 e!9536)))

(assert (=> d!12085 (= res!7343 (not (is-CC!12 (left!657 (_1!55 res!5668)))))))

(assert (=> d!12085 (= (balanced!13 (left!657 (_1!55 res!5668))) e!9536)))

(declare-fun b!17661 () Bool)

(assert (=> b!17661 (= e!9535 (balanced!13 (right!660 (left!657 (_1!55 res!5668)))))))

(declare-fun b!17659 () Bool)

(declare-fun res!7342 () Bool)

(assert (=> b!17659 (=> (not res!7342) (not e!9535))))

(assert (=> b!17659 (= res!7342 (<= (- (level!12 (left!657 (left!657 (_1!55 res!5668)))) (level!12 (right!660 (left!657 (_1!55 res!5668))))) 1))))

(assert (= (and d!12085 (not res!7343)) b!17658))

(assert (= (and b!17658 res!7341) b!17659))

(assert (= (and b!17659 res!7342) b!17660))

(assert (= (and b!17660 res!7340) b!17661))

(declare-fun m!20837 () Bool)

(assert (=> b!17660 m!20837))

(assert (=> b!17658 m!20771))

(assert (=> b!17658 m!20769))

(declare-fun m!20839 () Bool)

(assert (=> b!17661 m!20839))

(assert (=> b!17659 m!20771))

(assert (=> b!17659 m!20769))

(assert (=> b!17540 d!12085))

(declare-fun b!17663 () Bool)

(declare-fun res!7347 () Bool)

(declare-fun e!9537 () Bool)

(assert (=> b!17663 (=> (not res!7347) (not e!9537))))

(assert (=> b!17663 (= res!7347 (not (isEmpty!277 (right!660 (right!660 xs!637)))))))

(declare-fun d!12087 () Bool)

(declare-fun res!7345 () Bool)

(declare-fun e!9538 () Bool)

(assert (=> d!12087 (=> res!7345 e!9538)))

(assert (=> d!12087 (= res!7345 (not (is-CC!12 (right!660 xs!637))))))

(assert (=> d!12087 (= (concInv!12 (right!660 xs!637)) e!9538)))

(declare-fun b!17662 () Bool)

(assert (=> b!17662 (= e!9538 e!9537)))

(declare-fun res!7346 () Bool)

(assert (=> b!17662 (=> (not res!7346) (not e!9537))))

(assert (=> b!17662 (= res!7346 (not (isEmpty!277 (left!657 (right!660 xs!637)))))))

(declare-fun b!17664 () Bool)

(declare-fun res!7344 () Bool)

(assert (=> b!17664 (=> (not res!7344) (not e!9537))))

(assert (=> b!17664 (= res!7344 (concInv!12 (left!657 (right!660 xs!637))))))

(declare-fun b!17665 () Bool)

(assert (=> b!17665 (= e!9537 (concInv!12 (right!660 (right!660 xs!637))))))

(assert (= (and d!12087 (not res!7345)) b!17662))

(assert (= (and b!17662 res!7346) b!17663))

(assert (= (and b!17663 res!7347) b!17664))

(assert (= (and b!17664 res!7344) b!17665))

(declare-fun m!20841 () Bool)

(assert (=> b!17663 m!20841))

(declare-fun m!20843 () Bool)

(assert (=> b!17662 m!20843))

(declare-fun m!20845 () Bool)

(assert (=> b!17664 m!20845))

(declare-fun m!20847 () Bool)

(assert (=> b!17665 m!20847))

(assert (=> b!17557 d!12087))

(declare-fun b!17667 () Bool)

(declare-fun e!9539 () Int)

(declare-fun lt!2694 () Int)

(declare-fun lt!2693 () Int)

(assert (=> b!17667 (= e!9539 (+ 1 (ite (>= lt!2694 lt!2693) lt!2694 lt!2693)))))

(assert (=> b!17667 (= lt!2693 (level!12 (right!660 (left!657 (_2!55 res!5668)))))))

(assert (=> b!17667 (= lt!2694 (level!12 (left!657 (left!657 (_2!55 res!5668)))))))

(declare-fun d!12089 () Bool)

(declare-fun lt!2695 () Int)

(assert (=> d!12089 (>= lt!2695 0)))

(assert (=> d!12089 (= lt!2695 e!9539)))

(declare-fun c!4517 () Bool)

(assert (=> d!12089 (= c!4517 (or (is-Empty!23 (left!657 (_2!55 res!5668))) (is-Single!12 (left!657 (_2!55 res!5668)))))))

(assert (=> d!12089 (= (level!12 (left!657 (_2!55 res!5668))) lt!2695)))

(declare-fun b!17666 () Bool)

(assert (=> b!17666 (= e!9539 0)))

(assert (= (and d!12089 c!4517) b!17666))

(assert (= (and d!12089 (not c!4517)) b!17667))

(assert (=> b!17667 m!20785))

(assert (=> b!17667 m!20783))

(assert (=> b!17559 d!12089))

(declare-fun b!17669 () Bool)

(declare-fun e!9540 () Int)

(declare-fun lt!2697 () Int)

(declare-fun lt!2696 () Int)

(assert (=> b!17669 (= e!9540 (+ 1 (ite (>= lt!2697 lt!2696) lt!2697 lt!2696)))))

(assert (=> b!17669 (= lt!2696 (level!12 (right!660 (right!660 (_2!55 res!5668)))))))

(assert (=> b!17669 (= lt!2697 (level!12 (left!657 (right!660 (_2!55 res!5668)))))))

(declare-fun d!12091 () Bool)

(declare-fun lt!2698 () Int)

(assert (=> d!12091 (>= lt!2698 0)))

(assert (=> d!12091 (= lt!2698 e!9540)))

(declare-fun c!4518 () Bool)

(assert (=> d!12091 (= c!4518 (or (is-Empty!23 (right!660 (_2!55 res!5668))) (is-Single!12 (right!660 (_2!55 res!5668)))))))

(assert (=> d!12091 (= (level!12 (right!660 (_2!55 res!5668))) lt!2698)))

(declare-fun b!17668 () Bool)

(assert (=> b!17668 (= e!9540 0)))

(assert (= (and d!12091 c!4518) b!17668))

(assert (= (and d!12091 (not c!4518)) b!17669))

(declare-fun m!20849 () Bool)

(assert (=> b!17669 m!20849))

(declare-fun m!20851 () Bool)

(assert (=> b!17669 m!20851))

(assert (=> b!17559 d!12091))

(assert (=> b!17542 d!12057))

(assert (=> b!17542 d!12059))

(assert (=> b!17529 d!12091))

(assert (=> b!17529 d!12089))

(assert (=> b!17539 d!12065))

(assert (=> b!17539 d!12067))

(declare-fun b!17672 () Bool)

(declare-fun res!7348 () Bool)

(declare-fun e!9541 () Bool)

(assert (=> b!17672 (=> (not res!7348) (not e!9541))))

(assert (=> b!17672 (= res!7348 (balanced!13 (left!657 (right!660 xs!637))))))

(declare-fun b!17670 () Bool)

(declare-fun e!9542 () Bool)

(assert (=> b!17670 (= e!9542 e!9541)))

(declare-fun res!7349 () Bool)

(assert (=> b!17670 (=> (not res!7349) (not e!9541))))

(assert (=> b!17670 (= res!7349 (>= (- (level!12 (left!657 (right!660 xs!637))) (level!12 (right!660 (right!660 xs!637)))) (- 1)))))

(declare-fun d!12093 () Bool)

(declare-fun res!7351 () Bool)

(assert (=> d!12093 (=> res!7351 e!9542)))

(assert (=> d!12093 (= res!7351 (not (is-CC!12 (right!660 xs!637))))))

(assert (=> d!12093 (= (balanced!13 (right!660 xs!637)) e!9542)))

(declare-fun b!17673 () Bool)

(assert (=> b!17673 (= e!9541 (balanced!13 (right!660 (right!660 xs!637))))))

(declare-fun b!17671 () Bool)

(declare-fun res!7350 () Bool)

(assert (=> b!17671 (=> (not res!7350) (not e!9541))))

(assert (=> b!17671 (= res!7350 (<= (- (level!12 (left!657 (right!660 xs!637))) (level!12 (right!660 (right!660 xs!637)))) 1))))

(assert (= (and d!12093 (not res!7351)) b!17670))

(assert (= (and b!17670 res!7349) b!17671))

(assert (= (and b!17671 res!7350) b!17672))

(assert (= (and b!17672 res!7348) b!17673))

(declare-fun m!20853 () Bool)

(assert (=> b!17672 m!20853))

(assert (=> b!17670 m!20763))

(assert (=> b!17670 m!20761))

(declare-fun m!20855 () Bool)

(assert (=> b!17673 m!20855))

(assert (=> b!17671 m!20763))

(assert (=> b!17671 m!20761))

(assert (=> b!17545 d!12093))

(declare-fun b!17675 () Bool)

(declare-fun res!7355 () Bool)

(declare-fun e!9543 () Bool)

(assert (=> b!17675 (=> (not res!7355) (not e!9543))))

(assert (=> b!17675 (= res!7355 (not (isEmpty!277 (right!660 (right!660 (_1!55 res!5668))))))))

(declare-fun d!12095 () Bool)

(declare-fun res!7353 () Bool)

(declare-fun e!9544 () Bool)

(assert (=> d!12095 (=> res!7353 e!9544)))

(assert (=> d!12095 (= res!7353 (not (is-CC!12 (right!660 (_1!55 res!5668)))))))

(assert (=> d!12095 (= (concInv!12 (right!660 (_1!55 res!5668))) e!9544)))

(declare-fun b!17674 () Bool)

(assert (=> b!17674 (= e!9544 e!9543)))

(declare-fun res!7354 () Bool)

(assert (=> b!17674 (=> (not res!7354) (not e!9543))))

(assert (=> b!17674 (= res!7354 (not (isEmpty!277 (left!657 (right!660 (_1!55 res!5668))))))))

(declare-fun b!17676 () Bool)

(declare-fun res!7352 () Bool)

(assert (=> b!17676 (=> (not res!7352) (not e!9543))))

(assert (=> b!17676 (= res!7352 (concInv!12 (left!657 (right!660 (_1!55 res!5668)))))))

(declare-fun b!17677 () Bool)

(assert (=> b!17677 (= e!9543 (concInv!12 (right!660 (right!660 (_1!55 res!5668)))))))

(assert (= (and d!12095 (not res!7353)) b!17674))

(assert (= (and b!17674 res!7354) b!17675))

(assert (= (and b!17675 res!7355) b!17676))

(assert (= (and b!17676 res!7352) b!17677))

(declare-fun m!20857 () Bool)

(assert (=> b!17675 m!20857))

(declare-fun m!20859 () Bool)

(assert (=> b!17674 m!20859))

(declare-fun m!20861 () Bool)

(assert (=> b!17676 m!20861))

(declare-fun m!20863 () Bool)

(assert (=> b!17677 m!20863))

(assert (=> b!17569 d!12095))

(declare-fun d!12097 () Bool)

(declare-fun lt!2699 () List!326)

(assert (=> d!12097 (= (size!197 lt!2699) (size!196 (_1!55 res!5668)))))

(declare-fun e!9546 () List!326)

(assert (=> d!12097 (= lt!2699 e!9546)))

(declare-fun c!4519 () Bool)

(assert (=> d!12097 (= c!4519 (is-Empty!23 (_1!55 res!5668)))))

(assert (=> d!12097 (= (toList!86 (_1!55 res!5668)) lt!2699)))

(declare-fun b!17680 () Bool)

(declare-fun e!9545 () List!326)

(assert (=> b!17680 (= e!9545 (Cons!320 (x!8724 (_1!55 res!5668)) Nil!321))))

(declare-fun b!17681 () Bool)

(assert (=> b!17681 (= e!9545 (++!11 (toList!86 (left!657 (_1!55 res!5668))) (toList!86 (right!660 (_1!55 res!5668)))))))

(declare-fun b!17679 () Bool)

(assert (=> b!17679 (= e!9546 e!9545)))

(declare-fun c!4520 () Bool)

(assert (=> b!17679 (= c!4520 (is-Single!12 (_1!55 res!5668)))))

(declare-fun b!17678 () Bool)

(assert (=> b!17678 (= e!9546 Nil!321)))

(assert (= (and b!17679 c!4520) b!17680))

(assert (= (and b!17679 (not c!4520)) b!17681))

(assert (= (and d!12097 c!4519) b!17678))

(assert (= (and d!12097 (not c!4519)) b!17679))

(declare-fun m!20865 () Bool)

(assert (=> d!12097 m!20865))

(declare-fun m!20867 () Bool)

(assert (=> d!12097 m!20867))

(declare-fun m!20869 () Bool)

(assert (=> b!17681 m!20869))

(declare-fun m!20871 () Bool)

(assert (=> b!17681 m!20871))

(assert (=> b!17681 m!20869))

(assert (=> b!17681 m!20871))

(declare-fun m!20873 () Bool)

(assert (=> b!17681 m!20873))

(assert (=> d!12033 d!12097))

(declare-fun b!17696 () Bool)

(declare-fun e!9557 () Int)

(declare-fun e!9558 () Int)

(assert (=> b!17696 (= e!9557 e!9558)))

(declare-fun c!4527 () Bool)

(assert (=> b!17696 (= c!4527 (>= n!315 (size!197 (toList!86 xs!637))))))

(declare-fun b!17697 () Bool)

(declare-fun e!9556 () List!326)

(assert (=> b!17697 (= e!9556 Nil!321)))

(declare-fun b!17698 () Bool)

(declare-fun e!9555 () Bool)

(declare-fun lt!2702 () List!326)

(assert (=> b!17698 (= e!9555 (= (size!197 lt!2702) e!9557))))

(declare-fun c!4529 () Bool)

(assert (=> b!17698 (= c!4529 (<= n!315 0))))

(declare-fun b!17699 () Bool)

(assert (=> b!17699 (= e!9558 n!315)))

(declare-fun b!17700 () Bool)

(assert (=> b!17700 (= e!9557 0)))

(declare-fun d!12099 () Bool)

(assert (=> d!12099 e!9555))

(declare-fun res!7359 () Bool)

(assert (=> d!12099 (=> (not res!7359) (not e!9555))))

(declare-fun content!56 (List!326) (Set T!1717))

(assert (=> d!12099 (= res!7359 (subset (content!56 lt!2702) (content!56 (toList!86 xs!637))))))

(assert (=> d!12099 (= lt!2702 e!9556)))

(declare-fun c!4528 () Bool)

(assert (=> d!12099 (= c!4528 (or (is-Nil!321 (toList!86 xs!637)) (<= n!315 0)))))

(assert (=> d!12099 (= (take!11 (toList!86 xs!637) n!315) lt!2702)))

(declare-fun b!17701 () Bool)

(assert (=> b!17701 (= e!9558 (size!197 (toList!86 xs!637)))))

(declare-fun b!17702 () Bool)

(assert (=> b!17702 (= e!9556 (Cons!320 (h!234 (toList!86 xs!637)) (take!11 (t!4307 (toList!86 xs!637)) (- n!315 1))))))

(assert (= (and d!12099 c!4528) b!17697))

(assert (= (and d!12099 (not c!4528)) b!17702))

(assert (= (and d!12099 res!7359) b!17698))

(assert (= (and b!17696 c!4527) b!17701))

(assert (= (and b!17696 (not c!4527)) b!17699))

(assert (= (and b!17698 c!4529) b!17700))

(assert (= (and b!17698 (not c!4529)) b!17696))

(assert (=> b!17701 m!20691))

(declare-fun m!20875 () Bool)

(assert (=> b!17701 m!20875))

(declare-fun m!20877 () Bool)

(assert (=> b!17698 m!20877))

(assert (=> b!17696 m!20691))

(assert (=> b!17696 m!20875))

(declare-fun m!20879 () Bool)

(assert (=> d!12099 m!20879))

(assert (=> d!12099 m!20691))

(declare-fun m!20881 () Bool)

(assert (=> d!12099 m!20881))

(declare-fun m!20883 () Bool)

(assert (=> b!17702 m!20883))

(assert (=> d!12033 d!12099))

(declare-fun d!12101 () Bool)

(declare-fun lt!2703 () List!326)

(assert (=> d!12101 (= (size!197 lt!2703) (size!196 xs!637))))

(declare-fun e!9560 () List!326)

(assert (=> d!12101 (= lt!2703 e!9560)))

(declare-fun c!4530 () Bool)

(assert (=> d!12101 (= c!4530 (is-Empty!23 xs!637))))

(assert (=> d!12101 (= (toList!86 xs!637) lt!2703)))

(declare-fun b!17705 () Bool)

(declare-fun e!9559 () List!326)

(assert (=> b!17705 (= e!9559 (Cons!320 (x!8724 xs!637) Nil!321))))

(declare-fun b!17706 () Bool)

(assert (=> b!17706 (= e!9559 (++!11 (toList!86 (left!657 xs!637)) (toList!86 (right!660 xs!637))))))

(declare-fun b!17704 () Bool)

(assert (=> b!17704 (= e!9560 e!9559)))

(declare-fun c!4531 () Bool)

(assert (=> b!17704 (= c!4531 (is-Single!12 xs!637))))

(declare-fun b!17703 () Bool)

(assert (=> b!17703 (= e!9560 Nil!321)))

(assert (= (and b!17704 c!4531) b!17705))

(assert (= (and b!17704 (not c!4531)) b!17706))

(assert (= (and d!12101 c!4530) b!17703))

(assert (= (and d!12101 (not c!4530)) b!17704))

(declare-fun m!20885 () Bool)

(assert (=> d!12101 m!20885))

(declare-fun m!20887 () Bool)

(assert (=> d!12101 m!20887))

(assert (=> b!17706 m!20699))

(assert (=> b!17706 m!20701))

(assert (=> b!17706 m!20699))

(assert (=> b!17706 m!20701))

(assert (=> b!17706 m!20795))

(assert (=> d!12033 d!12101))

(declare-fun d!12103 () Bool)

(declare-fun lt!2704 () List!326)

(assert (=> d!12103 (= (size!197 lt!2704) (size!196 (_2!55 res!5668)))))

(declare-fun e!9562 () List!326)

(assert (=> d!12103 (= lt!2704 e!9562)))

(declare-fun c!4532 () Bool)

(assert (=> d!12103 (= c!4532 (is-Empty!23 (_2!55 res!5668)))))

(assert (=> d!12103 (= (toList!86 (_2!55 res!5668)) lt!2704)))

(declare-fun b!17709 () Bool)

(declare-fun e!9561 () List!326)

(assert (=> b!17709 (= e!9561 (Cons!320 (x!8724 (_2!55 res!5668)) Nil!321))))

(declare-fun b!17710 () Bool)

(assert (=> b!17710 (= e!9561 (++!11 (toList!86 (left!657 (_2!55 res!5668))) (toList!86 (right!660 (_2!55 res!5668)))))))

(declare-fun b!17708 () Bool)

(assert (=> b!17708 (= e!9562 e!9561)))

(declare-fun c!4533 () Bool)

(assert (=> b!17708 (= c!4533 (is-Single!12 (_2!55 res!5668)))))

(declare-fun b!17707 () Bool)

(assert (=> b!17707 (= e!9562 Nil!321)))

(assert (= (and b!17708 c!4533) b!17709))

(assert (= (and b!17708 (not c!4533)) b!17710))

(assert (= (and d!12103 c!4532) b!17707))

(assert (= (and d!12103 (not c!4532)) b!17708))

(declare-fun m!20889 () Bool)

(assert (=> d!12103 m!20889))

(declare-fun m!20891 () Bool)

(assert (=> d!12103 m!20891))

(declare-fun m!20893 () Bool)

(assert (=> b!17710 m!20893))

(declare-fun m!20895 () Bool)

(assert (=> b!17710 m!20895))

(assert (=> b!17710 m!20893))

(assert (=> b!17710 m!20895))

(declare-fun m!20897 () Bool)

(assert (=> b!17710 m!20897))

(assert (=> b!17504 d!12103))

(declare-fun d!12105 () Bool)

(declare-fun e!9577 () Bool)

(assert (=> d!12105 e!9577))

(declare-fun res!7366 () Bool)

(assert (=> d!12105 (=> (not res!7366) (not e!9577))))

(declare-fun lt!2709 () List!326)

(assert (=> d!12105 (= res!7366 (subset (content!56 lt!2709) (content!56 (toList!86 xs!637))))))

(declare-fun e!9574 () List!326)

(assert (=> d!12105 (= lt!2709 e!9574)))

(declare-fun c!4545 () Bool)

(assert (=> d!12105 (= c!4545 (is-Nil!321 (toList!86 xs!637)))))

(assert (=> d!12105 (= (drop!9 (toList!86 xs!637) n!315) lt!2709)))

(declare-fun b!17729 () Bool)

(declare-fun e!9575 () List!326)

(assert (=> b!17729 (= e!9575 (Cons!320 (h!234 (toList!86 xs!637)) (t!4307 (toList!86 xs!637))))))

(declare-fun b!17730 () Bool)

(declare-fun e!9576 () Int)

(declare-fun lt!2710 () Int)

(assert (=> b!17730 (= e!9576 lt!2710)))

(declare-fun b!17731 () Bool)

(declare-fun e!9573 () Int)

(assert (=> b!17731 (= e!9576 e!9573)))

(declare-fun c!4544 () Bool)

(assert (=> b!17731 (= c!4544 (>= n!315 lt!2710))))

(declare-fun b!17732 () Bool)

(assert (=> b!17732 (= e!9574 e!9575)))

(declare-fun c!4542 () Bool)

(assert (=> b!17732 (= c!4542 (<= n!315 0))))

(declare-fun b!17733 () Bool)

(assert (=> b!17733 (= e!9573 0)))

(declare-fun b!17734 () Bool)

(assert (=> b!17734 (= e!9575 (drop!9 (t!4307 (toList!86 xs!637)) (- n!315 1)))))

(declare-fun b!17735 () Bool)

(assert (=> b!17735 (= e!9573 (- (size!197 (toList!86 xs!637)) n!315))))

(declare-fun b!17736 () Bool)

(assert (=> b!17736 (= e!9574 Nil!321)))

(declare-fun b!17737 () Bool)

(assert (=> b!17737 (= e!9577 (= (size!197 lt!2709) e!9576))))

(declare-fun c!4543 () Bool)

(assert (=> b!17737 (= c!4543 (<= n!315 0))))

(assert (=> b!17737 (= lt!2710 (size!197 (toList!86 xs!637)))))

(assert (= (and b!17732 c!4542) b!17729))

(assert (= (and b!17732 (not c!4542)) b!17734))

(assert (= (and d!12105 c!4545) b!17736))

(assert (= (and d!12105 (not c!4545)) b!17732))

(assert (= (and d!12105 res!7366) b!17737))

(assert (= (and b!17731 c!4544) b!17733))

(assert (= (and b!17731 (not c!4544)) b!17735))

(assert (= (and b!17737 c!4543) b!17730))

(assert (= (and b!17737 (not c!4543)) b!17731))

(declare-fun m!20899 () Bool)

(assert (=> d!12105 m!20899))

(assert (=> d!12105 m!20691))

(assert (=> d!12105 m!20881))

(declare-fun m!20901 () Bool)

(assert (=> b!17734 m!20901))

(assert (=> b!17735 m!20691))

(assert (=> b!17735 m!20875))

(declare-fun m!20903 () Bool)

(assert (=> b!17737 m!20903))

(assert (=> b!17737 m!20691))

(assert (=> b!17737 m!20875))

(assert (=> b!17504 d!12105))

(assert (=> b!17504 d!12101))

(declare-fun b!17741 () Bool)

(declare-fun e!9578 () Int)

(assert (=> b!17741 (= e!9578 (+ (size!196 (left!657 (left!657 (left!657 xs!637)))) (size!196 (right!660 (left!657 (left!657 xs!637))))))))

(declare-fun b!17740 () Bool)

(assert (=> b!17740 (= e!9578 1)))

(declare-fun d!12107 () Bool)

(declare-fun lt!2711 () Int)

(assert (=> d!12107 (>= lt!2711 0)))

(declare-fun e!9579 () Int)

(assert (=> d!12107 (= lt!2711 e!9579)))

(declare-fun c!4547 () Bool)

(assert (=> d!12107 (= c!4547 (is-Empty!23 (left!657 (left!657 xs!637))))))

(assert (=> d!12107 (= (size!196 (left!657 (left!657 xs!637))) lt!2711)))

(declare-fun b!17738 () Bool)

(assert (=> b!17738 (= e!9579 0)))

(declare-fun b!17739 () Bool)

(assert (=> b!17739 (= e!9579 e!9578)))

(declare-fun c!4546 () Bool)

(assert (=> b!17739 (= c!4546 (is-Single!12 (left!657 (left!657 xs!637))))))

(assert (= (and b!17739 c!4546) b!17740))

(assert (= (and b!17739 (not c!4546)) b!17741))

(assert (= (and d!12107 c!4547) b!17738))

(assert (= (and d!12107 (not c!4547)) b!17739))

(declare-fun m!20905 () Bool)

(assert (=> b!17741 m!20905))

(declare-fun m!20907 () Bool)

(assert (=> b!17741 m!20907))

(assert (=> b!17519 d!12107))

(declare-fun b!17745 () Bool)

(declare-fun e!9580 () Int)

(assert (=> b!17745 (= e!9580 (+ (size!196 (left!657 (right!660 (left!657 xs!637)))) (size!196 (right!660 (right!660 (left!657 xs!637))))))))

(declare-fun b!17744 () Bool)

(assert (=> b!17744 (= e!9580 1)))

(declare-fun d!12109 () Bool)

(declare-fun lt!2712 () Int)

(assert (=> d!12109 (>= lt!2712 0)))

(declare-fun e!9581 () Int)

(assert (=> d!12109 (= lt!2712 e!9581)))

(declare-fun c!4549 () Bool)

(assert (=> d!12109 (= c!4549 (is-Empty!23 (right!660 (left!657 xs!637))))))

(assert (=> d!12109 (= (size!196 (right!660 (left!657 xs!637))) lt!2712)))

(declare-fun b!17742 () Bool)

(assert (=> b!17742 (= e!9581 0)))

(declare-fun b!17743 () Bool)

(assert (=> b!17743 (= e!9581 e!9580)))

(declare-fun c!4548 () Bool)

(assert (=> b!17743 (= c!4548 (is-Single!12 (right!660 (left!657 xs!637))))))

(assert (= (and b!17743 c!4548) b!17744))

(assert (= (and b!17743 (not c!4548)) b!17745))

(assert (= (and d!12109 c!4549) b!17742))

(assert (= (and d!12109 (not c!4549)) b!17743))

(declare-fun m!20909 () Bool)

(assert (=> b!17745 m!20909))

(declare-fun m!20911 () Bool)

(assert (=> b!17745 m!20911))

(assert (=> b!17519 d!12109))

(declare-fun d!12111 () Bool)

(assert (=> d!12111 (= (isEmpty!277 (left!657 (_2!55 res!5668))) (= (left!657 (_2!55 res!5668)) Empty!23))))

(assert (=> b!17562 d!12111))

(declare-fun b!17747 () Bool)

(declare-fun res!7370 () Bool)

(declare-fun e!9582 () Bool)

(assert (=> b!17747 (=> (not res!7370) (not e!9582))))

(assert (=> b!17747 (= res!7370 (not (isEmpty!277 (right!660 (right!660 (_2!55 res!5668))))))))

(declare-fun d!12113 () Bool)

(declare-fun res!7368 () Bool)

(declare-fun e!9583 () Bool)

(assert (=> d!12113 (=> res!7368 e!9583)))

(assert (=> d!12113 (= res!7368 (not (is-CC!12 (right!660 (_2!55 res!5668)))))))

(assert (=> d!12113 (= (concInv!12 (right!660 (_2!55 res!5668))) e!9583)))

(declare-fun b!17746 () Bool)

(assert (=> b!17746 (= e!9583 e!9582)))

(declare-fun res!7369 () Bool)

(assert (=> b!17746 (=> (not res!7369) (not e!9582))))

(assert (=> b!17746 (= res!7369 (not (isEmpty!277 (left!657 (right!660 (_2!55 res!5668))))))))

(declare-fun b!17748 () Bool)

(declare-fun res!7367 () Bool)

(assert (=> b!17748 (=> (not res!7367) (not e!9582))))

(assert (=> b!17748 (= res!7367 (concInv!12 (left!657 (right!660 (_2!55 res!5668)))))))

(declare-fun b!17749 () Bool)

(assert (=> b!17749 (= e!9582 (concInv!12 (right!660 (right!660 (_2!55 res!5668)))))))

(assert (= (and d!12113 (not res!7368)) b!17746))

(assert (= (and b!17746 res!7369) b!17747))

(assert (= (and b!17747 res!7370) b!17748))

(assert (= (and b!17748 res!7367) b!17749))

(declare-fun m!20913 () Bool)

(assert (=> b!17747 m!20913))

(declare-fun m!20915 () Bool)

(assert (=> b!17746 m!20915))

(declare-fun m!20917 () Bool)

(assert (=> b!17748 m!20917))

(declare-fun m!20919 () Bool)

(assert (=> b!17749 m!20919))

(assert (=> b!17565 d!12113))

(declare-fun b!17752 () Bool)

(declare-fun res!7371 () Bool)

(declare-fun e!9584 () Bool)

(assert (=> b!17752 (=> (not res!7371) (not e!9584))))

(assert (=> b!17752 (= res!7371 (balanced!13 (left!657 (right!660 (_2!55 res!5668)))))))

(declare-fun b!17750 () Bool)

(declare-fun e!9585 () Bool)

(assert (=> b!17750 (= e!9585 e!9584)))

(declare-fun res!7372 () Bool)

(assert (=> b!17750 (=> (not res!7372) (not e!9584))))

(assert (=> b!17750 (= res!7372 (>= (- (level!12 (left!657 (right!660 (_2!55 res!5668)))) (level!12 (right!660 (right!660 (_2!55 res!5668))))) (- 1)))))

(declare-fun d!12115 () Bool)

(declare-fun res!7374 () Bool)

(assert (=> d!12115 (=> res!7374 e!9585)))

(assert (=> d!12115 (= res!7374 (not (is-CC!12 (right!660 (_2!55 res!5668)))))))

(assert (=> d!12115 (= (balanced!13 (right!660 (_2!55 res!5668))) e!9585)))

(declare-fun b!17753 () Bool)

(assert (=> b!17753 (= e!9584 (balanced!13 (right!660 (right!660 (_2!55 res!5668)))))))

(declare-fun b!17751 () Bool)

(declare-fun res!7373 () Bool)

(assert (=> b!17751 (=> (not res!7373) (not e!9584))))

(assert (=> b!17751 (= res!7373 (<= (- (level!12 (left!657 (right!660 (_2!55 res!5668)))) (level!12 (right!660 (right!660 (_2!55 res!5668))))) 1))))

(assert (= (and d!12115 (not res!7374)) b!17750))

(assert (= (and b!17750 res!7372) b!17751))

(assert (= (and b!17751 res!7373) b!17752))

(assert (= (and b!17752 res!7371) b!17753))

(declare-fun m!20921 () Bool)

(assert (=> b!17752 m!20921))

(assert (=> b!17750 m!20851))

(assert (=> b!17750 m!20849))

(declare-fun m!20923 () Bool)

(assert (=> b!17753 m!20923))

(assert (=> b!17751 m!20851))

(assert (=> b!17751 m!20849))

(assert (=> b!17561 d!12115))

(declare-fun d!12117 () Bool)

(assert (=> d!12117 (= (isEmpty!277 (right!660 (_1!55 res!5668))) (= (right!660 (_1!55 res!5668)) Empty!23))))

(assert (=> b!17567 d!12117))

(declare-fun d!12119 () Bool)

(assert (=> d!12119 (= (isEmpty!277 (left!657 xs!637)) (= (left!657 xs!637) Empty!23))))

(assert (=> b!17554 d!12119))

(declare-fun b!17755 () Bool)

(declare-fun res!7378 () Bool)

(declare-fun e!9586 () Bool)

(assert (=> b!17755 (=> (not res!7378) (not e!9586))))

(assert (=> b!17755 (= res!7378 (not (isEmpty!277 (right!660 (left!657 xs!637)))))))

(declare-fun d!12121 () Bool)

(declare-fun res!7376 () Bool)

(declare-fun e!9587 () Bool)

(assert (=> d!12121 (=> res!7376 e!9587)))

(assert (=> d!12121 (= res!7376 (not (is-CC!12 (left!657 xs!637))))))

(assert (=> d!12121 (= (concInv!12 (left!657 xs!637)) e!9587)))

(declare-fun b!17754 () Bool)

(assert (=> b!17754 (= e!9587 e!9586)))

(declare-fun res!7377 () Bool)

(assert (=> b!17754 (=> (not res!7377) (not e!9586))))

(assert (=> b!17754 (= res!7377 (not (isEmpty!277 (left!657 (left!657 xs!637)))))))

(declare-fun b!17756 () Bool)

(declare-fun res!7375 () Bool)

(assert (=> b!17756 (=> (not res!7375) (not e!9586))))

(assert (=> b!17756 (= res!7375 (concInv!12 (left!657 (left!657 xs!637))))))

(declare-fun b!17757 () Bool)

(assert (=> b!17757 (= e!9586 (concInv!12 (right!660 (left!657 xs!637))))))

(assert (= (and d!12121 (not res!7376)) b!17754))

(assert (= (and b!17754 res!7377) b!17755))

(assert (= (and b!17755 res!7378) b!17756))

(assert (= (and b!17756 res!7375) b!17757))

(declare-fun m!20925 () Bool)

(assert (=> b!17755 m!20925))

(declare-fun m!20927 () Bool)

(assert (=> b!17754 m!20927))

(declare-fun m!20929 () Bool)

(assert (=> b!17756 m!20929))

(declare-fun m!20931 () Bool)

(assert (=> b!17757 m!20931))

(assert (=> b!17556 d!12121))

(declare-fun b!17759 () Bool)

(declare-fun res!7382 () Bool)

(declare-fun e!9588 () Bool)

(assert (=> b!17759 (=> (not res!7382) (not e!9588))))

(assert (=> b!17759 (= res!7382 (not (isEmpty!277 (right!660 (left!657 (_1!55 res!5668))))))))

(declare-fun d!12123 () Bool)

(declare-fun res!7380 () Bool)

(declare-fun e!9589 () Bool)

(assert (=> d!12123 (=> res!7380 e!9589)))

(assert (=> d!12123 (= res!7380 (not (is-CC!12 (left!657 (_1!55 res!5668)))))))

(assert (=> d!12123 (= (concInv!12 (left!657 (_1!55 res!5668))) e!9589)))

(declare-fun b!17758 () Bool)

(assert (=> b!17758 (= e!9589 e!9588)))

(declare-fun res!7381 () Bool)

(assert (=> b!17758 (=> (not res!7381) (not e!9588))))

(assert (=> b!17758 (= res!7381 (not (isEmpty!277 (left!657 (left!657 (_1!55 res!5668))))))))

(declare-fun b!17760 () Bool)

(declare-fun res!7379 () Bool)

(assert (=> b!17760 (=> (not res!7379) (not e!9588))))

(assert (=> b!17760 (= res!7379 (concInv!12 (left!657 (left!657 (_1!55 res!5668)))))))

(declare-fun b!17761 () Bool)

(assert (=> b!17761 (= e!9588 (concInv!12 (right!660 (left!657 (_1!55 res!5668)))))))

(assert (= (and d!12123 (not res!7380)) b!17758))

(assert (= (and b!17758 res!7381) b!17759))

(assert (= (and b!17759 res!7382) b!17760))

(assert (= (and b!17760 res!7379) b!17761))

(declare-fun m!20933 () Bool)

(assert (=> b!17759 m!20933))

(declare-fun m!20935 () Bool)

(assert (=> b!17758 m!20935))

(declare-fun m!20937 () Bool)

(assert (=> b!17760 m!20937))

(declare-fun m!20939 () Bool)

(assert (=> b!17761 m!20939))

(assert (=> b!17568 d!12123))

(assert (=> b!17558 d!12089))

(assert (=> b!17558 d!12091))

(declare-fun b!17762 () Bool)

(declare-fun e!9590 () Bool)

(declare-fun tp!4151 () Bool)

(declare-fun tp!4152 () Bool)

(assert (=> b!17762 (= e!9590 (and tp!4151 tp!4152))))

(declare-fun b!17763 () Bool)

(assert (=> b!17763 (= e!9590 tp_is_empty!61)))

(assert (=> b!17578 (= tp!4141 e!9590)))

(assert (= (and b!17578 (is-CC!12 (left!657 (right!660 (_1!55 res!5668))))) b!17762))

(assert (= (and b!17578 (is-Single!12 (left!657 (right!660 (_1!55 res!5668))))) b!17763))

(declare-fun b!17764 () Bool)

(declare-fun e!9591 () Bool)

(declare-fun tp!4153 () Bool)

(declare-fun tp!4154 () Bool)

(assert (=> b!17764 (= e!9591 (and tp!4153 tp!4154))))

(declare-fun b!17765 () Bool)

(assert (=> b!17765 (= e!9591 tp_is_empty!61)))

(assert (=> b!17578 (= tp!4142 e!9591)))

(assert (= (and b!17578 (is-CC!12 (right!660 (right!660 (_1!55 res!5668))))) b!17764))

(assert (= (and b!17578 (is-Single!12 (right!660 (right!660 (_1!55 res!5668))))) b!17765))

(declare-fun b!17766 () Bool)

(declare-fun e!9592 () Bool)

(declare-fun tp!4155 () Bool)

(declare-fun tp!4156 () Bool)

(assert (=> b!17766 (= e!9592 (and tp!4155 tp!4156))))

(declare-fun b!17767 () Bool)

(assert (=> b!17767 (= e!9592 tp_is_empty!61)))

(assert (=> b!17582 (= tp!4145 e!9592)))

(assert (= (and b!17582 (is-CC!12 (left!657 (right!660 xs!637)))) b!17766))

(assert (= (and b!17582 (is-Single!12 (left!657 (right!660 xs!637)))) b!17767))

(declare-fun b!17768 () Bool)

(declare-fun e!9593 () Bool)

(declare-fun tp!4157 () Bool)

(declare-fun tp!4158 () Bool)

(assert (=> b!17768 (= e!9593 (and tp!4157 tp!4158))))

(declare-fun b!17769 () Bool)

(assert (=> b!17769 (= e!9593 tp_is_empty!61)))

(assert (=> b!17582 (= tp!4146 e!9593)))

(assert (= (and b!17582 (is-CC!12 (right!660 (right!660 xs!637)))) b!17768))

(assert (= (and b!17582 (is-Single!12 (right!660 (right!660 xs!637)))) b!17769))

(declare-fun b!17770 () Bool)

(declare-fun e!9594 () Bool)

(declare-fun tp!4159 () Bool)

(declare-fun tp!4160 () Bool)

(assert (=> b!17770 (= e!9594 (and tp!4159 tp!4160))))

(declare-fun b!17771 () Bool)

(assert (=> b!17771 (= e!9594 tp_is_empty!61)))

(assert (=> b!17584 (= tp!4147 e!9594)))

(assert (= (and b!17584 (is-CC!12 (left!657 (left!657 (_2!55 res!5668))))) b!17770))

(assert (= (and b!17584 (is-Single!12 (left!657 (left!657 (_2!55 res!5668))))) b!17771))

(declare-fun b!17772 () Bool)

(declare-fun e!9595 () Bool)

(declare-fun tp!4161 () Bool)

(declare-fun tp!4162 () Bool)

(assert (=> b!17772 (= e!9595 (and tp!4161 tp!4162))))

(declare-fun b!17773 () Bool)

(assert (=> b!17773 (= e!9595 tp_is_empty!61)))

(assert (=> b!17584 (= tp!4148 e!9595)))

(assert (= (and b!17584 (is-CC!12 (right!660 (left!657 (_2!55 res!5668))))) b!17772))

(assert (= (and b!17584 (is-Single!12 (right!660 (left!657 (_2!55 res!5668))))) b!17773))

(declare-fun b!17774 () Bool)

(declare-fun e!9596 () Bool)

(declare-fun tp!4163 () Bool)

(declare-fun tp!4164 () Bool)

(assert (=> b!17774 (= e!9596 (and tp!4163 tp!4164))))

(declare-fun b!17775 () Bool)

(assert (=> b!17775 (= e!9596 tp_is_empty!61)))

(assert (=> b!17586 (= tp!4149 e!9596)))

(assert (= (and b!17586 (is-CC!12 (left!657 (right!660 (_2!55 res!5668))))) b!17774))

(assert (= (and b!17586 (is-Single!12 (left!657 (right!660 (_2!55 res!5668))))) b!17775))

(declare-fun b!17776 () Bool)

(declare-fun e!9597 () Bool)

(declare-fun tp!4165 () Bool)

(declare-fun tp!4166 () Bool)

(assert (=> b!17776 (= e!9597 (and tp!4165 tp!4166))))

(declare-fun b!17777 () Bool)

(assert (=> b!17777 (= e!9597 tp_is_empty!61)))

(assert (=> b!17586 (= tp!4150 e!9597)))

(assert (= (and b!17586 (is-CC!12 (right!660 (right!660 (_2!55 res!5668))))) b!17776))

(assert (= (and b!17586 (is-Single!12 (right!660 (right!660 (_2!55 res!5668))))) b!17777))

(declare-fun b!17778 () Bool)

(declare-fun e!9598 () Bool)

(declare-fun tp!4167 () Bool)

(declare-fun tp!4168 () Bool)

(assert (=> b!17778 (= e!9598 (and tp!4167 tp!4168))))

(declare-fun b!17779 () Bool)

(assert (=> b!17779 (= e!9598 tp_is_empty!61)))

(assert (=> b!17580 (= tp!4143 e!9598)))

(assert (= (and b!17580 (is-CC!12 (left!657 (left!657 xs!637)))) b!17778))

(assert (= (and b!17580 (is-Single!12 (left!657 (left!657 xs!637)))) b!17779))

(declare-fun b!17780 () Bool)

(declare-fun e!9599 () Bool)

(declare-fun tp!4169 () Bool)

(declare-fun tp!4170 () Bool)

(assert (=> b!17780 (= e!9599 (and tp!4169 tp!4170))))

(declare-fun b!17781 () Bool)

(assert (=> b!17781 (= e!9599 tp_is_empty!61)))

(assert (=> b!17580 (= tp!4144 e!9599)))

(assert (= (and b!17580 (is-CC!12 (right!660 (left!657 xs!637)))) b!17780))

(assert (= (and b!17580 (is-Single!12 (right!660 (left!657 xs!637)))) b!17781))

(declare-fun b!17782 () Bool)

(declare-fun e!9600 () Bool)

(declare-fun tp!4171 () Bool)

(declare-fun tp!4172 () Bool)

(assert (=> b!17782 (= e!9600 (and tp!4171 tp!4172))))

(declare-fun b!17783 () Bool)

(assert (=> b!17783 (= e!9600 tp_is_empty!61)))

(assert (=> b!17576 (= tp!4139 e!9600)))

(assert (= (and b!17576 (is-CC!12 (left!657 (left!657 (_1!55 res!5668))))) b!17782))

(assert (= (and b!17576 (is-Single!12 (left!657 (left!657 (_1!55 res!5668))))) b!17783))

(declare-fun b!17784 () Bool)

(declare-fun e!9601 () Bool)

(declare-fun tp!4173 () Bool)

(declare-fun tp!4174 () Bool)

(assert (=> b!17784 (= e!9601 (and tp!4173 tp!4174))))

(declare-fun b!17785 () Bool)

(assert (=> b!17785 (= e!9601 tp_is_empty!61)))

(assert (=> b!17576 (= tp!4140 e!9601)))

(assert (= (and b!17576 (is-CC!12 (right!660 (left!657 (_1!55 res!5668))))) b!17784))

(assert (= (and b!17576 (is-Single!12 (right!660 (left!657 (_1!55 res!5668))))) b!17785))

(push 1)

(assert (not b!17780))

(assert (not b!17782))

(assert (not b!17594))

(assert (not b!17601))

(assert (not b!17745))

(assert (not b!17737))

(assert (not b!17592))

(assert (not b!17747))

(assert (not b!17636))

(assert (not b!17654))

(assert (not b!17758))

(assert (not b!17649))

(assert (not d!12097))

(assert (not b!17633))

(assert (not b!17667))

(assert (not d!12079))

(assert (not b!17748))

(assert (not d!12099))

(assert (not b!17671))

(assert (not b!17604))

(assert (not b!17768))

(assert (not b!17681))

(assert (not b!17655))

(assert (not d!12081))

(assert (not b!17629))

(assert (not b!17661))

(assert (not b!17628))

(assert (not b!17653))

(assert (not b!17772))

(assert (not b!17776))

(assert (not b!17741))

(assert (not b!17774))

(assert (not b!17784))

(assert (not b!17606))

(assert (not b!17591))

(assert (not b!17702))

(assert (not b!17670))

(assert (not b!17672))

(assert (not b!17759))

(assert (not b!17660))

(assert tp_is_empty!61)

(assert (not b!17766))

(assert (not b!17701))

(assert (not b!17752))

(assert (not b!17735))

(assert (not b!17634))

(assert (not b!17630))

(assert (not b!17710))

(assert (not d!12103))

(assert (not b!17746))

(assert (not b!17764))

(assert (not b!17698))

(assert (not b!17754))

(assert (not b!17757))

(assert (not b!17761))

(assert (not b!17664))

(assert (not b!17599))

(assert (not b!17676))

(assert (not b!17751))

(assert (not b!17600))

(assert (not b!17659))

(assert (not b!17734))

(assert (not b!17760))

(assert (not b!17756))

(assert (not b!17770))

(assert (not d!12101))

(assert (not b!17778))

(assert (not b!17656))

(assert (not b!17657))

(assert (not b!17602))

(assert (not b!17597))

(assert (not b!17674))

(assert (not b!17753))

(assert (not b!17762))

(assert (not b!17605))

(assert (not d!12105))

(assert (not b!17607))

(assert (not b!17632))

(assert (not b!17635))

(assert (not b!17750))

(assert (not b!17663))

(assert (not b!17677))

(assert (not b!17593))

(assert (not b!17749))

(assert (not b!17755))

(assert (not b!17675))

(assert (not b!17662))

(assert (not b!17669))

(assert (not b!17696))

(assert (not b!17603))

(assert (not b!17673))

(assert (not b!17665))

(assert (not b!17706))

(assert (not d!12077))

(assert (not b!17658))

(assert (not b!17595))

(assert (not b!17589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

