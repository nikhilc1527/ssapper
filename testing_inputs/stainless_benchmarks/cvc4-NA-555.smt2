; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4174 () Bool)

(assert start!4174)

(declare-fun b!33455 () Bool)

(declare-fun e!16922 () Bool)

(declare-fun tp!6909 () Bool)

(declare-fun tp!6906 () Bool)

(assert (=> b!33455 (= e!16922 (and tp!6909 tp!6906))))

(declare-fun b!33456 () Bool)

(declare-fun e!16925 () Bool)

(declare-fun tp_is_empty!209 () Bool)

(assert (=> b!33456 (= e!16925 tp_is_empty!209)))

(declare-fun b!33457 () Bool)

(declare-fun res!15461 () Bool)

(declare-fun e!16923 () Bool)

(assert (=> b!33457 (=> res!15461 e!16923)))

(declare-datatypes () ((T!1865 (T!1866 (val!105 Int)))))

(declare-datatypes () ((Conc!82 (CC!81 (left!726 Conc!82) (right!729 Conc!82)) (Single!81 (x!9010 T!1865)) (Empty!92))))

(declare-fun res!5582 () Conc!82)

(declare-fun xs!586 () Conc!82)

(declare-fun level!65 (Conc!82) Int)

(assert (=> b!33457 (= res!15461 (not (= (level!65 res!5582) (level!65 xs!586))))))

(declare-fun b!33458 () Bool)

(declare-fun tp!6908 () Bool)

(declare-fun tp!6907 () Bool)

(assert (=> b!33458 (= e!16925 (and tp!6908 tp!6907))))

(declare-fun b!33459 () Bool)

(declare-fun res!15465 () Bool)

(assert (=> b!33459 (=> res!15465 e!16923)))

(declare-fun balanced!75 (Conc!82) Bool)

(assert (=> b!33459 (= res!15465 (not (balanced!75 res!5582)))))

(declare-fun b!33460 () Bool)

(declare-fun e!16924 () Bool)

(assert (=> b!33460 (= e!16924 e!16923)))

(declare-fun res!15463 () Bool)

(assert (=> b!33460 (=> res!15463 e!16923)))

(declare-fun y!785 () T!1865)

(declare-fun i!263 () Int)

(declare-fun instAppendUpdateAxiom!8 (Conc!82 Int T!1865) Bool)

(assert (=> b!33460 (= res!15463 (not (instAppendUpdateAxiom!8 xs!586 i!263 y!785)))))

(declare-fun b!33461 () Bool)

(assert (=> b!33461 (= e!16922 tp_is_empty!209)))

(declare-fun b!33462 () Bool)

(declare-fun res!15466 () Bool)

(assert (=> b!33462 (=> (not res!15466) (not e!16924))))

(assert (=> b!33462 (= res!15466 (not (is-Single!81 xs!586)))))

(declare-fun b!33463 () Bool)

(declare-fun res!15464 () Bool)

(assert (=> b!33463 (=> (not res!15464) (not e!16924))))

(declare-fun update!12 (Conc!82 Int T!1865) Conc!82)

(declare-fun size!296 (Conc!82) Int)

(assert (=> b!33463 (= res!15464 (= res!5582 (CC!81 (left!726 xs!586) (update!12 (right!729 xs!586) (- i!263 (size!296 (left!726 xs!586))) y!785))))))

(declare-fun b!33464 () Bool)

(declare-fun res!15468 () Bool)

(assert (=> b!33464 (=> (not res!15468) (not e!16924))))

(assert (=> b!33464 (= res!15468 (balanced!75 xs!586))))

(declare-fun b!33465 () Bool)

(declare-fun res!15460 () Bool)

(assert (=> b!33465 (=> (not res!15460) (not e!16924))))

(assert (=> b!33465 (= res!15460 (>= i!263 0))))

(declare-fun b!33466 () Bool)

(declare-fun res!15459 () Bool)

(assert (=> b!33466 (=> (not res!15459) (not e!16924))))

(assert (=> b!33466 (= res!15459 (>= i!263 (size!296 (left!726 xs!586))))))

(declare-fun b!33467 () Bool)

(declare-fun res!15462 () Bool)

(assert (=> b!33467 (=> res!15462 e!16923)))

(declare-fun concInv!74 (Conc!82) Bool)

(assert (=> b!33467 (= res!15462 (not (concInv!74 res!5582)))))

(declare-fun b!33468 () Bool)

(declare-datatypes () ((List!372 (Cons!366 (h!283 T!1865) (t!4390 List!372)) (Nil!367))))

(declare-fun toList!127 (Conc!82) List!372)

(declare-fun updated!10 (List!372 Int T!1865) List!372)

(assert (=> b!33468 (= e!16923 (not (= (toList!127 res!5582) (updated!10 (toList!127 xs!586) i!263 y!785))))))

(declare-fun b!33469 () Bool)

(declare-fun res!15467 () Bool)

(assert (=> b!33469 (=> (not res!15467) (not e!16924))))

(assert (=> b!33469 (= res!15467 (< i!263 (size!296 xs!586)))))

(declare-fun res!15469 () Bool)

(assert (=> start!4174 (=> (not res!15469) (not e!16924))))

(assert (=> start!4174 (= res!15469 (concInv!74 xs!586))))

(assert (=> start!4174 e!16924))

(assert (=> start!4174 e!16922))

(assert (=> start!4174 true))

(assert (=> start!4174 e!16925))

(assert (=> start!4174 tp_is_empty!209))

(declare-fun b!33470 () Bool)

(declare-fun res!15458 () Bool)

(assert (=> b!33470 (=> (not res!15458) (not e!16924))))

(declare-fun isEmpty!336 (Conc!82) Bool)

(assert (=> b!33470 (= res!15458 (not (isEmpty!336 xs!586)))))

(assert (= (and start!4174 res!15469) b!33464))

(assert (= (and b!33464 res!15468) b!33470))

(assert (= (and b!33470 res!15458) b!33465))

(assert (= (and b!33465 res!15460) b!33469))

(assert (= (and b!33469 res!15467) b!33462))

(assert (= (and b!33462 res!15466) b!33466))

(assert (= (and b!33466 res!15459) b!33463))

(assert (= (and b!33463 res!15464) b!33460))

(assert (= (and b!33460 (not res!15463)) b!33457))

(assert (= (and b!33457 (not res!15461)) b!33467))

(assert (= (and b!33467 (not res!15462)) b!33459))

(assert (= (and b!33459 (not res!15465)) b!33468))

(assert (= (and start!4174 (is-CC!81 xs!586)) b!33455))

(assert (= (and start!4174 (is-Single!81 xs!586)) b!33461))

(assert (= (and start!4174 (is-CC!81 res!5582)) b!33458))

(assert (= (and start!4174 (is-Single!81 res!5582)) b!33456))

(declare-fun m!35713 () Bool)

(assert (=> b!33466 m!35713))

(declare-fun m!35715 () Bool)

(assert (=> b!33457 m!35715))

(declare-fun m!35717 () Bool)

(assert (=> b!33457 m!35717))

(assert (=> b!33463 m!35713))

(declare-fun m!35719 () Bool)

(assert (=> b!33463 m!35719))

(declare-fun m!35721 () Bool)

(assert (=> b!33468 m!35721))

(declare-fun m!35723 () Bool)

(assert (=> b!33468 m!35723))

(assert (=> b!33468 m!35723))

(declare-fun m!35725 () Bool)

(assert (=> b!33468 m!35725))

(declare-fun m!35727 () Bool)

(assert (=> b!33470 m!35727))

(declare-fun m!35729 () Bool)

(assert (=> b!33469 m!35729))

(declare-fun m!35731 () Bool)

(assert (=> b!33459 m!35731))

(declare-fun m!35733 () Bool)

(assert (=> b!33467 m!35733))

(declare-fun m!35735 () Bool)

(assert (=> b!33460 m!35735))

(declare-fun m!35737 () Bool)

(assert (=> b!33464 m!35737))

(declare-fun m!35739 () Bool)

(assert (=> start!4174 m!35739))

(push 1)

(assert (not b!33464))

(assert (not b!33469))

(assert (not b!33467))

(assert (not b!33460))

(assert (not b!33470))

(assert (not start!4174))

(assert tp_is_empty!209)

(assert (not b!33457))

(assert (not b!33459))

(assert (not b!33455))

(assert (not b!33463))

(assert (not b!33458))

(assert (not b!33466))

(assert (not b!33468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!33481 () Bool)

(declare-fun res!15480 () Bool)

(declare-fun e!16930 () Bool)

(assert (=> b!33481 (=> (not res!15480) (not e!16930))))

(assert (=> b!33481 (= res!15480 (balanced!75 (left!726 xs!586)))))

(declare-fun b!33482 () Bool)

(assert (=> b!33482 (= e!16930 (balanced!75 (right!729 xs!586)))))

(declare-fun d!16809 () Bool)

(declare-fun res!15481 () Bool)

(declare-fun e!16931 () Bool)

(assert (=> d!16809 (=> res!15481 e!16931)))

(assert (=> d!16809 (= res!15481 (not (is-CC!81 xs!586)))))

(assert (=> d!16809 (= (balanced!75 xs!586) e!16931)))

(declare-fun b!33480 () Bool)

(declare-fun res!15478 () Bool)

(assert (=> b!33480 (=> (not res!15478) (not e!16930))))

(assert (=> b!33480 (= res!15478 (<= (- (level!65 (left!726 xs!586)) (level!65 (right!729 xs!586))) 1))))

(declare-fun b!33479 () Bool)

(assert (=> b!33479 (= e!16931 e!16930)))

(declare-fun res!15479 () Bool)

(assert (=> b!33479 (=> (not res!15479) (not e!16930))))

(assert (=> b!33479 (= res!15479 (>= (- (level!65 (left!726 xs!586)) (level!65 (right!729 xs!586))) (- 1)))))

(assert (= (and d!16809 (not res!15481)) b!33479))

(assert (= (and b!33479 res!15479) b!33480))

(assert (= (and b!33480 res!15478) b!33481))

(assert (= (and b!33481 res!15480) b!33482))

(declare-fun m!35741 () Bool)

(assert (=> b!33481 m!35741))

(declare-fun m!35743 () Bool)

(assert (=> b!33482 m!35743))

(declare-fun m!35745 () Bool)

(assert (=> b!33480 m!35745))

(declare-fun m!35747 () Bool)

(assert (=> b!33480 m!35747))

(assert (=> b!33479 m!35745))

(assert (=> b!33479 m!35747))

(assert (=> b!33464 d!16809))

(declare-fun e!16942 () Bool)

(declare-fun lt!6299 () Conc!82)

(declare-fun b!33507 () Bool)

(assert (=> b!33507 (= e!16942 (= (toList!127 lt!6299) (updated!10 (toList!127 (right!729 xs!586)) (- i!263 (size!296 (left!726 xs!586))) y!785)))))

(declare-fun b!33508 () Bool)

(declare-fun res!15500 () Bool)

(assert (=> b!33508 (=> (not res!15500) (not e!16942))))

(assert (=> b!33508 (= res!15500 (balanced!75 lt!6299))))

(declare-fun e!16945 () Conc!82)

(declare-fun b!33509 () Bool)

(assert (=> b!33509 (= e!16945 (CC!81 (left!726 (right!729 xs!586)) (update!12 (right!729 (right!729 xs!586)) (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) y!785)))))

(declare-fun b!33510 () Bool)

(declare-fun e!16944 () Conc!82)

(assert (=> b!33510 (= e!16944 (Single!81 y!785))))

(declare-fun b!33511 () Bool)

(declare-fun e!16943 () Bool)

(assert (=> b!33511 (= e!16943 (balanced!75 (right!729 xs!586)))))

(declare-fun d!16811 () Bool)

(assert (=> d!16811 e!16942))

(declare-fun res!15499 () Bool)

(assert (=> d!16811 (=> (not res!15499) (not e!16942))))

(assert (=> d!16811 (= res!15499 (instAppendUpdateAxiom!8 (right!729 xs!586) (- i!263 (size!296 (left!726 xs!586))) y!785))))

(assert (=> d!16811 (= lt!6299 e!16944)))

(declare-fun c!7187 () Bool)

(assert (=> d!16811 (= c!7187 (is-Single!81 (right!729 xs!586)))))

(declare-fun e!16946 () Bool)

(assert (=> d!16811 e!16946))

(declare-fun res!15504 () Bool)

(assert (=> d!16811 (=> (not res!15504) (not e!16946))))

(assert (=> d!16811 (= res!15504 e!16943)))

(declare-fun res!15502 () Bool)

(assert (=> d!16811 (=> (not res!15502) (not e!16943))))

(assert (=> d!16811 (= res!15502 (concInv!74 (right!729 xs!586)))))

(assert (=> d!16811 (= (update!12 (right!729 xs!586) (- i!263 (size!296 (left!726 xs!586))) y!785) lt!6299)))

(declare-fun b!33512 () Bool)

(declare-fun res!15503 () Bool)

(assert (=> b!33512 (=> (not res!15503) (not e!16942))))

(assert (=> b!33512 (= res!15503 (concInv!74 lt!6299))))

(declare-fun b!33513 () Bool)

(declare-fun res!15506 () Bool)

(assert (=> b!33513 (=> (not res!15506) (not e!16946))))

(assert (=> b!33513 (= res!15506 (>= (- i!263 (size!296 (left!726 xs!586))) 0))))

(declare-fun b!33514 () Bool)

(assert (=> b!33514 (= e!16946 (< (- i!263 (size!296 (left!726 xs!586))) (size!296 (right!729 xs!586))))))

(declare-fun b!33515 () Bool)

(declare-fun res!15505 () Bool)

(assert (=> b!33515 (=> (not res!15505) (not e!16942))))

(assert (=> b!33515 (= res!15505 (= (level!65 lt!6299) (level!65 (right!729 xs!586))))))

(declare-fun b!33516 () Bool)

(declare-fun res!15501 () Bool)

(assert (=> b!33516 (=> (not res!15501) (not e!16946))))

(assert (=> b!33516 (= res!15501 (not (isEmpty!336 (right!729 xs!586))))))

(declare-fun b!33517 () Bool)

(assert (=> b!33517 (= e!16945 (CC!81 (update!12 (left!726 (right!729 xs!586)) (- i!263 (size!296 (left!726 xs!586))) y!785) (right!729 (right!729 xs!586))))))

(declare-fun b!33518 () Bool)

(assert (=> b!33518 (= e!16944 e!16945)))

(declare-fun c!7188 () Bool)

(assert (=> b!33518 (= c!7188 (< (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))))))

(assert (= (and d!16811 res!15502) b!33511))

(assert (= (and d!16811 res!15504) b!33516))

(assert (= (and b!33516 res!15501) b!33513))

(assert (= (and b!33513 res!15506) b!33514))

(assert (= (and b!33518 c!7188) b!33517))

(assert (= (and b!33518 (not c!7188)) b!33509))

(assert (= (and d!16811 c!7187) b!33510))

(assert (= (and d!16811 (not c!7187)) b!33518))

(assert (= (and d!16811 res!15499) b!33515))

(assert (= (and b!33515 res!15505) b!33512))

(assert (= (and b!33512 res!15503) b!33508))

(assert (= (and b!33508 res!15500) b!33507))

(declare-fun m!35749 () Bool)

