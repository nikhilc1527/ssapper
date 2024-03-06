; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3820 () Bool)

(assert start!3820)

(declare-fun b!25503 () Bool)

(declare-fun e!13120 () Bool)

(declare-fun tp_is_empty!163 () Bool)

(assert (=> b!25503 (= e!13120 tp_is_empty!163)))

(declare-fun b!25504 () Bool)

(declare-fun e!13124 () Bool)

(assert (=> b!25504 (= e!13124 tp_is_empty!163)))

(declare-fun b!25505 () Bool)

(declare-fun res!11523 () Bool)

(declare-fun e!13121 () Bool)

(assert (=> b!25505 (=> (not res!11523) (not e!13121))))

(declare-datatypes () ((T!1819 (T!1820 (val!82 Int)))))

(declare-datatypes () ((Conc!59 (CC!58 (left!703 Conc!59) (right!706 Conc!59)) (Single!58 (x!8901 T!1819)) (Empty!69))))

(declare-fun xs!533 () Conc!59)

(declare-fun balanced!54 (Conc!59) Bool)

(assert (=> b!25505 (= res!11523 (balanced!54 xs!533))))

(declare-fun b!25506 () Bool)

(declare-fun res!11516 () Bool)

(assert (=> b!25506 (=> (not res!11516) (not e!13121))))

(declare-fun ys!77 () Conc!59)

(declare-fun level!47 (Conc!59) Int)

(assert (=> b!25506 (= res!11516 (>= (level!47 (right!706 ys!77)) (level!47 (left!703 ys!77))))))

(declare-fun b!25507 () Bool)

(declare-fun tp!5588 () Bool)

(declare-fun tp!5584 () Bool)

(assert (=> b!25507 (= e!13124 (and tp!5588 tp!5584))))

(declare-fun b!25508 () Bool)

(declare-fun e!13119 () Bool)

(assert (=> b!25508 (= e!13119 tp_is_empty!163)))

(declare-fun b!25509 () Bool)

(declare-fun res!11524 () Bool)

(assert (=> b!25509 (=> (not res!11524) (not e!13121))))

(declare-fun xs!554 () Conc!59)

(declare-fun ys!98 () Conc!59)

(assert (=> b!25509 (= res!11524 (and (= xs!554 xs!533) (= ys!98 (left!703 ys!77))))))

(declare-fun b!25510 () Bool)

(declare-fun res!11512 () Bool)

(assert (=> b!25510 (=> (not res!11512) (not e!13121))))

(declare-fun concInv!53 (Conc!59) Bool)

(assert (=> b!25510 (= res!11512 (concInv!53 ys!77))))

(declare-fun b!25511 () Bool)

(declare-fun res!11525 () Bool)

(declare-fun e!13122 () Bool)

(assert (=> b!25511 (=> res!11525 e!13122)))

(declare-fun isEmpty!315 (Conc!59) Bool)

(assert (=> b!25511 (= res!11525 (isEmpty!315 xs!554))))

(declare-fun b!25512 () Bool)

(declare-fun e!13123 () Bool)

(declare-fun tp!5585 () Bool)

(declare-fun tp!5589 () Bool)

(assert (=> b!25512 (= e!13123 (and tp!5585 tp!5589))))

(declare-fun b!25513 () Bool)

(declare-fun res!11521 () Bool)

(assert (=> b!25513 (=> (not res!11521) (not e!13121))))

(declare-fun diff!6 () Int)

(assert (=> b!25513 (= res!11521 (and (or (< diff!6 (- 1)) (> diff!6 1)) (>= diff!6 (- 1))))))

(declare-fun b!25514 () Bool)

(declare-fun tp!5583 () Bool)

(declare-fun tp!5582 () Bool)

(assert (=> b!25514 (= e!13120 (and tp!5583 tp!5582))))

(declare-fun b!25515 () Bool)

(assert (=> b!25515 (= e!13121 e!13122)))

(declare-fun res!11522 () Bool)

(assert (=> b!25515 (=> res!11522 e!13122)))

(assert (=> b!25515 (= res!11522 (not (concInv!53 xs!554)))))

(declare-fun b!25516 () Bool)

(declare-fun res!11514 () Bool)

(assert (=> b!25516 (=> (not res!11514) (not e!13121))))

(assert (=> b!25516 (= res!11514 (not (isEmpty!315 ys!77)))))

(declare-fun b!25517 () Bool)

(declare-fun res!11519 () Bool)

(assert (=> b!25517 (=> res!11519 e!13122)))

(assert (=> b!25517 (= res!11519 (not (concInv!53 ys!98)))))

(declare-fun b!25518 () Bool)

(declare-fun tp!5587 () Bool)

(declare-fun tp!5586 () Bool)

(assert (=> b!25518 (= e!13119 (and tp!5587 tp!5586))))

(declare-fun b!25519 () Bool)

(assert (=> b!25519 (= e!13123 tp_is_empty!163)))

(declare-fun b!25520 () Bool)

