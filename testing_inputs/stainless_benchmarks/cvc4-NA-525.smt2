; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3746 () Bool)

(assert start!3746)

(declare-fun b!24280 () Bool)

(declare-fun res!10777 () Bool)

(declare-fun e!12593 () Bool)

(assert (=> b!24280 (=> (not res!10777) (not e!12593))))

(declare-datatypes () ((T!1805 (T!1806 (val!75 Int)))))

(declare-datatypes () ((Conc!52 (CC!51 (left!696 Conc!52) (right!699 Conc!52)) (Single!51 (x!8869 T!1805)) (Empty!62))))

(declare-fun ys!119 () Conc!52)

(declare-fun balanced!47 (Conc!52) Bool)

(assert (=> b!24280 (= res!10777 (balanced!47 ys!119))))

(declare-fun b!24281 () Bool)

(declare-fun e!12595 () Bool)

(declare-fun tp!5241 () Bool)

(declare-fun tp!5244 () Bool)

(assert (=> b!24281 (= e!12595 (and tp!5241 tp!5244))))

(declare-fun b!24282 () Bool)

(declare-fun res!10780 () Bool)

(assert (=> b!24282 (=> (not res!10780) (not e!12593))))

(declare-fun xs!625 () Conc!52)

(assert (=> b!24282 (= res!10780 (balanced!47 xs!625))))

(declare-fun b!24283 () Bool)

(declare-fun e!12596 () Bool)

(declare-fun tp_is_empty!149 () Bool)

(assert (=> b!24283 (= e!12596 tp_is_empty!149)))

(declare-fun b!24284 () Bool)

(declare-fun e!12597 () Bool)

(assert (=> b!24284 (= e!12593 e!12597)))

(declare-fun res!10782 () Bool)

(assert (=> b!24284 (=> res!10782 e!12597)))

(declare-fun xs!630 () Conc!52)

(declare-fun concInv!46 (Conc!52) Bool)

(assert (=> b!24284 (= res!10782 (not (concInv!46 xs!630)))))

(declare-fun b!24285 () Bool)

(declare-fun res!10781 () Bool)

(assert (=> b!24285 (=> (not res!10781) (not e!12593))))

(declare-fun ys!124 () Conc!52)

(assert (=> b!24285 (= res!10781 (and (not (is-Empty!62 ys!119)) (not (is-Empty!62 xs!625)) (= xs!630 xs!625) (= ys!124 ys!119)))))

(declare-fun b!24286 () Bool)

(declare-fun e!12594 () Bool)

(assert (=> b!24286 (= e!12594 tp_is_empty!149)))

(declare-fun b!24287 () Bool)

(declare-fun tp!5247 () Bool)

(declare-fun tp!5246 () Bool)

(assert (=> b!24287 (= e!12594 (and tp!5247 tp!5246))))

(declare-fun b!24288 () Bool)

(declare-fun isEmpty!309 (Conc!52) Bool)

(assert (=> b!24288 (= e!12597 (isEmpty!309 ys!124))))

(declare-fun b!24289 () Bool)

(declare-fun res!10775 () Bool)

(assert (=> b!24289 (=> res!10775 e!12597)))

(assert (=> b!24289 (= res!10775 (isEmpty!309 xs!630))))

(declare-fun b!24290 () Bool)

(declare-fun e!12592 () Bool)

(assert (=> b!24290 (= e!12592 tp_is_empty!149)))

(declare-fun b!24291 () Bool)

(declare-fun res!10779 () Bool)

(assert (=> b!24291 (=> res!10779 e!12597)))

(assert (=> b!24291 (= res!10779 (not (balanced!47 ys!124)))))

(declare-fun res!10776 () Bool)

(assert (=> start!3746 (=> (not res!10776) (not e!12593))))

(assert (=> start!3746 (= res!10776 (concInv!46 xs!625))))

(assert (=> start!3746 e!12593))

(assert (=> start!3746 e!12595))