(assert (=> b!33509 m!35749))

(declare-fun m!35751 () Bool)

(assert (=> b!33509 m!35751))

(declare-fun m!35753 () Bool)

(assert (=> b!33515 m!35753))

(assert (=> b!33515 m!35747))

(declare-fun m!35755 () Bool)

(assert (=> b!33512 m!35755))

(declare-fun m!35757 () Bool)

(assert (=> b!33516 m!35757))

(assert (=> b!33511 m!35743))

(declare-fun m!35759 () Bool)

(assert (=> b!33517 m!35759))

(assert (=> b!33518 m!35749))

(declare-fun m!35761 () Bool)

(assert (=> b!33514 m!35761))

(declare-fun m!35763 () Bool)

(assert (=> b!33508 m!35763))

(declare-fun m!35765 () Bool)

(assert (=> b!33507 m!35765))

(declare-fun m!35767 () Bool)

(assert (=> b!33507 m!35767))

(assert (=> b!33507 m!35767))

(declare-fun m!35769 () Bool)

(assert (=> b!33507 m!35769))

(declare-fun m!35771 () Bool)

(assert (=> d!16811 m!35771))

(declare-fun m!35773 () Bool)

(assert (=> d!16811 m!35773))

(assert (=> b!33463 d!16811))

(declare-fun b!33529 () Bool)

(declare-fun e!16951 () Int)

(assert (=> b!33529 (= e!16951 1)))

(declare-fun b!33528 () Bool)

(declare-fun e!16952 () Int)

(assert (=> b!33528 (= e!16952 e!16951)))

(declare-fun c!7194 () Bool)

(assert (=> b!33528 (= c!7194 (is-Single!81 (left!726 xs!586)))))

(declare-fun d!16813 () Bool)

(declare-fun lt!6302 () Int)

(assert (=> d!16813 (>= lt!6302 0)))

(assert (=> d!16813 (= lt!6302 e!16952)))

(declare-fun c!7193 () Bool)

(assert (=> d!16813 (= c!7193 (is-Empty!92 (left!726 xs!586)))))

(assert (=> d!16813 (= (size!296 (left!726 xs!586)) lt!6302)))

(declare-fun b!33530 () Bool)

(assert (=> b!33530 (= e!16951 (+ (size!296 (left!726 (left!726 xs!586))) (size!296 (right!729 (left!726 xs!586)))))))

(declare-fun b!33527 () Bool)

(assert (=> b!33527 (= e!16952 0)))

(assert (= (and b!33528 c!7194) b!33529))

(assert (= (and b!33528 (not c!7194)) b!33530))

(assert (= (and d!16813 c!7193) b!33527))

(assert (= (and d!16813 (not c!7193)) b!33528))

(declare-fun m!35775 () Bool)

(assert (=> b!33530 m!35775))

(declare-fun m!35777 () Bool)

(assert (=> b!33530 m!35777))

(assert (=> b!33463 d!16813))

(declare-fun b!33533 () Bool)

(declare-fun e!16953 () Int)

(assert (=> b!33533 (= e!16953 1)))

(declare-fun b!33532 () Bool)

(declare-fun e!16954 () Int)

(assert (=> b!33532 (= e!16954 e!16953)))

(declare-fun c!7196 () Bool)

(assert (=> b!33532 (= c!7196 (is-Single!81 xs!586))))

(declare-fun d!16815 () Bool)

(declare-fun lt!6303 () Int)

(assert (=> d!16815 (>= lt!6303 0)))

(assert (=> d!16815 (= lt!6303 e!16954)))

(declare-fun c!7195 () Bool)

(assert (=> d!16815 (= c!7195 (is-Empty!92 xs!586))))

(assert (=> d!16815 (= (size!296 xs!586) lt!6303)))

(declare-fun b!33534 () Bool)

(assert (=> b!33534 (= e!16953 (+ (size!296 (left!726 xs!586)) (size!296 (right!729 xs!586))))))

(declare-fun b!33531 () Bool)

(assert (=> b!33531 (= e!16954 0)))

(assert (= (and b!33532 c!7196) b!33533))

(assert (= (and b!33532 (not c!7196)) b!33534))

(assert (= (and d!16815 c!7195) b!33531))

(assert (= (and d!16815 (not c!7195)) b!33532))

(assert (=> b!33534 m!35713))

(assert (=> b!33534 m!35761))

(assert (=> b!33469 d!16815))

(declare-fun d!16817 () Bool)

(assert (=> d!16817 (= (isEmpty!336 xs!586) (= xs!586 Empty!92))))

(assert (=> b!33470 d!16817))

(declare-fun d!16819 () Bool)

(declare-fun e!16960 () Bool)

(assert (=> d!16819 e!16960))

(declare-fun res!15512 () Bool)

(assert (=> d!16819 (=> res!15512 e!16960)))

(assert (=> d!16819 (= res!15512 (not (is-CC!81 xs!586)))))

(declare-fun e!16959 () Bool)

(assert (=> d!16819 e!16959))

(declare-fun res!15511 () Bool)

(assert (=> d!16819 (=> (not res!15511) (not e!16959))))

(assert (=> d!16819 (= res!15511 (>= i!263 0))))

(assert (=> d!16819 (= (instAppendUpdateAxiom!8 xs!586 i!263 y!785) true)))

(declare-fun b!33539 () Bool)

(assert (=> b!33539 (= e!16959 (< i!263 (size!296 xs!586)))))

(declare-fun b!33540 () Bool)

(declare-fun appendUpdate!7 (List!372 List!372 Int T!1865) Bool)

(assert (=> b!33540 (= e!16960 (appendUpdate!7 (toList!127 (left!726 xs!586)) (toList!127 (right!729 xs!586)) i!263 y!785))))

(assert (= (and d!16819 res!15511) b!33539))

(assert (= (and d!16819 (not res!15512)) b!33540))

(assert (=> b!33539 m!35729))

(declare-fun m!35779 () Bool)

(assert (=> b!33540 m!35779))

(assert (=> b!33540 m!35767))

(assert (=> b!33540 m!35779))

(assert (=> b!33540 m!35767))

(declare-fun m!35781 () Bool)

(assert (=> b!33540 m!35781))

(assert (=> b!33460 d!16819))

(declare-fun d!16821 () Bool)

(declare-fun res!15523 () Bool)

(declare-fun e!16965 () Bool)

(assert (=> d!16821 (=> res!15523 e!16965)))

(assert (=> d!16821 (= res!15523 (not (is-CC!81 res!5582)))))

(assert (=> d!16821 (= (concInv!74 res!5582) e!16965)))

(declare-fun b!33551 () Bool)

(declare-fun res!15524 () Bool)

(declare-fun e!16966 () Bool)

(assert (=> b!33551 (=> (not res!15524) (not e!16966))))

(assert (=> b!33551 (= res!15524 (concInv!74 (left!726 res!5582)))))

(declare-fun b!33550 () Bool)

(declare-fun res!15521 () Bool)

(assert (=> b!33550 (=> (not res!15521) (not e!16966))))

(assert (=> b!33550 (= res!15521 (not (isEmpty!336 (right!729 res!5582))))))

(declare-fun b!33549 () Bool)

(assert (=> b!33549 (= e!16965 e!16966)))

(declare-fun res!15522 () Bool)

(assert (=> b!33549 (=> (not res!15522) (not e!16966))))

(assert (=> b!33549 (= res!15522 (not (isEmpty!336 (left!726 res!5582))))))

(declare-fun b!33552 () Bool)

(assert (=> b!33552 (= e!16966 (concInv!74 (right!729 res!5582)))))

(assert (= (and d!16821 (not res!15523)) b!33549))

(assert (= (and b!33549 res!15522) b!33550))

(assert (= (and b!33550 res!15521) b!33551))

(assert (= (and b!33551 res!15524) b!33552))

(declare-fun m!35783 () Bool)

(assert (=> b!33551 m!35783))

(declare-fun m!35785 () Bool)

(assert (=> b!33550 m!35785))

(declare-fun m!35787 () Bool)

(assert (=> b!33549 m!35787))

(declare-fun m!35789 () Bool)

(assert (=> b!33552 m!35789))

(assert (=> b!33467 d!16821))

(declare-fun b!33558 () Bool)

(declare-fun e!16969 () Int)

(declare-fun lt!6310 () Int)

(declare-fun lt!6312 () Int)

(assert (=> b!33558 (= e!16969 (+ 1 (ite (>= lt!6310 lt!6312) lt!6310 lt!6312)))))

(assert (=> b!33558 (= lt!6312 (level!65 (right!729 res!5582)))))

(assert (=> b!33558 (= lt!6310 (level!65 (left!726 res!5582)))))

(declare-fun d!16823 () Bool)

(declare-fun lt!6311 () Int)

(assert (=> d!16823 (>= lt!6311 0)))

(assert (=> d!16823 (= lt!6311 e!16969)))

(declare-fun c!7199 () Bool)

(assert (=> d!16823 (= c!7199 (or (is-Empty!92 res!5582) (is-Single!81 res!5582)))))

(assert (=> d!16823 (= (level!65 res!5582) lt!6311)))

(declare-fun b!33557 () Bool)

(assert (=> b!33557 (= e!16969 0)))

(assert (= (and d!16823 c!7199) b!33557))

(assert (= (and d!16823 (not c!7199)) b!33558))

(declare-fun m!35791 () Bool)

(assert (=> b!33558 m!35791))

(declare-fun m!35793 () Bool)

(assert (=> b!33558 m!35793))

(assert (=> b!33457 d!16823))

(declare-fun b!33560 () Bool)

(declare-fun e!16970 () Int)

(declare-fun lt!6313 () Int)

(declare-fun lt!6315 () Int)

(assert (=> b!33560 (= e!16970 (+ 1 (ite (>= lt!6313 lt!6315) lt!6313 lt!6315)))))

(assert (=> b!33560 (= lt!6315 (level!65 (right!729 xs!586)))))

(assert (=> b!33560 (= lt!6313 (level!65 (left!726 xs!586)))))

(declare-fun d!16825 () Bool)

(declare-fun lt!6314 () Int)

(assert (=> d!16825 (>= lt!6314 0)))

(assert (=> d!16825 (= lt!6314 e!16970)))

(declare-fun c!7200 () Bool)

(assert (=> d!16825 (= c!7200 (or (is-Empty!92 xs!586) (is-Single!81 xs!586)))))

(assert (=> d!16825 (= (level!65 xs!586) lt!6314)))

(declare-fun b!33559 () Bool)

(assert (=> b!33559 (= e!16970 0)))

(assert (= (and d!16825 c!7200) b!33559))

(assert (= (and d!16825 (not c!7200)) b!33560))

(assert (=> b!33560 m!35747))

(assert (=> b!33560 m!35745))

(assert (=> b!33457 d!16825))

(declare-fun b!33563 () Bool)

(declare-fun res!15527 () Bool)

(declare-fun e!16971 () Bool)

(assert (=> b!33563 (=> (not res!15527) (not e!16971))))

(assert (=> b!33563 (= res!15527 (balanced!75 (left!726 res!5582)))))

(declare-fun b!33564 () Bool)

(assert (=> b!33564 (= e!16971 (balanced!75 (right!729 res!5582)))))

(declare-fun d!16827 () Bool)

(declare-fun res!15528 () Bool)

(declare-fun e!16972 () Bool)

(assert (=> d!16827 (=> res!15528 e!16972)))

(assert (=> d!16827 (= res!15528 (not (is-CC!81 res!5582)))))

(assert (=> d!16827 (= (balanced!75 res!5582) e!16972)))

(declare-fun b!33562 () Bool)

(declare-fun res!15525 () Bool)

(assert (=> b!33562 (=> (not res!15525) (not e!16971))))

(assert (=> b!33562 (= res!15525 (<= (- (level!65 (left!726 res!5582)) (level!65 (right!729 res!5582))) 1))))

(declare-fun b!33561 () Bool)

(assert (=> b!33561 (= e!16972 e!16971)))

(declare-fun res!15526 () Bool)

(assert (=> b!33561 (=> (not res!15526) (not e!16971))))

(assert (=> b!33561 (= res!15526 (>= (- (level!65 (left!726 res!5582)) (level!65 (right!729 res!5582))) (- 1)))))

(assert (= (and d!16827 (not res!15528)) b!33561))

(assert (= (and b!33561 res!15526) b!33562))

(assert (= (and b!33562 res!15525) b!33563))

(assert (= (and b!33563 res!15527) b!33564))

(declare-fun m!35795 () Bool)

(assert (=> b!33563 m!35795))

(declare-fun m!35797 () Bool)

(assert (=> b!33564 m!35797))

(assert (=> b!33562 m!35793))

(assert (=> b!33562 m!35791))

(assert (=> b!33561 m!35793))

(assert (=> b!33561 m!35791))

(assert (=> b!33459 d!16827))

(assert (=> b!33466 d!16813))

(declare-fun b!33574 () Bool)

(declare-fun e!16977 () List!372)

(declare-fun e!16978 () List!372)

(assert (=> b!33574 (= e!16977 e!16978)))

(declare-fun c!7205 () Bool)

(assert (=> b!33574 (= c!7205 (is-Single!81 res!5582))))

(declare-fun b!33576 () Bool)

(declare-fun ++!52 (List!372 List!372) List!372)

(assert (=> b!33576 (= e!16978 (++!52 (toList!127 (left!726 res!5582)) (toList!127 (right!729 res!5582))))))

(declare-fun b!33573 () Bool)

(assert (=> b!33573 (= e!16977 Nil!367)))

(declare-fun b!33575 () Bool)

(assert (=> b!33575 (= e!16978 (Cons!366 (x!9010 res!5582) Nil!367))))

(declare-fun d!16829 () Bool)

(declare-fun lt!6318 () List!372)

(declare-fun size!297 (List!372) Int)

(assert (=> d!16829 (= (size!297 lt!6318) (size!296 res!5582))))

(assert (=> d!16829 (= lt!6318 e!16977)))

(declare-fun c!7206 () Bool)

(assert (=> d!16829 (= c!7206 (is-Empty!92 res!5582))))

(assert (=> d!16829 (= (toList!127 res!5582) lt!6318)))

(assert (= (and b!33574 c!7205) b!33575))

(assert (= (and b!33574 (not c!7205)) b!33576))

(assert (= (and d!16829 c!7206) b!33573))

(assert (= (and d!16829 (not c!7206)) b!33574))

(declare-fun m!35799 () Bool)

(assert (=> b!33576 m!35799))

(declare-fun m!35801 () Bool)

(assert (=> b!33576 m!35801))

(assert (=> b!33576 m!35799))

(assert (=> b!33576 m!35801))

(declare-fun m!35803 () Bool)

(assert (=> b!33576 m!35803))

(declare-fun m!35805 () Bool)

(assert (=> d!16829 m!35805))

(declare-fun m!35807 () Bool)

(assert (=> d!16829 m!35807))

(assert (=> b!33468 d!16829))

(declare-fun d!16831 () Bool)

(declare-fun c!7209 () Bool)

(assert (=> d!16831 (= c!7209 (and (is-Cons!366 (toList!127 xs!586)) (= i!263 0)))))

(declare-fun e!16981 () List!372)

(assert (=> d!16831 (= (updated!10 (toList!127 xs!586) i!263 y!785) e!16981)))

(declare-fun b!33581 () Bool)