(declare-fun res!11517 () Bool)

(assert (=> b!25520 (=> (not res!11517) (not e!13121))))

(assert (=> b!25520 (= res!11517 (not (isEmpty!315 xs!533)))))

(declare-fun b!25521 () Bool)

(declare-fun res!11513 () Bool)

(assert (=> b!25521 (=> (not res!11513) (not e!13121))))

(assert (=> b!25521 (= res!11513 (balanced!54 ys!77))))

(declare-fun b!25522 () Bool)

(declare-fun res!11518 () Bool)

(assert (=> b!25522 (=> (not res!11518) (not e!13121))))

(assert (=> b!25522 (= res!11518 (= diff!6 (- (level!47 ys!77) (level!47 xs!533))))))

(declare-fun res!11526 () Bool)

(assert (=> start!3820 (=> (not res!11526) (not e!13121))))

(assert (=> start!3820 (= res!11526 (concInv!53 xs!533))))

(assert (=> start!3820 e!13121))

(assert (=> start!3820 true))

(assert (=> start!3820 e!13119))

(assert (=> start!3820 e!13120))

(assert (=> start!3820 e!13123))

(assert (=> start!3820 e!13124))

(declare-fun b!25523 () Bool)

(declare-fun res!11515 () Bool)

(assert (=> b!25523 (=> res!11515 e!13122)))

(assert (=> b!25523 (= res!11515 (not (balanced!54 xs!554)))))

(declare-fun b!25524 () Bool)

(assert (=> b!25524 (= e!13122 (isEmpty!315 ys!98))))

(declare-fun b!25525 () Bool)

(declare-fun res!11520 () Bool)

(assert (=> b!25525 (=> res!11520 e!13122)))

(assert (=> b!25525 (= res!11520 (not (balanced!54 ys!98)))))

(assert (= (and start!3820 res!11526) b!25505))

(assert (= (and b!25505 res!11523) b!25510))

(assert (= (and b!25510 res!11512) b!25521))

(assert (= (and b!25521 res!11513) b!25520))

(assert (= (and b!25520 res!11517) b!25516))

(assert (= (and b!25516 res!11514) b!25522))

(assert (= (and b!25522 res!11518) b!25513))

(assert (= (and b!25513 res!11521) b!25506))

(assert (= (and b!25506 res!11516) b!25509))

(assert (= (and b!25509 res!11524) b!25515))

(assert (= (and b!25515 (not res!11522)) b!25523))

(assert (= (and b!25523 (not res!11515)) b!25517))

(assert (= (and b!25517 (not res!11519)) b!25525))

(assert (= (and b!25525 (not res!11520)) b!25511))

(assert (= (and b!25511 (not res!11525)) b!25524))

(assert (= (and start!3820 (is-CC!58 xs!554)) b!25518))

(assert (= (and start!3820 (is-Single!58 xs!554)) b!25508))

(assert (= (and start!3820 (is-CC!58 ys!77)) b!25514))

(assert (= (and start!3820 (is-Single!58 ys!77)) b!25503))

(assert (= (and start!3820 (is-CC!58 ys!98)) b!25512))

(assert (= (and start!3820 (is-Single!58 ys!98)) b!25519))

(assert (= (and start!3820 (is-CC!58 xs!533)) b!25507))

(assert (= (and start!3820 (is-Single!58 xs!533)) b!25504))

(declare-fun m!26479 () Bool)

(assert (=> b!25510 m!26479))

(declare-fun m!26481 () Bool)

(assert (=> b!25520 m!26481))

(declare-fun m!26483 () Bool)

(assert (=> b!25505 m!26483))

(declare-fun m!26485 () Bool)

(assert (=> b!25522 m!26485))

(declare-fun m!26487 () Bool)

(assert (=> b!25522 m!26487))

(declare-fun m!26489 () Bool)

(assert (=> b!25506 m!26489))

(declare-fun m!26491 () Bool)

(assert (=> b!25506 m!26491))

(declare-fun m!26493 () Bool)

(assert (=> b!25515 m!26493))

(declare-fun m!26495 () Bool)

(assert (=> b!25511 m!26495))

(declare-fun m!26497 () Bool)

(assert (=> b!25521 m!26497))

(declare-fun m!26499 () Bool)

(assert (=> b!25517 m!26499))

(declare-fun m!26501 () Bool)

(assert (=> b!25525 m!26501))

(declare-fun m!26503 () Bool)

(assert (=> b!25524 m!26503))

(declare-fun m!26505 () Bool)

(assert (=> start!3820 m!26505))

(declare-fun m!26507 () Bool)

(assert (=> b!25516 m!26507))

(declare-fun m!26509 () Bool)

(assert (=> b!25523 m!26509))

(push 1)

(assert (not start!3820))

(assert (not b!25524))

(assert (not b!25514))

(assert (not b!25506))

(assert (not b!25516))

(assert (not b!25507))

(assert (not b!25522))

(assert (not b!25515))