(assert (=> start!3746 e!12596))

(assert (=> start!3746 e!12594))

(assert (=> start!3746 e!12592))

(declare-fun b!24292 () Bool)

(declare-fun res!10784 () Bool)

(assert (=> b!24292 (=> res!10784 e!12597)))

(assert (=> b!24292 (= res!10784 (not (balanced!47 xs!630)))))

(declare-fun b!24293 () Bool)

(declare-fun tp!5240 () Bool)

(declare-fun tp!5242 () Bool)

(assert (=> b!24293 (= e!12596 (and tp!5240 tp!5242))))

(declare-fun b!24294 () Bool)

(assert (=> b!24294 (= e!12595 tp_is_empty!149)))

(declare-fun b!24295 () Bool)

(declare-fun res!10778 () Bool)

(assert (=> b!24295 (=> res!10778 e!12597)))

(assert (=> b!24295 (= res!10778 (not (concInv!46 ys!124)))))

(declare-fun b!24296 () Bool)

(declare-fun tp!5245 () Bool)

(declare-fun tp!5243 () Bool)

(assert (=> b!24296 (= e!12592 (and tp!5245 tp!5243))))

(declare-fun b!24297 () Bool)

(declare-fun res!10783 () Bool)

(assert (=> b!24297 (=> (not res!10783) (not e!12593))))

(assert (=> b!24297 (= res!10783 (concInv!46 ys!119))))

(assert (= (and start!3746 res!10776) b!24282))

(assert (= (and b!24282 res!10780) b!24297))

(assert (= (and b!24297 res!10783) b!24280))

(assert (= (and b!24280 res!10777) b!24285))

(assert (= (and b!24285 res!10781) b!24284))

(assert (= (and b!24284 (not res!10782)) b!24292))

(assert (= (and b!24292 (not res!10784)) b!24295))

(assert (= (and b!24295 (not res!10778)) b!24291))

(assert (= (and b!24291 (not res!10779)) b!24289))

(assert (= (and b!24289 (not res!10775)) b!24288))

(assert (= (and start!3746 (is-CC!51 xs!625)) b!24281))

(assert (= (and start!3746 (is-Single!51 xs!625)) b!24294))

(assert (= (and start!3746 (is-CC!51 ys!119)) b!24293))

(assert (= (and start!3746 (is-Single!51 ys!119)) b!24283))

(assert (= (and start!3746 (is-CC!51 xs!630)) b!24287))

(assert (= (and start!3746 (is-Single!51 xs!630)) b!24286))

(assert (= (and start!3746 (is-CC!51 ys!124)) b!24296))

(assert (= (and start!3746 (is-Single!51 ys!124)) b!24290))

(declare-fun m!25517 () Bool)

(assert (=> b!24284 m!25517))

(declare-fun m!25519 () Bool)

(assert (=> b!24288 m!25519))

(declare-fun m!25521 () Bool)

(assert (=> b!24282 m!25521))

(declare-fun m!25523 () Bool)

(assert (=> b!24291 m!25523))

(declare-fun m!25525 () Bool)

(assert (=> b!24280 m!25525))

(declare-fun m!25527 () Bool)

(assert (=> b!24295 m!25527))

(declare-fun m!25529 () Bool)

(assert (=> b!24289 m!25529))

(declare-fun m!25531 () Bool)

(assert (=> b!24297 m!25531))

(declare-fun m!25533 () Bool)

(assert (=> b!24292 m!25533))

(declare-fun m!25535 () Bool)

(assert (=> start!3746 m!25535))

(push 1)

(assert (not b!24289))

(assert (not b!24295))

(assert tp_is_empty!149)

(assert (not b!24281))

(assert (not b!24287))

(assert (not b!24292))

(assert (not start!3746))

(assert (not b!24297))

(assert (not b!24284))

(assert (not b!24296))

(assert (not b!24293))

(assert (not b!24280))

(assert (not b!24291))

(assert (not b!24282))