(assert (=> b!33581 (= e!16981 (Cons!366 y!785 (t!4390 (toList!127 xs!586))))))

(declare-fun b!33582 () Bool)

(assert (=> b!33582 (= e!16981 (Cons!366 (h!283 (toList!127 xs!586)) (updated!10 (t!4390 (toList!127 xs!586)) (- i!263 1) y!785)))))

(assert (= (and d!16831 c!7209) b!33581))

(assert (= (and d!16831 (not c!7209)) b!33582))

(declare-fun m!35809 () Bool)

(assert (=> b!33582 m!35809))

(assert (=> b!33468 d!16831))

(declare-fun b!33584 () Bool)

(declare-fun e!16982 () List!372)

(declare-fun e!16983 () List!372)

(assert (=> b!33584 (= e!16982 e!16983)))

(declare-fun c!7210 () Bool)

(assert (=> b!33584 (= c!7210 (is-Single!81 xs!586))))

(declare-fun b!33586 () Bool)

(assert (=> b!33586 (= e!16983 (++!52 (toList!127 (left!726 xs!586)) (toList!127 (right!729 xs!586))))))

(declare-fun b!33583 () Bool)

(assert (=> b!33583 (= e!16982 Nil!367)))

(declare-fun b!33585 () Bool)

(assert (=> b!33585 (= e!16983 (Cons!366 (x!9010 xs!586) Nil!367))))

(declare-fun d!16833 () Bool)

(declare-fun lt!6319 () List!372)

(assert (=> d!16833 (= (size!297 lt!6319) (size!296 xs!586))))

(assert (=> d!16833 (= lt!6319 e!16982)))

(declare-fun c!7211 () Bool)

(assert (=> d!16833 (= c!7211 (is-Empty!92 xs!586))))

(assert (=> d!16833 (= (toList!127 xs!586) lt!6319)))

(assert (= (and b!33584 c!7210) b!33585))

(assert (= (and b!33584 (not c!7210)) b!33586))

(assert (= (and d!16833 c!7211) b!33583))

(assert (= (and d!16833 (not c!7211)) b!33584))

(assert (=> b!33586 m!35779))

(assert (=> b!33586 m!35767))

(assert (=> b!33586 m!35779))

(assert (=> b!33586 m!35767))

(declare-fun m!35811 () Bool)

(assert (=> b!33586 m!35811))

(declare-fun m!35813 () Bool)

(assert (=> d!16833 m!35813))

(assert (=> d!16833 m!35729))

(assert (=> b!33468 d!16833))

(declare-fun d!16835 () Bool)

(declare-fun res!15532 () Bool)

(declare-fun e!16984 () Bool)

(assert (=> d!16835 (=> res!15532 e!16984)))

(assert (=> d!16835 (= res!15532 (not (is-CC!81 xs!586)))))

(assert (=> d!16835 (= (concInv!74 xs!586) e!16984)))

(declare-fun b!33589 () Bool)

(declare-fun res!15533 () Bool)

(declare-fun e!16985 () Bool)

(assert (=> b!33589 (=> (not res!15533) (not e!16985))))

(assert (=> b!33589 (= res!15533 (concInv!74 (left!726 xs!586)))))

(declare-fun b!33588 () Bool)

(declare-fun res!15530 () Bool)

(assert (=> b!33588 (=> (not res!15530) (not e!16985))))

(assert (=> b!33588 (= res!15530 (not (isEmpty!336 (right!729 xs!586))))))

(declare-fun b!33587 () Bool)

(assert (=> b!33587 (= e!16984 e!16985)))

(declare-fun res!15531 () Bool)

(assert (=> b!33587 (=> (not res!15531) (not e!16985))))

(assert (=> b!33587 (= res!15531 (not (isEmpty!336 (left!726 xs!586))))))

(declare-fun b!33590 () Bool)

(assert (=> b!33590 (= e!16985 (concInv!74 (right!729 xs!586)))))

(assert (= (and d!16835 (not res!15532)) b!33587))

(assert (= (and b!33587 res!15531) b!33588))

(assert (= (and b!33588 res!15530) b!33589))

(assert (= (and b!33589 res!15533) b!33590))

(declare-fun m!35815 () Bool)

(assert (=> b!33589 m!35815))

(assert (=> b!33588 m!35757))

(declare-fun m!35817 () Bool)

(assert (=> b!33587 m!35817))

(assert (=> b!33590 m!35773))

(assert (=> start!4174 d!16835))

(declare-fun b!33597 () Bool)

(declare-fun e!16988 () Bool)

(declare-fun tp!6914 () Bool)

(declare-fun tp!6915 () Bool)

(assert (=> b!33597 (= e!16988 (and tp!6914 tp!6915))))

(declare-fun b!33598 () Bool)

(assert (=> b!33598 (= e!16988 tp_is_empty!209)))

(assert (=> b!33458 (= tp!6908 e!16988)))

(assert (= (and b!33458 (is-CC!81 (left!726 res!5582))) b!33597))

(assert (= (and b!33458 (is-Single!81 (left!726 res!5582))) b!33598))

(declare-fun b!33599 () Bool)

(declare-fun e!16989 () Bool)

(declare-fun tp!6916 () Bool)

(declare-fun tp!6917 () Bool)

(assert (=> b!33599 (= e!16989 (and tp!6916 tp!6917))))

(declare-fun b!33600 () Bool)

(assert (=> b!33600 (= e!16989 tp_is_empty!209)))

(assert (=> b!33458 (= tp!6907 e!16989)))

(assert (= (and b!33458 (is-CC!81 (right!729 res!5582))) b!33599))

(assert (= (and b!33458 (is-Single!81 (right!729 res!5582))) b!33600))

(declare-fun b!33601 () Bool)

(declare-fun e!16990 () Bool)

(declare-fun tp!6918 () Bool)

(declare-fun tp!6919 () Bool)

(assert (=> b!33601 (= e!16990 (and tp!6918 tp!6919))))

(declare-fun b!33602 () Bool)

(assert (=> b!33602 (= e!16990 tp_is_empty!209)))

(assert (=> b!33455 (= tp!6909 e!16990)))

(assert (= (and b!33455 (is-CC!81 (left!726 xs!586))) b!33601))

(assert (= (and b!33455 (is-Single!81 (left!726 xs!586))) b!33602))

(declare-fun b!33603 () Bool)

(declare-fun e!16991 () Bool)

(declare-fun tp!6920 () Bool)

(declare-fun tp!6921 () Bool)

(assert (=> b!33603 (= e!16991 (and tp!6920 tp!6921))))

(declare-fun b!33604 () Bool)

(assert (=> b!33604 (= e!16991 tp_is_empty!209)))

(assert (=> b!33455 (= tp!6906 e!16991)))

(assert (= (and b!33455 (is-CC!81 (right!729 xs!586))) b!33603))

(assert (= (and b!33455 (is-Single!81 (right!729 xs!586))) b!33604))

(push 1)

(assert (not b!33582))

(assert (not b!33507))

(assert (not b!33481))

(assert (not b!33480))

(assert (not b!33558))

(assert (not d!16833))

(assert (not b!33514))

(assert (not b!33563))

(assert (not b!33599))

(assert (not b!33534))

(assert (not b!33561))

(assert (not b!33530))

(assert (not b!33589))

(assert (not b!33515))

(assert (not b!33560))

(assert (not b!33601))

(assert (not b!33518))

(assert tp_is_empty!209)

(assert (not b!33590))

(assert (not d!16811))

(assert (not b!33539))

(assert (not b!33509))

(assert (not b!33586))

(assert (not b!33512))

(assert (not b!33517))

(assert (not b!33576))

(assert (not b!33511))

(assert (not d!16829))

(assert (not b!33482))

(assert (not b!33562))

(assert (not b!33550))

(assert (not b!33552))

(assert (not b!33508))

(assert (not b!33479))

(assert (not b!33549))

(assert (not b!33564))

(assert (not b!33603))

(assert (not b!33540))

(assert (not b!33516))

(assert (not b!33551))

(assert (not b!33587))

(assert (not b!33597))

(assert (not b!33588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!33607 () Bool)

(declare-fun res!15536 () Bool)

(declare-fun e!16992 () Bool)

(assert (=> b!33607 (=> (not res!15536) (not e!16992))))

(assert (=> b!33607 (= res!15536 (balanced!75 (left!726 (right!729 xs!586))))))

(declare-fun b!33608 () Bool)

(assert (=> b!33608 (= e!16992 (balanced!75 (right!729 (right!729 xs!586))))))

(declare-fun d!16837 () Bool)

(declare-fun res!15537 () Bool)

(declare-fun e!16993 () Bool)

(assert (=> d!16837 (=> res!15537 e!16993)))

(assert (=> d!16837 (= res!15537 (not (is-CC!81 (right!729 xs!586))))))

(assert (=> d!16837 (= (balanced!75 (right!729 xs!586)) e!16993)))

(declare-fun b!33606 () Bool)

(declare-fun res!15534 () Bool)

(assert (=> b!33606 (=> (not res!15534) (not e!16992))))

(assert (=> b!33606 (= res!15534 (<= (- (level!65 (left!726 (right!729 xs!586))) (level!65 (right!729 (right!729 xs!586)))) 1))))

(declare-fun b!33605 () Bool)

(assert (=> b!33605 (= e!16993 e!16992)))

(declare-fun res!15535 () Bool)

(assert (=> b!33605 (=> (not res!15535) (not e!16992))))

(assert (=> b!33605 (= res!15535 (>= (- (level!65 (left!726 (right!729 xs!586))) (level!65 (right!729 (right!729 xs!586)))) (- 1)))))

(assert (= (and d!16837 (not res!15537)) b!33605))

(assert (= (and b!33605 res!15535) b!33606))

(assert (= (and b!33606 res!15534) b!33607))

(assert (= (and b!33607 res!15536) b!33608))

(declare-fun m!35819 () Bool)

(assert (=> b!33607 m!35819))

(declare-fun m!35821 () Bool)

(assert (=> b!33608 m!35821))

(declare-fun m!35823 () Bool)

(assert (=> b!33606 m!35823))

(declare-fun m!35825 () Bool)

(assert (=> b!33606 m!35825))

(assert (=> b!33605 m!35823))

(assert (=> b!33605 m!35825))

(assert (=> b!33482 d!16837))

(declare-fun d!16839 () Bool)

(declare-fun res!15540 () Bool)

(declare-fun e!16994 () Bool)

(assert (=> d!16839 (=> res!15540 e!16994)))

(assert (=> d!16839 (= res!15540 (not (is-CC!81 lt!6299)))))

(assert (=> d!16839 (= (concInv!74 lt!6299) e!16994)))

(declare-fun b!33611 () Bool)

(declare-fun res!15541 () Bool)

(declare-fun e!16995 () Bool)

(assert (=> b!33611 (=> (not res!15541) (not e!16995))))

(assert (=> b!33611 (= res!15541 (concInv!74 (left!726 lt!6299)))))

(declare-fun b!33610 () Bool)

(declare-fun res!15538 () Bool)

(assert (=> b!33610 (=> (not res!15538) (not e!16995))))

(assert (=> b!33610 (= res!15538 (not (isEmpty!336 (right!729 lt!6299))))))

(declare-fun b!33609 () Bool)

(assert (=> b!33609 (= e!16994 e!16995)))

(declare-fun res!15539 () Bool)

(assert (=> b!33609 (=> (not res!15539) (not e!16995))))

(assert (=> b!33609 (= res!15539 (not (isEmpty!336 (left!726 lt!6299))))))

(declare-fun b!33612 () Bool)

(assert (=> b!33612 (= e!16995 (concInv!74 (right!729 lt!6299)))))

(assert (= (and d!16839 (not res!15540)) b!33609))

(assert (= (and b!33609 res!15539) b!33610))

(assert (= (and b!33610 res!15538) b!33611))

(assert (= (and b!33611 res!15541) b!33612))

(declare-fun m!35827 () Bool)

(assert (=> b!33611 m!35827))

(declare-fun m!35829 () Bool)

(assert (=> b!33610 m!35829))

(declare-fun m!35831 () Bool)

(assert (=> b!33609 m!35831))

(declare-fun m!35833 () Bool)

(assert (=> b!33612 m!35833))

(assert (=> b!33512 d!16839))

(declare-fun b!33614 () Bool)

(declare-fun e!16996 () Int)

(declare-fun lt!6320 () Int)

(declare-fun lt!6322 () Int)

(assert (=> b!33614 (= e!16996 (+ 1 (ite (>= lt!6320 lt!6322) lt!6320 lt!6322)))))

(assert (=> b!33614 (= lt!6322 (level!65 (right!729 (left!726 res!5582))))))

(assert (=> b!33614 (= lt!6320 (level!65 (left!726 (left!726 res!5582))))))

(declare-fun d!16841 () Bool)

(declare-fun lt!6321 () Int)

(assert (=> d!16841 (>= lt!6321 0)))

(assert (=> d!16841 (= lt!6321 e!16996)))

(declare-fun c!7212 () Bool)

(assert (=> d!16841 (= c!7212 (or (is-Empty!92 (left!726 res!5582)) (is-Single!81 (left!726 res!5582))))))

(assert (=> d!16841 (= (level!65 (left!726 res!5582)) lt!6321)))

(declare-fun b!33613 () Bool)

(assert (=> b!33613 (= e!16996 0)))

(assert (= (and d!16841 c!7212) b!33613))

(assert (= (and d!16841 (not c!7212)) b!33614))

(declare-fun m!35835 () Bool)

(assert (=> b!33614 m!35835))

(declare-fun m!35837 () Bool)

(assert (=> b!33614 m!35837))

(assert (=> b!33561 d!16841))

(declare-fun b!33616 () Bool)

(declare-fun e!16997 () Int)

(declare-fun lt!6323 () Int)

(declare-fun lt!6325 () Int)

(assert (=> b!33616 (= e!16997 (+ 1 (ite (>= lt!6323 lt!6325) lt!6323 lt!6325)))))

(assert (=> b!33616 (= lt!6325 (level!65 (right!729 (right!729 res!5582))))))

(assert (=> b!33616 (= lt!6323 (level!65 (left!726 (right!729 res!5582))))))

(declare-fun d!16843 () Bool)

(declare-fun lt!6324 () Int)

(assert (=> d!16843 (>= lt!6324 0)))

(assert (=> d!16843 (= lt!6324 e!16997)))

(declare-fun c!7213 () Bool)

(assert (=> d!16843 (= c!7213 (or (is-Empty!92 (right!729 res!5582)) (is-Single!81 (right!729 res!5582))))))

(assert (=> d!16843 (= (level!65 (right!729 res!5582)) lt!6324)))

(declare-fun b!33615 () Bool)

(assert (=> b!33615 (= e!16997 0)))

(assert (= (and d!16843 c!7213) b!33615))

(assert (= (and d!16843 (not c!7213)) b!33616))

(declare-fun m!35839 () Bool)

(assert (=> b!33616 m!35839))

(declare-fun m!35841 () Bool)

(assert (=> b!33616 m!35841))

(assert (=> b!33561 d!16843))

(declare-fun d!16845 () Bool)

(declare-fun res!15544 () Bool)

(declare-fun e!16998 () Bool)

(assert (=> d!16845 (=> res!15544 e!16998)))

(assert (=> d!16845 (= res!15544 (not (is-CC!81 (right!729 xs!586))))))

(assert (=> d!16845 (= (concInv!74 (right!729 xs!586)) e!16998)))

(declare-fun b!33619 () Bool)

(declare-fun res!15545 () Bool)

(declare-fun e!16999 () Bool)

(assert (=> b!33619 (=> (not res!15545) (not e!16999))))

(assert (=> b!33619 (= res!15545 (concInv!74 (left!726 (right!729 xs!586))))))

(declare-fun b!33618 () Bool)

(declare-fun res!15542 () Bool)

(assert (=> b!33618 (=> (not res!15542) (not e!16999))))

(assert (=> b!33618 (= res!15542 (not (isEmpty!336 (right!729 (right!729 xs!586)))))))

(declare-fun b!33617 () Bool)

(assert (=> b!33617 (= e!16998 e!16999)))

(declare-fun res!15543 () Bool)

(assert (=> b!33617 (=> (not res!15543) (not e!16999))))

(assert (=> b!33617 (= res!15543 (not (isEmpty!336 (left!726 (right!729 xs!586)))))))

(declare-fun b!33620 () Bool)

(assert (=> b!33620 (= e!16999 (concInv!74 (right!729 (right!729 xs!586))))))

(assert (= (and d!16845 (not res!15544)) b!33617))

(assert (= (and b!33617 res!15543) b!33618))

(assert (= (and b!33618 res!15542) b!33619))

(assert (= (and b!33619 res!15545) b!33620))

(declare-fun m!35843 () Bool)

(assert (=> b!33619 m!35843))

(declare-fun m!35845 () Bool)

(assert (=> b!33618 m!35845))

(declare-fun m!35847 () Bool)

(assert (=> b!33617 m!35847))

(declare-fun m!35849 () Bool)

(assert (=> b!33620 m!35849))

(assert (=> b!33590 d!16845))

(assert (=> b!33534 d!16813))

(declare-fun b!33623 () Bool)

(declare-fun e!17000 () Int)

(assert (=> b!33623 (= e!17000 1)))

(declare-fun b!33622 () Bool)

(declare-fun e!17001 () Int)

(assert (=> b!33622 (= e!17001 e!17000)))

(declare-fun c!7215 () Bool)

(assert (=> b!33622 (= c!7215 (is-Single!81 (right!729 xs!586)))))

(declare-fun d!16847 () Bool)

(declare-fun lt!6326 () Int)

(assert (=> d!16847 (>= lt!6326 0)))

(assert (=> d!16847 (= lt!6326 e!17001)))

(declare-fun c!7214 () Bool)

(assert (=> d!16847 (= c!7214 (is-Empty!92 (right!729 xs!586)))))

(assert (=> d!16847 (= (size!296 (right!729 xs!586)) lt!6326)))

(declare-fun b!33624 () Bool)

(assert (=> b!33624 (= e!17000 (+ (size!296 (left!726 (right!729 xs!586))) (size!296 (right!729 (right!729 xs!586)))))))

(declare-fun b!33621 () Bool)

(assert (=> b!33621 (= e!17001 0)))

(assert (= (and b!33622 c!7215) b!33623))

(assert (= (and b!33622 (not c!7215)) b!33624))

(assert (= (and d!16847 c!7214) b!33621))

(assert (= (and d!16847 (not c!7214)) b!33622))

(assert (=> b!33624 m!35749))

(declare-fun m!35851 () Bool)

(assert (=> b!33624 m!35851))

(assert (=> b!33534 d!16847))

(declare-fun lt!6327 () Conc!82)

(declare-fun b!33625 () Bool)

(declare-fun e!17002 () Bool)

(assert (=> b!33625 (= e!17002 (= (toList!127 lt!6327) (updated!10 (toList!127 (left!726 (right!729 xs!586))) (- i!263 (size!296 (left!726 xs!586))) y!785)))))

(declare-fun b!33626 () Bool)

(declare-fun res!15547 () Bool)

(assert (=> b!33626 (=> (not res!15547) (not e!17002))))

(assert (=> b!33626 (= res!15547 (balanced!75 lt!6327))))

(declare-fun e!17005 () Conc!82)

(declare-fun b!33627 () Bool)

(assert (=> b!33627 (= e!17005 (CC!81 (left!726 (left!726 (right!729 xs!586))) (update!12 (right!729 (left!726 (right!729 xs!586))) (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (left!726 (right!729 xs!586))))) y!785)))))