(assert (not b!25525))

(assert (not b!25511))

(assert (not b!25517))

(assert (not b!25505))

(assert (not b!25518))

(assert tp_is_empty!163)

(assert (not b!25510))

(assert (not b!25520))

(assert (not b!25521))

(assert (not b!25523))

(assert (not b!25512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!25535 () Bool)

(declare-fun res!11538 () Bool)

(declare-fun e!13130 () Bool)

(assert (=> b!25535 (=> (not res!11538) (not e!13130))))

(assert (=> b!25535 (= res!11538 (<= (- (level!47 (left!703 ys!77)) (level!47 (right!706 ys!77))) 1))))

(declare-fun b!25534 () Bool)

(declare-fun e!13129 () Bool)

(assert (=> b!25534 (= e!13129 e!13130)))

(declare-fun res!11535 () Bool)

(assert (=> b!25534 (=> (not res!11535) (not e!13130))))

(assert (=> b!25534 (= res!11535 (>= (- (level!47 (left!703 ys!77)) (level!47 (right!706 ys!77))) (- 1)))))

(declare-fun b!25536 () Bool)

(declare-fun res!11536 () Bool)

(assert (=> b!25536 (=> (not res!11536) (not e!13130))))

(assert (=> b!25536 (= res!11536 (balanced!54 (left!703 ys!77)))))

(declare-fun b!25537 () Bool)

(assert (=> b!25537 (= e!13130 (balanced!54 (right!706 ys!77)))))

(declare-fun d!13825 () Bool)

(declare-fun res!11537 () Bool)

(assert (=> d!13825 (=> res!11537 e!13129)))

(assert (=> d!13825 (= res!11537 (not (is-CC!58 ys!77)))))

(assert (=> d!13825 (= (balanced!54 ys!77) e!13129)))

(assert (= (and d!13825 (not res!11537)) b!25534))

(assert (= (and b!25534 res!11535) b!25535))

(assert (= (and b!25535 res!11538) b!25536))

(assert (= (and b!25536 res!11536) b!25537))

(assert (=> b!25535 m!26491))

(assert (=> b!25535 m!26489))

(assert (=> b!25534 m!26491))

(assert (=> b!25534 m!26489))

(declare-fun m!26511 () Bool)

(assert (=> b!25536 m!26511))

(declare-fun m!26513 () Bool)

(assert (=> b!25537 m!26513))

(assert (=> b!25521 d!13825))

(declare-fun b!25543 () Bool)

(declare-fun e!13133 () Int)

(declare-fun lt!4024 () Int)

(declare-fun lt!4025 () Int)

(assert (=> b!25543 (= e!13133 (+ 1 (ite (>= lt!4024 lt!4025) lt!4024 lt!4025)))))

(assert (=> b!25543 (= lt!4025 (level!47 (right!706 (right!706 ys!77))))))

(assert (=> b!25543 (= lt!4024 (level!47 (left!703 (right!706 ys!77))))))

(declare-fun d!13827 () Bool)

(declare-fun lt!4026 () Int)

(assert (=> d!13827 (>= lt!4026 0)))

(assert (=> d!13827 (= lt!4026 e!13133)))

(declare-fun c!5728 () Bool)

(assert (=> d!13827 (= c!5728 (or (is-Empty!69 (right!706 ys!77)) (is-Single!58 (right!706 ys!77))))))

(assert (=> d!13827 (= (level!47 (right!706 ys!77)) lt!4026)))

(declare-fun b!25542 () Bool)

(assert (=> b!25542 (= e!13133 0)))

(assert (= (and d!13827 c!5728) b!25542))

(assert (= (and d!13827 (not c!5728)) b!25543))

(declare-fun m!26515 () Bool)

(assert (=> b!25543 m!26515))

(declare-fun m!26517 () Bool)

(assert (=> b!25543 m!26517))

(assert (=> b!25506 d!13827))

(declare-fun b!25545 () Bool)

(declare-fun e!13134 () Int)

(declare-fun lt!4027 () Int)

(declare-fun lt!4028 () Int)

(assert (=> b!25545 (= e!13134 (+ 1 (ite (>= lt!4027 lt!4028) lt!4027 lt!4028)))))

(assert (=> b!25545 (= lt!4028 (level!47 (right!706 (left!703 ys!77))))))

(assert (=> b!25545 (= lt!4027 (level!47 (left!703 (left!703 ys!77))))))

(declare-fun d!13829 () Bool)

(declare-fun lt!4029 () Int)

(assert (=> d!13829 (>= lt!4029 0)))

(assert (=> d!13829 (= lt!4029 e!13134)))

(declare-fun c!5729 () Bool)

(assert (=> d!13829 (= c!5729 (or (is-Empty!69 (left!703 ys!77)) (is-Single!58 (left!703 ys!77))))))

(assert (=> d!13829 (= (level!47 (left!703 ys!77)) lt!4029)))

(declare-fun b!25544 () Bool)

(assert (=> b!25544 (= e!13134 0)))

(assert (= (and d!13829 c!5729) b!25544))

(assert (= (and d!13829 (not c!5729)) b!25545))

(declare-fun m!26519 () Bool)

(assert (=> b!25545 m!26519))

(declare-fun m!26521 () Bool)

(assert (=> b!25545 m!26521))

(assert (=> b!25506 d!13829))

(declare-fun d!13831 () Bool)

(assert (=> d!13831 (= (isEmpty!315 ys!77) (= ys!77 Empty!69))))

(assert (=> b!25516 d!13831))

(declare-fun b!25554 () Bool)

(declare-fun e!13140 () Bool)

(declare-fun e!13139 () Bool)

(assert (=> b!25554 (= e!13140 e!13139)))

(declare-fun res!11548 () Bool)

(assert (=> b!25554 (=> (not res!11548) (not e!13139))))

(assert (=> b!25554 (= res!11548 (not (isEmpty!315 (left!703 xs!554))))))

(declare-fun b!25555 () Bool)

(declare-fun res!11550 () Bool)

(assert (=> b!25555 (=> (not res!11550) (not e!13139))))

(assert (=> b!25555 (= res!11550 (not (isEmpty!315 (right!706 xs!554))))))

(declare-fun b!25556 () Bool)

(declare-fun res!11549 () Bool)

(assert (=> b!25556 (=> (not res!11549) (not e!13139))))

(assert (=> b!25556 (= res!11549 (concInv!53 (left!703 xs!554)))))

(declare-fun b!25557 () Bool)

(assert (=> b!25557 (= e!13139 (concInv!53 (right!706 xs!554)))))

(declare-fun d!13833 () Bool)

(declare-fun res!11547 () Bool)

(assert (=> d!13833 (=> res!11547 e!13140)))

(assert (=> d!13833 (= res!11547 (not (is-CC!58 xs!554)))))

(assert (=> d!13833 (= (concInv!53 xs!554) e!13140)))

(assert (= (and d!13833 (not res!11547)) b!25554))

(assert (= (and b!25554 res!11548) b!25555))

(assert (= (and b!25555 res!11550) b!25556))

(assert (= (and b!25556 res!11549) b!25557))

(declare-fun m!26523 () Bool)

(assert (=> b!25554 m!26523))

(declare-fun m!26525 () Bool)

(assert (=> b!25555 m!26525))

(declare-fun m!26527 () Bool)

(assert (=> b!25556 m!26527))

(declare-fun m!26529 () Bool)

(assert (=> b!25557 m!26529))

(assert (=> b!25515 d!13833))

(declare-fun d!13835 () Bool)

(assert (=> d!13835 (= (isEmpty!315 xs!554) (= xs!554 Empty!69))))

(assert (=> b!25511 d!13835))

(declare-fun b!25558 () Bool)

(declare-fun e!13142 () Bool)

(declare-fun e!13141 () Bool)

(assert (=> b!25558 (= e!13142 e!13141)))

(declare-fun res!11552 () Bool)

(assert (=> b!25558 (=> (not res!11552) (not e!13141))))

(assert (=> b!25558 (= res!11552 (not (isEmpty!315 (left!703 ys!77))))))

(declare-fun b!25559 () Bool)

(declare-fun res!11554 () Bool)

(assert (=> b!25559 (=> (not res!11554) (not e!13141))))

(assert (=> b!25559 (= res!11554 (not (isEmpty!315 (right!706 ys!77))))))

(declare-fun b!25560 () Bool)

(declare-fun res!11553 () Bool)

(assert (=> b!25560 (=> (not res!11553) (not e!13141))))

(assert (=> b!25560 (= res!11553 (concInv!53 (left!703 ys!77)))))

(declare-fun b!25561 () Bool)

(assert (=> b!25561 (= e!13141 (concInv!53 (right!706 ys!77)))))

(declare-fun d!13837 () Bool)

(declare-fun res!11551 () Bool)

(assert (=> d!13837 (=> res!11551 e!13142)))

(assert (=> d!13837 (= res!11551 (not (is-CC!58 ys!77)))))

(assert (=> d!13837 (= (concInv!53 ys!77) e!13142)))

(assert (= (and d!13837 (not res!11551)) b!25558))

(assert (= (and b!25558 res!11552) b!25559))

(assert (= (and b!25559 res!11554) b!25560))

(assert (= (and b!25560 res!11553) b!25561))

(declare-fun m!26531 () Bool)

(assert (=> b!25558 m!26531))

(declare-fun m!26533 () Bool)

(assert (=> b!25559 m!26533))

(declare-fun m!26535 () Bool)

(assert (=> b!25560 m!26535))

(declare-fun m!26537 () Bool)

(assert (=> b!25561 m!26537))

(assert (=> b!25510 d!13837))

(declare-fun d!13839 () Bool)

(assert (=> d!13839 (= (isEmpty!315 ys!98) (= ys!98 Empty!69))))

(assert (=> b!25524 d!13839))

(declare-fun b!25563 () Bool)

(declare-fun res!11558 () Bool)

(declare-fun e!13144 () Bool)

(assert (=> b!25563 (=> (not res!11558) (not e!13144))))

(assert (=> b!25563 (= res!11558 (<= (- (level!47 (left!703 xs!554)) (level!47 (right!706 xs!554))) 1))))

(declare-fun b!25562 () Bool)

(declare-fun e!13143 () Bool)

(assert (=> b!25562 (= e!13143 e!13144)))

(declare-fun res!11555 () Bool)

(assert (=> b!25562 (=> (not res!11555) (not e!13144))))

(assert (=> b!25562 (= res!11555 (>= (- (level!47 (left!703 xs!554)) (level!47 (right!706 xs!554))) (- 1)))))

(declare-fun b!25564 () Bool)

(declare-fun res!11556 () Bool)

(assert (=> b!25564 (=> (not res!11556) (not e!13144))))

(assert (=> b!25564 (= res!11556 (balanced!54 (left!703 xs!554)))))

(declare-fun b!25565 () Bool)

(assert (=> b!25565 (= e!13144 (balanced!54 (right!706 xs!554)))))

(declare-fun d!13841 () Bool)

(declare-fun res!11557 () Bool)

(assert (=> d!13841 (=> res!11557 e!13143)))

(assert (=> d!13841 (= res!11557 (not (is-CC!58 xs!554)))))

(assert (=> d!13841 (= (balanced!54 xs!554) e!13143)))

(assert (= (and d!13841 (not res!11557)) b!25562))

(assert (= (and b!25562 res!11555) b!25563))

(assert (= (and b!25563 res!11558) b!25564))

(assert (= (and b!25564 res!11556) b!25565))

(declare-fun m!26539 () Bool)

(assert (=> b!25563 m!26539))

(declare-fun m!26541 () Bool)

(assert (=> b!25563 m!26541))

(assert (=> b!25562 m!26539))

(assert (=> b!25562 m!26541))

(declare-fun m!26543 () Bool)

(assert (=> b!25564 m!26543))

(declare-fun m!26545 () Bool)

(assert (=> b!25565 m!26545))

(assert (=> b!25523 d!13841))

(declare-fun d!13843 () Bool)

(assert (=> d!13843 (= (isEmpty!315 xs!533) (= xs!533 Empty!69))))

(assert (=> b!25520 d!13843))

(declare-fun b!25567 () Bool)

(declare-fun res!11562 () Bool)

(declare-fun e!13146 () Bool)

(assert (=> b!25567 (=> (not res!11562) (not e!13146))))

(assert (=> b!25567 (= res!11562 (<= (- (level!47 (left!703 xs!533)) (level!47 (right!706 xs!533))) 1))))

(declare-fun b!25566 () Bool)

(declare-fun e!13145 () Bool)

(assert (=> b!25566 (= e!13145 e!13146)))

(declare-fun res!11559 () Bool)

(assert (=> b!25566 (=> (not res!11559) (not e!13146))))

(assert (=> b!25566 (= res!11559 (>= (- (level!47 (left!703 xs!533)) (level!47 (right!706 xs!533))) (- 1)))))

(declare-fun b!25568 () Bool)

(declare-fun res!11560 () Bool)

(assert (=> b!25568 (=> (not res!11560) (not e!13146))))

(assert (=> b!25568 (= res!11560 (balanced!54 (left!703 xs!533)))))

(declare-fun b!25569 () Bool)

(assert (=> b!25569 (= e!13146 (balanced!54 (right!706 xs!533)))))

(declare-fun d!13845 () Bool)

(declare-fun res!11561 () Bool)

(assert (=> d!13845 (=> res!11561 e!13145)))

(assert (=> d!13845 (= res!11561 (not (is-CC!58 xs!533)))))

(assert (=> d!13845 (= (balanced!54 xs!533) e!13145)))

(assert (= (and d!13845 (not res!11561)) b!25566))

(assert (= (and b!25566 res!11559) b!25567))

(assert (= (and b!25567 res!11562) b!25568))

(assert (= (and b!25568 res!11560) b!25569))

(declare-fun m!26547 () Bool)

(assert (=> b!25567 m!26547))

(declare-fun m!26549 () Bool)

(assert (=> b!25567 m!26549))

(assert (=> b!25566 m!26547))

(assert (=> b!25566 m!26549))

(declare-fun m!26551 () Bool)

(assert (=> b!25568 m!26551))

(declare-fun m!26553 () Bool)

(assert (=> b!25569 m!26553))

(assert (=> b!25505 d!13845))

(declare-fun b!25570 () Bool)

(declare-fun e!13148 () Bool)

(declare-fun e!13147 () Bool)

(assert (=> b!25570 (= e!13148 e!13147)))

(declare-fun res!11564 () Bool)

(assert (=> b!25570 (=> (not res!11564) (not e!13147))))

(assert (=> b!25570 (= res!11564 (not (isEmpty!315 (left!703 ys!98))))))

(declare-fun b!25571 () Bool)

(declare-fun res!11566 () Bool)

(assert (=> b!25571 (=> (not res!11566) (not e!13147))))

(assert (=> b!25571 (= res!11566 (not (isEmpty!315 (right!706 ys!98))))))

(declare-fun b!25572 () Bool)

(declare-fun res!11565 () Bool)

(assert (=> b!25572 (=> (not res!11565) (not e!13147))))

(assert (=> b!25572 (= res!11565 (concInv!53 (left!703 ys!98)))))

(declare-fun b!25573 () Bool)

(assert (=> b!25573 (= e!13147 (concInv!53 (right!706 ys!98)))))

(declare-fun d!13847 () Bool)

(declare-fun res!11563 () Bool)

(assert (=> d!13847 (=> res!11563 e!13148)))

(assert (=> d!13847 (= res!11563 (not (is-CC!58 ys!98)))))

(assert (=> d!13847 (= (concInv!53 ys!98) e!13148)))

(assert (= (and d!13847 (not res!11563)) b!25570))

(assert (= (and b!25570 res!11564) b!25571))

(assert (= (and b!25571 res!11566) b!25572))

(assert (= (and b!25572 res!11565) b!25573))

(declare-fun m!26555 () Bool)

(assert (=> b!25570 m!26555))

(declare-fun m!26557 () Bool)

(assert (=> b!25571 m!26557))

(declare-fun m!26559 () Bool)

(assert (=> b!25572 m!26559))

(declare-fun m!26561 () Bool)

(assert (=> b!25573 m!26561))

(assert (=> b!25517 d!13847))

(declare-fun b!25575 () Bool)

(declare-fun e!13149 () Int)

(declare-fun lt!4030 () Int)

(declare-fun lt!4031 () Int)

(assert (=> b!25575 (= e!13149 (+ 1 (ite (>= lt!4030 lt!4031) lt!4030 lt!4031)))))

(assert (=> b!25575 (= lt!4031 (level!47 (right!706 ys!77)))))

(assert (=> b!25575 (= lt!4030 (level!47 (left!703 ys!77)))))

(declare-fun d!13849 () Bool)

(declare-fun lt!4032 () Int)

(assert (=> d!13849 (>= lt!4032 0)))

(assert (=> d!13849 (= lt!4032 e!13149)))

(declare-fun c!5730 () Bool)

(assert (=> d!13849 (= c!5730 (or (is-Empty!69 ys!77) (is-Single!58 ys!77)))))

(assert (=> d!13849 (= (level!47 ys!77) lt!4032)))

(declare-fun b!25574 () Bool)

(assert (=> b!25574 (= e!13149 0)))

(assert (= (and d!13849 c!5730) b!25574))

(assert (= (and d!13849 (not c!5730)) b!25575))

(assert (=> b!25575 m!26489))

(assert (=> b!25575 m!26491))

(assert (=> b!25522 d!13849))

(declare-fun b!25577 () Bool)

(declare-fun e!13150 () Int)

(declare-fun lt!4033 () Int)

(declare-fun lt!4034 () Int)

(assert (=> b!25577 (= e!13150 (+ 1 (ite (>= lt!4033 lt!4034) lt!4033 lt!4034)))))

(assert (=> b!25577 (= lt!4034 (level!47 (right!706 xs!533)))))

(assert (=> b!25577 (= lt!4033 (level!47 (left!703 xs!533)))))

(declare-fun d!13851 () Bool)

(declare-fun lt!4035 () Int)

(assert (=> d!13851 (>= lt!4035 0)))

(assert (=> d!13851 (= lt!4035 e!13150)))

(declare-fun c!5731 () Bool)

(assert (=> d!13851 (= c!5731 (or (is-Empty!69 xs!533) (is-Single!58 xs!533)))))

(assert (=> d!13851 (= (level!47 xs!533) lt!4035)))

(declare-fun b!25576 () Bool)

(assert (=> b!25576 (= e!13150 0)))

(assert (= (and d!13851 c!5731) b!25576))

(assert (= (and d!13851 (not c!5731)) b!25577))

(assert (=> b!25577 m!26549))

(assert (=> b!25577 m!26547))

(assert (=> b!25522 d!13851))

(declare-fun b!25578 () Bool)

(declare-fun e!13152 () Bool)

(declare-fun e!13151 () Bool)

(assert (=> b!25578 (= e!13152 e!13151)))

(declare-fun res!11568 () Bool)

(assert (=> b!25578 (=> (not res!11568) (not e!13151))))

(assert (=> b!25578 (= res!11568 (not (isEmpty!315 (left!703 xs!533))))))

(declare-fun b!25579 () Bool)

(declare-fun res!11570 () Bool)

(assert (=> b!25579 (=> (not res!11570) (not e!13151))))

(assert (=> b!25579 (= res!11570 (not (isEmpty!315 (right!706 xs!533))))))

(declare-fun b!25580 () Bool)

(declare-fun res!11569 () Bool)

(assert (=> b!25580 (=> (not res!11569) (not e!13151))))

(assert (=> b!25580 (= res!11569 (concInv!53 (left!703 xs!533)))))

(declare-fun b!25581 () Bool)

(assert (=> b!25581 (= e!13151 (concInv!53 (right!706 xs!533)))))

(declare-fun d!13853 () Bool)

(declare-fun res!11567 () Bool)

(assert (=> d!13853 (=> res!11567 e!13152)))

(assert (=> d!13853 (= res!11567 (not (is-CC!58 xs!533)))))

(assert (=> d!13853 (= (concInv!53 xs!533) e!13152)))

(assert (= (and d!13853 (not res!11567)) b!25578))

(assert (= (and b!25578 res!11568) b!25579))

(assert (= (and b!25579 res!11570) b!25580))

(assert (= (and b!25580 res!11569) b!25581))

(declare-fun m!26563 () Bool)

(assert (=> b!25578 m!26563))

(declare-fun m!26565 () Bool)

(assert (=> b!25579 m!26565))

(declare-fun m!26567 () Bool)

(assert (=> b!25580 m!26567))

(declare-fun m!26569 () Bool)

(assert (=> b!25581 m!26569))

(assert (=> start!3820 d!13853))

(declare-fun b!25583 () Bool)

(declare-fun res!11574 () Bool)

(declare-fun e!13154 () Bool)

(assert (=> b!25583 (=> (not res!11574) (not e!13154))))

(assert (=> b!25583 (= res!11574 (<= (- (level!47 (left!703 ys!98)) (level!47 (right!706 ys!98))) 1))))

(declare-fun b!25582 () Bool)

(declare-fun e!13153 () Bool)

(assert (=> b!25582 (= e!13153 e!13154)))

(declare-fun res!11571 () Bool)

(assert (=> b!25582 (=> (not res!11571) (not e!13154))))

(assert (=> b!25582 (= res!11571 (>= (- (level!47 (left!703 ys!98)) (level!47 (right!706 ys!98))) (- 1)))))

(declare-fun b!25584 () Bool)

(declare-fun res!11572 () Bool)

(assert (=> b!25584 (=> (not res!11572) (not e!13154))))

(assert (=> b!25584 (= res!11572 (balanced!54 (left!703 ys!98)))))

(declare-fun b!25585 () Bool)

(assert (=> b!25585 (= e!13154 (balanced!54 (right!706 ys!98)))))

(declare-fun d!13855 () Bool)

(declare-fun res!11573 () Bool)

(assert (=> d!13855 (=> res!11573 e!13153)))

(assert (=> d!13855 (= res!11573 (not (is-CC!58 ys!98)))))

(assert (=> d!13855 (= (balanced!54 ys!98) e!13153)))

(assert (= (and d!13855 (not res!11573)) b!25582))

(assert (= (and b!25582 res!11571) b!25583))

(assert (= (and b!25583 res!11574) b!25584))

(assert (= (and b!25584 res!11572) b!25585))

(declare-fun m!26571 () Bool)

(assert (=> b!25583 m!26571))

(declare-fun m!26573 () Bool)

(assert (=> b!25583 m!26573))

(assert (=> b!25582 m!26571))

(assert (=> b!25582 m!26573))

(declare-fun m!26575 () Bool)

(assert (=> b!25584 m!26575))

(declare-fun m!26577 () Bool)

(assert (=> b!25585 m!26577))

(assert (=> b!25525 d!13855))

(declare-fun b!25592 () Bool)

(declare-fun e!13157 () Bool)

(declare-fun tp!5594 () Bool)

(declare-fun tp!5595 () Bool)

(assert (=> b!25592 (= e!13157 (and tp!5594 tp!5595))))

(declare-fun b!25593 () Bool)

(assert (=> b!25593 (= e!13157 tp_is_empty!163)))

(assert (=> b!25507 (= tp!5588 e!13157)))

(assert (= (and b!25507 (is-CC!58 (left!703 xs!533))) b!25592))

(assert (= (and b!25507 (is-Single!58 (left!703 xs!533))) b!25593))

(declare-fun b!25594 () Bool)

(declare-fun e!13158 () Bool)

(declare-fun tp!5596 () Bool)

(declare-fun tp!5597 () Bool)

(assert (=> b!25594 (= e!13158 (and tp!5596 tp!5597))))

(declare-fun b!25595 () Bool)

(assert (=> b!25595 (= e!13158 tp_is_empty!163)))

(assert (=> b!25507 (= tp!5584 e!13158)))

(assert (= (and b!25507 (is-CC!58 (right!706 xs!533))) b!25594))

(assert (= (and b!25507 (is-Single!58 (right!706 xs!533))) b!25595))

(declare-fun b!25596 () Bool)

(declare-fun e!13159 () Bool)

(declare-fun tp!5598 () Bool)

(declare-fun tp!5599 () Bool)

(assert (=> b!25596 (= e!13159 (and tp!5598 tp!5599))))

(declare-fun b!25597 () Bool)

(assert (=> b!25597 (= e!13159 tp_is_empty!163)))

(assert (=> b!25512 (= tp!5585 e!13159)))

(assert (= (and b!25512 (is-CC!58 (left!703 ys!98))) b!25596))

(assert (= (and b!25512 (is-Single!58 (left!703 ys!98))) b!25597))

(declare-fun b!25598 () Bool)

(declare-fun e!13160 () Bool)

(declare-fun tp!5600 () Bool)

(declare-fun tp!5601 () Bool)

(assert (=> b!25598 (= e!13160 (and tp!5600 tp!5601))))

(declare-fun b!25599 () Bool)

(assert (=> b!25599 (= e!13160 tp_is_empty!163)))

(assert (=> b!25512 (= tp!5589 e!13160)))

(assert (= (and b!25512 (is-CC!58 (right!706 ys!98))) b!25598))

(assert (= (and b!25512 (is-Single!58 (right!706 ys!98))) b!25599))

(declare-fun b!25600 () Bool)

(declare-fun e!13161 () Bool)

(declare-fun tp!5602 () Bool)

(declare-fun tp!5603 () Bool)

(assert (=> b!25600 (= e!13161 (and tp!5602 tp!5603))))

(declare-fun b!25601 () Bool)

(assert (=> b!25601 (= e!13161 tp_is_empty!163)))

(assert (=> b!25514 (= tp!5583 e!13161)))

(assert (= (and b!25514 (is-CC!58 (left!703 ys!77))) b!25600))

(assert (= (and b!25514 (is-Single!58 (left!703 ys!77))) b!25601))

(declare-fun b!25602 () Bool)

(declare-fun e!13162 () Bool)

(declare-fun tp!5604 () Bool)

(declare-fun tp!5605 () Bool)

(assert (=> b!25602 (= e!13162 (and tp!5604 tp!5605))))

(declare-fun b!25603 () Bool)

(assert (=> b!25603 (= e!13162 tp_is_empty!163)))

(assert (=> b!25514 (= tp!5582 e!13162)))

(assert (= (and b!25514 (is-CC!58 (right!706 ys!77))) b!25602))

(assert (= (and b!25514 (is-Single!58 (right!706 ys!77))) b!25603))

(declare-fun b!25604 () Bool)

(declare-fun e!13163 () Bool)

(declare-fun tp!5606 () Bool)

(declare-fun tp!5607 () Bool)

(assert (=> b!25604 (= e!13163 (and tp!5606 tp!5607))))

(declare-fun b!25605 () Bool)

(assert (=> b!25605 (= e!13163 tp_is_empty!163)))

(assert (=> b!25518 (= tp!5587 e!13163)))

(assert (= (and b!25518 (is-CC!58 (left!703 xs!554))) b!25604))

(assert (= (and b!25518 (is-Single!58 (left!703 xs!554))) b!25605))

(declare-fun b!25606 () Bool)

(declare-fun e!13164 () Bool)

(declare-fun tp!5608 () Bool)

(declare-fun tp!5609 () Bool)

(assert (=> b!25606 (= e!13164 (and tp!5608 tp!5609))))

(declare-fun b!25607 () Bool)

(assert (=> b!25607 (= e!13164 tp_is_empty!163)))

(assert (=> b!25518 (= tp!5586 e!13164)))

(assert (= (and b!25518 (is-CC!58 (right!706 xs!554))) b!25606))

(assert (= (and b!25518 (is-Single!58 (right!706 xs!554))) b!25607))

(push 1)

(assert (not b!25563))

(assert (not b!25571))

(assert (not b!25534))

(assert (not b!25584))

(assert (not b!25568))

(assert (not b!25557))

(assert (not b!25556))

(assert (not b!25543))

(assert (not b!25573))

(assert (not b!25559))

(assert (not b!25606))

(assert (not b!25554))

(assert (not b!25598))

(assert (not b!25580))

(assert (not b!25558))

(assert (not b!25583))

(assert (not b!25579))

(assert (not b!25567))

(assert (not b!25545))

(assert (not b!25600))

(assert (not b!25604))

(assert (not b!25585))

(assert (not b!25592))

(assert (not b!25560))

(assert (not b!25602))

(assert (not b!25572))

(assert (not b!25582))

(assert tp_is_empty!163)

(assert (not b!25565))

(assert (not b!25578))

(assert (not b!25570))

(assert (not b!25581))

(assert (not b!25594))

(assert (not b!25569))

(assert (not b!25562))

(assert (not b!25555))

(assert (not b!25596))

(assert (not b!25535))

(assert (not b!25561))

(assert (not b!25564))

(assert (not b!25566))

(assert (not b!25537))

(assert (not b!25575))

(assert (not b!25536))

(assert (not b!25577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