(assert (not b!24288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!24309 () Bool)

(declare-fun e!12603 () Bool)

(assert (=> b!24309 (= e!12603 (balanced!47 (right!699 ys!124)))))

(declare-fun b!24308 () Bool)

(declare-fun res!10793 () Bool)

(assert (=> b!24308 (=> (not res!10793) (not e!12603))))

(assert (=> b!24308 (= res!10793 (balanced!47 (left!696 ys!124)))))

(declare-fun b!24306 () Bool)

(declare-fun e!12602 () Bool)

(assert (=> b!24306 (= e!12602 e!12603)))

(declare-fun res!10795 () Bool)

(assert (=> b!24306 (=> (not res!10795) (not e!12603))))

(declare-fun level!41 (Conc!52) Int)

(assert (=> b!24306 (= res!10795 (>= (- (level!41 (left!696 ys!124)) (level!41 (right!699 ys!124))) (- 1)))))

(declare-fun b!24307 () Bool)

(declare-fun res!10796 () Bool)

(assert (=> b!24307 (=> (not res!10796) (not e!12603))))

(assert (=> b!24307 (= res!10796 (<= (- (level!41 (left!696 ys!124)) (level!41 (right!699 ys!124))) 1))))

(declare-fun d!13499 () Bool)

(declare-fun res!10794 () Bool)

(assert (=> d!13499 (=> res!10794 e!12602)))

(assert (=> d!13499 (= res!10794 (not (is-CC!51 ys!124)))))

(assert (=> d!13499 (= (balanced!47 ys!124) e!12602)))

(assert (= (and d!13499 (not res!10794)) b!24306))

(assert (= (and b!24306 res!10795) b!24307))

(assert (= (and b!24307 res!10796) b!24308))

(assert (= (and b!24308 res!10793) b!24309))

(declare-fun m!25537 () Bool)

(assert (=> b!24309 m!25537))

(declare-fun m!25539 () Bool)

(assert (=> b!24308 m!25539))

(declare-fun m!25541 () Bool)

(assert (=> b!24306 m!25541))

(declare-fun m!25543 () Bool)

(assert (=> b!24306 m!25543))

(assert (=> b!24307 m!25541))

(assert (=> b!24307 m!25543))

(assert (=> b!24291 d!13499))

(declare-fun b!24321 () Bool)

(declare-fun e!12608 () Bool)

(assert (=> b!24321 (= e!12608 (concInv!46 (right!699 xs!625)))))

(declare-fun b!24320 () Bool)

(declare-fun res!10806 () Bool)

(assert (=> b!24320 (=> (not res!10806) (not e!12608))))

(assert (=> b!24320 (= res!10806 (concInv!46 (left!696 xs!625)))))

(declare-fun b!24319 () Bool)

(declare-fun res!10807 () Bool)

(assert (=> b!24319 (=> (not res!10807) (not e!12608))))

(assert (=> b!24319 (= res!10807 (not (isEmpty!309 (right!699 xs!625))))))

(declare-fun b!24318 () Bool)

(declare-fun e!12609 () Bool)

(assert (=> b!24318 (= e!12609 e!12608)))

(declare-fun res!10808 () Bool)

(assert (=> b!24318 (=> (not res!10808) (not e!12608))))

(assert (=> b!24318 (= res!10808 (not (isEmpty!309 (left!696 xs!625))))))

(declare-fun d!13501 () Bool)

(declare-fun res!10805 () Bool)

(assert (=> d!13501 (=> res!10805 e!12609)))

(assert (=> d!13501 (= res!10805 (not (is-CC!51 xs!625)))))

(assert (=> d!13501 (= (concInv!46 xs!625) e!12609)))

(assert (= (and d!13501 (not res!10805)) b!24318))

(assert (= (and b!24318 res!10808) b!24319))

(assert (= (and b!24319 res!10807) b!24320))

(assert (= (and b!24320 res!10806) b!24321))

(declare-fun m!25545 () Bool)

(assert (=> b!24321 m!25545))

(declare-fun m!25547 () Bool)

(assert (=> b!24320 m!25547))

(declare-fun m!25549 () Bool)

(assert (=> b!24319 m!25549))

(declare-fun m!25551 () Bool)

(assert (=> b!24318 m!25551))

(assert (=> start!3746 d!13501))

(declare-fun b!24325 () Bool)

(declare-fun e!12610 () Bool)

(assert (=> b!24325 (= e!12610 (concInv!46 (right!699 ys!124)))))

(declare-fun b!24324 () Bool)

(declare-fun res!10810 () Bool)

(assert (=> b!24324 (=> (not res!10810) (not e!12610))))

(assert (=> b!24324 (= res!10810 (concInv!46 (left!696 ys!124)))))

(declare-fun b!24323 () Bool)

(declare-fun res!10811 () Bool)

(assert (=> b!24323 (=> (not res!10811) (not e!12610))))

(assert (=> b!24323 (= res!10811 (not (isEmpty!309 (right!699 ys!124))))))

(declare-fun b!24322 () Bool)

(declare-fun e!12611 () Bool)

(assert (=> b!24322 (= e!12611 e!12610)))

(declare-fun res!10812 () Bool)

(assert (=> b!24322 (=> (not res!10812) (not e!12610))))

(assert (=> b!24322 (= res!10812 (not (isEmpty!309 (left!696 ys!124))))))

(declare-fun d!13503 () Bool)

(declare-fun res!10809 () Bool)

(assert (=> d!13503 (=> res!10809 e!12611)))

(assert (=> d!13503 (= res!10809 (not (is-CC!51 ys!124)))))

(assert (=> d!13503 (= (concInv!46 ys!124) e!12611)))

(assert (= (and d!13503 (not res!10809)) b!24322))

(assert (= (and b!24322 res!10812) b!24323))

(assert (= (and b!24323 res!10811) b!24324))

(assert (= (and b!24324 res!10810) b!24325))

(declare-fun m!25553 () Bool)

(assert (=> b!24325 m!25553))

(declare-fun m!25555 () Bool)

(assert (=> b!24324 m!25555))

(declare-fun m!25557 () Bool)

(assert (=> b!24323 m!25557))

(declare-fun m!25559 () Bool)

(assert (=> b!24322 m!25559))

(assert (=> b!24295 d!13503))

(declare-fun b!24329 () Bool)

(declare-fun e!12612 () Bool)

(assert (=> b!24329 (= e!12612 (concInv!46 (right!699 xs!630)))))

(declare-fun b!24328 () Bool)

(declare-fun res!10814 () Bool)

(assert (=> b!24328 (=> (not res!10814) (not e!12612))))

(assert (=> b!24328 (= res!10814 (concInv!46 (left!696 xs!630)))))

(declare-fun b!24327 () Bool)

(declare-fun res!10815 () Bool)

(assert (=> b!24327 (=> (not res!10815) (not e!12612))))

(assert (=> b!24327 (= res!10815 (not (isEmpty!309 (right!699 xs!630))))))

(declare-fun b!24326 () Bool)

(declare-fun e!12613 () Bool)

(assert (=> b!24326 (= e!12613 e!12612)))

(declare-fun res!10816 () Bool)

(assert (=> b!24326 (=> (not res!10816) (not e!12612))))

(assert (=> b!24326 (= res!10816 (not (isEmpty!309 (left!696 xs!630))))))

(declare-fun d!13505 () Bool)

(declare-fun res!10813 () Bool)

(assert (=> d!13505 (=> res!10813 e!12613)))

(assert (=> d!13505 (= res!10813 (not (is-CC!51 xs!630)))))

(assert (=> d!13505 (= (concInv!46 xs!630) e!12613)))

(assert (= (and d!13505 (not res!10813)) b!24326))

(assert (= (and b!24326 res!10816) b!24327))

(assert (= (and b!24327 res!10815) b!24328))

(assert (= (and b!24328 res!10814) b!24329))

(declare-fun m!25561 () Bool)

(assert (=> b!24329 m!25561))

(declare-fun m!25563 () Bool)

(assert (=> b!24328 m!25563))

(declare-fun m!25565 () Bool)

(assert (=> b!24327 m!25565))

(declare-fun m!25567 () Bool)

(assert (=> b!24326 m!25567))

(assert (=> b!24284 d!13505))

(declare-fun b!24333 () Bool)

(declare-fun e!12614 () Bool)

(assert (=> b!24333 (= e!12614 (concInv!46 (right!699 ys!119)))))

(declare-fun b!24332 () Bool)

(declare-fun res!10818 () Bool)

(assert (=> b!24332 (=> (not res!10818) (not e!12614))))

(assert (=> b!24332 (= res!10818 (concInv!46 (left!696 ys!119)))))

(declare-fun b!24331 () Bool)

(declare-fun res!10819 () Bool)

(assert (=> b!24331 (=> (not res!10819) (not e!12614))))

(assert (=> b!24331 (= res!10819 (not (isEmpty!309 (right!699 ys!119))))))

(declare-fun b!24330 () Bool)

(declare-fun e!12615 () Bool)

(assert (=> b!24330 (= e!12615 e!12614)))

(declare-fun res!10820 () Bool)

(assert (=> b!24330 (=> (not res!10820) (not e!12614))))

(assert (=> b!24330 (= res!10820 (not (isEmpty!309 (left!696 ys!119))))))

(declare-fun d!13507 () Bool)

(declare-fun res!10817 () Bool)

(assert (=> d!13507 (=> res!10817 e!12615)))

(assert (=> d!13507 (= res!10817 (not (is-CC!51 ys!119)))))

(assert (=> d!13507 (= (concInv!46 ys!119) e!12615)))

(assert (= (and d!13507 (not res!10817)) b!24330))

(assert (= (and b!24330 res!10820) b!24331))

(assert (= (and b!24331 res!10819) b!24332))

(assert (= (and b!24332 res!10818) b!24333))

(declare-fun m!25569 () Bool)

(assert (=> b!24333 m!25569))

(declare-fun m!25571 () Bool)

(assert (=> b!24332 m!25571))

(declare-fun m!25573 () Bool)

(assert (=> b!24331 m!25573))

(declare-fun m!25575 () Bool)

(assert (=> b!24330 m!25575))

(assert (=> b!24297 d!13507))

(declare-fun b!24337 () Bool)

(declare-fun e!12617 () Bool)

(assert (=> b!24337 (= e!12617 (balanced!47 (right!699 xs!630)))))

(declare-fun b!24336 () Bool)

(declare-fun res!10821 () Bool)

(assert (=> b!24336 (=> (not res!10821) (not e!12617))))

(assert (=> b!24336 (= res!10821 (balanced!47 (left!696 xs!630)))))

(declare-fun b!24334 () Bool)

(declare-fun e!12616 () Bool)

(assert (=> b!24334 (= e!12616 e!12617)))

(declare-fun res!10823 () Bool)

(assert (=> b!24334 (=> (not res!10823) (not e!12617))))

(assert (=> b!24334 (= res!10823 (>= (- (level!41 (left!696 xs!630)) (level!41 (right!699 xs!630))) (- 1)))))

(declare-fun b!24335 () Bool)

(declare-fun res!10824 () Bool)

(assert (=> b!24335 (=> (not res!10824) (not e!12617))))

(assert (=> b!24335 (= res!10824 (<= (- (level!41 (left!696 xs!630)) (level!41 (right!699 xs!630))) 1))))

(declare-fun d!13509 () Bool)

(declare-fun res!10822 () Bool)

(assert (=> d!13509 (=> res!10822 e!12616)))

(assert (=> d!13509 (= res!10822 (not (is-CC!51 xs!630)))))

(assert (=> d!13509 (= (balanced!47 xs!630) e!12616)))

(assert (= (and d!13509 (not res!10822)) b!24334))

(assert (= (and b!24334 res!10823) b!24335))

(assert (= (and b!24335 res!10824) b!24336))

(assert (= (and b!24336 res!10821) b!24337))

(declare-fun m!25577 () Bool)

(assert (=> b!24337 m!25577))

(declare-fun m!25579 () Bool)

(assert (=> b!24336 m!25579))

(declare-fun m!25581 () Bool)

(assert (=> b!24334 m!25581))

(declare-fun m!25583 () Bool)

(assert (=> b!24334 m!25583))

(assert (=> b!24335 m!25581))

(assert (=> b!24335 m!25583))

(assert (=> b!24292 d!13509))

(declare-fun d!13511 () Bool)

(assert (=> d!13511 (= (isEmpty!309 ys!124) (= ys!124 Empty!62))))

(assert (=> b!24288 d!13511))

(declare-fun b!24341 () Bool)

(declare-fun e!12619 () Bool)

(assert (=> b!24341 (= e!12619 (balanced!47 (right!699 xs!625)))))

(declare-fun b!24340 () Bool)

(declare-fun res!10825 () Bool)

(assert (=> b!24340 (=> (not res!10825) (not e!12619))))

(assert (=> b!24340 (= res!10825 (balanced!47 (left!696 xs!625)))))

(declare-fun b!24338 () Bool)

(declare-fun e!12618 () Bool)

(assert (=> b!24338 (= e!12618 e!12619)))

(declare-fun res!10827 () Bool)

(assert (=> b!24338 (=> (not res!10827) (not e!12619))))

(assert (=> b!24338 (= res!10827 (>= (- (level!41 (left!696 xs!625)) (level!41 (right!699 xs!625))) (- 1)))))

(declare-fun b!24339 () Bool)

(declare-fun res!10828 () Bool)

(assert (=> b!24339 (=> (not res!10828) (not e!12619))))

(assert (=> b!24339 (= res!10828 (<= (- (level!41 (left!696 xs!625)) (level!41 (right!699 xs!625))) 1))))

(declare-fun d!13513 () Bool)

(declare-fun res!10826 () Bool)

(assert (=> d!13513 (=> res!10826 e!12618)))

(assert (=> d!13513 (= res!10826 (not (is-CC!51 xs!625)))))

(assert (=> d!13513 (= (balanced!47 xs!625) e!12618)))

(assert (= (and d!13513 (not res!10826)) b!24338))

(assert (= (and b!24338 res!10827) b!24339))

(assert (= (and b!24339 res!10828) b!24340))

(assert (= (and b!24340 res!10825) b!24341))

(declare-fun m!25585 () Bool)

(assert (=> b!24341 m!25585))

(declare-fun m!25587 () Bool)

(assert (=> b!24340 m!25587))

(declare-fun m!25589 () Bool)

(assert (=> b!24338 m!25589))

(declare-fun m!25591 () Bool)

(assert (=> b!24338 m!25591))

(assert (=> b!24339 m!25589))

(assert (=> b!24339 m!25591))

(assert (=> b!24282 d!13513))

(declare-fun b!24345 () Bool)

(declare-fun e!12621 () Bool)

(assert (=> b!24345 (= e!12621 (balanced!47 (right!699 ys!119)))))

(declare-fun b!24344 () Bool)

(declare-fun res!10829 () Bool)

(assert (=> b!24344 (=> (not res!10829) (not e!12621))))

(assert (=> b!24344 (= res!10829 (balanced!47 (left!696 ys!119)))))

(declare-fun b!24342 () Bool)

(declare-fun e!12620 () Bool)

(assert (=> b!24342 (= e!12620 e!12621)))

(declare-fun res!10831 () Bool)

(assert (=> b!24342 (=> (not res!10831) (not e!12621))))

(assert (=> b!24342 (= res!10831 (>= (- (level!41 (left!696 ys!119)) (level!41 (right!699 ys!119))) (- 1)))))

(declare-fun b!24343 () Bool)

(declare-fun res!10832 () Bool)

(assert (=> b!24343 (=> (not res!10832) (not e!12621))))

(assert (=> b!24343 (= res!10832 (<= (- (level!41 (left!696 ys!119)) (level!41 (right!699 ys!119))) 1))))

(declare-fun d!13515 () Bool)

(declare-fun res!10830 () Bool)

(assert (=> d!13515 (=> res!10830 e!12620)))

(assert (=> d!13515 (= res!10830 (not (is-CC!51 ys!119)))))

(assert (=> d!13515 (= (balanced!47 ys!119) e!12620)))

(assert (= (and d!13515 (not res!10830)) b!24342))

(assert (= (and b!24342 res!10831) b!24343))

(assert (= (and b!24343 res!10832) b!24344))

(assert (= (and b!24344 res!10829) b!24345))

(declare-fun m!25593 () Bool)

(assert (=> b!24345 m!25593))

(declare-fun m!25595 () Bool)

(assert (=> b!24344 m!25595))

(declare-fun m!25597 () Bool)

(assert (=> b!24342 m!25597))

(declare-fun m!25599 () Bool)

(assert (=> b!24342 m!25599))

(assert (=> b!24343 m!25597))

(assert (=> b!24343 m!25599))

(assert (=> b!24280 d!13515))

(declare-fun d!13517 () Bool)

(assert (=> d!13517 (= (isEmpty!309 xs!630) (= xs!630 Empty!62))))

(assert (=> b!24289 d!13517))

(declare-fun b!24352 () Bool)

(declare-fun e!12624 () Bool)

(declare-fun tp!5252 () Bool)

(declare-fun tp!5253 () Bool)

(assert (=> b!24352 (= e!12624 (and tp!5252 tp!5253))))

(declare-fun b!24353 () Bool)

(assert (=> b!24353 (= e!12624 tp_is_empty!149)))

(assert (=> b!24287 (= tp!5247 e!12624)))

(assert (= (and b!24287 (is-CC!51 (left!696 xs!630))) b!24352))

(assert (= (and b!24287 (is-Single!51 (left!696 xs!630))) b!24353))

(declare-fun b!24354 () Bool)

(declare-fun e!12625 () Bool)

(declare-fun tp!5254 () Bool)

(declare-fun tp!5255 () Bool)

(assert (=> b!24354 (= e!12625 (and tp!5254 tp!5255))))

(declare-fun b!24355 () Bool)

(assert (=> b!24355 (= e!12625 tp_is_empty!149)))

(assert (=> b!24287 (= tp!5246 e!12625)))

(assert (= (and b!24287 (is-CC!51 (right!699 xs!630))) b!24354))

(assert (= (and b!24287 (is-Single!51 (right!699 xs!630))) b!24355))

(declare-fun b!24356 () Bool)

(declare-fun e!12626 () Bool)

(declare-fun tp!5256 () Bool)

(declare-fun tp!5257 () Bool)

(assert (=> b!24356 (= e!12626 (and tp!5256 tp!5257))))

(declare-fun b!24357 () Bool)

(assert (=> b!24357 (= e!12626 tp_is_empty!149)))

(assert (=> b!24296 (= tp!5245 e!12626)))

(assert (= (and b!24296 (is-CC!51 (left!696 ys!124))) b!24356))

(assert (= (and b!24296 (is-Single!51 (left!696 ys!124))) b!24357))

(declare-fun b!24358 () Bool)

(declare-fun e!12627 () Bool)

(declare-fun tp!5258 () Bool)

(declare-fun tp!5259 () Bool)

(assert (=> b!24358 (= e!12627 (and tp!5258 tp!5259))))

(declare-fun b!24359 () Bool)

(assert (=> b!24359 (= e!12627 tp_is_empty!149)))

(assert (=> b!24296 (= tp!5243 e!12627)))

(assert (= (and b!24296 (is-CC!51 (right!699 ys!124))) b!24358))

(assert (= (and b!24296 (is-Single!51 (right!699 ys!124))) b!24359))

(declare-fun b!24360 () Bool)

(declare-fun e!12628 () Bool)

(declare-fun tp!5260 () Bool)

(declare-fun tp!5261 () Bool)

(assert (=> b!24360 (= e!12628 (and tp!5260 tp!5261))))

(declare-fun b!24361 () Bool)

(assert (=> b!24361 (= e!12628 tp_is_empty!149)))

(assert (=> b!24281 (= tp!5241 e!12628)))

(assert (= (and b!24281 (is-CC!51 (left!696 xs!625))) b!24360))

(assert (= (and b!24281 (is-Single!51 (left!696 xs!625))) b!24361))

(declare-fun b!24362 () Bool)

(declare-fun e!12629 () Bool)

(declare-fun tp!5262 () Bool)

(declare-fun tp!5263 () Bool)

(assert (=> b!24362 (= e!12629 (and tp!5262 tp!5263))))

(declare-fun b!24363 () Bool)

(assert (=> b!24363 (= e!12629 tp_is_empty!149)))

(assert (=> b!24281 (= tp!5244 e!12629)))

(assert (= (and b!24281 (is-CC!51 (right!699 xs!625))) b!24362))

(assert (= (and b!24281 (is-Single!51 (right!699 xs!625))) b!24363))

(declare-fun b!24364 () Bool)

(declare-fun e!12630 () Bool)

(declare-fun tp!5264 () Bool)

(declare-fun tp!5265 () Bool)

(assert (=> b!24364 (= e!12630 (and tp!5264 tp!5265))))

(declare-fun b!24365 () Bool)

(assert (=> b!24365 (= e!12630 tp_is_empty!149)))

(assert (=> b!24293 (= tp!5240 e!12630)))

(assert (= (and b!24293 (is-CC!51 (left!696 ys!119))) b!24364))

(assert (= (and b!24293 (is-Single!51 (left!696 ys!119))) b!24365))

(declare-fun b!24366 () Bool)

(declare-fun e!12631 () Bool)

(declare-fun tp!5266 () Bool)

(declare-fun tp!5267 () Bool)

(assert (=> b!24366 (= e!12631 (and tp!5266 tp!5267))))

(declare-fun b!24367 () Bool)

(assert (=> b!24367 (= e!12631 tp_is_empty!149)))

(assert (=> b!24293 (= tp!5242 e!12631)))

(assert (= (and b!24293 (is-CC!51 (right!699 ys!119))) b!24366))

(assert (= (and b!24293 (is-Single!51 (right!699 ys!119))) b!24367))

(push 1)

(assert (not b!24320))

(assert (not b!24327))

(assert tp_is_empty!149)

(assert (not b!24321))

(assert (not b!24366))

(assert (not b!24356))

(assert (not b!24329))

(assert (not b!24362))

(assert (not b!24325))

(assert (not b!24364))

(assert (not b!24322))

(assert (not b!24331))

(assert (not b!24334))

(assert (not b!24342))

(assert (not b!24339))

(assert (not b!24324))

(assert (not b!24332))

(assert (not b!24345))

(assert (not b!24360))

(assert (not b!24343))

(assert (not b!24341))

(assert (not b!24335))

(assert (not b!24352))

(assert (not b!24328))

(assert (not b!24319))

(assert (not b!24338))

(assert (not b!24358))

(assert (not b!24309))

(assert (not b!24330))

(assert (not b!24307))

(assert (not b!24308))

(assert (not b!24336))

(assert (not b!24318))

(assert (not b!24323))

(assert (not b!24340))

(assert (not b!24306))

(assert (not b!24337))

(assert (not b!24344))

(assert (not b!24333))

(assert (not b!24326))

(assert (not b!24354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