(declare-fun b!33628 () Bool)

(declare-fun e!17004 () Conc!82)

(assert (=> b!33628 (= e!17004 (Single!81 y!785))))

(declare-fun b!33629 () Bool)

(declare-fun e!17003 () Bool)

(assert (=> b!33629 (= e!17003 (balanced!75 (left!726 (right!729 xs!586))))))

(declare-fun d!16849 () Bool)

(assert (=> d!16849 e!17002))

(declare-fun res!15546 () Bool)

(assert (=> d!16849 (=> (not res!15546) (not e!17002))))

(assert (=> d!16849 (= res!15546 (instAppendUpdateAxiom!8 (left!726 (right!729 xs!586)) (- i!263 (size!296 (left!726 xs!586))) y!785))))

(assert (=> d!16849 (= lt!6327 e!17004)))

(declare-fun c!7216 () Bool)

(assert (=> d!16849 (= c!7216 (is-Single!81 (left!726 (right!729 xs!586))))))

(declare-fun e!17006 () Bool)

(assert (=> d!16849 e!17006))

(declare-fun res!15551 () Bool)

(assert (=> d!16849 (=> (not res!15551) (not e!17006))))

(assert (=> d!16849 (= res!15551 e!17003)))

(declare-fun res!15549 () Bool)

(assert (=> d!16849 (=> (not res!15549) (not e!17003))))

(assert (=> d!16849 (= res!15549 (concInv!74 (left!726 (right!729 xs!586))))))

(assert (=> d!16849 (= (update!12 (left!726 (right!729 xs!586)) (- i!263 (size!296 (left!726 xs!586))) y!785) lt!6327)))

(declare-fun b!33630 () Bool)

(declare-fun res!15550 () Bool)

(assert (=> b!33630 (=> (not res!15550) (not e!17002))))

(assert (=> b!33630 (= res!15550 (concInv!74 lt!6327))))

(declare-fun b!33631 () Bool)

(declare-fun res!15553 () Bool)

(assert (=> b!33631 (=> (not res!15553) (not e!17006))))

(assert (=> b!33631 (= res!15553 (>= (- i!263 (size!296 (left!726 xs!586))) 0))))

(declare-fun b!33632 () Bool)

(assert (=> b!33632 (= e!17006 (< (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))))))

(declare-fun b!33633 () Bool)

(declare-fun res!15552 () Bool)

(assert (=> b!33633 (=> (not res!15552) (not e!17002))))

(assert (=> b!33633 (= res!15552 (= (level!65 lt!6327) (level!65 (left!726 (right!729 xs!586)))))))

(declare-fun b!33634 () Bool)

(declare-fun res!15548 () Bool)

(assert (=> b!33634 (=> (not res!15548) (not e!17006))))

(assert (=> b!33634 (= res!15548 (not (isEmpty!336 (left!726 (right!729 xs!586)))))))

(declare-fun b!33635 () Bool)

(assert (=> b!33635 (= e!17005 (CC!81 (update!12 (left!726 (left!726 (right!729 xs!586))) (- i!263 (size!296 (left!726 xs!586))) y!785) (right!729 (left!726 (right!729 xs!586)))))))

(declare-fun b!33636 () Bool)

(assert (=> b!33636 (= e!17004 e!17005)))

(declare-fun c!7217 () Bool)

(assert (=> b!33636 (= c!7217 (< (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (left!726 (right!729 xs!586))))))))

(assert (= (and d!16849 res!15549) b!33629))

(assert (= (and d!16849 res!15551) b!33634))

(assert (= (and b!33634 res!15548) b!33631))

(assert (= (and b!33631 res!15553) b!33632))

(assert (= (and b!33636 c!7217) b!33635))

(assert (= (and b!33636 (not c!7217)) b!33627))

(assert (= (and d!16849 c!7216) b!33628))

(assert (= (and d!16849 (not c!7216)) b!33636))

(assert (= (and d!16849 res!15546) b!33633))

(assert (= (and b!33633 res!15552) b!33630))

(assert (= (and b!33630 res!15550) b!33626))

(assert (= (and b!33626 res!15547) b!33625))

(declare-fun m!35853 () Bool)

(assert (=> b!33627 m!35853))

(declare-fun m!35855 () Bool)

(assert (=> b!33627 m!35855))

(declare-fun m!35857 () Bool)

(assert (=> b!33633 m!35857))

(assert (=> b!33633 m!35823))

(declare-fun m!35859 () Bool)

(assert (=> b!33630 m!35859))

(assert (=> b!33634 m!35847))

(assert (=> b!33629 m!35819))

(declare-fun m!35861 () Bool)

(assert (=> b!33635 m!35861))

(assert (=> b!33636 m!35853))

(assert (=> b!33632 m!35749))

(declare-fun m!35863 () Bool)

(assert (=> b!33626 m!35863))

(declare-fun m!35865 () Bool)

(assert (=> b!33625 m!35865))

(declare-fun m!35867 () Bool)

(assert (=> b!33625 m!35867))

(assert (=> b!33625 m!35867))

(declare-fun m!35869 () Bool)

(assert (=> b!33625 m!35869))

(declare-fun m!35871 () Bool)

(assert (=> d!16849 m!35871))

(assert (=> d!16849 m!35843))

(assert (=> b!33517 d!16849))

(declare-fun b!33639 () Bool)

(declare-fun res!15556 () Bool)

(declare-fun e!17007 () Bool)

(assert (=> b!33639 (=> (not res!15556) (not e!17007))))

(assert (=> b!33639 (= res!15556 (balanced!75 (left!726 (left!726 res!5582))))))

(declare-fun b!33640 () Bool)

(assert (=> b!33640 (= e!17007 (balanced!75 (right!729 (left!726 res!5582))))))

(declare-fun d!16851 () Bool)

(declare-fun res!15557 () Bool)

(declare-fun e!17008 () Bool)

(assert (=> d!16851 (=> res!15557 e!17008)))

(assert (=> d!16851 (= res!15557 (not (is-CC!81 (left!726 res!5582))))))

(assert (=> d!16851 (= (balanced!75 (left!726 res!5582)) e!17008)))

(declare-fun b!33638 () Bool)

(declare-fun res!15554 () Bool)

(assert (=> b!33638 (=> (not res!15554) (not e!17007))))

(assert (=> b!33638 (= res!15554 (<= (- (level!65 (left!726 (left!726 res!5582))) (level!65 (right!729 (left!726 res!5582)))) 1))))

(declare-fun b!33637 () Bool)

(assert (=> b!33637 (= e!17008 e!17007)))

(declare-fun res!15555 () Bool)

(assert (=> b!33637 (=> (not res!15555) (not e!17007))))

(assert (=> b!33637 (= res!15555 (>= (- (level!65 (left!726 (left!726 res!5582))) (level!65 (right!729 (left!726 res!5582)))) (- 1)))))

(assert (= (and d!16851 (not res!15557)) b!33637))

(assert (= (and b!33637 res!15555) b!33638))

(assert (= (and b!33638 res!15554) b!33639))

(assert (= (and b!33639 res!15556) b!33640))

(declare-fun m!35873 () Bool)

(assert (=> b!33639 m!35873))

(declare-fun m!35875 () Bool)

(assert (=> b!33640 m!35875))

(assert (=> b!33638 m!35837))

(assert (=> b!33638 m!35835))

(assert (=> b!33637 m!35837))

(assert (=> b!33637 m!35835))

(assert (=> b!33563 d!16851))

(declare-fun b!33642 () Bool)

(declare-fun e!17009 () Int)

(declare-fun lt!6328 () Int)

(declare-fun lt!6330 () Int)

(assert (=> b!33642 (= e!17009 (+ 1 (ite (>= lt!6328 lt!6330) lt!6328 lt!6330)))))

(assert (=> b!33642 (= lt!6330 (level!65 (right!729 (right!729 xs!586))))))

(assert (=> b!33642 (= lt!6328 (level!65 (left!726 (right!729 xs!586))))))

(declare-fun d!16853 () Bool)

(declare-fun lt!6329 () Int)

(assert (=> d!16853 (>= lt!6329 0)))

(assert (=> d!16853 (= lt!6329 e!17009)))

(declare-fun c!7218 () Bool)

(assert (=> d!16853 (= c!7218 (or (is-Empty!92 (right!729 xs!586)) (is-Single!81 (right!729 xs!586))))))

(assert (=> d!16853 (= (level!65 (right!729 xs!586)) lt!6329)))

(declare-fun b!33641 () Bool)

(assert (=> b!33641 (= e!17009 0)))

(assert (= (and d!16853 c!7218) b!33641))

(assert (= (and d!16853 (not c!7218)) b!33642))

(assert (=> b!33642 m!35825))

(assert (=> b!33642 m!35823))

(assert (=> b!33560 d!16853))

(declare-fun b!33644 () Bool)

(declare-fun e!17010 () Int)

(declare-fun lt!6331 () Int)

(declare-fun lt!6333 () Int)

(assert (=> b!33644 (= e!17010 (+ 1 (ite (>= lt!6331 lt!6333) lt!6331 lt!6333)))))

(assert (=> b!33644 (= lt!6333 (level!65 (right!729 (left!726 xs!586))))))

(assert (=> b!33644 (= lt!6331 (level!65 (left!726 (left!726 xs!586))))))

(declare-fun d!16855 () Bool)

(declare-fun lt!6332 () Int)

(assert (=> d!16855 (>= lt!6332 0)))

(assert (=> d!16855 (= lt!6332 e!17010)))

(declare-fun c!7219 () Bool)

(assert (=> d!16855 (= c!7219 (or (is-Empty!92 (left!726 xs!586)) (is-Single!81 (left!726 xs!586))))))

(assert (=> d!16855 (= (level!65 (left!726 xs!586)) lt!6332)))

(declare-fun b!33643 () Bool)

(assert (=> b!33643 (= e!17010 0)))

(assert (= (and d!16855 c!7219) b!33643))

(assert (= (and d!16855 (not c!7219)) b!33644))

(declare-fun m!35877 () Bool)

(assert (=> b!33644 m!35877))

(declare-fun m!35879 () Bool)

(assert (=> b!33644 m!35879))

(assert (=> b!33560 d!16855))

(declare-fun d!16857 () Bool)

(declare-fun res!15560 () Bool)

(declare-fun e!17011 () Bool)

(assert (=> d!16857 (=> res!15560 e!17011)))

(assert (=> d!16857 (= res!15560 (not (is-CC!81 (right!729 res!5582))))))

(assert (=> d!16857 (= (concInv!74 (right!729 res!5582)) e!17011)))

(declare-fun b!33647 () Bool)

(declare-fun res!15561 () Bool)

(declare-fun e!17012 () Bool)

(assert (=> b!33647 (=> (not res!15561) (not e!17012))))

(assert (=> b!33647 (= res!15561 (concInv!74 (left!726 (right!729 res!5582))))))

(declare-fun b!33646 () Bool)

(declare-fun res!15558 () Bool)

(assert (=> b!33646 (=> (not res!15558) (not e!17012))))

(assert (=> b!33646 (= res!15558 (not (isEmpty!336 (right!729 (right!729 res!5582)))))))

(declare-fun b!33645 () Bool)

(assert (=> b!33645 (= e!17011 e!17012)))

(declare-fun res!15559 () Bool)

(assert (=> b!33645 (=> (not res!15559) (not e!17012))))

(assert (=> b!33645 (= res!15559 (not (isEmpty!336 (left!726 (right!729 res!5582)))))))

(declare-fun b!33648 () Bool)

(assert (=> b!33648 (= e!17012 (concInv!74 (right!729 (right!729 res!5582))))))

(assert (= (and d!16857 (not res!15560)) b!33645))

(assert (= (and b!33645 res!15559) b!33646))

(assert (= (and b!33646 res!15558) b!33647))

(assert (= (and b!33647 res!15561) b!33648))

(declare-fun m!35881 () Bool)

(assert (=> b!33647 m!35881))

(declare-fun m!35883 () Bool)

(assert (=> b!33646 m!35883))

(declare-fun m!35885 () Bool)

(assert (=> b!33645 m!35885))

(declare-fun m!35887 () Bool)

(assert (=> b!33648 m!35887))

(assert (=> b!33552 d!16857))

(declare-fun d!16859 () Bool)

(declare-fun e!17014 () Bool)

(assert (=> d!16859 e!17014))

(declare-fun res!15563 () Bool)

(assert (=> d!16859 (=> res!15563 e!17014)))

(assert (=> d!16859 (= res!15563 (not (is-CC!81 (right!729 xs!586))))))

(declare-fun e!17013 () Bool)

(assert (=> d!16859 e!17013))

(declare-fun res!15562 () Bool)

(assert (=> d!16859 (=> (not res!15562) (not e!17013))))

(assert (=> d!16859 (= res!15562 (>= (- i!263 (size!296 (left!726 xs!586))) 0))))

(assert (=> d!16859 (= (instAppendUpdateAxiom!8 (right!729 xs!586) (- i!263 (size!296 (left!726 xs!586))) y!785) true)))

(declare-fun b!33649 () Bool)

(assert (=> b!33649 (= e!17013 (< (- i!263 (size!296 (left!726 xs!586))) (size!296 (right!729 xs!586))))))

(declare-fun b!33650 () Bool)

(assert (=> b!33650 (= e!17014 (appendUpdate!7 (toList!127 (left!726 (right!729 xs!586))) (toList!127 (right!729 (right!729 xs!586))) (- i!263 (size!296 (left!726 xs!586))) y!785))))

(assert (= (and d!16859 res!15562) b!33649))

(assert (= (and d!16859 (not res!15563)) b!33650))

(assert (=> b!33649 m!35761))

(assert (=> b!33650 m!35867))

(declare-fun m!35889 () Bool)

(assert (=> b!33650 m!35889))

(assert (=> b!33650 m!35867))

(assert (=> b!33650 m!35889))

(declare-fun m!35891 () Bool)

(assert (=> b!33650 m!35891))

(assert (=> d!16811 d!16859))

(assert (=> d!16811 d!16845))

(declare-fun b!33653 () Bool)

(declare-fun res!15566 () Bool)

(declare-fun e!17015 () Bool)

(assert (=> b!33653 (=> (not res!15566) (not e!17015))))

(assert (=> b!33653 (= res!15566 (balanced!75 (left!726 lt!6299)))))

(declare-fun b!33654 () Bool)

(assert (=> b!33654 (= e!17015 (balanced!75 (right!729 lt!6299)))))

(declare-fun d!16861 () Bool)

(declare-fun res!15567 () Bool)

(declare-fun e!17016 () Bool)

(assert (=> d!16861 (=> res!15567 e!17016)))

(assert (=> d!16861 (= res!15567 (not (is-CC!81 lt!6299)))))

(assert (=> d!16861 (= (balanced!75 lt!6299) e!17016)))

(declare-fun b!33652 () Bool)

(declare-fun res!15564 () Bool)

(assert (=> b!33652 (=> (not res!15564) (not e!17015))))

(assert (=> b!33652 (= res!15564 (<= (- (level!65 (left!726 lt!6299)) (level!65 (right!729 lt!6299))) 1))))

(declare-fun b!33651 () Bool)

(assert (=> b!33651 (= e!17016 e!17015)))

(declare-fun res!15565 () Bool)

(assert (=> b!33651 (=> (not res!15565) (not e!17015))))

(assert (=> b!33651 (= res!15565 (>= (- (level!65 (left!726 lt!6299)) (level!65 (right!729 lt!6299))) (- 1)))))

(assert (= (and d!16861 (not res!15567)) b!33651))

(assert (= (and b!33651 res!15565) b!33652))

(assert (= (and b!33652 res!15564) b!33653))

(assert (= (and b!33653 res!15566) b!33654))

(declare-fun m!35893 () Bool)

(assert (=> b!33653 m!35893))

(declare-fun m!35895 () Bool)

(assert (=> b!33654 m!35895))

(declare-fun m!35897 () Bool)

(assert (=> b!33652 m!35897))

(declare-fun m!35899 () Bool)

(assert (=> b!33652 m!35899))

(assert (=> b!33651 m!35897))

(assert (=> b!33651 m!35899))

(assert (=> b!33508 d!16861))

(declare-fun b!33657 () Bool)

(declare-fun e!17017 () Int)

(assert (=> b!33657 (= e!17017 1)))

(declare-fun b!33656 () Bool)

(declare-fun e!17018 () Int)

(assert (=> b!33656 (= e!17018 e!17017)))

(declare-fun c!7221 () Bool)

(assert (=> b!33656 (= c!7221 (is-Single!81 (left!726 (left!726 xs!586))))))

(declare-fun d!16863 () Bool)

(declare-fun lt!6334 () Int)

(assert (=> d!16863 (>= lt!6334 0)))

(assert (=> d!16863 (= lt!6334 e!17018)))

(declare-fun c!7220 () Bool)

(assert (=> d!16863 (= c!7220 (is-Empty!92 (left!726 (left!726 xs!586))))))

(assert (=> d!16863 (= (size!296 (left!726 (left!726 xs!586))) lt!6334)))

(declare-fun b!33658 () Bool)

(assert (=> b!33658 (= e!17017 (+ (size!296 (left!726 (left!726 (left!726 xs!586)))) (size!296 (right!729 (left!726 (left!726 xs!586))))))))

(declare-fun b!33655 () Bool)

(assert (=> b!33655 (= e!17018 0)))

(assert (= (and b!33656 c!7221) b!33657))

(assert (= (and b!33656 (not c!7221)) b!33658))

(assert (= (and d!16863 c!7220) b!33655))

(assert (= (and d!16863 (not c!7220)) b!33656))

(declare-fun m!35901 () Bool)

(assert (=> b!33658 m!35901))

(declare-fun m!35903 () Bool)

(assert (=> b!33658 m!35903))

(assert (=> b!33530 d!16863))

(declare-fun b!33661 () Bool)

(declare-fun e!17019 () Int)

(assert (=> b!33661 (= e!17019 1)))

(declare-fun b!33660 () Bool)

(declare-fun e!17020 () Int)

(assert (=> b!33660 (= e!17020 e!17019)))

(declare-fun c!7223 () Bool)

(assert (=> b!33660 (= c!7223 (is-Single!81 (right!729 (left!726 xs!586))))))

(declare-fun d!16865 () Bool)

(declare-fun lt!6335 () Int)

(assert (=> d!16865 (>= lt!6335 0)))

(assert (=> d!16865 (= lt!6335 e!17020)))

(declare-fun c!7222 () Bool)

(assert (=> d!16865 (= c!7222 (is-Empty!92 (right!729 (left!726 xs!586))))))

(assert (=> d!16865 (= (size!296 (right!729 (left!726 xs!586))) lt!6335)))

(declare-fun b!33662 () Bool)

(assert (=> b!33662 (= e!17019 (+ (size!296 (left!726 (right!729 (left!726 xs!586)))) (size!296 (right!729 (right!729 (left!726 xs!586))))))))

(declare-fun b!33659 () Bool)

(assert (=> b!33659 (= e!17020 0)))

(assert (= (and b!33660 c!7223) b!33661))

(assert (= (and b!33660 (not c!7223)) b!33662))

(assert (= (and d!16865 c!7222) b!33659))

(assert (= (and d!16865 (not c!7222)) b!33660))

(declare-fun m!35905 () Bool)

(assert (=> b!33662 m!35905))

(declare-fun m!35907 () Bool)

(assert (=> b!33662 m!35907))

(assert (=> b!33530 d!16865))

(declare-fun b!33673 () Bool)

(declare-fun res!15573 () Bool)

(declare-fun e!17026 () Bool)

(assert (=> b!33673 (=> (not res!15573) (not e!17026))))

(declare-fun lt!6338 () List!372)

(assert (=> b!33673 (= res!15573 (= (size!297 lt!6338) (+ (size!297 (toList!127 (left!726 xs!586))) (size!297 (toList!127 (right!729 xs!586))))))))

(declare-fun b!33674 () Bool)

(assert (=> b!33674 (= e!17026 (or (not (= (toList!127 (right!729 xs!586)) Nil!367)) (= lt!6338 (toList!127 (left!726 xs!586)))))))

(declare-fun d!16867 () Bool)

(assert (=> d!16867 e!17026))

(declare-fun res!15574 () Bool)

(assert (=> d!16867 (=> (not res!15574) (not e!17026))))

(declare-fun content!77 (List!372) (Set T!1865))

(assert (=> d!16867 (= res!15574 (= (content!77 lt!6338) (union (content!77 (toList!127 (left!726 xs!586))) (content!77 (toList!127 (right!729 xs!586))))))))

(declare-fun e!17025 () List!372)

(assert (=> d!16867 (= lt!6338 e!17025)))

(declare-fun c!7226 () Bool)

(assert (=> d!16867 (= c!7226 (is-Nil!367 (toList!127 (left!726 xs!586))))))

(assert (=> d!16867 (= (++!52 (toList!127 (left!726 xs!586)) (toList!127 (right!729 xs!586))) lt!6338)))

(declare-fun b!33671 () Bool)

(assert (=> b!33671 (= e!17025 (toList!127 (right!729 xs!586)))))

(declare-fun b!33672 () Bool)

(assert (=> b!33672 (= e!17025 (Cons!366 (h!283 (toList!127 (left!726 xs!586))) (++!52 (t!4390 (toList!127 (left!726 xs!586))) (toList!127 (right!729 xs!586)))))))

(assert (= (and d!16867 c!7226) b!33671))

(assert (= (and d!16867 (not c!7226)) b!33672))

(assert (= (and d!16867 res!15574) b!33673))

(assert (= (and b!33673 res!15573) b!33674))

(declare-fun m!35909 () Bool)

(assert (=> b!33673 m!35909))

(assert (=> b!33673 m!35779))

(declare-fun m!35911 () Bool)

(assert (=> b!33673 m!35911))

(assert (=> b!33673 m!35767))

(declare-fun m!35913 () Bool)

(assert (=> b!33673 m!35913))

(declare-fun m!35915 () Bool)

(assert (=> d!16867 m!35915))

(assert (=> d!16867 m!35779))

(declare-fun m!35917 () Bool)

(assert (=> d!16867 m!35917))

(assert (=> d!16867 m!35767))

(declare-fun m!35919 () Bool)

(assert (=> d!16867 m!35919))

(assert (=> b!33672 m!35767))

(declare-fun m!35921 () Bool)

(assert (=> b!33672 m!35921))

(assert (=> b!33586 d!16867))

(declare-fun b!33676 () Bool)

(declare-fun e!17027 () List!372)

(declare-fun e!17028 () List!372)

(assert (=> b!33676 (= e!17027 e!17028)))

(declare-fun c!7227 () Bool)

(assert (=> b!33676 (= c!7227 (is-Single!81 (left!726 xs!586)))))

(declare-fun b!33678 () Bool)

(assert (=> b!33678 (= e!17028 (++!52 (toList!127 (left!726 (left!726 xs!586))) (toList!127 (right!729 (left!726 xs!586)))))))

(declare-fun b!33675 () Bool)

(assert (=> b!33675 (= e!17027 Nil!367)))

(declare-fun b!33677 () Bool)

(assert (=> b!33677 (= e!17028 (Cons!366 (x!9010 (left!726 xs!586)) Nil!367))))

(declare-fun d!16869 () Bool)

(declare-fun lt!6339 () List!372)

(assert (=> d!16869 (= (size!297 lt!6339) (size!296 (left!726 xs!586)))))

(assert (=> d!16869 (= lt!6339 e!17027)))

(declare-fun c!7228 () Bool)

(assert (=> d!16869 (= c!7228 (is-Empty!92 (left!726 xs!586)))))

(assert (=> d!16869 (= (toList!127 (left!726 xs!586)) lt!6339)))

(assert (= (and b!33676 c!7227) b!33677))

(assert (= (and b!33676 (not c!7227)) b!33678))

(assert (= (and d!16869 c!7228) b!33675))

(assert (= (and d!16869 (not c!7228)) b!33676))

(declare-fun m!35923 () Bool)

(assert (=> b!33678 m!35923))

(declare-fun m!35925 () Bool)

(assert (=> b!33678 m!35925))

(assert (=> b!33678 m!35923))

(assert (=> b!33678 m!35925))

(declare-fun m!35927 () Bool)

(assert (=> b!33678 m!35927))

(declare-fun m!35929 () Bool)

(assert (=> d!16869 m!35929))

(assert (=> d!16869 m!35713))

(assert (=> b!33586 d!16869))

(declare-fun b!33680 () Bool)

(declare-fun e!17029 () List!372)

(declare-fun e!17030 () List!372)

(assert (=> b!33680 (= e!17029 e!17030)))

(declare-fun c!7229 () Bool)

(assert (=> b!33680 (= c!7229 (is-Single!81 (right!729 xs!586)))))

(declare-fun b!33682 () Bool)

(assert (=> b!33682 (= e!17030 (++!52 (toList!127 (left!726 (right!729 xs!586))) (toList!127 (right!729 (right!729 xs!586)))))))

(declare-fun b!33679 () Bool)

(assert (=> b!33679 (= e!17029 Nil!367)))

(declare-fun b!33681 () Bool)

(assert (=> b!33681 (= e!17030 (Cons!366 (x!9010 (right!729 xs!586)) Nil!367))))

(declare-fun d!16871 () Bool)

(declare-fun lt!6340 () List!372)

(assert (=> d!16871 (= (size!297 lt!6340) (size!296 (right!729 xs!586)))))

(assert (=> d!16871 (= lt!6340 e!17029)))

(declare-fun c!7230 () Bool)

(assert (=> d!16871 (= c!7230 (is-Empty!92 (right!729 xs!586)))))

(assert (=> d!16871 (= (toList!127 (right!729 xs!586)) lt!6340)))

(assert (= (and b!33680 c!7229) b!33681))

(assert (= (and b!33680 (not c!7229)) b!33682))

(assert (= (and d!16871 c!7230) b!33679))

(assert (= (and d!16871 (not c!7230)) b!33680))

(assert (=> b!33682 m!35867))

(assert (=> b!33682 m!35889))

(assert (=> b!33682 m!35867))

(assert (=> b!33682 m!35889))

(declare-fun m!35931 () Bool)

(assert (=> b!33682 m!35931))

(declare-fun m!35933 () Bool)

(assert (=> d!16871 m!35933))

(assert (=> d!16871 m!35761))

(assert (=> b!33586 d!16871))

(declare-fun b!33685 () Bool)

(declare-fun res!15577 () Bool)

(declare-fun e!17031 () Bool)

(assert (=> b!33685 (=> (not res!15577) (not e!17031))))

(assert (=> b!33685 (= res!15577 (balanced!75 (left!726 (right!729 res!5582))))))

(declare-fun b!33686 () Bool)

(assert (=> b!33686 (= e!17031 (balanced!75 (right!729 (right!729 res!5582))))))

(declare-fun d!16873 () Bool)

(declare-fun res!15578 () Bool)

(declare-fun e!17032 () Bool)

(assert (=> d!16873 (=> res!15578 e!17032)))

(assert (=> d!16873 (= res!15578 (not (is-CC!81 (right!729 res!5582))))))

(assert (=> d!16873 (= (balanced!75 (right!729 res!5582)) e!17032)))

(declare-fun b!33684 () Bool)

(declare-fun res!15575 () Bool)

(assert (=> b!33684 (=> (not res!15575) (not e!17031))))

(assert (=> b!33684 (= res!15575 (<= (- (level!65 (left!726 (right!729 res!5582))) (level!65 (right!729 (right!729 res!5582)))) 1))))

(declare-fun b!33683 () Bool)

(assert (=> b!33683 (= e!17032 e!17031)))

(declare-fun res!15576 () Bool)

(assert (=> b!33683 (=> (not res!15576) (not e!17031))))

(assert (=> b!33683 (= res!15576 (>= (- (level!65 (left!726 (right!729 res!5582))) (level!65 (right!729 (right!729 res!5582)))) (- 1)))))

(assert (= (and d!16873 (not res!15578)) b!33683))

(assert (= (and b!33683 res!15576) b!33684))

(assert (= (and b!33684 res!15575) b!33685))

(assert (= (and b!33685 res!15577) b!33686))

(declare-fun m!35935 () Bool)

(assert (=> b!33685 m!35935))

(declare-fun m!35937 () Bool)

(assert (=> b!33686 m!35937))

(assert (=> b!33684 m!35841))

(assert (=> b!33684 m!35839))

(assert (=> b!33683 m!35841))

(assert (=> b!33683 m!35839))

(assert (=> b!33564 d!16873))

(declare-fun d!16875 () Bool)

(assert (=> d!16875 (= (isEmpty!336 (right!729 xs!586)) (= (right!729 xs!586) Empty!92))))

(assert (=> b!33588 d!16875))

(declare-fun b!33688 () Bool)

(declare-fun e!17033 () Int)

(declare-fun lt!6341 () Int)

(declare-fun lt!6343 () Int)

(assert (=> b!33688 (= e!17033 (+ 1 (ite (>= lt!6341 lt!6343) lt!6341 lt!6343)))))

(assert (=> b!33688 (= lt!6343 (level!65 (right!729 lt!6299)))))

(assert (=> b!33688 (= lt!6341 (level!65 (left!726 lt!6299)))))

(declare-fun d!16877 () Bool)

(declare-fun lt!6342 () Int)

(assert (=> d!16877 (>= lt!6342 0)))

(assert (=> d!16877 (= lt!6342 e!17033)))

(declare-fun c!7231 () Bool)

(assert (=> d!16877 (= c!7231 (or (is-Empty!92 lt!6299) (is-Single!81 lt!6299)))))

(assert (=> d!16877 (= (level!65 lt!6299) lt!6342)))

(declare-fun b!33687 () Bool)

(assert (=> b!33687 (= e!17033 0)))

(assert (= (and d!16877 c!7231) b!33687))

(assert (= (and d!16877 (not c!7231)) b!33688))

(assert (=> b!33688 m!35899))

(assert (=> b!33688 m!35897))

(assert (=> b!33515 d!16877))

(assert (=> b!33515 d!16853))

(assert (=> b!33539 d!16815))

(declare-fun b!33691 () Bool)

(declare-fun res!15581 () Bool)

(declare-fun e!17034 () Bool)

(assert (=> b!33691 (=> (not res!15581) (not e!17034))))

(assert (=> b!33691 (= res!15581 (balanced!75 (left!726 (left!726 xs!586))))))

(declare-fun b!33692 () Bool)

(assert (=> b!33692 (= e!17034 (balanced!75 (right!729 (left!726 xs!586))))))

(declare-fun d!16879 () Bool)

(declare-fun res!15582 () Bool)

(declare-fun e!17035 () Bool)

(assert (=> d!16879 (=> res!15582 e!17035)))

(assert (=> d!16879 (= res!15582 (not (is-CC!81 (left!726 xs!586))))))

(assert (=> d!16879 (= (balanced!75 (left!726 xs!586)) e!17035)))

(declare-fun b!33690 () Bool)

(declare-fun res!15579 () Bool)

(assert (=> b!33690 (=> (not res!15579) (not e!17034))))

(assert (=> b!33690 (= res!15579 (<= (- (level!65 (left!726 (left!726 xs!586))) (level!65 (right!729 (left!726 xs!586)))) 1))))

(declare-fun b!33689 () Bool)

(assert (=> b!33689 (= e!17035 e!17034)))

(declare-fun res!15580 () Bool)

(assert (=> b!33689 (=> (not res!15580) (not e!17034))))

(assert (=> b!33689 (= res!15580 (>= (- (level!65 (left!726 (left!726 xs!586))) (level!65 (right!729 (left!726 xs!586)))) (- 1)))))

(assert (= (and d!16879 (not res!15582)) b!33689))

(assert (= (and b!33689 res!15580) b!33690))

(assert (= (and b!33690 res!15579) b!33691))

(assert (= (and b!33691 res!15581) b!33692))

(declare-fun m!35939 () Bool)

(assert (=> b!33691 m!35939))

(declare-fun m!35941 () Bool)

(assert (=> b!33692 m!35941))

(assert (=> b!33690 m!35879))

(assert (=> b!33690 m!35877))

(assert (=> b!33689 m!35879))

(assert (=> b!33689 m!35877))

(assert (=> b!33481 d!16879))

(declare-fun d!16881 () Bool)

(assert (=> d!16881 (= (isEmpty!336 (left!726 res!5582)) (= (left!726 res!5582) Empty!92))))

(assert (=> b!33549 d!16881))

(assert (=> b!33511 d!16837))

(declare-fun d!16883 () Bool)

(declare-fun c!7232 () Bool)

(assert (=> d!16883 (= c!7232 (and (is-Cons!366 (t!4390 (toList!127 xs!586))) (= (- i!263 1) 0)))))

(declare-fun e!17036 () List!372)

(assert (=> d!16883 (= (updated!10 (t!4390 (toList!127 xs!586)) (- i!263 1) y!785) e!17036)))

(declare-fun b!33693 () Bool)

(assert (=> b!33693 (= e!17036 (Cons!366 y!785 (t!4390 (t!4390 (toList!127 xs!586)))))))

(declare-fun b!33694 () Bool)

(assert (=> b!33694 (= e!17036 (Cons!366 (h!283 (t!4390 (toList!127 xs!586))) (updated!10 (t!4390 (t!4390 (toList!127 xs!586))) (- (- i!263 1) 1) y!785)))))

(assert (= (and d!16883 c!7232) b!33693))

(assert (= (and d!16883 (not c!7232)) b!33694))

(declare-fun m!35943 () Bool)

(assert (=> b!33694 m!35943))

(assert (=> b!33582 d!16883))

(declare-fun d!16885 () Bool)

(declare-fun lt!6346 () Int)

(assert (=> d!16885 (>= lt!6346 0)))

(declare-fun e!17039 () Int)

(assert (=> d!16885 (= lt!6346 e!17039)))

(declare-fun c!7235 () Bool)

(assert (=> d!16885 (= c!7235 (is-Nil!367 lt!6319))))

(assert (=> d!16885 (= (size!297 lt!6319) lt!6346)))

(declare-fun b!33699 () Bool)

(assert (=> b!33699 (= e!17039 0)))

(declare-fun b!33700 () Bool)

(assert (=> b!33700 (= e!17039 (+ 1 (size!297 (t!4390 lt!6319))))))

(assert (= (and d!16885 c!7235) b!33699))

(assert (= (and d!16885 (not c!7235)) b!33700))

(declare-fun m!35945 () Bool)

(assert (=> b!33700 m!35945))

(assert (=> d!16833 d!16885))

(assert (=> d!16833 d!16815))

(declare-fun b!33703 () Bool)

(declare-fun e!17040 () Int)

(assert (=> b!33703 (= e!17040 1)))

(declare-fun b!33702 () Bool)

(declare-fun e!17041 () Int)

(assert (=> b!33702 (= e!17041 e!17040)))

(declare-fun c!7237 () Bool)

(assert (=> b!33702 (= c!7237 (is-Single!81 (left!726 (right!729 xs!586))))))

(declare-fun d!16887 () Bool)

(declare-fun lt!6347 () Int)

(assert (=> d!16887 (>= lt!6347 0)))

(assert (=> d!16887 (= lt!6347 e!17041)))

(declare-fun c!7236 () Bool)

(assert (=> d!16887 (= c!7236 (is-Empty!92 (left!726 (right!729 xs!586))))))

(assert (=> d!16887 (= (size!296 (left!726 (right!729 xs!586))) lt!6347)))

(declare-fun b!33704 () Bool)

(assert (=> b!33704 (= e!17040 (+ (size!296 (left!726 (left!726 (right!729 xs!586)))) (size!296 (right!729 (left!726 (right!729 xs!586))))))))

(declare-fun b!33701 () Bool)

(assert (=> b!33701 (= e!17041 0)))

(assert (= (and b!33702 c!7237) b!33703))

(assert (= (and b!33702 (not c!7237)) b!33704))

(assert (= (and d!16887 c!7236) b!33701))

(assert (= (and d!16887 (not c!7236)) b!33702))

(assert (=> b!33704 m!35853))

(declare-fun m!35947 () Bool)

(assert (=> b!33704 m!35947))

(assert (=> b!33518 d!16887))

(assert (=> b!33479 d!16855))

(assert (=> b!33479 d!16853))

(declare-fun lt!6348 () Conc!82)

(declare-fun e!17042 () Bool)

(declare-fun b!33705 () Bool)

(assert (=> b!33705 (= e!17042 (= (toList!127 lt!6348) (updated!10 (toList!127 (right!729 (right!729 xs!586))) (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) y!785)))))

(declare-fun b!33706 () Bool)

(declare-fun res!15584 () Bool)

(assert (=> b!33706 (=> (not res!15584) (not e!17042))))

(assert (=> b!33706 (= res!15584 (balanced!75 lt!6348))))

(declare-fun b!33707 () Bool)

(declare-fun e!17045 () Conc!82)

(assert (=> b!33707 (= e!17045 (CC!81 (left!726 (right!729 (right!729 xs!586))) (update!12 (right!729 (right!729 (right!729 xs!586))) (- (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) (size!296 (left!726 (right!729 (right!729 xs!586))))) y!785)))))

(declare-fun b!33708 () Bool)

(declare-fun e!17044 () Conc!82)

(assert (=> b!33708 (= e!17044 (Single!81 y!785))))

(declare-fun b!33709 () Bool)

(declare-fun e!17043 () Bool)

(assert (=> b!33709 (= e!17043 (balanced!75 (right!729 (right!729 xs!586))))))

(declare-fun d!16889 () Bool)

(assert (=> d!16889 e!17042))

(declare-fun res!15583 () Bool)

(assert (=> d!16889 (=> (not res!15583) (not e!17042))))

(assert (=> d!16889 (= res!15583 (instAppendUpdateAxiom!8 (right!729 (right!729 xs!586)) (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) y!785))))

(assert (=> d!16889 (= lt!6348 e!17044)))

(declare-fun c!7238 () Bool)

(assert (=> d!16889 (= c!7238 (is-Single!81 (right!729 (right!729 xs!586))))))

(declare-fun e!17046 () Bool)

(assert (=> d!16889 e!17046))

(declare-fun res!15588 () Bool)

(assert (=> d!16889 (=> (not res!15588) (not e!17046))))

(assert (=> d!16889 (= res!15588 e!17043)))

(declare-fun res!15586 () Bool)

(assert (=> d!16889 (=> (not res!15586) (not e!17043))))

(assert (=> d!16889 (= res!15586 (concInv!74 (right!729 (right!729 xs!586))))))

(assert (=> d!16889 (= (update!12 (right!729 (right!729 xs!586)) (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) y!785) lt!6348)))

(declare-fun b!33710 () Bool)

(declare-fun res!15587 () Bool)

(assert (=> b!33710 (=> (not res!15587) (not e!17042))))

(assert (=> b!33710 (= res!15587 (concInv!74 lt!6348))))

(declare-fun b!33711 () Bool)

(declare-fun res!15590 () Bool)

(assert (=> b!33711 (=> (not res!15590) (not e!17046))))

(assert (=> b!33711 (= res!15590 (>= (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) 0))))

(declare-fun b!33712 () Bool)

(assert (=> b!33712 (= e!17046 (< (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) (size!296 (right!729 (right!729 xs!586)))))))

(declare-fun b!33713 () Bool)

(declare-fun res!15589 () Bool)

(assert (=> b!33713 (=> (not res!15589) (not e!17042))))

(assert (=> b!33713 (= res!15589 (= (level!65 lt!6348) (level!65 (right!729 (right!729 xs!586)))))))

(declare-fun b!33714 () Bool)

(declare-fun res!15585 () Bool)

(assert (=> b!33714 (=> (not res!15585) (not e!17046))))

(assert (=> b!33714 (= res!15585 (not (isEmpty!336 (right!729 (right!729 xs!586)))))))

(declare-fun b!33715 () Bool)

(assert (=> b!33715 (= e!17045 (CC!81 (update!12 (left!726 (right!729 (right!729 xs!586))) (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) y!785) (right!729 (right!729 (right!729 xs!586)))))))

(declare-fun b!33716 () Bool)

(assert (=> b!33716 (= e!17044 e!17045)))

(declare-fun c!7239 () Bool)

(assert (=> b!33716 (= c!7239 (< (- (- i!263 (size!296 (left!726 xs!586))) (size!296 (left!726 (right!729 xs!586)))) (size!296 (left!726 (right!729 (right!729 xs!586))))))))

(assert (= (and d!16889 res!15586) b!33709))

(assert (= (and d!16889 res!15588) b!33714))

(assert (= (and b!33714 res!15585) b!33711))

(assert (= (and b!33711 res!15590) b!33712))

(assert (= (and b!33716 c!7239) b!33715))

(assert (= (and b!33716 (not c!7239)) b!33707))

(assert (= (and d!16889 c!7238) b!33708))

(assert (= (and d!16889 (not c!7238)) b!33716))

(assert (= (and d!16889 res!15583) b!33713))

(assert (= (and b!33713 res!15589) b!33710))

(assert (= (and b!33710 res!15587) b!33706))

(assert (= (and b!33706 res!15584) b!33705))

(declare-fun m!35949 () Bool)

(assert (=> b!33707 m!35949))

(declare-fun m!35951 () Bool)

(assert (=> b!33707 m!35951))

(declare-fun m!35953 () Bool)

(assert (=> b!33713 m!35953))

(assert (=> b!33713 m!35825))

(declare-fun m!35955 () Bool)

(assert (=> b!33710 m!35955))

(assert (=> b!33714 m!35845))

(assert (=> b!33709 m!35821))

(declare-fun m!35957 () Bool)

(assert (=> b!33715 m!35957))

(assert (=> b!33716 m!35949))

(assert (=> b!33712 m!35851))

(declare-fun m!35959 () Bool)

(assert (=> b!33706 m!35959))

(declare-fun m!35961 () Bool)

(assert (=> b!33705 m!35961))

(assert (=> b!33705 m!35889))

(assert (=> b!33705 m!35889))

(declare-fun m!35963 () Bool)

(assert (=> b!33705 m!35963))

(declare-fun m!35965 () Bool)

(assert (=> d!16889 m!35965))

(assert (=> d!16889 m!35849))

(assert (=> b!33509 d!16889))

(assert (=> b!33509 d!16887))

(declare-fun b!33728 () Bool)

(declare-fun e!17053 () List!372)

(assert (=> b!33728 (= e!17053 (++!52 (toList!127 (left!726 xs!586)) (updated!10 (toList!127 (right!729 xs!586)) (- i!263 (size!297 (toList!127 (left!726 xs!586)))) y!785)))))

(declare-fun b!33726 () Bool)

(declare-fun e!17055 () Bool)

(assert (=> b!33726 (= e!17055 (appendUpdate!7 (t!4390 (toList!127 (left!726 xs!586))) (toList!127 (right!729 xs!586)) (- i!263 1) y!785))))

(declare-fun b!33727 () Bool)

(assert (=> b!33727 (= e!17053 (++!52 (updated!10 (toList!127 (left!726 xs!586)) i!263 y!785) (toList!127 (right!729 xs!586))))))

(declare-fun b!33725 () Bool)

(declare-fun e!17054 () Bool)

(assert (=> b!33725 (= e!17054 (< i!263 (+ (size!297 (toList!127 (left!726 xs!586))) (size!297 (toList!127 (right!729 xs!586))))))))

(declare-fun d!16891 () Bool)

(assert (=> d!16891 (= (updated!10 (++!52 (toList!127 (left!726 xs!586)) (toList!127 (right!729 xs!586))) i!263 y!785) e!17053)))

(declare-fun c!7242 () Bool)

(assert (=> d!16891 (= c!7242 (< i!263 (size!297 (toList!127 (left!726 xs!586)))))))

(declare-fun lt!6351 () Bool)

(assert (=> d!16891 (= lt!6351 e!17055)))

(declare-fun res!15599 () Bool)

(assert (=> d!16891 (=> res!15599 e!17055)))

(assert (=> d!16891 (= res!15599 (or (is-Nil!367 (toList!127 (left!726 xs!586))) (= i!263 0)))))

(assert (=> d!16891 e!17054))

(declare-fun res!15600 () Bool)

(assert (=> d!16891 (=> (not res!15600) (not e!17054))))

(assert (=> d!16891 (= res!15600 (<= 0 i!263))))

(assert (=> d!16891 (= (appendUpdate!7 (toList!127 (left!726 xs!586)) (toList!127 (right!729 xs!586)) i!263 y!785) true)))

(assert (= (and d!16891 res!15600) b!33725))

(assert (= (and d!16891 (not res!15599)) b!33726))

(assert (= (and d!16891 c!7242) b!33727))

(assert (= (and d!16891 (not c!7242)) b!33728))

(assert (=> b!33728 m!35779))

(assert (=> b!33728 m!35911))

(assert (=> b!33728 m!35767))

(declare-fun m!35967 () Bool)

(assert (=> b!33728 m!35967))

(assert (=> b!33728 m!35779))

(assert (=> b!33728 m!35967))

(declare-fun m!35969 () Bool)

(assert (=> b!33728 m!35969))

(assert (=> b!33727 m!35779))

(declare-fun m!35971 () Bool)

(assert (=> b!33727 m!35971))

(assert (=> b!33727 m!35971))

(assert (=> b!33727 m!35767))

(declare-fun m!35973 () Bool)

(assert (=> b!33727 m!35973))

(assert (=> b!33725 m!35779))

(assert (=> b!33725 m!35911))

(assert (=> b!33725 m!35767))

(assert (=> b!33725 m!35913))

(assert (=> b!33726 m!35767))

(declare-fun m!35975 () Bool)

(assert (=> b!33726 m!35975))

(assert (=> d!16891 m!35779))

(assert (=> d!16891 m!35767))

(assert (=> d!16891 m!35811))

(assert (=> d!16891 m!35811))

(declare-fun m!35977 () Bool)

(assert (=> d!16891 m!35977))

(assert (=> d!16891 m!35779))

(assert (=> d!16891 m!35911))

(assert (=> b!33540 d!16891))

(assert (=> b!33540 d!16869))

(assert (=> b!33540 d!16871))

(declare-fun d!16893 () Bool)

(declare-fun res!15603 () Bool)

(declare-fun e!17056 () Bool)

(assert (=> d!16893 (=> res!15603 e!17056)))

(assert (=> d!16893 (= res!15603 (not (is-CC!81 (left!726 xs!586))))))

(assert (=> d!16893 (= (concInv!74 (left!726 xs!586)) e!17056)))

(declare-fun b!33731 () Bool)

(declare-fun res!15604 () Bool)

(declare-fun e!17057 () Bool)

(assert (=> b!33731 (=> (not res!15604) (not e!17057))))

(assert (=> b!33731 (= res!15604 (concInv!74 (left!726 (left!726 xs!586))))))

(declare-fun b!33730 () Bool)

(declare-fun res!15601 () Bool)

(assert (=> b!33730 (=> (not res!15601) (not e!17057))))

(assert (=> b!33730 (= res!15601 (not (isEmpty!336 (right!729 (left!726 xs!586)))))))

(declare-fun b!33729 () Bool)

(assert (=> b!33729 (= e!17056 e!17057)))

(declare-fun res!15602 () Bool)

(assert (=> b!33729 (=> (not res!15602) (not e!17057))))

(assert (=> b!33729 (= res!15602 (not (isEmpty!336 (left!726 (left!726 xs!586)))))))

(declare-fun b!33732 () Bool)

(assert (=> b!33732 (= e!17057 (concInv!74 (right!729 (left!726 xs!586))))))

(assert (= (and d!16893 (not res!15603)) b!33729))

(assert (= (and b!33729 res!15602) b!33730))

(assert (= (and b!33730 res!15601) b!33731))

(assert (= (and b!33731 res!15604) b!33732))

(declare-fun m!35979 () Bool)

(assert (=> b!33731 m!35979))

(declare-fun m!35981 () Bool)

(assert (=> b!33730 m!35981))

(declare-fun m!35983 () Bool)

(assert (=> b!33729 m!35983))

(declare-fun m!35985 () Bool)

(assert (=> b!33732 m!35985))

(assert (=> b!33589 d!16893))

(assert (=> b!33562 d!16841))

(assert (=> b!33562 d!16843))

(declare-fun b!33735 () Bool)

(declare-fun res!15605 () Bool)

(declare-fun e!17059 () Bool)

(assert (=> b!33735 (=> (not res!15605) (not e!17059))))

(declare-fun lt!6352 () List!372)

(assert (=> b!33735 (= res!15605 (= (size!297 lt!6352) (+ (size!297 (toList!127 (left!726 res!5582))) (size!297 (toList!127 (right!729 res!5582))))))))

(declare-fun b!33736 () Bool)

(assert (=> b!33736 (= e!17059 (or (not (= (toList!127 (right!729 res!5582)) Nil!367)) (= lt!6352 (toList!127 (left!726 res!5582)))))))

(declare-fun d!16895 () Bool)

(assert (=> d!16895 e!17059))

(declare-fun res!15606 () Bool)

(assert (=> d!16895 (=> (not res!15606) (not e!17059))))

(assert (=> d!16895 (= res!15606 (= (content!77 lt!6352) (union (content!77 (toList!127 (left!726 res!5582))) (content!77 (toList!127 (right!729 res!5582))))))))

(declare-fun e!17058 () List!372)

(assert (=> d!16895 (= lt!6352 e!17058)))

(declare-fun c!7243 () Bool)

(assert (=> d!16895 (= c!7243 (is-Nil!367 (toList!127 (left!726 res!5582))))))

(assert (=> d!16895 (= (++!52 (toList!127 (left!726 res!5582)) (toList!127 (right!729 res!5582))) lt!6352)))

(declare-fun b!33733 () Bool)

(assert (=> b!33733 (= e!17058 (toList!127 (right!729 res!5582)))))

(declare-fun b!33734 () Bool)

(assert (=> b!33734 (= e!17058 (Cons!366 (h!283 (toList!127 (left!726 res!5582))) (++!52 (t!4390 (toList!127 (left!726 res!5582))) (toList!127 (right!729 res!5582)))))))

(assert (= (and d!16895 c!7243) b!33733))

(assert (= (and d!16895 (not c!7243)) b!33734))

(assert (= (and d!16895 res!15606) b!33735))

(assert (= (and b!33735 res!15605) b!33736))

(declare-fun m!35987 () Bool)

(assert (=> b!33735 m!35987))

(assert (=> b!33735 m!35799))

(declare-fun m!35989 () Bool)

(assert (=> b!33735 m!35989))

(assert (=> b!33735 m!35801))

(declare-fun m!35991 () Bool)

(assert (=> b!33735 m!35991))

(declare-fun m!35993 () Bool)

(assert (=> d!16895 m!35993))

(assert (=> d!16895 m!35799))

(declare-fun m!35995 () Bool)

(assert (=> d!16895 m!35995))

(assert (=> d!16895 m!35801))

(declare-fun m!35997 () Bool)

(assert (=> d!16895 m!35997))

(assert (=> b!33734 m!35801))

(declare-fun m!35999 () Bool)

(assert (=> b!33734 m!35999))

(assert (=> b!33576 d!16895))

(declare-fun b!33738 () Bool)

(declare-fun e!17060 () List!372)

(declare-fun e!17061 () List!372)

(assert (=> b!33738 (= e!17060 e!17061)))

(declare-fun c!7244 () Bool)

(assert (=> b!33738 (= c!7244 (is-Single!81 (left!726 res!5582)))))

(declare-fun b!33740 () Bool)

(assert (=> b!33740 (= e!17061 (++!52 (toList!127 (left!726 (left!726 res!5582))) (toList!127 (right!729 (left!726 res!5582)))))))

(declare-fun b!33737 () Bool)

(assert (=> b!33737 (= e!17060 Nil!367)))

(declare-fun b!33739 () Bool)

(assert (=> b!33739 (= e!17061 (Cons!366 (x!9010 (left!726 res!5582)) Nil!367))))

(declare-fun d!16897 () Bool)

(declare-fun lt!6353 () List!372)

(assert (=> d!16897 (= (size!297 lt!6353) (size!296 (left!726 res!5582)))))

(assert (=> d!16897 (= lt!6353 e!17060)))

(declare-fun c!7245 () Bool)

(assert (=> d!16897 (= c!7245 (is-Empty!92 (left!726 res!5582)))))

(assert (=> d!16897 (= (toList!127 (left!726 res!5582)) lt!6353)))

(assert (= (and b!33738 c!7244) b!33739))

(assert (= (and b!33738 (not c!7244)) b!33740))

(assert (= (and d!16897 c!7245) b!33737))

(assert (= (and d!16897 (not c!7245)) b!33738))

(declare-fun m!36001 () Bool)

(assert (=> b!33740 m!36001))

(declare-fun m!36003 () Bool)

(assert (=> b!33740 m!36003))

(assert (=> b!33740 m!36001))

(assert (=> b!33740 m!36003))

(declare-fun m!36005 () Bool)

(assert (=> b!33740 m!36005))

(declare-fun m!36007 () Bool)

(assert (=> d!16897 m!36007))

(declare-fun m!36009 () Bool)

(assert (=> d!16897 m!36009))

(assert (=> b!33576 d!16897))

(declare-fun b!33742 () Bool)

(declare-fun e!17062 () List!372)

(declare-fun e!17063 () List!372)

(assert (=> b!33742 (= e!17062 e!17063)))

(declare-fun c!7246 () Bool)

(assert (=> b!33742 (= c!7246 (is-Single!81 (right!729 res!5582)))))

(declare-fun b!33744 () Bool)

(assert (=> b!33744 (= e!17063 (++!52 (toList!127 (left!726 (right!729 res!5582))) (toList!127 (right!729 (right!729 res!5582)))))))

(declare-fun b!33741 () Bool)

(assert (=> b!33741 (= e!17062 Nil!367)))

(declare-fun b!33743 () Bool)

(assert (=> b!33743 (= e!17063 (Cons!366 (x!9010 (right!729 res!5582)) Nil!367))))

(declare-fun d!16899 () Bool)

(declare-fun lt!6354 () List!372)

(assert (=> d!16899 (= (size!297 lt!6354) (size!296 (right!729 res!5582)))))

(assert (=> d!16899 (= lt!6354 e!17062)))

(declare-fun c!7247 () Bool)

(assert (=> d!16899 (= c!7247 (is-Empty!92 (right!729 res!5582)))))

(assert (=> d!16899 (= (toList!127 (right!729 res!5582)) lt!6354)))

(assert (= (and b!33742 c!7246) b!33743))

(assert (= (and b!33742 (not c!7246)) b!33744))

(assert (= (and d!16899 c!7247) b!33741))

(assert (= (and d!16899 (not c!7247)) b!33742))

(declare-fun m!36011 () Bool)

(assert (=> b!33744 m!36011))

(declare-fun m!36013 () Bool)

(assert (=> b!33744 m!36013))

(assert (=> b!33744 m!36011))

(assert (=> b!33744 m!36013))

(declare-fun m!36015 () Bool)

(assert (=> b!33744 m!36015))

(declare-fun m!36017 () Bool)

(assert (=> d!16899 m!36017))

(declare-fun m!36019 () Bool)

(assert (=> d!16899 m!36019))

(assert (=> b!33576 d!16899))

(declare-fun b!33746 () Bool)

(declare-fun e!17064 () List!372)

(declare-fun e!17065 () List!372)

(assert (=> b!33746 (= e!17064 e!17065)))

(declare-fun c!7248 () Bool)

(assert (=> b!33746 (= c!7248 (is-Single!81 lt!6299))))

(declare-fun b!33748 () Bool)

(assert (=> b!33748 (= e!17065 (++!52 (toList!127 (left!726 lt!6299)) (toList!127 (right!729 lt!6299))))))

(declare-fun b!33745 () Bool)

(assert (=> b!33745 (= e!17064 Nil!367)))

(declare-fun b!33747 () Bool)

(assert (=> b!33747 (= e!17065 (Cons!366 (x!9010 lt!6299) Nil!367))))

(declare-fun d!16901 () Bool)

(declare-fun lt!6355 () List!372)

(assert (=> d!16901 (= (size!297 lt!6355) (size!296 lt!6299))))

(assert (=> d!16901 (= lt!6355 e!17064)))

(declare-fun c!7249 () Bool)

(assert (=> d!16901 (= c!7249 (is-Empty!92 lt!6299))))

(assert (=> d!16901 (= (toList!127 lt!6299) lt!6355)))

(assert (= (and b!33746 c!7248) b!33747))

(assert (= (and b!33746 (not c!7248)) b!33748))

(assert (= (and d!16901 c!7249) b!33745))

(assert (= (and d!16901 (not c!7249)) b!33746))

(declare-fun m!36021 () Bool)

(assert (=> b!33748 m!36021))

(declare-fun m!36023 () Bool)

(assert (=> b!33748 m!36023))

(assert (=> b!33748 m!36021))

(assert (=> b!33748 m!36023))

(declare-fun m!36025 () Bool)

(assert (=> b!33748 m!36025))

(declare-fun m!36027 () Bool)

(assert (=> d!16901 m!36027))

(declare-fun m!36029 () Bool)

(assert (=> d!16901 m!36029))

(assert (=> b!33507 d!16901))

(declare-fun d!16903 () Bool)

(declare-fun c!7250 () Bool)

(assert (=> d!16903 (= c!7250 (and (is-Cons!366 (toList!127 (right!729 xs!586))) (= (- i!263 (size!296 (left!726 xs!586))) 0)))))

(declare-fun e!17066 () List!372)

(assert (=> d!16903 (= (updated!10 (toList!127 (right!729 xs!586)) (- i!263 (size!296 (left!726 xs!586))) y!785) e!17066)))

(declare-fun b!33749 () Bool)

(assert (=> b!33749 (= e!17066 (Cons!366 y!785 (t!4390 (toList!127 (right!729 xs!586)))))))

(declare-fun b!33750 () Bool)

(assert (=> b!33750 (= e!17066 (Cons!366 (h!283 (toList!127 (right!729 xs!586))) (updated!10 (t!4390 (toList!127 (right!729 xs!586))) (- (- i!263 (size!296 (left!726 xs!586))) 1) y!785)))))

(assert (= (and d!16903 c!7250) b!33749))

(assert (= (and d!16903 (not c!7250)) b!33750))

(declare-fun m!36031 () Bool)

(assert (=> b!33750 m!36031))

(assert (=> b!33507 d!16903))

(assert (=> b!33507 d!16871))

(assert (=> b!33558 d!16843))

(assert (=> b!33558 d!16841))

(assert (=> b!33516 d!16875))

(assert (=> b!33480 d!16855))

(assert (=> b!33480 d!16853))

(declare-fun d!16905 () Bool)

(assert (=> d!16905 (= (isEmpty!336 (left!726 xs!586)) (= (left!726 xs!586) Empty!92))))

(assert (=> b!33587 d!16905))

(declare-fun d!16907 () Bool)

(declare-fun lt!6356 () Int)

(assert (=> d!16907 (>= lt!6356 0)))

(declare-fun e!17067 () Int)

(assert (=> d!16907 (= lt!6356 e!17067)))

(declare-fun c!7251 () Bool)

(assert (=> d!16907 (= c!7251 (is-Nil!367 lt!6318))))

(assert (=> d!16907 (= (size!297 lt!6318) lt!6356)))

(declare-fun b!33751 () Bool)

(assert (=> b!33751 (= e!17067 0)))

(declare-fun b!33752 () Bool)

(assert (=> b!33752 (= e!17067 (+ 1 (size!297 (t!4390 lt!6318))))))

(assert (= (and d!16907 c!7251) b!33751))

(assert (= (and d!16907 (not c!7251)) b!33752))

(declare-fun m!36033 () Bool)

(assert (=> b!33752 m!36033))

(assert (=> d!16829 d!16907))

(declare-fun b!33755 () Bool)

(declare-fun e!17068 () Int)

(assert (=> b!33755 (= e!17068 1)))

(declare-fun b!33754 () Bool)

(declare-fun e!17069 () Int)

(assert (=> b!33754 (= e!17069 e!17068)))

(declare-fun c!7253 () Bool)

(assert (=> b!33754 (= c!7253 (is-Single!81 res!5582))))

(declare-fun d!16909 () Bool)

(declare-fun lt!6357 () Int)

(assert (=> d!16909 (>= lt!6357 0)))

(assert (=> d!16909 (= lt!6357 e!17069)))

(declare-fun c!7252 () Bool)

(assert (=> d!16909 (= c!7252 (is-Empty!92 res!5582))))

(assert (=> d!16909 (= (size!296 res!5582) lt!6357)))

(declare-fun b!33756 () Bool)

(assert (=> b!33756 (= e!17068 (+ (size!296 (left!726 res!5582)) (size!296 (right!729 res!5582))))))

(declare-fun b!33753 () Bool)

(assert (=> b!33753 (= e!17069 0)))

(assert (= (and b!33754 c!7253) b!33755))

(assert (= (and b!33754 (not c!7253)) b!33756))

(assert (= (and d!16909 c!7252) b!33753))

(assert (= (and d!16909 (not c!7252)) b!33754))

(assert (=> b!33756 m!36009))

(assert (=> b!33756 m!36019))

(assert (=> d!16829 d!16909))

(declare-fun d!16911 () Bool)

(declare-fun res!15609 () Bool)

(declare-fun e!17070 () Bool)

(assert (=> d!16911 (=> res!15609 e!17070)))

(assert (=> d!16911 (= res!15609 (not (is-CC!81 (left!726 res!5582))))))

(assert (=> d!16911 (= (concInv!74 (left!726 res!5582)) e!17070)))

(declare-fun b!33759 () Bool)

(declare-fun res!15610 () Bool)

(declare-fun e!17071 () Bool)

(assert (=> b!33759 (=> (not res!15610) (not e!17071))))

(assert (=> b!33759 (= res!15610 (concInv!74 (left!726 (left!726 res!5582))))))

(declare-fun b!33758 () Bool)

(declare-fun res!15607 () Bool)

(assert (=> b!33758 (=> (not res!15607) (not e!17071))))

(assert (=> b!33758 (= res!15607 (not (isEmpty!336 (right!729 (left!726 res!5582)))))))

(declare-fun b!33757 () Bool)

(assert (=> b!33757 (= e!17070 e!17071)))

(declare-fun res!15608 () Bool)

(assert (=> b!33757 (=> (not res!15608) (not e!17071))))

(assert (=> b!33757 (= res!15608 (not (isEmpty!336 (left!726 (left!726 res!5582)))))))

(declare-fun b!33760 () Bool)

(assert (=> b!33760 (= e!17071 (concInv!74 (right!729 (left!726 res!5582))))))

(assert (= (and d!16911 (not res!15609)) b!33757))

(assert (= (and b!33757 res!15608) b!33758))

(assert (= (and b!33758 res!15607) b!33759))

(assert (= (and b!33759 res!15610) b!33760))

(declare-fun m!36035 () Bool)

(assert (=> b!33759 m!36035))

(declare-fun m!36037 () Bool)

(assert (=> b!33758 m!36037))

(declare-fun m!36039 () Bool)

(assert (=> b!33757 m!36039))

(declare-fun m!36041 () Bool)

(assert (=> b!33760 m!36041))

(assert (=> b!33551 d!16911))

(assert (=> b!33514 d!16847))

(declare-fun d!16913 () Bool)

(assert (=> d!16913 (= (isEmpty!336 (right!729 res!5582)) (= (right!729 res!5582) Empty!92))))

(assert (=> b!33550 d!16913))

(declare-fun b!33761 () Bool)

(declare-fun e!17072 () Bool)

(declare-fun tp!6922 () Bool)

(declare-fun tp!6923 () Bool)

(assert (=> b!33761 (= e!17072 (and tp!6922 tp!6923))))

(declare-fun b!33762 () Bool)

(assert (=> b!33762 (= e!17072 tp_is_empty!209)))

(assert (=> b!33603 (= tp!6920 e!17072)))

(assert (= (and b!33603 (is-CC!81 (left!726 (right!729 xs!586)))) b!33761))

(assert (= (and b!33603 (is-Single!81 (left!726 (right!729 xs!586)))) b!33762))

(declare-fun b!33763 () Bool)

(declare-fun e!17073 () Bool)

(declare-fun tp!6924 () Bool)

(declare-fun tp!6925 () Bool)

(assert (=> b!33763 (= e!17073 (and tp!6924 tp!6925))))

(declare-fun b!33764 () Bool)

(assert (=> b!33764 (= e!17073 tp_is_empty!209)))

(assert (=> b!33603 (= tp!6921 e!17073)))

(assert (= (and b!33603 (is-CC!81 (right!729 (right!729 xs!586)))) b!33763))

(assert (= (and b!33603 (is-Single!81 (right!729 (right!729 xs!586)))) b!33764))

(declare-fun b!33765 () Bool)

(declare-fun e!17074 () Bool)

(declare-fun tp!6926 () Bool)

(declare-fun tp!6927 () Bool)

(assert (=> b!33765 (= e!17074 (and tp!6926 tp!6927))))

(declare-fun b!33766 () Bool)

(assert (=> b!33766 (= e!17074 tp_is_empty!209)))

(assert (=> b!33601 (= tp!6918 e!17074)))

(assert (= (and b!33601 (is-CC!81 (left!726 (left!726 xs!586)))) b!33765))

(assert (= (and b!33601 (is-Single!81 (left!726 (left!726 xs!586)))) b!33766))

(declare-fun b!33767 () Bool)

(declare-fun e!17075 () Bool)

(declare-fun tp!6928 () Bool)

(declare-fun tp!6929 () Bool)

(assert (=> b!33767 (= e!17075 (and tp!6928 tp!6929))))

(declare-fun b!33768 () Bool)

(assert (=> b!33768 (= e!17075 tp_is_empty!209)))

(assert (=> b!33601 (= tp!6919 e!17075)))

(assert (= (and b!33601 (is-CC!81 (right!729 (left!726 xs!586)))) b!33767))

(assert (= (and b!33601 (is-Single!81 (right!729 (left!726 xs!586)))) b!33768))

(declare-fun b!33769 () Bool)

(declare-fun e!17076 () Bool)

(declare-fun tp!6930 () Bool)

(declare-fun tp!6931 () Bool)

(assert (=> b!33769 (= e!17076 (and tp!6930 tp!6931))))

(declare-fun b!33770 () Bool)

(assert (=> b!33770 (= e!17076 tp_is_empty!209)))

(assert (=> b!33599 (= tp!6916 e!17076)))

(assert (= (and b!33599 (is-CC!81 (left!726 (right!729 res!5582)))) b!33769))

(assert (= (and b!33599 (is-Single!81 (left!726 (right!729 res!5582)))) b!33770))

(declare-fun b!33771 () Bool)

(declare-fun e!17077 () Bool)

(declare-fun tp!6932 () Bool)

(declare-fun tp!6933 () Bool)

(assert (=> b!33771 (= e!17077 (and tp!6932 tp!6933))))

(declare-fun b!33772 () Bool)

(assert (=> b!33772 (= e!17077 tp_is_empty!209)))

(assert (=> b!33599 (= tp!6917 e!17077)))

(assert (= (and b!33599 (is-CC!81 (right!729 (right!729 res!5582)))) b!33771))

(assert (= (and b!33599 (is-Single!81 (right!729 (right!729 res!5582)))) b!33772))

(declare-fun b!33773 () Bool)

(declare-fun e!17078 () Bool)

(declare-fun tp!6934 () Bool)

(declare-fun tp!6935 () Bool)

(assert (=> b!33773 (= e!17078 (and tp!6934 tp!6935))))

(declare-fun b!33774 () Bool)

(assert (=> b!33774 (= e!17078 tp_is_empty!209)))

(assert (=> b!33597 (= tp!6914 e!17078)))

(assert (= (and b!33597 (is-CC!81 (left!726 (left!726 res!5582)))) b!33773))

(assert (= (and b!33597 (is-Single!81 (left!726 (left!726 res!5582)))) b!33774))

(declare-fun b!33775 () Bool)

(declare-fun e!17079 () Bool)

(declare-fun tp!6936 () Bool)

(declare-fun tp!6937 () Bool)

(assert (=> b!33775 (= e!17079 (and tp!6936 tp!6937))))

(declare-fun b!33776 () Bool)

(assert (=> b!33776 (= e!17079 tp_is_empty!209)))

(assert (=> b!33597 (= tp!6915 e!17079)))

(assert (= (and b!33597 (is-CC!81 (right!729 (left!726 res!5582)))) b!33775))

(assert (= (and b!33597 (is-Single!81 (right!729 (left!726 res!5582)))) b!33776))

(push 1)

(assert (not b!33740))

(assert (not b!33619))

(assert (not b!33706))

(assert (not b!33734))

(assert (not b!33732))

(assert (not b!33683))

(assert (not b!33636))

(assert (not b!33707))

(assert (not b!33715))

(assert (not b!33690))

(assert (not d!16897))

(assert (not b!33637))

(assert (not d!16889))

(assert (not b!33726))

(assert (not b!33750))

(assert (not b!33691))

(assert (not b!33649))

(assert (not d!16871))

(assert (not b!33729))

(assert (not b!33684))

(assert (not b!33735))

(assert (not b!33773))

(assert (not b!33609))

(assert (not b!33709))

(assert (not b!33639))

(assert (not b!33678))

(assert (not d!16899))

(assert (not b!33705))

(assert (not b!33607))

(assert (not b!33756))

(assert (not b!33710))

(assert (not b!33682))

(assert (not b!33640))

(assert (not b!33704))

(assert (not b!33744))

(assert tp_is_empty!209)

(assert (not b!33689))

(assert (not b!33767))

(assert (not b!33694))

(assert (not b!33618))

(assert (not b!33759))

(assert (not b!33654))

(assert (not b!33748))

(assert (not b!33730))

(assert (not b!33616))

(assert (not b!33771))

(assert (not b!33610))

(assert (not b!33611))

(assert (not d!16849))

(assert (not d!16891))

(assert (not b!33633))

(assert (not d!16901))

(assert (not b!33712))

(assert (not b!33630))

(assert (not b!33763))

(assert (not b!33625))

(assert (not d!16869))

(assert (not b!33629))

(assert (not b!33775))

(assert (not b!33757))

(assert (not b!33725))

(assert (not b!33647))

(assert (not b!33688))

(assert (not b!33620))

(assert (not b!33651))

(assert (not b!33650))

(assert (not b!33627))

(assert (not b!33713))

(assert (not b!33644))

(assert (not d!16895))

(assert (not b!33714))

(assert (not b!33642))

(assert (not b!33728))

(assert (not b!33686))

(assert (not b!33673))

(assert (not b!33731))

(assert (not b!33662))

(assert (not b!33608))

(assert (not b!33769))

(assert (not b!33658))

(assert (not b!33617))

(assert (not b!33672))

(assert (not b!33765))

(assert (not b!33700))

(assert (not b!33760))

(assert (not b!33685))

(assert (not b!33635))

(assert (not b!33605))

(assert (not b!33614))

(assert (not b!33758))

(assert (not b!33648))

(assert (not b!33612))

(assert (not b!33645))

(assert (not b!33752))

(assert (not d!16867))

(assert (not b!33652))

(assert (not b!33638))

(assert (not b!33606))

(assert (not b!33634))

(assert (not b!33692))

(assert (not b!33761))

(assert (not b!33632))

(assert (not b!33624))

(assert (not b!33716))

(assert (not b!33653))

(assert (not b!33727))

(assert (not b!33646))

(assert (not b!33626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

