; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3476 () Bool)

(assert start!3476)

(declare-fun b!21536 () Bool)

(declare-fun res!9402 () Bool)

(declare-fun e!11261 () Bool)

(assert (=> b!21536 (=> res!9402 e!11261)))

(declare-datatypes () ((T!1759 (T!1760 (val!52 Int)))))

(declare-datatypes () ((Conc!34 (CC!33 (left!678 Conc!34) (right!681 Conc!34)) (Single!33 (x!8801 T!1759)) (Empty!44))))

(declare-fun res!5614 () Conc!34)

(declare-fun balanced!33 (Conc!34) Bool)

(assert (=> b!21536 (= res!9402 (not (balanced!33 res!5614)))))

(declare-fun b!21537 () Bool)

(declare-fun res!9406 () Bool)

(declare-fun e!11262 () Bool)

(assert (=> b!21537 (=> (not res!9406) (not e!11262))))

(declare-fun xs!604 () Conc!34)

(assert (=> b!21537 (= res!9406 (balanced!33 xs!604))))

(declare-fun res!9400 () Bool)

(assert (=> start!3476 (=> (not res!9400) (not e!11262))))

(declare-fun concInv!32 (Conc!34) Bool)

(assert (=> start!3476 (= res!9400 (concInv!32 xs!604))))

(assert (=> start!3476 e!11262))

(declare-fun e!11260 () Bool)

(assert (=> start!3476 e!11260))

(assert (=> start!3476 true))

(declare-fun e!11263 () Bool)

(assert (=> start!3476 e!11263))

(declare-fun tp_is_empty!103 () Bool)

(assert (=> start!3476 tp_is_empty!103))

(declare-fun b!21538 () Bool)

(declare-fun res!9405 () Bool)

(assert (=> b!21538 (=> res!9405 e!11261)))

(declare-fun isEmpty!296 (Conc!34) Bool)

(assert (=> b!21538 (= res!9405 (isEmpty!296 res!5614))))

(declare-fun b!21539 () Bool)

(assert (=> b!21539 (= e!11263 tp_is_empty!103)))

(declare-fun b!21540 () Bool)

(declare-fun res!9408 () Bool)

(assert (=> b!21540 (=> res!9408 e!11261)))

(declare-fun y!824 () T!1759)

(declare-fun i!298 () Int)

(declare-fun insertAppendAxiomInst!14 (Conc!34 Int T!1759) Bool)

(assert (=> b!21540 (= res!9408 (not (insertAppendAxiomInst!14 xs!604 i!298 y!824)))))

(declare-fun b!21541 () Bool)

(assert (=> b!21541 (= e!11262 e!11261)))

(declare-fun res!9397 () Bool)

(assert (=> b!21541 (=> res!9397 e!11261)))

(assert (=> b!21541 (= res!9397 (not (concInv!32 res!5614)))))

(declare-fun b!21542 () Bool)

(declare-fun res!9401 () Bool)

(assert (=> b!21542 (=> (not res!9401) (not e!11262))))

(assert (=> b!21542 (= res!9401 (>= i!298 0))))

(declare-fun b!21543 () Bool)

(declare-fun res!9403 () Bool)

(assert (=> b!21543 (=> res!9403 e!11261)))

(declare-fun level!31 (Conc!34) Int)

(assert (=> b!21543 (= res!9403 (< (level!31 res!5614) (level!31 xs!604)))))

(declare-fun b!21544 () Bool)

(declare-datatypes () ((List!339 (Cons!333 (h!247 T!1759) (t!4334 List!339)) (Nil!334))))

(declare-fun toList!99 (Conc!34) List!339)

(declare-fun insertAtIndex!12 (List!339 Int T!1759) List!339)

(assert (=> b!21544 (= e!11261 (not (= (toList!99 res!5614) (insertAtIndex!12 (toList!99 xs!604) i!298 y!824))))))

(declare-fun b!21545 () Bool)

(declare-fun res!9409 () Bool)

(assert (=> b!21545 (=> (not res!9409) (not e!11262))))

(declare-fun size!227 (Conc!34) Int)

(assert (=> b!21545 (= res!9409 (<= i!298 (size!227 xs!604)))))

(declare-fun b!21546 () Bool)

(declare-fun res!9399 () Bool)

(assert (=> b!21546 (=> (not res!9399) (not e!11262))))

(assert (=> b!21546 (= res!9399 (>= i!298 (size!227 (left!678 xs!604))))))

(declare-fun b!21547 () Bool)

(declare-fun res!9398 () Bool)

(assert (=> b!21547 (=> (not res!9398) (not e!11262))))

(assert (=> b!21547 (= res!9398 (and (not (is-Empty!44 xs!604)) (not (is-Single!33 xs!604))))))

(declare-fun b!21548 () Bool)

(assert (=> b!21548 (= e!11260 tp_is_empty!103)))

(declare-fun b!21549 () Bool)

(declare-fun res!9407 () Bool)

(assert (=> b!21549 (=> res!9407 e!11261)))

(assert (=> b!21549 (= res!9407 (> (- (level!31 res!5614) (level!31 xs!604)) 1))))

(declare-fun b!21550 () Bool)

(declare-fun res!9404 () Bool)

(assert (=> b!21550 (=> (not res!9404) (not e!11262))))

(declare-fun concatNonEmpty!12 (Conc!34 Conc!34) Conc!34)

(declare-fun insert!21 (Conc!34 Int T!1759) Conc!34)

(assert (=> b!21550 (= res!9404 (= res!5614 (concatNonEmpty!12 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21551 () Bool)

(declare-fun tp!4806 () Bool)

(declare-fun tp!4808 () Bool)

(assert (=> b!21551 (= e!11263 (and tp!4806 tp!4808))))

(declare-fun b!21552 () Bool)

(declare-fun tp!4807 () Bool)

(declare-fun tp!4805 () Bool)

(assert (=> b!21552 (= e!11260 (and tp!4807 tp!4805))))

(assert (= (and start!3476 res!9400) b!21537))

(assert (= (and b!21537 res!9406) b!21542))

(assert (= (and b!21542 res!9401) b!21545))

(assert (= (and b!21545 res!9409) b!21547))

(assert (= (and b!21547 res!9398) b!21546))

(assert (= (and b!21546 res!9399) b!21550))

(assert (= (and b!21550 res!9404) b!21541))

(assert (= (and b!21541 (not res!9397)) b!21536))

(assert (= (and b!21536 (not res!9402)) b!21549))

(assert (= (and b!21549 (not res!9407)) b!21543))

(assert (= (and b!21543 (not res!9403)) b!21538))

(assert (= (and b!21538 (not res!9405)) b!21540))

(assert (= (and b!21540 (not res!9408)) b!21544))

(assert (= (and start!3476 (is-CC!33 xs!604)) b!21552))

(assert (= (and start!3476 (is-Single!33 xs!604)) b!21548))

(assert (= (and start!3476 (is-CC!33 res!5614)) b!21551))

(assert (= (and start!3476 (is-Single!33 res!5614)) b!21539))

(declare-fun m!23715 () Bool)

(assert (=> b!21549 m!23715))

(declare-fun m!23717 () Bool)

(assert (=> b!21549 m!23717))

(declare-fun m!23719 () Bool)

(assert (=> b!21550 m!23719))

(declare-fun m!23721 () Bool)

(assert (=> b!21550 m!23721))

(assert (=> b!21550 m!23721))

(declare-fun m!23723 () Bool)

(assert (=> b!21550 m!23723))

(declare-fun m!23725 () Bool)

(assert (=> b!21545 m!23725))

(assert (=> b!21546 m!23719))

(declare-fun m!23727 () Bool)

(assert (=> b!21538 m!23727))

(declare-fun m!23729 () Bool)

(assert (=> b!21541 m!23729))

(declare-fun m!23731 () Bool)

(assert (=> b!21537 m!23731))

(declare-fun m!23733 () Bool)

(assert (=> b!21540 m!23733))

(declare-fun m!23735 () Bool)

(assert (=> b!21536 m!23735))

(assert (=> b!21543 m!23715))

(assert (=> b!21543 m!23717))

(declare-fun m!23737 () Bool)

(assert (=> start!3476 m!23737))

(declare-fun m!23739 () Bool)

(assert (=> b!21544 m!23739))

(declare-fun m!23741 () Bool)

(assert (=> b!21544 m!23741))

(assert (=> b!21544 m!23741))

(declare-fun m!23743 () Bool)

(assert (=> b!21544 m!23743))

(push 1)

(assert (not b!21546))

(assert (not b!21545))

(assert (not b!21538))

(assert (not b!21537))

(assert (not b!21536))

(assert tp_is_empty!103)

(assert (not b!21549))

(assert (not b!21550))

(assert (not b!21552))

(assert (not b!21541))

(assert (not b!21540))

(assert (not start!3476))

(assert (not b!21543))

(assert (not b!21544))

(assert (not b!21551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12961 () Bool)

(declare-fun e!11269 () Bool)

(assert (=> d!12961 e!11269))

(declare-fun res!9415 () Bool)

(assert (=> d!12961 (=> res!9415 e!11269)))

(assert (=> d!12961 (= res!9415 (not (is-CC!33 xs!604)))))

(declare-fun e!11268 () Bool)

(assert (=> d!12961 e!11268))

(declare-fun res!9414 () Bool)

(assert (=> d!12961 (=> (not res!9414) (not e!11268))))

(assert (=> d!12961 (= res!9414 (>= i!298 0))))

(assert (=> d!12961 (= (insertAppendAxiomInst!14 xs!604 i!298 y!824) true)))

(declare-fun b!21557 () Bool)

(assert (=> b!21557 (= e!11268 (<= i!298 (size!227 xs!604)))))

(declare-fun b!21558 () Bool)

(declare-fun appendInsertIndex!13 (List!339 List!339 Int T!1759) Bool)

(assert (=> b!21558 (= e!11269 (appendInsertIndex!13 (toList!99 (left!678 xs!604)) (toList!99 (right!681 xs!604)) i!298 y!824))))

(assert (= (and d!12961 res!9414) b!21557))

(assert (= (and d!12961 (not res!9415)) b!21558))

(assert (=> b!21557 m!23725))

(declare-fun m!23745 () Bool)

(assert (=> b!21558 m!23745))

(declare-fun m!23747 () Bool)

(assert (=> b!21558 m!23747))

(assert (=> b!21558 m!23745))

(assert (=> b!21558 m!23747))

(declare-fun m!23749 () Bool)

(assert (=> b!21558 m!23749))

(assert (=> b!21540 d!12961))

(declare-fun b!21570 () Bool)

(declare-fun e!11274 () Bool)

(assert (=> b!21570 (= e!11274 (concInv!32 (right!681 res!5614)))))

(declare-fun b!21568 () Bool)

(declare-fun res!9425 () Bool)

(assert (=> b!21568 (=> (not res!9425) (not e!11274))))

(assert (=> b!21568 (= res!9425 (not (isEmpty!296 (right!681 res!5614))))))

(declare-fun d!12963 () Bool)

(declare-fun res!9427 () Bool)

(declare-fun e!11275 () Bool)

(assert (=> d!12963 (=> res!9427 e!11275)))

(assert (=> d!12963 (= res!9427 (not (is-CC!33 res!5614)))))

(assert (=> d!12963 (= (concInv!32 res!5614) e!11275)))

(declare-fun b!21569 () Bool)

(declare-fun res!9424 () Bool)

(assert (=> b!21569 (=> (not res!9424) (not e!11274))))

(assert (=> b!21569 (= res!9424 (concInv!32 (left!678 res!5614)))))

(declare-fun b!21567 () Bool)

(assert (=> b!21567 (= e!11275 e!11274)))

(declare-fun res!9426 () Bool)

(assert (=> b!21567 (=> (not res!9426) (not e!11274))))

(assert (=> b!21567 (= res!9426 (not (isEmpty!296 (left!678 res!5614))))))

(assert (= (and d!12963 (not res!9427)) b!21567))

(assert (= (and b!21567 res!9426) b!21568))

(assert (= (and b!21568 res!9425) b!21569))

(assert (= (and b!21569 res!9424) b!21570))

(declare-fun m!23751 () Bool)

(assert (=> b!21570 m!23751))

(declare-fun m!23753 () Bool)

(assert (=> b!21568 m!23753))

(declare-fun m!23755 () Bool)

(assert (=> b!21569 m!23755))

(declare-fun m!23757 () Bool)

(assert (=> b!21567 m!23757))

(assert (=> b!21541 d!12963))

(declare-fun b!21581 () Bool)

(declare-fun res!9437 () Bool)

(declare-fun e!11280 () Bool)

(assert (=> b!21581 (=> (not res!9437) (not e!11280))))

(assert (=> b!21581 (= res!9437 (balanced!33 (left!678 xs!604)))))

(declare-fun d!12965 () Bool)

(declare-fun res!9436 () Bool)

(declare-fun e!11281 () Bool)

(assert (=> d!12965 (=> res!9436 e!11281)))

(assert (=> d!12965 (= res!9436 (not (is-CC!33 xs!604)))))

(assert (=> d!12965 (= (balanced!33 xs!604) e!11281)))

(declare-fun b!21582 () Bool)

(assert (=> b!21582 (= e!11280 (balanced!33 (right!681 xs!604)))))

(declare-fun b!21580 () Bool)

(declare-fun res!9438 () Bool)

(assert (=> b!21580 (=> (not res!9438) (not e!11280))))

(assert (=> b!21580 (= res!9438 (<= (- (level!31 (left!678 xs!604)) (level!31 (right!681 xs!604))) 1))))

(declare-fun b!21579 () Bool)

(assert (=> b!21579 (= e!11281 e!11280)))

(declare-fun res!9439 () Bool)

(assert (=> b!21579 (=> (not res!9439) (not e!11280))))

(assert (=> b!21579 (= res!9439 (>= (- (level!31 (left!678 xs!604)) (level!31 (right!681 xs!604))) (- 1)))))

(assert (= (and d!12965 (not res!9436)) b!21579))

(assert (= (and b!21579 res!9439) b!21580))

(assert (= (and b!21580 res!9438) b!21581))

(assert (= (and b!21581 res!9437) b!21582))

(declare-fun m!23759 () Bool)

(assert (=> b!21581 m!23759))

(declare-fun m!23761 () Bool)

(assert (=> b!21582 m!23761))

(declare-fun m!23763 () Bool)

(assert (=> b!21580 m!23763))

(declare-fun m!23765 () Bool)

(assert (=> b!21580 m!23765))

(assert (=> b!21579 m!23763))

(assert (=> b!21579 m!23765))

(assert (=> b!21537 d!12965))

(declare-fun b!21588 () Bool)

(declare-fun e!11284 () Int)

(declare-fun lt!3357 () Int)

(declare-fun lt!3359 () Int)

(assert (=> b!21588 (= e!11284 (+ 1 (ite (>= lt!3357 lt!3359) lt!3357 lt!3359)))))

(assert (=> b!21588 (= lt!3359 (level!31 (right!681 res!5614)))))

(assert (=> b!21588 (= lt!3357 (level!31 (left!678 res!5614)))))

(declare-fun d!12967 () Bool)

(declare-fun lt!3358 () Int)

(assert (=> d!12967 (>= lt!3358 0)))

(assert (=> d!12967 (= lt!3358 e!11284)))

(declare-fun c!5156 () Bool)

(assert (=> d!12967 (= c!5156 (or (is-Empty!44 res!5614) (is-Single!33 res!5614)))))

(assert (=> d!12967 (= (level!31 res!5614) lt!3358)))

(declare-fun b!21587 () Bool)

(assert (=> b!21587 (= e!11284 0)))

(assert (= (and d!12967 c!5156) b!21587))

(assert (= (and d!12967 (not c!5156)) b!21588))

(declare-fun m!23767 () Bool)

(assert (=> b!21588 m!23767))

(declare-fun m!23769 () Bool)

(assert (=> b!21588 m!23769))

(assert (=> b!21549 d!12967))

(declare-fun b!21590 () Bool)

(declare-fun e!11285 () Int)

(declare-fun lt!3360 () Int)

(declare-fun lt!3362 () Int)

(assert (=> b!21590 (= e!11285 (+ 1 (ite (>= lt!3360 lt!3362) lt!3360 lt!3362)))))

(assert (=> b!21590 (= lt!3362 (level!31 (right!681 xs!604)))))

(assert (=> b!21590 (= lt!3360 (level!31 (left!678 xs!604)))))

(declare-fun d!12969 () Bool)

(declare-fun lt!3361 () Int)

(assert (=> d!12969 (>= lt!3361 0)))

(assert (=> d!12969 (= lt!3361 e!11285)))

(declare-fun c!5157 () Bool)

(assert (=> d!12969 (= c!5157 (or (is-Empty!44 xs!604) (is-Single!33 xs!604)))))

(assert (=> d!12969 (= (level!31 xs!604) lt!3361)))

(declare-fun b!21589 () Bool)

(assert (=> b!21589 (= e!11285 0)))

(assert (= (and d!12969 c!5157) b!21589))

(assert (= (and d!12969 (not c!5157)) b!21590))

(assert (=> b!21590 m!23765))

(assert (=> b!21590 m!23763))

(assert (=> b!21549 d!12969))

(declare-fun b!21593 () Bool)

(declare-fun res!9441 () Bool)

(declare-fun e!11286 () Bool)

(assert (=> b!21593 (=> (not res!9441) (not e!11286))))

(assert (=> b!21593 (= res!9441 (balanced!33 (left!678 res!5614)))))

(declare-fun d!12971 () Bool)

(declare-fun res!9440 () Bool)

(declare-fun e!11287 () Bool)

(assert (=> d!12971 (=> res!9440 e!11287)))

(assert (=> d!12971 (= res!9440 (not (is-CC!33 res!5614)))))

(assert (=> d!12971 (= (balanced!33 res!5614) e!11287)))

(declare-fun b!21594 () Bool)

(assert (=> b!21594 (= e!11286 (balanced!33 (right!681 res!5614)))))

(declare-fun b!21592 () Bool)

(declare-fun res!9442 () Bool)

(assert (=> b!21592 (=> (not res!9442) (not e!11286))))

(assert (=> b!21592 (= res!9442 (<= (- (level!31 (left!678 res!5614)) (level!31 (right!681 res!5614))) 1))))

(declare-fun b!21591 () Bool)

(assert (=> b!21591 (= e!11287 e!11286)))

(declare-fun res!9443 () Bool)

(assert (=> b!21591 (=> (not res!9443) (not e!11286))))

(assert (=> b!21591 (= res!9443 (>= (- (level!31 (left!678 res!5614)) (level!31 (right!681 res!5614))) (- 1)))))

(assert (= (and d!12971 (not res!9440)) b!21591))

(assert (= (and b!21591 res!9443) b!21592))

(assert (= (and b!21592 res!9442) b!21593))

(assert (= (and b!21593 res!9441) b!21594))

(declare-fun m!23771 () Bool)

(assert (=> b!21593 m!23771))

(declare-fun m!23773 () Bool)

(assert (=> b!21594 m!23773))

(assert (=> b!21592 m!23769))

(assert (=> b!21592 m!23767))

(assert (=> b!21591 m!23769))

(assert (=> b!21591 m!23767))

(assert (=> b!21536 d!12971))

(declare-fun b!21603 () Bool)

(declare-fun e!11293 () Int)

(assert (=> b!21603 (= e!11293 0)))

(declare-fun b!21606 () Bool)

(declare-fun e!11292 () Int)

(assert (=> b!21606 (= e!11292 (+ (size!227 (left!678 xs!604)) (size!227 (right!681 xs!604))))))

(declare-fun b!21605 () Bool)

(assert (=> b!21605 (= e!11292 1)))

(declare-fun b!21604 () Bool)

(assert (=> b!21604 (= e!11293 e!11292)))

(declare-fun c!5163 () Bool)

(assert (=> b!21604 (= c!5163 (is-Single!33 xs!604))))

(declare-fun d!12973 () Bool)

(declare-fun lt!3365 () Int)

(assert (=> d!12973 (>= lt!3365 0)))

(assert (=> d!12973 (= lt!3365 e!11293)))

(declare-fun c!5162 () Bool)

(assert (=> d!12973 (= c!5162 (is-Empty!44 xs!604))))

(assert (=> d!12973 (= (size!227 xs!604) lt!3365)))

(assert (= (and b!21604 c!5163) b!21605))

(assert (= (and b!21604 (not c!5163)) b!21606))

(assert (= (and d!12973 c!5162) b!21603))

(assert (= (and d!12973 (not c!5162)) b!21604))

(assert (=> b!21606 m!23719))

(declare-fun m!23775 () Bool)

(assert (=> b!21606 m!23775))

(assert (=> b!21545 d!12973))

(declare-fun d!12975 () Bool)

(assert (=> d!12975 (= (isEmpty!296 res!5614) (= res!5614 Empty!44))))

(assert (=> b!21538 d!12975))

(declare-fun b!21607 () Bool)

(declare-fun e!11295 () Int)

(assert (=> b!21607 (= e!11295 0)))

(declare-fun b!21610 () Bool)

(declare-fun e!11294 () Int)

(assert (=> b!21610 (= e!11294 (+ (size!227 (left!678 (left!678 xs!604))) (size!227 (right!681 (left!678 xs!604)))))))

(declare-fun b!21609 () Bool)

(assert (=> b!21609 (= e!11294 1)))

(declare-fun b!21608 () Bool)

(assert (=> b!21608 (= e!11295 e!11294)))

(declare-fun c!5165 () Bool)

(assert (=> b!21608 (= c!5165 (is-Single!33 (left!678 xs!604)))))

(declare-fun d!12977 () Bool)

(declare-fun lt!3366 () Int)

(assert (=> d!12977 (>= lt!3366 0)))

(assert (=> d!12977 (= lt!3366 e!11295)))

(declare-fun c!5164 () Bool)

(assert (=> d!12977 (= c!5164 (is-Empty!44 (left!678 xs!604)))))

(assert (=> d!12977 (= (size!227 (left!678 xs!604)) lt!3366)))

(assert (= (and b!21608 c!5165) b!21609))

(assert (= (and b!21608 (not c!5165)) b!21610))

(assert (= (and d!12977 c!5164) b!21607))

(assert (= (and d!12977 (not c!5164)) b!21608))

(declare-fun m!23777 () Bool)

(assert (=> b!21610 m!23777))

(declare-fun m!23779 () Bool)

(assert (=> b!21610 m!23779))

(assert (=> b!21546 d!12977))

(declare-fun b!21614 () Bool)

(declare-fun e!11296 () Bool)

(assert (=> b!21614 (= e!11296 (concInv!32 (right!681 xs!604)))))

(declare-fun b!21612 () Bool)

(declare-fun res!9445 () Bool)

(assert (=> b!21612 (=> (not res!9445) (not e!11296))))

(assert (=> b!21612 (= res!9445 (not (isEmpty!296 (right!681 xs!604))))))

(declare-fun d!12979 () Bool)

(declare-fun res!9447 () Bool)

(declare-fun e!11297 () Bool)

(assert (=> d!12979 (=> res!9447 e!11297)))

(assert (=> d!12979 (= res!9447 (not (is-CC!33 xs!604)))))

(assert (=> d!12979 (= (concInv!32 xs!604) e!11297)))

(declare-fun b!21613 () Bool)

(declare-fun res!9444 () Bool)

(assert (=> b!21613 (=> (not res!9444) (not e!11296))))

(assert (=> b!21613 (= res!9444 (concInv!32 (left!678 xs!604)))))

(declare-fun b!21611 () Bool)

(assert (=> b!21611 (= e!11297 e!11296)))

(declare-fun res!9446 () Bool)

(assert (=> b!21611 (=> (not res!9446) (not e!11296))))

(assert (=> b!21611 (= res!9446 (not (isEmpty!296 (left!678 xs!604))))))

(assert (= (and d!12979 (not res!9447)) b!21611))

(assert (= (and b!21611 res!9446) b!21612))

(assert (= (and b!21612 res!9445) b!21613))

(assert (= (and b!21613 res!9444) b!21614))

(declare-fun m!23781 () Bool)

(assert (=> b!21614 m!23781))

(declare-fun m!23783 () Bool)

(assert (=> b!21612 m!23783))

(declare-fun m!23785 () Bool)

(assert (=> b!21613 m!23785))

(declare-fun m!23787 () Bool)

(assert (=> b!21611 m!23787))

(assert (=> start!3476 d!12979))

(assert (=> b!21543 d!12967))

(assert (=> b!21543 d!12969))

(declare-fun b!21657 () Bool)

(declare-fun e!11318 () Bool)

(assert (=> b!21657 (= e!11318 (not (isEmpty!296 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21658 () Bool)

(declare-fun e!11321 () Bool)

(declare-fun e!11324 () Bool)

(assert (=> b!21658 (= e!11321 e!11324)))

(declare-fun res!9507 () Bool)

(assert (=> b!21658 (=> (not res!9507) (not e!11324))))

(declare-fun lt!3400 () Int)

(declare-fun lt!3411 () Int)

(declare-fun lt!3414 () Int)

(assert (=> b!21658 (= res!9507 (<= lt!3411 (+ (ite (>= lt!3400 lt!3414) lt!3400 lt!3414) 1)))))

(assert (=> b!21658 (= lt!3414 (level!31 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(assert (=> b!21658 (= lt!3400 (level!31 (left!678 xs!604)))))

(declare-fun lt!3402 () Conc!34)

(assert (=> b!21658 (= lt!3411 (level!31 lt!3402))))

(declare-fun b!21659 () Bool)

(declare-fun e!11316 () Int)

(declare-fun lt!3404 () Conc!34)

(assert (=> b!21659 (= e!11316 (level!31 lt!3404))))

(declare-fun b!21660 () Bool)

(declare-fun res!9504 () Bool)

(assert (=> b!21660 (=> (not res!9504) (not e!11318))))

(assert (=> b!21660 (= res!9504 (balanced!33 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21661 () Bool)

(declare-fun res!9502 () Bool)

(assert (=> b!21661 (=> (not res!9502) (not e!11318))))

(assert (=> b!21661 (= res!9502 (not (isEmpty!296 (left!678 xs!604))))))

(declare-fun b!21662 () Bool)

(declare-fun res!9509 () Int)

(assert (=> b!21662 (= e!11316 res!9509)))

(assert (=> b!21662 true))

(declare-fun b!21663 () Bool)

(declare-fun e!11323 () Conc!34)

(declare-fun res!9508 () Conc!34)

(assert (=> b!21663 (= e!11323 res!9508)))

(assert (=> b!21663 true))

(declare-fun e!11317 () Bool)

(assert (=> b!21663 e!11317))

(declare-fun b!21664 () Bool)

(assert (=> b!21664 (= e!11317 tp_is_empty!103)))

(declare-fun b!21665 () Bool)

(declare-fun concatCorrectness!6 (Conc!34 Conc!34 Conc!34) Bool)

(assert (=> b!21665 (= e!11324 (concatCorrectness!6 lt!3402 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21666 () Bool)

(declare-fun e!11320 () Bool)

(assert (=> b!21666 (= e!11320 (balanced!33 (left!678 xs!604)))))

(declare-fun b!21667 () Bool)

(declare-fun res!9505 () Bool)

(assert (=> b!21667 (=> (not res!9505) (not e!11324))))

(declare-fun lt!3403 () Int)

(declare-fun lt!3401 () Int)

(declare-fun lt!3408 () Int)

(assert (=> b!21667 (= res!9505 (>= lt!3403 (ite (>= lt!3401 lt!3408) lt!3401 lt!3408)))))

(assert (=> b!21667 (= lt!3408 (level!31 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(assert (=> b!21667 (= lt!3401 (level!31 (left!678 xs!604)))))

(assert (=> b!21667 (= lt!3403 (level!31 lt!3402))))

(declare-fun lt!3399 () Bool)

(declare-fun e!11322 () Int)

(declare-fun b!21668 () Bool)

(assert (=> b!21668 (= e!11322 (level!31 (ite lt!3399 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21669 () Bool)

(declare-fun tp!4814 () Bool)

(declare-fun tp!4813 () Bool)

(assert (=> b!21669 (= e!11317 (and tp!4814 tp!4813))))

(declare-fun lt!3409 () Bool)

(declare-fun lt!3405 () Int)

(declare-fun b!21670 () Bool)

(declare-fun lt!3406 () Int)

(declare-fun lt!3413 () Int)

(declare-fun lt!3410 () Int)

(declare-fun e!11319 () Conc!34)

(assert (=> b!21670 (= e!11319 (ite lt!3409 (let ((res!9451 lt!3404)) (ite (>= lt!3406 lt!3413) (CC!33 (left!678 (left!678 xs!604)) res!9451) (ite (= lt!3410 (- lt!3405 3)) (CC!33 (left!678 (left!678 xs!604)) (CC!33 (left!678 (right!681 (left!678 xs!604))) res!9451)) (CC!33 (CC!33 (left!678 (left!678 xs!604)) (left!678 (right!681 (left!678 xs!604)))) res!9451)))) (let ((res!9454 lt!3404)) (ite (>= lt!3406 lt!3413) (CC!33 res!9454 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (ite (= lt!3410 (- lt!3405 3)) (CC!33 (CC!33 res!9454 (right!681 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (CC!33 res!9454 (CC!33 (right!681 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))))

(assert (=> b!21670 (= lt!3405 e!11322)))

(declare-fun c!5175 () Bool)

(assert (=> b!21670 (= c!5175 (or lt!3399 (and (not lt!3409) (not (>= lt!3406 lt!3413)))))))

(assert (=> b!21670 (= lt!3399 (and lt!3409 (not (>= lt!3406 lt!3413))))))

(assert (=> b!21670 (= lt!3410 e!11316)))

(declare-fun c!5177 () Bool)

(assert (=> b!21670 (= c!5177 (or (and lt!3409 (not (>= lt!3406 lt!3413))) (and (not lt!3409) (not (>= lt!3406 lt!3413)))))))

(assert (=> b!21670 (= lt!3404 e!11323)))

(declare-fun c!5174 () Bool)

(declare-fun lt!3412 () Bool)

(assert (=> b!21670 (= c!5174 (or lt!3412 (not lt!3409)))))

(assert (=> b!21670 (= lt!3412 lt!3409)))

(assert (=> b!21670 (= lt!3413 (level!31 (ite lt!3409 (right!681 (left!678 xs!604)) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(assert (=> b!21670 (= lt!3406 (level!31 (ite lt!3409 (left!678 (left!678 xs!604)) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun lt!3407 () Int)

(assert (=> b!21670 (= lt!3409 (< lt!3407 (- 1)))))

(declare-fun b!21671 () Bool)

(declare-fun res!9513 () Int)

(assert (=> b!21671 (= e!11322 res!9513)))

(assert (=> b!21671 true))

(assert (=> b!21671 true))

(declare-fun b!21672 () Bool)

(declare-fun res!9515 () Bool)

(assert (=> b!21672 (=> (not res!9515) (not e!11324))))

(assert (=> b!21672 (= res!9515 (balanced!33 lt!3402))))

(declare-fun d!12981 () Bool)

(assert (=> d!12981 e!11321))

(declare-fun res!9511 () Bool)

(assert (=> d!12981 (=> (not res!9511) (not e!11321))))

(assert (=> d!12981 (= res!9511 (is-CC!33 lt!3402))))

(assert (=> d!12981 (= lt!3402 e!11319)))

(declare-fun c!5176 () Bool)

(assert (=> d!12981 (= c!5176 (and (>= lt!3407 (- 1)) (<= lt!3407 1)))))

(assert (=> d!12981 (= lt!3407 (- (level!31 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (level!31 (left!678 xs!604))))))

(assert (=> d!12981 e!11318))

(declare-fun res!9514 () Bool)

(assert (=> d!12981 (=> (not res!9514) (not e!11318))))

(assert (=> d!12981 (= res!9514 e!11320)))

(declare-fun res!9510 () Bool)

(assert (=> d!12981 (=> (not res!9510) (not e!11320))))

(assert (=> d!12981 (= res!9510 (concInv!32 (left!678 xs!604)))))

(assert (=> d!12981 (= (concatNonEmpty!12 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) lt!3402)))

(declare-fun b!21673 () Bool)

(declare-fun res!9503 () Bool)

(assert (=> b!21673 (=> (not res!9503) (not e!11324))))

(declare-fun appendAssocInst!8 (Conc!34 Conc!34) Bool)

(assert (=> b!21673 (= res!9503 (appendAssocInst!8 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21674 () Bool)

(declare-fun res!9512 () Bool)

(assert (=> b!21674 (=> (not res!9512) (not e!11324))))

(assert (=> b!21674 (= res!9512 (concInv!32 lt!3402))))

(declare-fun b!21675 () Bool)

(declare-fun res!9506 () Bool)

(assert (=> b!21675 (=> (not res!9506) (not e!11318))))

(assert (=> b!21675 (= res!9506 (concInv!32 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21676 () Bool)

(assert (=> b!21676 (= e!11319 (CC!33 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21677 () Bool)

(assert (=> b!21677 (= e!11323 (concatNonEmpty!12 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)) (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(assert (= (and d!12981 res!9510) b!21666))

(assert (= (and d!12981 res!9514) b!21675))

(assert (= (and b!21675 res!9506) b!21660))

(assert (= (and b!21660 res!9504) b!21661))

(assert (= (and b!21661 res!9502) b!21657))

(assert (= (and b!21663 (is-CC!33 res!9508)) b!21669))

(assert (= (and b!21663 (is-Single!33 res!9508)) b!21664))

(assert (= (and b!21670 c!5174) b!21677))

(assert (= (and b!21670 (not c!5174)) b!21663))

(assert (= (and b!21670 c!5177) b!21659))

(assert (= (and b!21670 (not c!5177)) b!21662))

(assert (= (and b!21670 c!5175) b!21668))

(assert (= (and b!21670 (not c!5175)) b!21671))

(assert (= (and d!12981 c!5176) b!21676))

(assert (= (and d!12981 (not c!5176)) b!21670))

(assert (= (and d!12981 res!9511) b!21658))

(assert (= (and b!21658 res!9507) b!21667))

(assert (= (and b!21667 res!9505) b!21674))

(assert (= (and b!21674 res!9512) b!21672))

(assert (= (and b!21672 res!9515) b!21673))

(assert (= (and b!21673 res!9503) b!21665))

(assert (=> b!21675 m!23721))

(declare-fun m!23789 () Bool)

(assert (=> b!21675 m!23789))

(assert (=> b!21667 m!23721))

(declare-fun m!23791 () Bool)

(assert (=> b!21667 m!23791))

(assert (=> b!21667 m!23763))

(declare-fun m!23793 () Bool)

(assert (=> b!21667 m!23793))

(assert (=> b!21673 m!23721))

(declare-fun m!23795 () Bool)

(assert (=> b!21673 m!23795))

(assert (=> d!12981 m!23721))

(assert (=> d!12981 m!23791))

(assert (=> d!12981 m!23763))

(assert (=> d!12981 m!23785))

(assert (=> b!21660 m!23721))

(declare-fun m!23797 () Bool)

(assert (=> b!21660 m!23797))

(declare-fun m!23799 () Bool)

(assert (=> b!21677 m!23799))

(declare-fun m!23801 () Bool)

(assert (=> b!21668 m!23801))

(declare-fun m!23803 () Bool)

(assert (=> b!21659 m!23803))

(assert (=> b!21661 m!23787))

(declare-fun m!23805 () Bool)

(assert (=> b!21674 m!23805))

(assert (=> b!21665 m!23721))

(declare-fun m!23807 () Bool)

(assert (=> b!21665 m!23807))

(assert (=> b!21666 m!23759))

(declare-fun m!23809 () Bool)

(assert (=> b!21672 m!23809))

(assert (=> b!21658 m!23721))

(assert (=> b!21658 m!23791))

(assert (=> b!21658 m!23763))

(assert (=> b!21658 m!23793))

(assert (=> b!21657 m!23721))

(declare-fun m!23811 () Bool)

(assert (=> b!21657 m!23811))

(declare-fun m!23813 () Bool)

(assert (=> b!21670 m!23813))

(declare-fun m!23815 () Bool)

(assert (=> b!21670 m!23815))

(assert (=> b!21550 d!12981))

(declare-fun b!21708 () Bool)

(declare-fun e!11343 () Conc!34)

(declare-fun e!11339 () Conc!34)

(assert (=> b!21708 (= e!11343 e!11339)))

(declare-fun c!5186 () Bool)

(assert (=> b!21708 (= c!5186 (is-Single!33 (right!681 xs!604)))))

(declare-fun b!21709 () Bool)

(declare-fun res!9536 () Bool)

(declare-fun e!11342 () Bool)

(assert (=> b!21709 (=> (not res!9536) (not e!11342))))

(declare-fun lt!3417 () Conc!34)

(assert (=> b!21709 (= res!9536 (<= (- (level!31 lt!3417) (level!31 (right!681 xs!604))) 1))))

(declare-fun b!21710 () Bool)

(declare-fun e!11345 () Conc!34)

(assert (=> b!21710 (= e!11339 e!11345)))

(declare-fun c!5184 () Bool)

(assert (=> b!21710 (= c!5184 (< (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))))))

(declare-fun b!21711 () Bool)

(declare-fun res!9540 () Bool)

(assert (=> b!21711 (=> (not res!9540) (not e!11342))))

(assert (=> b!21711 (= res!9540 (not (isEmpty!296 lt!3417)))))

(declare-fun d!12983 () Bool)

(assert (=> d!12983 e!11342))

(declare-fun res!9538 () Bool)

(assert (=> d!12983 (=> (not res!9538) (not e!11342))))

(declare-fun e!11340 () Bool)

(assert (=> d!12983 (= res!9538 e!11340)))

(declare-fun res!9543 () Bool)

(assert (=> d!12983 (=> (not res!9543) (not e!11340))))

(assert (=> d!12983 (= res!9543 (concInv!32 lt!3417))))

(assert (=> d!12983 (= lt!3417 e!11343)))

(declare-fun c!5185 () Bool)

(assert (=> d!12983 (= c!5185 (is-Empty!44 (right!681 xs!604)))))

(declare-fun e!11341 () Bool)

(assert (=> d!12983 e!11341))

(declare-fun res!9541 () Bool)

(assert (=> d!12983 (=> (not res!9541) (not e!11341))))

(declare-fun e!11344 () Bool)

(assert (=> d!12983 (= res!9541 e!11344)))

(declare-fun res!9537 () Bool)

(assert (=> d!12983 (=> (not res!9537) (not e!11344))))

(assert (=> d!12983 (= res!9537 (concInv!32 (right!681 xs!604)))))

(assert (=> d!12983 (= (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) lt!3417)))

(declare-fun b!21712 () Bool)

(assert (=> b!21712 (= e!11339 (ite (= (- i!298 (size!227 (left!678 xs!604))) 0) (CC!33 (Single!33 y!824) (right!681 xs!604)) (CC!33 (right!681 xs!604) (Single!33 y!824))))))

(declare-fun b!21713 () Bool)

(assert (=> b!21713 (= e!11342 (= (toList!99 lt!3417) (insertAtIndex!12 (toList!99 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21714 () Bool)

(declare-fun res!9539 () Bool)

(assert (=> b!21714 (=> (not res!9539) (not e!11342))))

(assert (=> b!21714 (= res!9539 (>= (level!31 lt!3417) (level!31 (right!681 xs!604))))))

(declare-fun b!21715 () Bool)

(assert (=> b!21715 (= e!11341 (<= (- i!298 (size!227 (left!678 xs!604))) (size!227 (right!681 xs!604))))))

(declare-fun b!21716 () Bool)

(assert (=> b!21716 (= e!11340 (balanced!33 lt!3417))))

(declare-fun b!21717 () Bool)

(declare-fun res!9542 () Bool)

(assert (=> b!21717 (=> (not res!9542) (not e!11342))))

(assert (=> b!21717 (= res!9542 (insertAppendAxiomInst!14 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))

(declare-fun b!21718 () Bool)

(assert (=> b!21718 (= e!11345 (concatNonEmpty!12 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (right!681 xs!604))))))

(declare-fun b!21719 () Bool)

(assert (=> b!21719 (= e!11344 (balanced!33 (right!681 xs!604)))))

(declare-fun b!21720 () Bool)

(declare-fun res!9535 () Bool)

(assert (=> b!21720 (=> (not res!9535) (not e!11341))))

(assert (=> b!21720 (= res!9535 (>= (- i!298 (size!227 (left!678 xs!604))) 0))))

(declare-fun b!21721 () Bool)

(assert (=> b!21721 (= e!11345 (concatNonEmpty!12 (left!678 (right!681 xs!604)) (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!21722 () Bool)

(assert (=> b!21722 (= e!11343 (Single!33 y!824))))

(assert (= (and d!12983 res!9537) b!21719))

(assert (= (and d!12983 res!9541) b!21720))

(assert (= (and b!21720 res!9535) b!21715))

(assert (= (and b!21710 c!5184) b!21718))

(assert (= (and b!21710 (not c!5184)) b!21721))

(assert (= (and b!21708 c!5186) b!21712))

(assert (= (and b!21708 (not c!5186)) b!21710))

(assert (= (and d!12983 c!5185) b!21722))

(assert (= (and d!12983 (not c!5185)) b!21708))

(assert (= (and d!12983 res!9543) b!21716))

(assert (= (and d!12983 res!9538) b!21709))

(assert (= (and b!21709 res!9536) b!21714))

(assert (= (and b!21714 res!9539) b!21711))

(assert (= (and b!21711 res!9540) b!21717))

(assert (= (and b!21717 res!9542) b!21713))

(declare-fun m!23817 () Bool)

(assert (=> b!21718 m!23817))

(assert (=> b!21718 m!23817))

(declare-fun m!23819 () Bool)

(assert (=> b!21718 m!23819))

(declare-fun m!23821 () Bool)

(assert (=> b!21711 m!23821))

(declare-fun m!23823 () Bool)

(assert (=> d!12983 m!23823))

(assert (=> d!12983 m!23781))

(assert (=> b!21715 m!23775))

(declare-fun m!23825 () Bool)

(assert (=> b!21713 m!23825))

(assert (=> b!21713 m!23747))

(assert (=> b!21713 m!23747))

(declare-fun m!23827 () Bool)

(assert (=> b!21713 m!23827))

(declare-fun m!23829 () Bool)

(assert (=> b!21714 m!23829))

(assert (=> b!21714 m!23765))

(assert (=> b!21709 m!23829))

(assert (=> b!21709 m!23765))

(assert (=> b!21719 m!23761))

(declare-fun m!23831 () Bool)

(assert (=> b!21716 m!23831))

(declare-fun m!23833 () Bool)

(assert (=> b!21717 m!23833))

(declare-fun m!23835 () Bool)

(assert (=> b!21710 m!23835))

(assert (=> b!21721 m!23835))

(declare-fun m!23837 () Bool)

(assert (=> b!21721 m!23837))

(assert (=> b!21721 m!23837))

(declare-fun m!23839 () Bool)

(assert (=> b!21721 m!23839))

(assert (=> b!21550 d!12983))

(assert (=> b!21550 d!12977))

(declare-fun b!21731 () Bool)

(declare-fun e!11350 () List!339)

(assert (=> b!21731 (= e!11350 Nil!334)))

(declare-fun b!21733 () Bool)

(declare-fun e!11351 () List!339)

(assert (=> b!21733 (= e!11351 (Cons!333 (x!8801 res!5614) Nil!334))))

(declare-fun b!21734 () Bool)

(declare-fun ++!22 (List!339 List!339) List!339)

(assert (=> b!21734 (= e!11351 (++!22 (toList!99 (left!678 res!5614)) (toList!99 (right!681 res!5614))))))

(declare-fun b!21732 () Bool)

(assert (=> b!21732 (= e!11350 e!11351)))

(declare-fun c!5192 () Bool)

(assert (=> b!21732 (= c!5192 (is-Single!33 res!5614))))

(declare-fun d!12985 () Bool)

(declare-fun lt!3420 () List!339)

(declare-fun size!228 (List!339) Int)

(assert (=> d!12985 (= (size!228 lt!3420) (size!227 res!5614))))

(assert (=> d!12985 (= lt!3420 e!11350)))

(declare-fun c!5191 () Bool)

(assert (=> d!12985 (= c!5191 (is-Empty!44 res!5614))))

(assert (=> d!12985 (= (toList!99 res!5614) lt!3420)))

(assert (= (and b!21732 c!5192) b!21733))

(assert (= (and b!21732 (not c!5192)) b!21734))

(assert (= (and d!12985 c!5191) b!21731))

(assert (= (and d!12985 (not c!5191)) b!21732))

(declare-fun m!23841 () Bool)

(assert (=> b!21734 m!23841))

(declare-fun m!23843 () Bool)

(assert (=> b!21734 m!23843))

(assert (=> b!21734 m!23841))

(assert (=> b!21734 m!23843))

(declare-fun m!23845 () Bool)

(assert (=> b!21734 m!23845))

(declare-fun m!23847 () Bool)

(assert (=> d!12985 m!23847))

(declare-fun m!23849 () Bool)

(assert (=> d!12985 m!23849))

(assert (=> b!21544 d!12985))

(declare-fun d!12987 () Bool)

(declare-fun c!5197 () Bool)

(assert (=> d!12987 (= c!5197 (is-Nil!334 (toList!99 xs!604)))))

(declare-fun e!11356 () List!339)

(assert (=> d!12987 (= (insertAtIndex!12 (toList!99 xs!604) i!298 y!824) e!11356)))

(declare-fun b!21745 () Bool)

(declare-fun e!11357 () List!339)

(assert (=> b!21745 (= e!11357 (Cons!333 y!824 (toList!99 xs!604)))))

(declare-fun b!21744 () Bool)

(assert (=> b!21744 (= e!11356 e!11357)))

(declare-fun c!5198 () Bool)

(assert (=> b!21744 (= c!5198 (= i!298 0))))

(declare-fun b!21743 () Bool)

(assert (=> b!21743 (= e!11356 (Cons!333 y!824 Nil!334))))

(declare-fun b!21746 () Bool)

(assert (=> b!21746 (= e!11357 (Cons!333 (h!247 (toList!99 xs!604)) (insertAtIndex!12 (t!4334 (toList!99 xs!604)) (- i!298 1) y!824)))))

(assert (= (and b!21744 c!5198) b!21745))

(assert (= (and b!21744 (not c!5198)) b!21746))

(assert (= (and d!12987 c!5197) b!21743))

(assert (= (and d!12987 (not c!5197)) b!21744))

(declare-fun m!23851 () Bool)

(assert (=> b!21746 m!23851))

(assert (=> b!21544 d!12987))

(declare-fun b!21747 () Bool)

(declare-fun e!11358 () List!339)

(assert (=> b!21747 (= e!11358 Nil!334)))

(declare-fun b!21749 () Bool)

(declare-fun e!11359 () List!339)

(assert (=> b!21749 (= e!11359 (Cons!333 (x!8801 xs!604) Nil!334))))

(declare-fun b!21750 () Bool)

(assert (=> b!21750 (= e!11359 (++!22 (toList!99 (left!678 xs!604)) (toList!99 (right!681 xs!604))))))

(declare-fun b!21748 () Bool)

(assert (=> b!21748 (= e!11358 e!11359)))

(declare-fun c!5200 () Bool)

(assert (=> b!21748 (= c!5200 (is-Single!33 xs!604))))

(declare-fun d!12989 () Bool)

(declare-fun lt!3421 () List!339)

(assert (=> d!12989 (= (size!228 lt!3421) (size!227 xs!604))))

(assert (=> d!12989 (= lt!3421 e!11358)))

(declare-fun c!5199 () Bool)

(assert (=> d!12989 (= c!5199 (is-Empty!44 xs!604))))

(assert (=> d!12989 (= (toList!99 xs!604) lt!3421)))

(assert (= (and b!21748 c!5200) b!21749))

(assert (= (and b!21748 (not c!5200)) b!21750))

(assert (= (and d!12989 c!5199) b!21747))

(assert (= (and d!12989 (not c!5199)) b!21748))

(assert (=> b!21750 m!23745))

(assert (=> b!21750 m!23747))

(assert (=> b!21750 m!23745))

(assert (=> b!21750 m!23747))

(declare-fun m!23853 () Bool)

(assert (=> b!21750 m!23853))

(declare-fun m!23855 () Bool)

(assert (=> d!12989 m!23855))

(assert (=> d!12989 m!23725))

(assert (=> b!21544 d!12989))

(declare-fun b!21757 () Bool)

(declare-fun e!11362 () Bool)

(declare-fun tp!4819 () Bool)

(declare-fun tp!4820 () Bool)

(assert (=> b!21757 (= e!11362 (and tp!4819 tp!4820))))

(declare-fun b!21758 () Bool)

(assert (=> b!21758 (= e!11362 tp_is_empty!103)))

(assert (=> b!21552 (= tp!4807 e!11362)))

(assert (= (and b!21552 (is-CC!33 (left!678 xs!604))) b!21757))

(assert (= (and b!21552 (is-Single!33 (left!678 xs!604))) b!21758))

(declare-fun b!21759 () Bool)

(declare-fun e!11363 () Bool)

(declare-fun tp!4821 () Bool)

(declare-fun tp!4822 () Bool)

(assert (=> b!21759 (= e!11363 (and tp!4821 tp!4822))))

(declare-fun b!21760 () Bool)

(assert (=> b!21760 (= e!11363 tp_is_empty!103)))

(assert (=> b!21552 (= tp!4805 e!11363)))

(assert (= (and b!21552 (is-CC!33 (right!681 xs!604))) b!21759))

(assert (= (and b!21552 (is-Single!33 (right!681 xs!604))) b!21760))

(declare-fun b!21761 () Bool)

(declare-fun e!11364 () Bool)

(declare-fun tp!4823 () Bool)

(declare-fun tp!4824 () Bool)

(assert (=> b!21761 (= e!11364 (and tp!4823 tp!4824))))

(declare-fun b!21762 () Bool)

(assert (=> b!21762 (= e!11364 tp_is_empty!103)))

(assert (=> b!21551 (= tp!4806 e!11364)))

(assert (= (and b!21551 (is-CC!33 (left!678 res!5614))) b!21761))

(assert (= (and b!21551 (is-Single!33 (left!678 res!5614))) b!21762))

(declare-fun b!21763 () Bool)

(declare-fun e!11365 () Bool)

(declare-fun tp!4825 () Bool)

(declare-fun tp!4826 () Bool)

(assert (=> b!21763 (= e!11365 (and tp!4825 tp!4826))))

(declare-fun b!21764 () Bool)

(assert (=> b!21764 (= e!11365 tp_is_empty!103)))

(assert (=> b!21551 (= tp!4808 e!11365)))

(assert (= (and b!21551 (is-CC!33 (right!681 res!5614))) b!21763))

(assert (= (and b!21551 (is-Single!33 (right!681 res!5614))) b!21764))

(push 1)

(assert (not b!21763))

(assert (not b!21714))

(assert (not b!21669))

(assert (not b!21613))

(assert (not b!21713))

(assert (not b!21670))

(assert (not b!21612))

(assert (not b!21667))

(assert (not b!21580))

(assert (not b!21610))

(assert (not b!21668))

(assert (not b!21719))

(assert (not b!21675))

(assert (not b!21673))

(assert (not b!21569))

(assert (not d!12989))

(assert (not b!21717))

(assert (not b!21757))

(assert (not b!21588))

(assert (not b!21592))

(assert (not d!12985))

(assert (not d!12981))

(assert (not b!21665))

(assert (not b!21582))

(assert (not b!21660))

(assert (not b!21674))

(assert (not b!21657))

(assert tp_is_empty!103)

(assert (not b!21593))

(assert (not b!21715))

(assert (not b!21734))

(assert (not b!21666))

(assert (not b!21611))

(assert (not b!21594))

(assert (not b!21614))

(assert (not b!21557))

(assert (not b!21567))

(assert (not b!21677))

(assert (not d!12983))

(assert (not b!21606))

(assert (not b!21672))

(assert (not b!21721))

(assert (not b!21658))

(assert (not b!21558))

(assert (not b!21718))

(assert (not b!21710))

(assert (not b!21761))

(assert (not b!21591))

(assert (not b!21568))

(assert (not b!21590))

(assert (not b!21709))

(assert (not b!21661))

(assert (not b!21746))

(assert (not b!21750))

(assert (not b!21711))

(assert (not b!21659))

(assert (not b!21570))

(assert (not b!21716))

(assert (not b!21579))

(assert (not b!21581))

(assert (not b!21759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!21766 () Bool)

(declare-fun e!11366 () Int)

(declare-fun lt!3422 () Int)

(declare-fun lt!3424 () Int)

(assert (=> b!21766 (= e!11366 (+ 1 (ite (>= lt!3422 lt!3424) lt!3422 lt!3424)))))

(assert (=> b!21766 (= lt!3424 (level!31 (right!681 (left!678 res!5614))))))

(assert (=> b!21766 (= lt!3422 (level!31 (left!678 (left!678 res!5614))))))

(declare-fun d!12991 () Bool)

(declare-fun lt!3423 () Int)

(assert (=> d!12991 (>= lt!3423 0)))

(assert (=> d!12991 (= lt!3423 e!11366)))

(declare-fun c!5201 () Bool)

(assert (=> d!12991 (= c!5201 (or (is-Empty!44 (left!678 res!5614)) (is-Single!33 (left!678 res!5614))))))

(assert (=> d!12991 (= (level!31 (left!678 res!5614)) lt!3423)))

(declare-fun b!21765 () Bool)

(assert (=> b!21765 (= e!11366 0)))

(assert (= (and d!12991 c!5201) b!21765))

(assert (= (and d!12991 (not c!5201)) b!21766))

(declare-fun m!23857 () Bool)

(assert (=> b!21766 m!23857))

(declare-fun m!23859 () Bool)

(assert (=> b!21766 m!23859))

(assert (=> b!21591 d!12991))

(declare-fun b!21768 () Bool)

(declare-fun e!11367 () Int)

(declare-fun lt!3425 () Int)

(declare-fun lt!3427 () Int)

(assert (=> b!21768 (= e!11367 (+ 1 (ite (>= lt!3425 lt!3427) lt!3425 lt!3427)))))

(assert (=> b!21768 (= lt!3427 (level!31 (right!681 (right!681 res!5614))))))

(assert (=> b!21768 (= lt!3425 (level!31 (left!678 (right!681 res!5614))))))

(declare-fun d!12993 () Bool)

(declare-fun lt!3426 () Int)

(assert (=> d!12993 (>= lt!3426 0)))

(assert (=> d!12993 (= lt!3426 e!11367)))

(declare-fun c!5202 () Bool)

(assert (=> d!12993 (= c!5202 (or (is-Empty!44 (right!681 res!5614)) (is-Single!33 (right!681 res!5614))))))

(assert (=> d!12993 (= (level!31 (right!681 res!5614)) lt!3426)))

(declare-fun b!21767 () Bool)

(assert (=> b!21767 (= e!11367 0)))

(assert (= (and d!12993 c!5202) b!21767))

(assert (= (and d!12993 (not c!5202)) b!21768))

(declare-fun m!23861 () Bool)

(assert (=> b!21768 m!23861))

(declare-fun m!23863 () Bool)

(assert (=> b!21768 m!23863))

(assert (=> b!21591 d!12993))

(declare-fun b!21769 () Bool)

(declare-fun e!11369 () Int)

(assert (=> b!21769 (= e!11369 0)))

(declare-fun b!21772 () Bool)

(declare-fun e!11368 () Int)

(assert (=> b!21772 (= e!11368 (+ (size!227 (left!678 (left!678 (left!678 xs!604)))) (size!227 (right!681 (left!678 (left!678 xs!604))))))))

(declare-fun b!21771 () Bool)

(assert (=> b!21771 (= e!11368 1)))

(declare-fun b!21770 () Bool)

(assert (=> b!21770 (= e!11369 e!11368)))

(declare-fun c!5204 () Bool)

(assert (=> b!21770 (= c!5204 (is-Single!33 (left!678 (left!678 xs!604))))))

(declare-fun d!12995 () Bool)

(declare-fun lt!3428 () Int)

(assert (=> d!12995 (>= lt!3428 0)))

(assert (=> d!12995 (= lt!3428 e!11369)))

(declare-fun c!5203 () Bool)

(assert (=> d!12995 (= c!5203 (is-Empty!44 (left!678 (left!678 xs!604))))))

(assert (=> d!12995 (= (size!227 (left!678 (left!678 xs!604))) lt!3428)))

(assert (= (and b!21770 c!5204) b!21771))

(assert (= (and b!21770 (not c!5204)) b!21772))

(assert (= (and d!12995 c!5203) b!21769))

(assert (= (and d!12995 (not c!5203)) b!21770))

(declare-fun m!23865 () Bool)

(assert (=> b!21772 m!23865))

(declare-fun m!23867 () Bool)

(assert (=> b!21772 m!23867))

(assert (=> b!21610 d!12995))

(declare-fun b!21773 () Bool)

(declare-fun e!11371 () Int)

(assert (=> b!21773 (= e!11371 0)))

(declare-fun b!21776 () Bool)

(declare-fun e!11370 () Int)

(assert (=> b!21776 (= e!11370 (+ (size!227 (left!678 (right!681 (left!678 xs!604)))) (size!227 (right!681 (right!681 (left!678 xs!604))))))))

(declare-fun b!21775 () Bool)

(assert (=> b!21775 (= e!11370 1)))

(declare-fun b!21774 () Bool)

(assert (=> b!21774 (= e!11371 e!11370)))

(declare-fun c!5206 () Bool)

(assert (=> b!21774 (= c!5206 (is-Single!33 (right!681 (left!678 xs!604))))))

(declare-fun d!12997 () Bool)

(declare-fun lt!3429 () Int)

(assert (=> d!12997 (>= lt!3429 0)))

(assert (=> d!12997 (= lt!3429 e!11371)))

(declare-fun c!5205 () Bool)

(assert (=> d!12997 (= c!5205 (is-Empty!44 (right!681 (left!678 xs!604))))))

(assert (=> d!12997 (= (size!227 (right!681 (left!678 xs!604))) lt!3429)))

(assert (= (and b!21774 c!5206) b!21775))

(assert (= (and b!21774 (not c!5206)) b!21776))

(assert (= (and d!12997 c!5205) b!21773))

(assert (= (and d!12997 (not c!5205)) b!21774))

(declare-fun m!23869 () Bool)

(assert (=> b!21776 m!23869))

(declare-fun m!23871 () Bool)

(assert (=> b!21776 m!23871))

(assert (=> b!21610 d!12997))

(declare-fun b!21777 () Bool)

(declare-fun e!11373 () Int)

(assert (=> b!21777 (= e!11373 0)))

(declare-fun b!21780 () Bool)

(declare-fun e!11372 () Int)

(assert (=> b!21780 (= e!11372 (+ (size!227 (left!678 (left!678 (right!681 xs!604)))) (size!227 (right!681 (left!678 (right!681 xs!604))))))))

(declare-fun b!21779 () Bool)

(assert (=> b!21779 (= e!11372 1)))

(declare-fun b!21778 () Bool)

(assert (=> b!21778 (= e!11373 e!11372)))

(declare-fun c!5208 () Bool)

(assert (=> b!21778 (= c!5208 (is-Single!33 (left!678 (right!681 xs!604))))))

(declare-fun d!12999 () Bool)

(declare-fun lt!3430 () Int)

(assert (=> d!12999 (>= lt!3430 0)))

(assert (=> d!12999 (= lt!3430 e!11373)))

(declare-fun c!5207 () Bool)

(assert (=> d!12999 (= c!5207 (is-Empty!44 (left!678 (right!681 xs!604))))))

(assert (=> d!12999 (= (size!227 (left!678 (right!681 xs!604))) lt!3430)))

(assert (= (and b!21778 c!5208) b!21779))

(assert (= (and b!21778 (not c!5208)) b!21780))

(assert (= (and d!12999 c!5207) b!21777))

(assert (= (and d!12999 (not c!5207)) b!21778))

(declare-fun m!23873 () Bool)

(assert (=> b!21780 m!23873))

(declare-fun m!23875 () Bool)

(assert (=> b!21780 m!23875))

(assert (=> b!21710 d!12999))

(declare-fun d!13001 () Bool)

(assert (=> d!13001 (= (isEmpty!296 (left!678 xs!604)) (= (left!678 xs!604) Empty!44))))

(assert (=> b!21611 d!13001))

(declare-fun d!13003 () Bool)

(assert (=> d!13003 (= (isEmpty!296 (right!681 xs!604)) (= (right!681 xs!604) Empty!44))))

(assert (=> b!21612 d!13003))

(declare-fun b!21781 () Bool)

(declare-fun e!11376 () Bool)

(assert (=> b!21781 (= e!11376 (not (isEmpty!296 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))))

(declare-fun b!21782 () Bool)

(declare-fun e!11379 () Bool)

(declare-fun e!11382 () Bool)

(assert (=> b!21782 (= e!11379 e!11382)))

(declare-fun res!9550 () Bool)

(assert (=> b!21782 (=> (not res!9550) (not e!11382))))

(declare-fun lt!3432 () Int)

(declare-fun lt!3443 () Int)

(declare-fun lt!3446 () Int)

(assert (=> b!21782 (= res!9550 (<= lt!3443 (+ (ite (>= lt!3432 lt!3446) lt!3432 lt!3446) 1)))))

(assert (=> b!21782 (= lt!3446 (level!31 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(assert (=> b!21782 (= lt!3432 (level!31 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))))))

(declare-fun lt!3434 () Conc!34)

(assert (=> b!21782 (= lt!3443 (level!31 lt!3434))))

(declare-fun b!21783 () Bool)

(declare-fun e!11374 () Int)

(declare-fun lt!3436 () Conc!34)

(assert (=> b!21783 (= e!11374 (level!31 lt!3436))))

(declare-fun b!21784 () Bool)

(declare-fun res!9547 () Bool)

(assert (=> b!21784 (=> (not res!9547) (not e!11376))))

(assert (=> b!21784 (= res!9547 (balanced!33 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(declare-fun b!21785 () Bool)

(declare-fun res!9545 () Bool)

(assert (=> b!21785 (=> (not res!9545) (not e!11376))))

(assert (=> b!21785 (= res!9545 (not (isEmpty!296 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)))))))

(declare-fun b!21786 () Bool)

(declare-fun res!9552 () Int)

(assert (=> b!21786 (= e!11374 res!9552)))

(assert (=> b!21786 true))

(declare-fun b!21787 () Bool)

(declare-fun e!11381 () Conc!34)

(declare-fun res!9551 () Conc!34)

(assert (=> b!21787 (= e!11381 res!9551)))

(assert (=> b!21787 true))

(declare-fun e!11375 () Bool)

(assert (=> b!21787 e!11375))

(declare-fun b!21788 () Bool)

(assert (=> b!21788 (= e!11375 tp_is_empty!103)))

(declare-fun b!21789 () Bool)

(assert (=> b!21789 (= e!11382 (concatCorrectness!6 lt!3434 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)) (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(declare-fun b!21790 () Bool)

(declare-fun e!11378 () Bool)

(assert (=> b!21790 (= e!11378 (balanced!33 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))))))

(declare-fun b!21791 () Bool)

(declare-fun res!9548 () Bool)

(assert (=> b!21791 (=> (not res!9548) (not e!11382))))

(declare-fun lt!3440 () Int)

(declare-fun lt!3435 () Int)

(declare-fun lt!3433 () Int)

(assert (=> b!21791 (= res!9548 (>= lt!3435 (ite (>= lt!3433 lt!3440) lt!3433 lt!3440)))))

(assert (=> b!21791 (= lt!3440 (level!31 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(assert (=> b!21791 (= lt!3433 (level!31 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))))))

(assert (=> b!21791 (= lt!3435 (level!31 lt!3434))))

(declare-fun e!11380 () Int)

(declare-fun lt!3431 () Bool)

(declare-fun b!21792 () Bool)

(assert (=> b!21792 (= e!11380 (level!31 (ite lt!3431 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)) (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))))

(declare-fun b!21793 () Bool)

(declare-fun tp!4828 () Bool)

(declare-fun tp!4827 () Bool)

(assert (=> b!21793 (= e!11375 (and tp!4828 tp!4827))))

(declare-fun e!11377 () Conc!34)

(declare-fun b!21794 () Bool)

(declare-fun lt!3437 () Int)

(declare-fun lt!3438 () Int)

(declare-fun lt!3442 () Int)

(declare-fun lt!3445 () Int)

(declare-fun lt!3441 () Bool)

(assert (=> b!21794 (= e!11377 (ite lt!3441 (let ((res!9451 lt!3436)) (ite (>= lt!3438 lt!3445) (CC!33 (left!678 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) res!9451) (ite (= lt!3442 (- lt!3437 3)) (CC!33 (left!678 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) (CC!33 (left!678 (right!681 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)))) res!9451)) (CC!33 (CC!33 (left!678 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) (left!678 (right!681 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))))) res!9451)))) (let ((res!9454 lt!3436)) (ite (>= lt!3438 lt!3445) (CC!33 res!9454 (right!681 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))) (ite (= lt!3442 (- lt!3437 3)) (CC!33 (CC!33 res!9454 (right!681 (left!678 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))) (right!681 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))) (CC!33 res!9454 (CC!33 (right!681 (left!678 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))) (right!681 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))))))))

(assert (=> b!21794 (= lt!3437 e!11380)))

(declare-fun c!5210 () Bool)

(assert (=> b!21794 (= c!5210 (or lt!3431 (and (not lt!3441) (not (>= lt!3438 lt!3445)))))))

(assert (=> b!21794 (= lt!3431 (and lt!3441 (not (>= lt!3438 lt!3445))))))

(assert (=> b!21794 (= lt!3442 e!11374)))

(declare-fun c!5212 () Bool)

(assert (=> b!21794 (= c!5212 (or (and lt!3441 (not (>= lt!3438 lt!3445))) (and (not lt!3441) (not (>= lt!3438 lt!3445)))))))

(assert (=> b!21794 (= lt!3436 e!11381)))

(declare-fun c!5209 () Bool)

(declare-fun lt!3444 () Bool)

(assert (=> b!21794 (= c!5209 (or lt!3444 (not lt!3441)))))

(assert (=> b!21794 (= lt!3444 lt!3441)))

(assert (=> b!21794 (= lt!3445 (level!31 (ite lt!3441 (right!681 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) (left!678 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))))

(assert (=> b!21794 (= lt!3438 (level!31 (ite lt!3441 (left!678 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) (right!681 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))))

(declare-fun lt!3439 () Int)

(assert (=> b!21794 (= lt!3441 (< lt!3439 (- 1)))))

(declare-fun b!21795 () Bool)

(declare-fun res!9556 () Int)

(assert (=> b!21795 (= e!11380 res!9556)))

(assert (=> b!21795 true))

(assert (=> b!21795 true))

(declare-fun b!21796 () Bool)

(declare-fun res!9558 () Bool)

(assert (=> b!21796 (=> (not res!9558) (not e!11382))))

(assert (=> b!21796 (= res!9558 (balanced!33 lt!3434))))

(declare-fun d!13005 () Bool)

(assert (=> d!13005 e!11379))

(declare-fun res!9554 () Bool)

(assert (=> d!13005 (=> (not res!9554) (not e!11379))))

(assert (=> d!13005 (= res!9554 (is-CC!33 lt!3434))))

(assert (=> d!13005 (= lt!3434 e!11377)))

(declare-fun c!5211 () Bool)

(assert (=> d!13005 (= c!5211 (and (>= lt!3439 (- 1)) (<= lt!3439 1)))))

(assert (=> d!13005 (= lt!3439 (- (level!31 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))) (level!31 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)))))))

(assert (=> d!13005 e!11376))

(declare-fun res!9557 () Bool)

(assert (=> d!13005 (=> (not res!9557) (not e!11376))))

(assert (=> d!13005 (= res!9557 e!11378)))

(declare-fun res!9553 () Bool)

(assert (=> d!13005 (=> (not res!9553) (not e!11378))))

(assert (=> d!13005 (= res!9553 (concInv!32 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))))))

(assert (=> d!13005 (= (concatNonEmpty!12 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)) (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))) lt!3434)))

(declare-fun b!21797 () Bool)

(declare-fun res!9546 () Bool)

(assert (=> b!21797 (=> (not res!9546) (not e!11382))))

(assert (=> b!21797 (= res!9546 (appendAssocInst!8 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)) (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(declare-fun b!21798 () Bool)

(declare-fun res!9555 () Bool)

(assert (=> b!21798 (=> (not res!9555) (not e!11382))))

(assert (=> b!21798 (= res!9555 (concInv!32 lt!3434))))

(declare-fun b!21799 () Bool)

(declare-fun res!9549 () Bool)

(assert (=> b!21799 (=> (not res!9549) (not e!11376))))

(assert (=> b!21799 (= res!9549 (concInv!32 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(declare-fun b!21800 () Bool)

(assert (=> b!21800 (= e!11377 (CC!33 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604)) (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))

(declare-fun b!21801 () Bool)

(assert (=> b!21801 (= e!11381 (concatNonEmpty!12 (ite lt!3444 (ite (>= lt!3438 lt!3445) (right!681 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) (right!681 (right!681 (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))))) (ite lt!3412 (ite (>= lt!3406 lt!3413) (right!681 (left!678 xs!604)) (right!681 (right!681 (left!678 xs!604)))) (left!678 xs!604))) (ite lt!3444 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))) (ite (>= lt!3438 lt!3445) (left!678 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))) (left!678 (left!678 (ite lt!3412 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) (ite (>= lt!3406 lt!3413) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))))))))

(assert (= (and d!13005 res!9553) b!21790))

(assert (= (and d!13005 res!9557) b!21799))

(assert (= (and b!21799 res!9549) b!21784))

(assert (= (and b!21784 res!9547) b!21785))

(assert (= (and b!21785 res!9545) b!21781))

(assert (= (and b!21787 (is-CC!33 res!9551)) b!21793))

(assert (= (and b!21787 (is-Single!33 res!9551)) b!21788))

(assert (= (and b!21794 c!5209) b!21801))

(assert (= (and b!21794 (not c!5209)) b!21787))

(assert (= (and b!21794 c!5212) b!21783))

(assert (= (and b!21794 (not c!5212)) b!21786))

(assert (= (and b!21794 c!5210) b!21792))

(assert (= (and b!21794 (not c!5210)) b!21795))

(assert (= (and d!13005 c!5211) b!21800))

(assert (= (and d!13005 (not c!5211)) b!21794))

(assert (= (and d!13005 res!9554) b!21782))

(assert (= (and b!21782 res!9550) b!21791))

(assert (= (and b!21791 res!9548) b!21798))

(assert (= (and b!21798 res!9555) b!21796))

(assert (= (and b!21796 res!9558) b!21797))

(assert (= (and b!21797 res!9546) b!21789))

(declare-fun m!23877 () Bool)

(assert (=> b!21799 m!23877))

(declare-fun m!23879 () Bool)

(assert (=> b!21791 m!23879))

(declare-fun m!23881 () Bool)

(assert (=> b!21791 m!23881))

(declare-fun m!23883 () Bool)

(assert (=> b!21791 m!23883))

(declare-fun m!23885 () Bool)

(assert (=> b!21797 m!23885))

(assert (=> d!13005 m!23879))

(assert (=> d!13005 m!23881))

(declare-fun m!23887 () Bool)

(assert (=> d!13005 m!23887))

(declare-fun m!23889 () Bool)

(assert (=> b!21784 m!23889))

(declare-fun m!23891 () Bool)

(assert (=> b!21801 m!23891))

(declare-fun m!23893 () Bool)

(assert (=> b!21792 m!23893))

(declare-fun m!23895 () Bool)

(assert (=> b!21783 m!23895))

(declare-fun m!23897 () Bool)

(assert (=> b!21785 m!23897))

(declare-fun m!23899 () Bool)

(assert (=> b!21798 m!23899))

(declare-fun m!23901 () Bool)

(assert (=> b!21789 m!23901))

(declare-fun m!23903 () Bool)

(assert (=> b!21790 m!23903))

(declare-fun m!23905 () Bool)

(assert (=> b!21796 m!23905))

(assert (=> b!21782 m!23879))

(assert (=> b!21782 m!23881))

(assert (=> b!21782 m!23883))

(declare-fun m!23907 () Bool)

(assert (=> b!21781 m!23907))

(declare-fun m!23909 () Bool)

(assert (=> b!21794 m!23909))

(declare-fun m!23911 () Bool)

(assert (=> b!21794 m!23911))

(assert (=> b!21677 d!13005))

(declare-fun b!21812 () Bool)

(declare-fun res!9564 () Bool)

(declare-fun e!11387 () Bool)

(assert (=> b!21812 (=> (not res!9564) (not e!11387))))

(declare-fun lt!3449 () List!339)

(assert (=> b!21812 (= res!9564 (= (size!228 lt!3449) (+ (size!228 (toList!99 (left!678 res!5614))) (size!228 (toList!99 (right!681 res!5614))))))))

(declare-fun b!21813 () Bool)

(assert (=> b!21813 (= e!11387 (or (not (= (toList!99 (right!681 res!5614)) Nil!334)) (= lt!3449 (toList!99 (left!678 res!5614)))))))

(declare-fun b!21810 () Bool)

(declare-fun e!11388 () List!339)

(assert (=> b!21810 (= e!11388 (toList!99 (right!681 res!5614)))))

(declare-fun d!13007 () Bool)

(assert (=> d!13007 e!11387))

(declare-fun res!9565 () Bool)

(assert (=> d!13007 (=> (not res!9565) (not e!11387))))

(declare-fun content!60 (List!339) (Set T!1759))

(assert (=> d!13007 (= res!9565 (= (content!60 lt!3449) (union (content!60 (toList!99 (left!678 res!5614))) (content!60 (toList!99 (right!681 res!5614))))))))

(assert (=> d!13007 (= lt!3449 e!11388)))

(declare-fun c!5215 () Bool)

(assert (=> d!13007 (= c!5215 (is-Nil!334 (toList!99 (left!678 res!5614))))))

(assert (=> d!13007 (= (++!22 (toList!99 (left!678 res!5614)) (toList!99 (right!681 res!5614))) lt!3449)))

(declare-fun b!21811 () Bool)

(assert (=> b!21811 (= e!11388 (Cons!333 (h!247 (toList!99 (left!678 res!5614))) (++!22 (t!4334 (toList!99 (left!678 res!5614))) (toList!99 (right!681 res!5614)))))))

(assert (= (and d!13007 c!5215) b!21810))

(assert (= (and d!13007 (not c!5215)) b!21811))

(assert (= (and d!13007 res!9565) b!21812))

(assert (= (and b!21812 res!9564) b!21813))

(declare-fun m!23913 () Bool)

(assert (=> b!21812 m!23913))

(assert (=> b!21812 m!23841))

(declare-fun m!23915 () Bool)

(assert (=> b!21812 m!23915))

(assert (=> b!21812 m!23843))

(declare-fun m!23917 () Bool)

(assert (=> b!21812 m!23917))

(declare-fun m!23919 () Bool)

(assert (=> d!13007 m!23919))

(assert (=> d!13007 m!23841))

(declare-fun m!23921 () Bool)

(assert (=> d!13007 m!23921))

(assert (=> d!13007 m!23843))

(declare-fun m!23923 () Bool)

(assert (=> d!13007 m!23923))

(assert (=> b!21811 m!23843))

(declare-fun m!23925 () Bool)

(assert (=> b!21811 m!23925))

(assert (=> b!21734 d!13007))

(declare-fun b!21814 () Bool)

(declare-fun e!11389 () List!339)

(assert (=> b!21814 (= e!11389 Nil!334)))

(declare-fun b!21816 () Bool)

(declare-fun e!11390 () List!339)

(assert (=> b!21816 (= e!11390 (Cons!333 (x!8801 (left!678 res!5614)) Nil!334))))

(declare-fun b!21817 () Bool)

(assert (=> b!21817 (= e!11390 (++!22 (toList!99 (left!678 (left!678 res!5614))) (toList!99 (right!681 (left!678 res!5614)))))))

(declare-fun b!21815 () Bool)

(assert (=> b!21815 (= e!11389 e!11390)))

(declare-fun c!5217 () Bool)

(assert (=> b!21815 (= c!5217 (is-Single!33 (left!678 res!5614)))))

(declare-fun d!13009 () Bool)

(declare-fun lt!3450 () List!339)

(assert (=> d!13009 (= (size!228 lt!3450) (size!227 (left!678 res!5614)))))

(assert (=> d!13009 (= lt!3450 e!11389)))

(declare-fun c!5216 () Bool)

(assert (=> d!13009 (= c!5216 (is-Empty!44 (left!678 res!5614)))))

(assert (=> d!13009 (= (toList!99 (left!678 res!5614)) lt!3450)))

(assert (= (and b!21815 c!5217) b!21816))

(assert (= (and b!21815 (not c!5217)) b!21817))

(assert (= (and d!13009 c!5216) b!21814))

(assert (= (and d!13009 (not c!5216)) b!21815))

(declare-fun m!23927 () Bool)

(assert (=> b!21817 m!23927))

(declare-fun m!23929 () Bool)

(assert (=> b!21817 m!23929))

(assert (=> b!21817 m!23927))

(assert (=> b!21817 m!23929))

(declare-fun m!23931 () Bool)

(assert (=> b!21817 m!23931))

(declare-fun m!23933 () Bool)

(assert (=> d!13009 m!23933))

(declare-fun m!23935 () Bool)

(assert (=> d!13009 m!23935))

(assert (=> b!21734 d!13009))

(declare-fun b!21818 () Bool)

(declare-fun e!11391 () List!339)

(assert (=> b!21818 (= e!11391 Nil!334)))

(declare-fun b!21820 () Bool)

(declare-fun e!11392 () List!339)

(assert (=> b!21820 (= e!11392 (Cons!333 (x!8801 (right!681 res!5614)) Nil!334))))

(declare-fun b!21821 () Bool)

(assert (=> b!21821 (= e!11392 (++!22 (toList!99 (left!678 (right!681 res!5614))) (toList!99 (right!681 (right!681 res!5614)))))))

(declare-fun b!21819 () Bool)

(assert (=> b!21819 (= e!11391 e!11392)))

(declare-fun c!5219 () Bool)

(assert (=> b!21819 (= c!5219 (is-Single!33 (right!681 res!5614)))))

(declare-fun d!13011 () Bool)

(declare-fun lt!3451 () List!339)

(assert (=> d!13011 (= (size!228 lt!3451) (size!227 (right!681 res!5614)))))

(assert (=> d!13011 (= lt!3451 e!11391)))

(declare-fun c!5218 () Bool)

(assert (=> d!13011 (= c!5218 (is-Empty!44 (right!681 res!5614)))))

(assert (=> d!13011 (= (toList!99 (right!681 res!5614)) lt!3451)))

(assert (= (and b!21819 c!5219) b!21820))

(assert (= (and b!21819 (not c!5219)) b!21821))

(assert (= (and d!13011 c!5218) b!21818))

(assert (= (and d!13011 (not c!5218)) b!21819))

(declare-fun m!23937 () Bool)

(assert (=> b!21821 m!23937))

(declare-fun m!23939 () Bool)

(assert (=> b!21821 m!23939))

(assert (=> b!21821 m!23937))

(assert (=> b!21821 m!23939))

(declare-fun m!23941 () Bool)

(assert (=> b!21821 m!23941))

(declare-fun m!23943 () Bool)

(assert (=> d!13011 m!23943))

(declare-fun m!23945 () Bool)

(assert (=> d!13011 m!23945))

(assert (=> b!21734 d!13011))

(declare-fun d!13013 () Bool)

(assert (=> d!13013 (= (isEmpty!296 lt!3417) (= lt!3417 Empty!44))))

(assert (=> b!21711 d!13013))

(declare-fun b!21823 () Bool)

(declare-fun e!11393 () Int)

(declare-fun lt!3452 () Int)

(declare-fun lt!3454 () Int)

(assert (=> b!21823 (= e!11393 (+ 1 (ite (>= lt!3452 lt!3454) lt!3452 lt!3454)))))

(assert (=> b!21823 (= lt!3454 (level!31 (right!681 (ite lt!3399 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(assert (=> b!21823 (= lt!3452 (level!31 (left!678 (ite lt!3399 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun d!13015 () Bool)

(declare-fun lt!3453 () Int)

(assert (=> d!13015 (>= lt!3453 0)))

(assert (=> d!13015 (= lt!3453 e!11393)))

(declare-fun c!5220 () Bool)

(assert (=> d!13015 (= c!5220 (or (is-Empty!44 (ite lt!3399 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (is-Single!33 (ite lt!3399 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(assert (=> d!13015 (= (level!31 (ite lt!3399 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) lt!3453)))

(declare-fun b!21822 () Bool)

(assert (=> b!21822 (= e!11393 0)))

(assert (= (and d!13015 c!5220) b!21822))

(assert (= (and d!13015 (not c!5220)) b!21823))

(declare-fun m!23947 () Bool)

(assert (=> b!21823 m!23947))

(declare-fun m!23949 () Bool)

(assert (=> b!21823 m!23949))

(assert (=> b!21668 d!13015))

(declare-fun b!21826 () Bool)

(declare-fun res!9567 () Bool)

(declare-fun e!11394 () Bool)

(assert (=> b!21826 (=> (not res!9567) (not e!11394))))

(assert (=> b!21826 (= res!9567 (balanced!33 (left!678 lt!3402)))))

(declare-fun d!13017 () Bool)

(declare-fun res!9566 () Bool)

(declare-fun e!11395 () Bool)

(assert (=> d!13017 (=> res!9566 e!11395)))

(assert (=> d!13017 (= res!9566 (not (is-CC!33 lt!3402)))))

(assert (=> d!13017 (= (balanced!33 lt!3402) e!11395)))

(declare-fun b!21827 () Bool)

(assert (=> b!21827 (= e!11394 (balanced!33 (right!681 lt!3402)))))

(declare-fun b!21825 () Bool)

(declare-fun res!9568 () Bool)

(assert (=> b!21825 (=> (not res!9568) (not e!11394))))

(assert (=> b!21825 (= res!9568 (<= (- (level!31 (left!678 lt!3402)) (level!31 (right!681 lt!3402))) 1))))

(declare-fun b!21824 () Bool)

(assert (=> b!21824 (= e!11395 e!11394)))

(declare-fun res!9569 () Bool)

(assert (=> b!21824 (=> (not res!9569) (not e!11394))))

(assert (=> b!21824 (= res!9569 (>= (- (level!31 (left!678 lt!3402)) (level!31 (right!681 lt!3402))) (- 1)))))

(assert (= (and d!13017 (not res!9566)) b!21824))

(assert (= (and b!21824 res!9569) b!21825))

(assert (= (and b!21825 res!9568) b!21826))

(assert (= (and b!21826 res!9567) b!21827))

(declare-fun m!23951 () Bool)

(assert (=> b!21826 m!23951))

(declare-fun m!23953 () Bool)

(assert (=> b!21827 m!23953))

(declare-fun m!23955 () Bool)

(assert (=> b!21825 m!23955))

(declare-fun m!23957 () Bool)

(assert (=> b!21825 m!23957))

(assert (=> b!21824 m!23955))

(assert (=> b!21824 m!23957))

(assert (=> b!21672 d!13017))

(declare-fun b!21829 () Bool)

(declare-fun e!11396 () Int)

(declare-fun lt!3455 () Int)

(declare-fun lt!3457 () Int)

(assert (=> b!21829 (= e!11396 (+ 1 (ite (>= lt!3455 lt!3457) lt!3455 lt!3457)))))

(assert (=> b!21829 (= lt!3457 (level!31 (right!681 (left!678 xs!604))))))

(assert (=> b!21829 (= lt!3455 (level!31 (left!678 (left!678 xs!604))))))

(declare-fun d!13019 () Bool)

(declare-fun lt!3456 () Int)

(assert (=> d!13019 (>= lt!3456 0)))

(assert (=> d!13019 (= lt!3456 e!11396)))

(declare-fun c!5221 () Bool)

(assert (=> d!13019 (= c!5221 (or (is-Empty!44 (left!678 xs!604)) (is-Single!33 (left!678 xs!604))))))

(assert (=> d!13019 (= (level!31 (left!678 xs!604)) lt!3456)))

(declare-fun b!21828 () Bool)

(assert (=> b!21828 (= e!11396 0)))

(assert (= (and d!13019 c!5221) b!21828))

(assert (= (and d!13019 (not c!5221)) b!21829))

(declare-fun m!23959 () Bool)

(assert (=> b!21829 m!23959))

(declare-fun m!23961 () Bool)

(assert (=> b!21829 m!23961))

(assert (=> b!21579 d!13019))

(declare-fun b!21831 () Bool)

(declare-fun e!11397 () Int)

(declare-fun lt!3458 () Int)

(declare-fun lt!3460 () Int)

(assert (=> b!21831 (= e!11397 (+ 1 (ite (>= lt!3458 lt!3460) lt!3458 lt!3460)))))

(assert (=> b!21831 (= lt!3460 (level!31 (right!681 (right!681 xs!604))))))

(assert (=> b!21831 (= lt!3458 (level!31 (left!678 (right!681 xs!604))))))

(declare-fun d!13021 () Bool)

(declare-fun lt!3459 () Int)

(assert (=> d!13021 (>= lt!3459 0)))

(assert (=> d!13021 (= lt!3459 e!11397)))

(declare-fun c!5222 () Bool)

(assert (=> d!13021 (= c!5222 (or (is-Empty!44 (right!681 xs!604)) (is-Single!33 (right!681 xs!604))))))

(assert (=> d!13021 (= (level!31 (right!681 xs!604)) lt!3459)))

(declare-fun b!21830 () Bool)

(assert (=> b!21830 (= e!11397 0)))

(assert (= (and d!13021 c!5222) b!21830))

(assert (= (and d!13021 (not c!5222)) b!21831))

(declare-fun m!23963 () Bool)

(assert (=> b!21831 m!23963))

(declare-fun m!23965 () Bool)

(assert (=> b!21831 m!23965))

(assert (=> b!21579 d!13021))

(declare-fun b!21833 () Bool)

(declare-fun e!11398 () Int)

(declare-fun lt!3461 () Int)

(declare-fun lt!3463 () Int)

(assert (=> b!21833 (= e!11398 (+ 1 (ite (>= lt!3461 lt!3463) lt!3461 lt!3463)))))

(assert (=> b!21833 (= lt!3463 (level!31 (right!681 lt!3404)))))

(assert (=> b!21833 (= lt!3461 (level!31 (left!678 lt!3404)))))

(declare-fun d!13023 () Bool)

(declare-fun lt!3462 () Int)

(assert (=> d!13023 (>= lt!3462 0)))

(assert (=> d!13023 (= lt!3462 e!11398)))

(declare-fun c!5223 () Bool)

(assert (=> d!13023 (= c!5223 (or (is-Empty!44 lt!3404) (is-Single!33 lt!3404)))))

(assert (=> d!13023 (= (level!31 lt!3404) lt!3462)))

(declare-fun b!21832 () Bool)

(assert (=> b!21832 (= e!11398 0)))

(assert (= (and d!13023 c!5223) b!21832))

(assert (= (and d!13023 (not c!5223)) b!21833))

(declare-fun m!23967 () Bool)

(assert (=> b!21833 m!23967))

(declare-fun m!23969 () Bool)

(assert (=> b!21833 m!23969))

(assert (=> b!21659 d!13023))

(declare-fun b!21836 () Bool)

(declare-fun res!9571 () Bool)

(declare-fun e!11399 () Bool)

(assert (=> b!21836 (=> (not res!9571) (not e!11399))))

(assert (=> b!21836 (= res!9571 (balanced!33 (left!678 (right!681 xs!604))))))

(declare-fun d!13025 () Bool)

(declare-fun res!9570 () Bool)

(declare-fun e!11400 () Bool)

(assert (=> d!13025 (=> res!9570 e!11400)))

(assert (=> d!13025 (= res!9570 (not (is-CC!33 (right!681 xs!604))))))

(assert (=> d!13025 (= (balanced!33 (right!681 xs!604)) e!11400)))

(declare-fun b!21837 () Bool)

(assert (=> b!21837 (= e!11399 (balanced!33 (right!681 (right!681 xs!604))))))

(declare-fun b!21835 () Bool)

(declare-fun res!9572 () Bool)

(assert (=> b!21835 (=> (not res!9572) (not e!11399))))

(assert (=> b!21835 (= res!9572 (<= (- (level!31 (left!678 (right!681 xs!604))) (level!31 (right!681 (right!681 xs!604)))) 1))))

(declare-fun b!21834 () Bool)

(assert (=> b!21834 (= e!11400 e!11399)))

(declare-fun res!9573 () Bool)

(assert (=> b!21834 (=> (not res!9573) (not e!11399))))

(assert (=> b!21834 (= res!9573 (>= (- (level!31 (left!678 (right!681 xs!604))) (level!31 (right!681 (right!681 xs!604)))) (- 1)))))

(assert (= (and d!13025 (not res!9570)) b!21834))

(assert (= (and b!21834 res!9573) b!21835))

(assert (= (and b!21835 res!9572) b!21836))

(assert (= (and b!21836 res!9571) b!21837))

(declare-fun m!23971 () Bool)

(assert (=> b!21836 m!23971))

(declare-fun m!23973 () Bool)

(assert (=> b!21837 m!23973))

(assert (=> b!21835 m!23965))

(assert (=> b!21835 m!23963))

(assert (=> b!21834 m!23965))

(assert (=> b!21834 m!23963))

(assert (=> b!21719 d!13025))

(assert (=> b!21606 d!12977))

(declare-fun b!21838 () Bool)

(declare-fun e!11402 () Int)

(assert (=> b!21838 (= e!11402 0)))

(declare-fun b!21841 () Bool)

(declare-fun e!11401 () Int)

(assert (=> b!21841 (= e!11401 (+ (size!227 (left!678 (right!681 xs!604))) (size!227 (right!681 (right!681 xs!604)))))))

(declare-fun b!21840 () Bool)

(assert (=> b!21840 (= e!11401 1)))

(declare-fun b!21839 () Bool)

(assert (=> b!21839 (= e!11402 e!11401)))

(declare-fun c!5225 () Bool)

(assert (=> b!21839 (= c!5225 (is-Single!33 (right!681 xs!604)))))

(declare-fun d!13027 () Bool)

(declare-fun lt!3464 () Int)

(assert (=> d!13027 (>= lt!3464 0)))

(assert (=> d!13027 (= lt!3464 e!11402)))

(declare-fun c!5224 () Bool)

(assert (=> d!13027 (= c!5224 (is-Empty!44 (right!681 xs!604)))))

(assert (=> d!13027 (= (size!227 (right!681 xs!604)) lt!3464)))

(assert (= (and b!21839 c!5225) b!21840))

(assert (= (and b!21839 (not c!5225)) b!21841))

(assert (= (and d!13027 c!5224) b!21838))

(assert (= (and d!13027 (not c!5224)) b!21839))

(assert (=> b!21841 m!23835))

(declare-fun m!23975 () Bool)

(assert (=> b!21841 m!23975))

(assert (=> b!21606 d!13027))

(declare-fun b!21845 () Bool)

(declare-fun e!11403 () Bool)

(assert (=> b!21845 (= e!11403 (concInv!32 (right!681 (left!678 xs!604))))))

(declare-fun b!21843 () Bool)

(declare-fun res!9575 () Bool)

(assert (=> b!21843 (=> (not res!9575) (not e!11403))))

(assert (=> b!21843 (= res!9575 (not (isEmpty!296 (right!681 (left!678 xs!604)))))))

(declare-fun d!13029 () Bool)

(declare-fun res!9577 () Bool)

(declare-fun e!11404 () Bool)

(assert (=> d!13029 (=> res!9577 e!11404)))

(assert (=> d!13029 (= res!9577 (not (is-CC!33 (left!678 xs!604))))))

(assert (=> d!13029 (= (concInv!32 (left!678 xs!604)) e!11404)))

(declare-fun b!21844 () Bool)

(declare-fun res!9574 () Bool)

(assert (=> b!21844 (=> (not res!9574) (not e!11403))))

(assert (=> b!21844 (= res!9574 (concInv!32 (left!678 (left!678 xs!604))))))

(declare-fun b!21842 () Bool)

(assert (=> b!21842 (= e!11404 e!11403)))

(declare-fun res!9576 () Bool)

(assert (=> b!21842 (=> (not res!9576) (not e!11403))))

(assert (=> b!21842 (= res!9576 (not (isEmpty!296 (left!678 (left!678 xs!604)))))))

(assert (= (and d!13029 (not res!9577)) b!21842))

(assert (= (and b!21842 res!9576) b!21843))

(assert (= (and b!21843 res!9575) b!21844))

(assert (= (and b!21844 res!9574) b!21845))

(declare-fun m!23977 () Bool)

(assert (=> b!21845 m!23977))

(declare-fun m!23979 () Bool)

(assert (=> b!21843 m!23979))

(declare-fun m!23981 () Bool)

(assert (=> b!21844 m!23981))

(declare-fun m!23983 () Bool)

(assert (=> b!21842 m!23983))

(assert (=> b!21613 d!13029))

(declare-fun b!21847 () Bool)

(declare-fun e!11405 () Int)

(declare-fun lt!3465 () Int)

(declare-fun lt!3467 () Int)

(assert (=> b!21847 (= e!11405 (+ 1 (ite (>= lt!3465 lt!3467) lt!3465 lt!3467)))))

(assert (=> b!21847 (= lt!3467 (level!31 (right!681 (ite lt!3409 (right!681 (left!678 xs!604)) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(assert (=> b!21847 (= lt!3465 (level!31 (left!678 (ite lt!3409 (right!681 (left!678 xs!604)) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(declare-fun d!13031 () Bool)

(declare-fun lt!3466 () Int)

(assert (=> d!13031 (>= lt!3466 0)))

(assert (=> d!13031 (= lt!3466 e!11405)))

(declare-fun c!5226 () Bool)

(assert (=> d!13031 (= c!5226 (or (is-Empty!44 (ite lt!3409 (right!681 (left!678 xs!604)) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (is-Single!33 (ite lt!3409 (right!681 (left!678 xs!604)) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(assert (=> d!13031 (= (level!31 (ite lt!3409 (right!681 (left!678 xs!604)) (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) lt!3466)))

(declare-fun b!21846 () Bool)

(assert (=> b!21846 (= e!11405 0)))

(assert (= (and d!13031 c!5226) b!21846))

(assert (= (and d!13031 (not c!5226)) b!21847))

(declare-fun m!23985 () Bool)

(assert (=> b!21847 m!23985))

(declare-fun m!23987 () Bool)

(assert (=> b!21847 m!23987))

(assert (=> b!21670 d!13031))

(declare-fun b!21849 () Bool)

(declare-fun e!11406 () Int)

(declare-fun lt!3468 () Int)

(declare-fun lt!3470 () Int)

(assert (=> b!21849 (= e!11406 (+ 1 (ite (>= lt!3468 lt!3470) lt!3468 lt!3470)))))

(assert (=> b!21849 (= lt!3470 (level!31 (right!681 (ite lt!3409 (left!678 (left!678 xs!604)) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(assert (=> b!21849 (= lt!3468 (level!31 (left!678 (ite lt!3409 (left!678 (left!678 xs!604)) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(declare-fun d!13033 () Bool)

(declare-fun lt!3469 () Int)

(assert (=> d!13033 (>= lt!3469 0)))

(assert (=> d!13033 (= lt!3469 e!11406)))

(declare-fun c!5227 () Bool)

(assert (=> d!13033 (= c!5227 (or (is-Empty!44 (ite lt!3409 (left!678 (left!678 xs!604)) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (is-Single!33 (ite lt!3409 (left!678 (left!678 xs!604)) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(assert (=> d!13033 (= (level!31 (ite lt!3409 (left!678 (left!678 xs!604)) (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) lt!3469)))

(declare-fun b!21848 () Bool)

(assert (=> b!21848 (= e!11406 0)))

(assert (= (and d!13033 c!5227) b!21848))

(assert (= (and d!13033 (not c!5227)) b!21849))

(declare-fun m!23989 () Bool)

(assert (=> b!21849 m!23989))

(declare-fun m!23991 () Bool)

(assert (=> b!21849 m!23991))

(assert (=> b!21670 d!13033))

(assert (=> b!21661 d!13001))

(declare-fun b!21850 () Bool)

(declare-fun e!11407 () List!339)

(assert (=> b!21850 (= e!11407 Nil!334)))

(declare-fun b!21852 () Bool)

(declare-fun e!11408 () List!339)

(assert (=> b!21852 (= e!11408 (Cons!333 (x!8801 lt!3417) Nil!334))))

(declare-fun b!21853 () Bool)

(assert (=> b!21853 (= e!11408 (++!22 (toList!99 (left!678 lt!3417)) (toList!99 (right!681 lt!3417))))))

(declare-fun b!21851 () Bool)

(assert (=> b!21851 (= e!11407 e!11408)))

(declare-fun c!5229 () Bool)

(assert (=> b!21851 (= c!5229 (is-Single!33 lt!3417))))

(declare-fun d!13035 () Bool)

(declare-fun lt!3471 () List!339)

(assert (=> d!13035 (= (size!228 lt!3471) (size!227 lt!3417))))

(assert (=> d!13035 (= lt!3471 e!11407)))

(declare-fun c!5228 () Bool)

(assert (=> d!13035 (= c!5228 (is-Empty!44 lt!3417))))

(assert (=> d!13035 (= (toList!99 lt!3417) lt!3471)))

(assert (= (and b!21851 c!5229) b!21852))

(assert (= (and b!21851 (not c!5229)) b!21853))

(assert (= (and d!13035 c!5228) b!21850))

(assert (= (and d!13035 (not c!5228)) b!21851))

(declare-fun m!23993 () Bool)

(assert (=> b!21853 m!23993))

(declare-fun m!23995 () Bool)

(assert (=> b!21853 m!23995))

(assert (=> b!21853 m!23993))

(assert (=> b!21853 m!23995))

(declare-fun m!23997 () Bool)

(assert (=> b!21853 m!23997))

(declare-fun m!23999 () Bool)

(assert (=> d!13035 m!23999))

(declare-fun m!24001 () Bool)

(assert (=> d!13035 m!24001))

(assert (=> b!21713 d!13035))

(declare-fun d!13037 () Bool)

(declare-fun c!5230 () Bool)

(assert (=> d!13037 (= c!5230 (is-Nil!334 (toList!99 (right!681 xs!604))))))

(declare-fun e!11409 () List!339)

(assert (=> d!13037 (= (insertAtIndex!12 (toList!99 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) e!11409)))

(declare-fun b!21856 () Bool)

(declare-fun e!11410 () List!339)

(assert (=> b!21856 (= e!11410 (Cons!333 y!824 (toList!99 (right!681 xs!604))))))

(declare-fun b!21855 () Bool)

(assert (=> b!21855 (= e!11409 e!11410)))

(declare-fun c!5231 () Bool)

(assert (=> b!21855 (= c!5231 (= (- i!298 (size!227 (left!678 xs!604))) 0))))

(declare-fun b!21854 () Bool)

(assert (=> b!21854 (= e!11409 (Cons!333 y!824 Nil!334))))

(declare-fun b!21857 () Bool)

(assert (=> b!21857 (= e!11410 (Cons!333 (h!247 (toList!99 (right!681 xs!604))) (insertAtIndex!12 (t!4334 (toList!99 (right!681 xs!604))) (- (- i!298 (size!227 (left!678 xs!604))) 1) y!824)))))

(assert (= (and b!21855 c!5231) b!21856))

(assert (= (and b!21855 (not c!5231)) b!21857))

(assert (= (and d!13037 c!5230) b!21854))

(assert (= (and d!13037 (not c!5230)) b!21855))

(declare-fun m!24003 () Bool)

(assert (=> b!21857 m!24003))

(assert (=> b!21713 d!13037))

(declare-fun b!21858 () Bool)

(declare-fun e!11411 () List!339)

(assert (=> b!21858 (= e!11411 Nil!334)))

(declare-fun b!21860 () Bool)

(declare-fun e!11412 () List!339)

(assert (=> b!21860 (= e!11412 (Cons!333 (x!8801 (right!681 xs!604)) Nil!334))))

(declare-fun b!21861 () Bool)

(assert (=> b!21861 (= e!11412 (++!22 (toList!99 (left!678 (right!681 xs!604))) (toList!99 (right!681 (right!681 xs!604)))))))

(declare-fun b!21859 () Bool)

(assert (=> b!21859 (= e!11411 e!11412)))

(declare-fun c!5233 () Bool)

(assert (=> b!21859 (= c!5233 (is-Single!33 (right!681 xs!604)))))

(declare-fun d!13039 () Bool)

(declare-fun lt!3472 () List!339)

(assert (=> d!13039 (= (size!228 lt!3472) (size!227 (right!681 xs!604)))))

(assert (=> d!13039 (= lt!3472 e!11411)))

(declare-fun c!5232 () Bool)

(assert (=> d!13039 (= c!5232 (is-Empty!44 (right!681 xs!604)))))

(assert (=> d!13039 (= (toList!99 (right!681 xs!604)) lt!3472)))

(assert (= (and b!21859 c!5233) b!21860))

(assert (= (and b!21859 (not c!5233)) b!21861))

(assert (= (and d!13039 c!5232) b!21858))

(assert (= (and d!13039 (not c!5232)) b!21859))

(declare-fun m!24005 () Bool)

(assert (=> b!21861 m!24005))

(declare-fun m!24007 () Bool)

(assert (=> b!21861 m!24007))

(assert (=> b!21861 m!24005))

(assert (=> b!21861 m!24007))

(declare-fun m!24009 () Bool)

(assert (=> b!21861 m!24009))

(declare-fun m!24011 () Bool)

(assert (=> d!13039 m!24011))

(assert (=> d!13039 m!23775))

(assert (=> b!21713 d!13039))

(declare-fun d!13041 () Bool)

(declare-fun lt!3475 () Int)

(assert (=> d!13041 (>= lt!3475 0)))

(declare-fun e!11415 () Int)

(assert (=> d!13041 (= lt!3475 e!11415)))

(declare-fun c!5236 () Bool)

(assert (=> d!13041 (= c!5236 (is-Nil!334 lt!3421))))

(assert (=> d!13041 (= (size!228 lt!3421) lt!3475)))

(declare-fun b!21866 () Bool)

(assert (=> b!21866 (= e!11415 0)))

(declare-fun b!21867 () Bool)

(assert (=> b!21867 (= e!11415 (+ 1 (size!228 (t!4334 lt!3421))))))

(assert (= (and d!13041 c!5236) b!21866))

(assert (= (and d!13041 (not c!5236)) b!21867))

(declare-fun m!24013 () Bool)

(assert (=> b!21867 m!24013))

(assert (=> d!12989 d!13041))

(assert (=> d!12989 d!12973))

(declare-fun b!21869 () Bool)

(declare-fun e!11416 () Int)

(declare-fun lt!3476 () Int)

(declare-fun lt!3478 () Int)

(assert (=> b!21869 (= e!11416 (+ 1 (ite (>= lt!3476 lt!3478) lt!3476 lt!3478)))))

(assert (=> b!21869 (= lt!3478 (level!31 (right!681 lt!3417)))))

(assert (=> b!21869 (= lt!3476 (level!31 (left!678 lt!3417)))))

(declare-fun d!13043 () Bool)

(declare-fun lt!3477 () Int)

(assert (=> d!13043 (>= lt!3477 0)))

(assert (=> d!13043 (= lt!3477 e!11416)))

(declare-fun c!5237 () Bool)

(assert (=> d!13043 (= c!5237 (or (is-Empty!44 lt!3417) (is-Single!33 lt!3417)))))

(assert (=> d!13043 (= (level!31 lt!3417) lt!3477)))

(declare-fun b!21868 () Bool)

(assert (=> b!21868 (= e!11416 0)))

(assert (= (and d!13043 c!5237) b!21868))

(assert (= (and d!13043 (not c!5237)) b!21869))

(declare-fun m!24015 () Bool)

(assert (=> b!21869 m!24015))

(declare-fun m!24017 () Bool)

(assert (=> b!21869 m!24017))

(assert (=> b!21709 d!13043))

(assert (=> b!21709 d!13021))

(declare-fun b!21870 () Bool)

(declare-fun e!11419 () Bool)

(assert (=> b!21870 (= e!11419 (not (isEmpty!296 (right!681 (right!681 xs!604)))))))

(declare-fun b!21871 () Bool)

(declare-fun e!11422 () Bool)

(declare-fun e!11425 () Bool)

(assert (=> b!21871 (= e!11422 e!11425)))

(declare-fun res!9583 () Bool)

(assert (=> b!21871 (=> (not res!9583) (not e!11425))))

(declare-fun lt!3494 () Int)

(declare-fun lt!3480 () Int)

(declare-fun lt!3491 () Int)

(assert (=> b!21871 (= res!9583 (<= lt!3491 (+ (ite (>= lt!3480 lt!3494) lt!3480 lt!3494) 1)))))

(assert (=> b!21871 (= lt!3494 (level!31 (right!681 (right!681 xs!604))))))

(assert (=> b!21871 (= lt!3480 (level!31 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun lt!3482 () Conc!34)

(assert (=> b!21871 (= lt!3491 (level!31 lt!3482))))

(declare-fun b!21872 () Bool)

(declare-fun e!11417 () Int)

(declare-fun lt!3484 () Conc!34)

(assert (=> b!21872 (= e!11417 (level!31 lt!3484))))

(declare-fun b!21873 () Bool)

(declare-fun res!9580 () Bool)

(assert (=> b!21873 (=> (not res!9580) (not e!11419))))

(assert (=> b!21873 (= res!9580 (balanced!33 (right!681 (right!681 xs!604))))))

(declare-fun b!21874 () Bool)

(declare-fun res!9578 () Bool)

(assert (=> b!21874 (=> (not res!9578) (not e!11419))))

(assert (=> b!21874 (= res!9578 (not (isEmpty!296 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21875 () Bool)

(declare-fun res!9585 () Int)

(assert (=> b!21875 (= e!11417 res!9585)))

(assert (=> b!21875 true))

(declare-fun b!21876 () Bool)

(declare-fun e!11424 () Conc!34)

(declare-fun res!9584 () Conc!34)

(assert (=> b!21876 (= e!11424 res!9584)))

(assert (=> b!21876 true))

(declare-fun e!11418 () Bool)

(assert (=> b!21876 e!11418))

(declare-fun b!21877 () Bool)

(assert (=> b!21877 (= e!11418 tp_is_empty!103)))

(declare-fun b!21878 () Bool)

(assert (=> b!21878 (= e!11425 (concatCorrectness!6 lt!3482 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (right!681 xs!604))))))

(declare-fun b!21879 () Bool)

(declare-fun e!11421 () Bool)

(assert (=> b!21879 (= e!11421 (balanced!33 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21880 () Bool)

(declare-fun res!9581 () Bool)

(assert (=> b!21880 (=> (not res!9581) (not e!11425))))

(declare-fun lt!3481 () Int)

(declare-fun lt!3488 () Int)

(declare-fun lt!3483 () Int)

(assert (=> b!21880 (= res!9581 (>= lt!3483 (ite (>= lt!3481 lt!3488) lt!3481 lt!3488)))))

(assert (=> b!21880 (= lt!3488 (level!31 (right!681 (right!681 xs!604))))))

(assert (=> b!21880 (= lt!3481 (level!31 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(assert (=> b!21880 (= lt!3483 (level!31 lt!3482))))

(declare-fun lt!3479 () Bool)

(declare-fun b!21881 () Bool)

(declare-fun e!11423 () Int)

(assert (=> b!21881 (= e!11423 (level!31 (ite lt!3479 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (right!681 xs!604)))))))

(declare-fun b!21882 () Bool)

(declare-fun tp!4830 () Bool)

(declare-fun tp!4829 () Bool)

(assert (=> b!21882 (= e!11418 (and tp!4830 tp!4829))))

(declare-fun e!11420 () Conc!34)

(declare-fun lt!3485 () Int)

(declare-fun lt!3490 () Int)

(declare-fun lt!3493 () Int)

(declare-fun b!21883 () Bool)

(declare-fun lt!3486 () Int)

(declare-fun lt!3489 () Bool)

(assert (=> b!21883 (= e!11420 (ite lt!3489 (let ((res!9451 lt!3484)) (ite (>= lt!3486 lt!3493) (CC!33 (left!678 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) res!9451) (ite (= lt!3490 (- lt!3485 3)) (CC!33 (left!678 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) (CC!33 (left!678 (right!681 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824))) res!9451)) (CC!33 (CC!33 (left!678 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (right!681 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))) res!9451)))) (let ((res!9454 lt!3484)) (ite (>= lt!3486 lt!3493) (CC!33 res!9454 (right!681 (right!681 (right!681 xs!604)))) (ite (= lt!3490 (- lt!3485 3)) (CC!33 (CC!33 res!9454 (right!681 (left!678 (right!681 (right!681 xs!604))))) (right!681 (right!681 (right!681 xs!604)))) (CC!33 res!9454 (CC!33 (right!681 (left!678 (right!681 (right!681 xs!604)))) (right!681 (right!681 (right!681 xs!604))))))))))))

(assert (=> b!21883 (= lt!3485 e!11423)))

(declare-fun c!5239 () Bool)

(assert (=> b!21883 (= c!5239 (or lt!3479 (and (not lt!3489) (not (>= lt!3486 lt!3493)))))))

(assert (=> b!21883 (= lt!3479 (and lt!3489 (not (>= lt!3486 lt!3493))))))

(assert (=> b!21883 (= lt!3490 e!11417)))

(declare-fun c!5241 () Bool)

(assert (=> b!21883 (= c!5241 (or (and lt!3489 (not (>= lt!3486 lt!3493))) (and (not lt!3489) (not (>= lt!3486 lt!3493)))))))

(assert (=> b!21883 (= lt!3484 e!11424)))

(declare-fun c!5238 () Bool)

(declare-fun lt!3492 () Bool)

(assert (=> b!21883 (= c!5238 (or lt!3492 (not lt!3489)))))

(assert (=> b!21883 (= lt!3492 lt!3489)))

(assert (=> b!21883 (= lt!3493 (level!31 (ite lt!3489 (right!681 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) (left!678 (right!681 (right!681 xs!604))))))))

(assert (=> b!21883 (= lt!3486 (level!31 (ite lt!3489 (left!678 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) (right!681 (right!681 (right!681 xs!604))))))))

(declare-fun lt!3487 () Int)

(assert (=> b!21883 (= lt!3489 (< lt!3487 (- 1)))))

(declare-fun b!21884 () Bool)

(declare-fun res!9589 () Int)

(assert (=> b!21884 (= e!11423 res!9589)))

(assert (=> b!21884 true))

(assert (=> b!21884 true))

(declare-fun b!21885 () Bool)

(declare-fun res!9591 () Bool)

(assert (=> b!21885 (=> (not res!9591) (not e!11425))))

(assert (=> b!21885 (= res!9591 (balanced!33 lt!3482))))

(declare-fun d!13045 () Bool)

(assert (=> d!13045 e!11422))

(declare-fun res!9587 () Bool)

(assert (=> d!13045 (=> (not res!9587) (not e!11422))))

(assert (=> d!13045 (= res!9587 (is-CC!33 lt!3482))))

(assert (=> d!13045 (= lt!3482 e!11420)))

(declare-fun c!5240 () Bool)

(assert (=> d!13045 (= c!5240 (and (>= lt!3487 (- 1)) (<= lt!3487 1)))))

(assert (=> d!13045 (= lt!3487 (- (level!31 (right!681 (right!681 xs!604))) (level!31 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(assert (=> d!13045 e!11419))

(declare-fun res!9590 () Bool)

(assert (=> d!13045 (=> (not res!9590) (not e!11419))))

(assert (=> d!13045 (= res!9590 e!11421)))

(declare-fun res!9586 () Bool)

(assert (=> d!13045 (=> (not res!9586) (not e!11421))))

(assert (=> d!13045 (= res!9586 (concInv!32 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(assert (=> d!13045 (= (concatNonEmpty!12 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (right!681 xs!604))) lt!3482)))

(declare-fun b!21886 () Bool)

(declare-fun res!9579 () Bool)

(assert (=> b!21886 (=> (not res!9579) (not e!11425))))

(assert (=> b!21886 (= res!9579 (appendAssocInst!8 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (right!681 xs!604))))))

(declare-fun b!21887 () Bool)

(declare-fun res!9588 () Bool)

(assert (=> b!21887 (=> (not res!9588) (not e!11425))))

(assert (=> b!21887 (= res!9588 (concInv!32 lt!3482))))

(declare-fun b!21888 () Bool)

(declare-fun res!9582 () Bool)

(assert (=> b!21888 (=> (not res!9582) (not e!11419))))

(assert (=> b!21888 (= res!9582 (concInv!32 (right!681 (right!681 xs!604))))))

(declare-fun b!21889 () Bool)

(assert (=> b!21889 (= e!11420 (CC!33 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (right!681 xs!604))))))

(declare-fun b!21890 () Bool)

(assert (=> b!21890 (= e!11424 (concatNonEmpty!12 (ite lt!3492 (ite (>= lt!3486 lt!3493) (right!681 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) (right!681 (right!681 (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824)) (ite lt!3492 (right!681 (right!681 xs!604)) (ite (>= lt!3486 lt!3493) (left!678 (right!681 (right!681 xs!604))) (left!678 (left!678 (right!681 (right!681 xs!604))))))))))

(assert (= (and d!13045 res!9586) b!21879))

(assert (= (and d!13045 res!9590) b!21888))

(assert (= (and b!21888 res!9582) b!21873))

(assert (= (and b!21873 res!9580) b!21874))

(assert (= (and b!21874 res!9578) b!21870))

(assert (= (and b!21876 (is-CC!33 res!9584)) b!21882))

(assert (= (and b!21876 (is-Single!33 res!9584)) b!21877))

(assert (= (and b!21883 c!5238) b!21890))

(assert (= (and b!21883 (not c!5238)) b!21876))

(assert (= (and b!21883 c!5241) b!21872))

(assert (= (and b!21883 (not c!5241)) b!21875))

(assert (= (and b!21883 c!5239) b!21881))

(assert (= (and b!21883 (not c!5239)) b!21884))

(assert (= (and d!13045 c!5240) b!21889))

(assert (= (and d!13045 (not c!5240)) b!21883))

(assert (= (and d!13045 res!9587) b!21871))

(assert (= (and b!21871 res!9583) b!21880))

(assert (= (and b!21880 res!9581) b!21887))

(assert (= (and b!21887 res!9588) b!21885))

(assert (= (and b!21885 res!9591) b!21886))

(assert (= (and b!21886 res!9579) b!21878))

(declare-fun m!24019 () Bool)

(assert (=> b!21888 m!24019))

(assert (=> b!21880 m!23963))

(assert (=> b!21880 m!23817))

(declare-fun m!24021 () Bool)

(assert (=> b!21880 m!24021))

(declare-fun m!24023 () Bool)

(assert (=> b!21880 m!24023))

(assert (=> b!21886 m!23817))

(declare-fun m!24025 () Bool)

(assert (=> b!21886 m!24025))

(assert (=> d!13045 m!23963))

(assert (=> d!13045 m!23817))

(assert (=> d!13045 m!24021))

(assert (=> d!13045 m!23817))

(declare-fun m!24027 () Bool)

(assert (=> d!13045 m!24027))

(assert (=> b!21873 m!23973))

(declare-fun m!24029 () Bool)

(assert (=> b!21890 m!24029))

(declare-fun m!24031 () Bool)

(assert (=> b!21881 m!24031))

(declare-fun m!24033 () Bool)

(assert (=> b!21872 m!24033))

(assert (=> b!21874 m!23817))

(declare-fun m!24035 () Bool)

(assert (=> b!21874 m!24035))

(declare-fun m!24037 () Bool)

(assert (=> b!21887 m!24037))

(assert (=> b!21878 m!23817))

(declare-fun m!24039 () Bool)

(assert (=> b!21878 m!24039))

(assert (=> b!21879 m!23817))

(declare-fun m!24041 () Bool)

(assert (=> b!21879 m!24041))

(declare-fun m!24043 () Bool)

(assert (=> b!21885 m!24043))

(assert (=> b!21871 m!23963))

(assert (=> b!21871 m!23817))

(assert (=> b!21871 m!24021))

(assert (=> b!21871 m!24023))

(declare-fun m!24045 () Bool)

(assert (=> b!21870 m!24045))

(declare-fun m!24047 () Bool)

(assert (=> b!21883 m!24047))

(declare-fun m!24049 () Bool)

(assert (=> b!21883 m!24049))

(assert (=> b!21718 d!13045))

(declare-fun b!21891 () Bool)

(declare-fun e!11430 () Conc!34)

(declare-fun e!11426 () Conc!34)

(assert (=> b!21891 (= e!11430 e!11426)))

(declare-fun c!5244 () Bool)

(assert (=> b!21891 (= c!5244 (is-Single!33 (left!678 (right!681 xs!604))))))

(declare-fun b!21892 () Bool)

(declare-fun res!9593 () Bool)

(declare-fun e!11429 () Bool)

(assert (=> b!21892 (=> (not res!9593) (not e!11429))))

(declare-fun lt!3495 () Conc!34)

(assert (=> b!21892 (= res!9593 (<= (- (level!31 lt!3495) (level!31 (left!678 (right!681 xs!604)))) 1))))

(declare-fun b!21893 () Bool)

(declare-fun e!11432 () Conc!34)

(assert (=> b!21893 (= e!11426 e!11432)))

(declare-fun c!5242 () Bool)

(assert (=> b!21893 (= c!5242 (< (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (left!678 (right!681 xs!604))))))))

(declare-fun b!21894 () Bool)

(declare-fun res!9597 () Bool)

(assert (=> b!21894 (=> (not res!9597) (not e!11429))))

(assert (=> b!21894 (= res!9597 (not (isEmpty!296 lt!3495)))))

(declare-fun d!13047 () Bool)

(assert (=> d!13047 e!11429))

(declare-fun res!9595 () Bool)

(assert (=> d!13047 (=> (not res!9595) (not e!11429))))

(declare-fun e!11427 () Bool)

(assert (=> d!13047 (= res!9595 e!11427)))

(declare-fun res!9600 () Bool)

(assert (=> d!13047 (=> (not res!9600) (not e!11427))))

(assert (=> d!13047 (= res!9600 (concInv!32 lt!3495))))

(assert (=> d!13047 (= lt!3495 e!11430)))

(declare-fun c!5243 () Bool)

(assert (=> d!13047 (= c!5243 (is-Empty!44 (left!678 (right!681 xs!604))))))

(declare-fun e!11428 () Bool)

(assert (=> d!13047 e!11428))

(declare-fun res!9598 () Bool)

(assert (=> d!13047 (=> (not res!9598) (not e!11428))))

(declare-fun e!11431 () Bool)

(assert (=> d!13047 (= res!9598 e!11431)))

(declare-fun res!9594 () Bool)

(assert (=> d!13047 (=> (not res!9594) (not e!11431))))

(assert (=> d!13047 (= res!9594 (concInv!32 (left!678 (right!681 xs!604))))))

(assert (=> d!13047 (= (insert!21 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824) lt!3495)))

(declare-fun b!21895 () Bool)

(assert (=> b!21895 (= e!11426 (ite (= (- i!298 (size!227 (left!678 xs!604))) 0) (CC!33 (Single!33 y!824) (left!678 (right!681 xs!604))) (CC!33 (left!678 (right!681 xs!604)) (Single!33 y!824))))))

(declare-fun b!21896 () Bool)

(assert (=> b!21896 (= e!11429 (= (toList!99 lt!3495) (insertAtIndex!12 (toList!99 (left!678 (right!681 xs!604))) (- i!298 (size!227 (left!678 xs!604))) y!824)))))

(declare-fun b!21897 () Bool)

(declare-fun res!9596 () Bool)

(assert (=> b!21897 (=> (not res!9596) (not e!11429))))

(assert (=> b!21897 (= res!9596 (>= (level!31 lt!3495) (level!31 (left!678 (right!681 xs!604)))))))

(declare-fun b!21898 () Bool)

(assert (=> b!21898 (= e!11428 (<= (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))))))

(declare-fun b!21899 () Bool)

(assert (=> b!21899 (= e!11427 (balanced!33 lt!3495))))

(declare-fun b!21900 () Bool)

(declare-fun res!9599 () Bool)

(assert (=> b!21900 (=> (not res!9599) (not e!11429))))

(assert (=> b!21900 (= res!9599 (insertAppendAxiomInst!14 (left!678 (right!681 xs!604)) (- i!298 (size!227 (left!678 xs!604))) y!824))))

(declare-fun b!21901 () Bool)

(assert (=> b!21901 (= e!11432 (concatNonEmpty!12 (insert!21 (left!678 (left!678 (right!681 xs!604))) (- i!298 (size!227 (left!678 xs!604))) y!824) (right!681 (left!678 (right!681 xs!604)))))))

(declare-fun b!21902 () Bool)

(assert (=> b!21902 (= e!11431 (balanced!33 (left!678 (right!681 xs!604))))))

(declare-fun b!21903 () Bool)

(declare-fun res!9592 () Bool)

(assert (=> b!21903 (=> (not res!9592) (not e!11428))))

(assert (=> b!21903 (= res!9592 (>= (- i!298 (size!227 (left!678 xs!604))) 0))))

(declare-fun b!21904 () Bool)

(assert (=> b!21904 (= e!11432 (concatNonEmpty!12 (left!678 (left!678 (right!681 xs!604))) (insert!21 (right!681 (left!678 (right!681 xs!604))) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (left!678 (right!681 xs!604))))) y!824)))))

(declare-fun b!21905 () Bool)

(assert (=> b!21905 (= e!11430 (Single!33 y!824))))

(assert (= (and d!13047 res!9594) b!21902))

(assert (= (and d!13047 res!9598) b!21903))

(assert (= (and b!21903 res!9592) b!21898))

(assert (= (and b!21893 c!5242) b!21901))

(assert (= (and b!21893 (not c!5242)) b!21904))

(assert (= (and b!21891 c!5244) b!21895))

(assert (= (and b!21891 (not c!5244)) b!21893))

(assert (= (and d!13047 c!5243) b!21905))

(assert (= (and d!13047 (not c!5243)) b!21891))

(assert (= (and d!13047 res!9600) b!21899))

(assert (= (and d!13047 res!9595) b!21892))

(assert (= (and b!21892 res!9593) b!21897))

(assert (= (and b!21897 res!9596) b!21894))

(assert (= (and b!21894 res!9597) b!21900))

(assert (= (and b!21900 res!9599) b!21896))

(declare-fun m!24051 () Bool)

(assert (=> b!21901 m!24051))

(assert (=> b!21901 m!24051))

(declare-fun m!24053 () Bool)

(assert (=> b!21901 m!24053))

(declare-fun m!24055 () Bool)

(assert (=> b!21894 m!24055))

(declare-fun m!24057 () Bool)

(assert (=> d!13047 m!24057))

(declare-fun m!24059 () Bool)

(assert (=> d!13047 m!24059))

(assert (=> b!21898 m!23835))

(declare-fun m!24061 () Bool)

(assert (=> b!21896 m!24061))

(assert (=> b!21896 m!24005))

(assert (=> b!21896 m!24005))

(declare-fun m!24063 () Bool)

(assert (=> b!21896 m!24063))

(declare-fun m!24065 () Bool)

(assert (=> b!21897 m!24065))

(assert (=> b!21897 m!23965))

(assert (=> b!21892 m!24065))

(assert (=> b!21892 m!23965))

(assert (=> b!21902 m!23971))

(declare-fun m!24067 () Bool)

(assert (=> b!21899 m!24067))

(declare-fun m!24069 () Bool)

(assert (=> b!21900 m!24069))

(assert (=> b!21893 m!23873))

(assert (=> b!21904 m!23873))

(declare-fun m!24071 () Bool)

(assert (=> b!21904 m!24071))

(assert (=> b!21904 m!24071))

(declare-fun m!24073 () Bool)

(assert (=> b!21904 m!24073))

(assert (=> b!21718 d!13047))

(declare-fun b!21907 () Bool)

(declare-fun e!11433 () Int)

(declare-fun lt!3496 () Int)

(declare-fun lt!3498 () Int)

(assert (=> b!21907 (= e!11433 (+ 1 (ite (>= lt!3496 lt!3498) lt!3496 lt!3498)))))

(assert (=> b!21907 (= lt!3498 (level!31 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(assert (=> b!21907 (= lt!3496 (level!31 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun d!13049 () Bool)

(declare-fun lt!3497 () Int)

(assert (=> d!13049 (>= lt!3497 0)))

(assert (=> d!13049 (= lt!3497 e!11433)))

(declare-fun c!5245 () Bool)

(assert (=> d!13049 (= c!5245 (or (is-Empty!44 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (is-Single!33 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(assert (=> d!13049 (= (level!31 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) lt!3497)))

(declare-fun b!21906 () Bool)

(assert (=> b!21906 (= e!11433 0)))

(assert (= (and d!13049 c!5245) b!21906))

(assert (= (and d!13049 (not c!5245)) b!21907))

(declare-fun m!24075 () Bool)

(assert (=> b!21907 m!24075))

(declare-fun m!24077 () Bool)

(assert (=> b!21907 m!24077))

(assert (=> d!12981 d!13049))

(assert (=> d!12981 d!13019))

(assert (=> d!12981 d!13029))

(declare-fun b!21911 () Bool)

(declare-fun e!11434 () Bool)

(assert (=> b!21911 (= e!11434 (concInv!32 (right!681 lt!3417)))))

(declare-fun b!21909 () Bool)

(declare-fun res!9602 () Bool)

(assert (=> b!21909 (=> (not res!9602) (not e!11434))))

(assert (=> b!21909 (= res!9602 (not (isEmpty!296 (right!681 lt!3417))))))

(declare-fun d!13051 () Bool)

(declare-fun res!9604 () Bool)

(declare-fun e!11435 () Bool)

(assert (=> d!13051 (=> res!9604 e!11435)))

(assert (=> d!13051 (= res!9604 (not (is-CC!33 lt!3417)))))

(assert (=> d!13051 (= (concInv!32 lt!3417) e!11435)))

(declare-fun b!21910 () Bool)

(declare-fun res!9601 () Bool)

(assert (=> b!21910 (=> (not res!9601) (not e!11434))))

(assert (=> b!21910 (= res!9601 (concInv!32 (left!678 lt!3417)))))

(declare-fun b!21908 () Bool)

(assert (=> b!21908 (= e!11435 e!11434)))

(declare-fun res!9603 () Bool)

(assert (=> b!21908 (=> (not res!9603) (not e!11434))))

(assert (=> b!21908 (= res!9603 (not (isEmpty!296 (left!678 lt!3417))))))

(assert (= (and d!13051 (not res!9604)) b!21908))

(assert (= (and b!21908 res!9603) b!21909))

(assert (= (and b!21909 res!9602) b!21910))

(assert (= (and b!21910 res!9601) b!21911))

(declare-fun m!24079 () Bool)

(assert (=> b!21911 m!24079))

(declare-fun m!24081 () Bool)

(assert (=> b!21909 m!24081))

(declare-fun m!24083 () Bool)

(assert (=> b!21910 m!24083))

(declare-fun m!24085 () Bool)

(assert (=> b!21908 m!24085))

(assert (=> d!12983 d!13051))

(declare-fun b!21915 () Bool)

(declare-fun e!11436 () Bool)

(assert (=> b!21915 (= e!11436 (concInv!32 (right!681 (right!681 xs!604))))))

(declare-fun b!21913 () Bool)

(declare-fun res!9606 () Bool)

(assert (=> b!21913 (=> (not res!9606) (not e!11436))))

(assert (=> b!21913 (= res!9606 (not (isEmpty!296 (right!681 (right!681 xs!604)))))))

(declare-fun d!13053 () Bool)

(declare-fun res!9608 () Bool)

(declare-fun e!11437 () Bool)

(assert (=> d!13053 (=> res!9608 e!11437)))

(assert (=> d!13053 (= res!9608 (not (is-CC!33 (right!681 xs!604))))))

(assert (=> d!13053 (= (concInv!32 (right!681 xs!604)) e!11437)))

(declare-fun b!21914 () Bool)

(declare-fun res!9605 () Bool)

(assert (=> b!21914 (=> (not res!9605) (not e!11436))))

(assert (=> b!21914 (= res!9605 (concInv!32 (left!678 (right!681 xs!604))))))

(declare-fun b!21912 () Bool)

(assert (=> b!21912 (= e!11437 e!11436)))

(declare-fun res!9607 () Bool)

(assert (=> b!21912 (=> (not res!9607) (not e!11436))))

(assert (=> b!21912 (= res!9607 (not (isEmpty!296 (left!678 (right!681 xs!604)))))))

(assert (= (and d!13053 (not res!9608)) b!21912))

(assert (= (and b!21912 res!9607) b!21913))

(assert (= (and b!21913 res!9606) b!21914))

(assert (= (and b!21914 res!9605) b!21915))

(assert (=> b!21915 m!24019))

(assert (=> b!21913 m!24045))

(assert (=> b!21914 m!24059))

(declare-fun m!24087 () Bool)

(assert (=> b!21912 m!24087))

(assert (=> d!12983 d!13053))

(declare-fun b!21918 () Bool)

(declare-fun res!9610 () Bool)

(declare-fun e!11438 () Bool)

(assert (=> b!21918 (=> (not res!9610) (not e!11438))))

(assert (=> b!21918 (= res!9610 (balanced!33 (left!678 (left!678 xs!604))))))

(declare-fun d!13055 () Bool)

(declare-fun res!9609 () Bool)

(declare-fun e!11439 () Bool)

(assert (=> d!13055 (=> res!9609 e!11439)))

(assert (=> d!13055 (= res!9609 (not (is-CC!33 (left!678 xs!604))))))

(assert (=> d!13055 (= (balanced!33 (left!678 xs!604)) e!11439)))

(declare-fun b!21919 () Bool)

(assert (=> b!21919 (= e!11438 (balanced!33 (right!681 (left!678 xs!604))))))

(declare-fun b!21917 () Bool)

(declare-fun res!9611 () Bool)

(assert (=> b!21917 (=> (not res!9611) (not e!11438))))

(assert (=> b!21917 (= res!9611 (<= (- (level!31 (left!678 (left!678 xs!604))) (level!31 (right!681 (left!678 xs!604)))) 1))))

(declare-fun b!21916 () Bool)

(assert (=> b!21916 (= e!11439 e!11438)))

(declare-fun res!9612 () Bool)

(assert (=> b!21916 (=> (not res!9612) (not e!11438))))

(assert (=> b!21916 (= res!9612 (>= (- (level!31 (left!678 (left!678 xs!604))) (level!31 (right!681 (left!678 xs!604)))) (- 1)))))

(assert (= (and d!13055 (not res!9609)) b!21916))

(assert (= (and b!21916 res!9612) b!21917))

(assert (= (and b!21917 res!9611) b!21918))

(assert (= (and b!21918 res!9610) b!21919))

(declare-fun m!24089 () Bool)

(assert (=> b!21918 m!24089))

(declare-fun m!24091 () Bool)

(assert (=> b!21919 m!24091))

(assert (=> b!21917 m!23961))

(assert (=> b!21917 m!23959))

(assert (=> b!21916 m!23961))

(assert (=> b!21916 m!23959))

(assert (=> b!21666 d!13055))

(assert (=> b!21590 d!13021))

(assert (=> b!21590 d!13019))

(assert (=> b!21658 d!13049))

(assert (=> b!21658 d!13019))

(declare-fun b!21921 () Bool)

(declare-fun e!11440 () Int)

(declare-fun lt!3499 () Int)

(declare-fun lt!3501 () Int)

(assert (=> b!21921 (= e!11440 (+ 1 (ite (>= lt!3499 lt!3501) lt!3499 lt!3501)))))

(assert (=> b!21921 (= lt!3501 (level!31 (right!681 lt!3402)))))

(assert (=> b!21921 (= lt!3499 (level!31 (left!678 lt!3402)))))

(declare-fun d!13057 () Bool)

(declare-fun lt!3500 () Int)

(assert (=> d!13057 (>= lt!3500 0)))

(assert (=> d!13057 (= lt!3500 e!11440)))

(declare-fun c!5246 () Bool)

(assert (=> d!13057 (= c!5246 (or (is-Empty!44 lt!3402) (is-Single!33 lt!3402)))))

(assert (=> d!13057 (= (level!31 lt!3402) lt!3500)))

(declare-fun b!21920 () Bool)

(assert (=> b!21920 (= e!11440 0)))

(assert (= (and d!13057 c!5246) b!21920))

(assert (= (and d!13057 (not c!5246)) b!21921))

(assert (=> b!21921 m!23957))

(assert (=> b!21921 m!23955))

(assert (=> b!21658 d!13057))

(declare-fun d!13059 () Bool)

(declare-fun e!11442 () Bool)

(assert (=> d!13059 e!11442))

(declare-fun res!9614 () Bool)

(assert (=> d!13059 (=> res!9614 e!11442)))

(assert (=> d!13059 (= res!9614 (not (is-CC!33 (right!681 xs!604))))))

(declare-fun e!11441 () Bool)

(assert (=> d!13059 e!11441))

(declare-fun res!9613 () Bool)

(assert (=> d!13059 (=> (not res!9613) (not e!11441))))

(assert (=> d!13059 (= res!9613 (>= (- i!298 (size!227 (left!678 xs!604))) 0))))

(assert (=> d!13059 (= (insertAppendAxiomInst!14 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) true)))

(declare-fun b!21922 () Bool)

(assert (=> b!21922 (= e!11441 (<= (- i!298 (size!227 (left!678 xs!604))) (size!227 (right!681 xs!604))))))

(declare-fun b!21923 () Bool)

(assert (=> b!21923 (= e!11442 (appendInsertIndex!13 (toList!99 (left!678 (right!681 xs!604))) (toList!99 (right!681 (right!681 xs!604))) (- i!298 (size!227 (left!678 xs!604))) y!824))))

(assert (= (and d!13059 res!9613) b!21922))

(assert (= (and d!13059 (not res!9614)) b!21923))

(assert (=> b!21922 m!23775))

(assert (=> b!21923 m!24005))

(assert (=> b!21923 m!24007))

(assert (=> b!21923 m!24005))

(assert (=> b!21923 m!24007))

(declare-fun m!24093 () Bool)

(assert (=> b!21923 m!24093))

(assert (=> b!21717 d!13059))

(declare-fun b!21927 () Bool)

(declare-fun e!11443 () Bool)

(assert (=> b!21927 (= e!11443 (concInv!32 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21925 () Bool)

(declare-fun res!9616 () Bool)

(assert (=> b!21925 (=> (not res!9616) (not e!11443))))

(assert (=> b!21925 (= res!9616 (not (isEmpty!296 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun d!13061 () Bool)

(declare-fun res!9618 () Bool)

(declare-fun e!11444 () Bool)

(assert (=> d!13061 (=> res!9618 e!11444)))

(assert (=> d!13061 (= res!9618 (not (is-CC!33 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(assert (=> d!13061 (= (concInv!32 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) e!11444)))

(declare-fun b!21926 () Bool)

(declare-fun res!9615 () Bool)

(assert (=> b!21926 (=> (not res!9615) (not e!11443))))

(assert (=> b!21926 (= res!9615 (concInv!32 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21924 () Bool)

(assert (=> b!21924 (= e!11444 e!11443)))

(declare-fun res!9617 () Bool)

(assert (=> b!21924 (=> (not res!9617) (not e!11443))))

(assert (=> b!21924 (= res!9617 (not (isEmpty!296 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(assert (= (and d!13061 (not res!9618)) b!21924))

(assert (= (and b!21924 res!9617) b!21925))

(assert (= (and b!21925 res!9616) b!21926))

(assert (= (and b!21926 res!9615) b!21927))

(declare-fun m!24095 () Bool)

(assert (=> b!21927 m!24095))

(declare-fun m!24097 () Bool)

(assert (=> b!21925 m!24097))

(declare-fun m!24099 () Bool)

(assert (=> b!21926 m!24099))

(declare-fun m!24101 () Bool)

(assert (=> b!21924 m!24101))

(assert (=> b!21675 d!13061))

(assert (=> b!21667 d!13049))

(assert (=> b!21667 d!13019))

(assert (=> b!21667 d!13057))

(declare-fun b!21938 () Bool)

(declare-fun e!11453 () Bool)

(assert (=> b!21938 (= e!11453 (<= i!298 (+ (size!228 (toList!99 (left!678 xs!604))) (size!228 (toList!99 (right!681 xs!604))))))))

(declare-fun e!11455 () List!339)

(declare-fun b!21939 () Bool)

(assert (=> b!21939 (= e!11455 (++!22 (insertAtIndex!12 (toList!99 (left!678 xs!604)) i!298 y!824) (toList!99 (right!681 xs!604))))))

(declare-fun d!13063 () Bool)

(declare-fun e!11454 () Bool)

(assert (=> d!13063 e!11454))

(declare-fun res!9627 () Bool)

(assert (=> d!13063 (=> (not res!9627) (not e!11454))))

(declare-fun e!11456 () Bool)

(assert (=> d!13063 (= res!9627 e!11456)))

(declare-fun res!9625 () Bool)

(assert (=> d!13063 (=> res!9625 e!11456)))

(assert (=> d!13063 (= res!9625 (or (is-Nil!334 (toList!99 (left!678 xs!604))) (= i!298 0)))))

(assert (=> d!13063 e!11453))

(declare-fun res!9626 () Bool)

(assert (=> d!13063 (=> (not res!9626) (not e!11453))))

(assert (=> d!13063 (= res!9626 (<= 0 i!298))))

(assert (=> d!13063 (= (appendInsertIndex!13 (toList!99 (left!678 xs!604)) (toList!99 (right!681 xs!604)) i!298 y!824) true)))

(declare-fun b!21940 () Bool)

(assert (=> b!21940 (= e!11455 (++!22 (toList!99 (left!678 xs!604)) (insertAtIndex!12 (toList!99 (right!681 xs!604)) (- i!298 (size!228 (toList!99 (left!678 xs!604)))) y!824)))))

(declare-fun b!21941 () Bool)

(assert (=> b!21941 (= e!11454 (= (insertAtIndex!12 (++!22 (toList!99 (left!678 xs!604)) (toList!99 (right!681 xs!604))) i!298 y!824) e!11455))))

(declare-fun c!5249 () Bool)

(assert (=> b!21941 (= c!5249 (< i!298 (size!228 (toList!99 (left!678 xs!604)))))))

(declare-fun b!21942 () Bool)

(assert (=> b!21942 (= e!11456 (appendInsertIndex!13 (t!4334 (toList!99 (left!678 xs!604))) (toList!99 (right!681 xs!604)) (- i!298 1) y!824))))

(assert (= (and d!13063 res!9626) b!21938))

(assert (= (and d!13063 (not res!9625)) b!21942))

(assert (= (and d!13063 res!9627) b!21941))

(assert (= (and b!21941 c!5249) b!21939))

(assert (= (and b!21941 (not c!5249)) b!21940))

(assert (=> b!21942 m!23747))

(declare-fun m!24103 () Bool)

(assert (=> b!21942 m!24103))

(assert (=> b!21938 m!23745))

(declare-fun m!24105 () Bool)

(assert (=> b!21938 m!24105))

(assert (=> b!21938 m!23747))

(declare-fun m!24107 () Bool)

(assert (=> b!21938 m!24107))

(assert (=> b!21939 m!23745))

(declare-fun m!24109 () Bool)

(assert (=> b!21939 m!24109))

(assert (=> b!21939 m!24109))

(assert (=> b!21939 m!23747))

(declare-fun m!24111 () Bool)

(assert (=> b!21939 m!24111))

(assert (=> b!21940 m!23745))

(assert (=> b!21940 m!24105))

(assert (=> b!21940 m!23747))

(declare-fun m!24113 () Bool)

(assert (=> b!21940 m!24113))

(assert (=> b!21940 m!23745))

(assert (=> b!21940 m!24113))

(declare-fun m!24115 () Bool)

(assert (=> b!21940 m!24115))

(assert (=> b!21941 m!23745))

(assert (=> b!21941 m!23747))

(assert (=> b!21941 m!23853))

(assert (=> b!21941 m!23853))

(declare-fun m!24117 () Bool)

(assert (=> b!21941 m!24117))

(assert (=> b!21941 m!23745))

(assert (=> b!21941 m!24105))

(assert (=> b!21558 d!13063))

(declare-fun b!21943 () Bool)

(declare-fun e!11457 () List!339)

(assert (=> b!21943 (= e!11457 Nil!334)))

(declare-fun b!21945 () Bool)

(declare-fun e!11458 () List!339)

(assert (=> b!21945 (= e!11458 (Cons!333 (x!8801 (left!678 xs!604)) Nil!334))))

(declare-fun b!21946 () Bool)

(assert (=> b!21946 (= e!11458 (++!22 (toList!99 (left!678 (left!678 xs!604))) (toList!99 (right!681 (left!678 xs!604)))))))

(declare-fun b!21944 () Bool)

(assert (=> b!21944 (= e!11457 e!11458)))

(declare-fun c!5251 () Bool)

(assert (=> b!21944 (= c!5251 (is-Single!33 (left!678 xs!604)))))

(declare-fun d!13065 () Bool)

(declare-fun lt!3502 () List!339)

(assert (=> d!13065 (= (size!228 lt!3502) (size!227 (left!678 xs!604)))))

(assert (=> d!13065 (= lt!3502 e!11457)))

(declare-fun c!5250 () Bool)

(assert (=> d!13065 (= c!5250 (is-Empty!44 (left!678 xs!604)))))

(assert (=> d!13065 (= (toList!99 (left!678 xs!604)) lt!3502)))

(assert (= (and b!21944 c!5251) b!21945))

(assert (= (and b!21944 (not c!5251)) b!21946))

(assert (= (and d!13065 c!5250) b!21943))

(assert (= (and d!13065 (not c!5250)) b!21944))

(declare-fun m!24119 () Bool)

(assert (=> b!21946 m!24119))

(declare-fun m!24121 () Bool)

(assert (=> b!21946 m!24121))

(assert (=> b!21946 m!24119))

(assert (=> b!21946 m!24121))

(declare-fun m!24123 () Bool)

(assert (=> b!21946 m!24123))

(declare-fun m!24125 () Bool)

(assert (=> d!13065 m!24125))

(assert (=> d!13065 m!23719))

(assert (=> b!21558 d!13065))

(assert (=> b!21558 d!13039))

(declare-fun d!13067 () Bool)

(assert (=> d!13067 (= (isEmpty!296 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (= (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824) Empty!44))))

(assert (=> b!21657 d!13067))

(declare-fun b!21949 () Bool)

(declare-fun res!9629 () Bool)

(declare-fun e!11459 () Bool)

(assert (=> b!21949 (=> (not res!9629) (not e!11459))))

(assert (=> b!21949 (= res!9629 (balanced!33 (left!678 lt!3417)))))

(declare-fun d!13069 () Bool)

(declare-fun res!9628 () Bool)

(declare-fun e!11460 () Bool)

(assert (=> d!13069 (=> res!9628 e!11460)))

(assert (=> d!13069 (= res!9628 (not (is-CC!33 lt!3417)))))

(assert (=> d!13069 (= (balanced!33 lt!3417) e!11460)))

(declare-fun b!21950 () Bool)

(assert (=> b!21950 (= e!11459 (balanced!33 (right!681 lt!3417)))))

(declare-fun b!21948 () Bool)

(declare-fun res!9630 () Bool)

(assert (=> b!21948 (=> (not res!9630) (not e!11459))))

(assert (=> b!21948 (= res!9630 (<= (- (level!31 (left!678 lt!3417)) (level!31 (right!681 lt!3417))) 1))))

(declare-fun b!21947 () Bool)

(assert (=> b!21947 (= e!11460 e!11459)))

(declare-fun res!9631 () Bool)

(assert (=> b!21947 (=> (not res!9631) (not e!11459))))

(assert (=> b!21947 (= res!9631 (>= (- (level!31 (left!678 lt!3417)) (level!31 (right!681 lt!3417))) (- 1)))))

(assert (= (and d!13069 (not res!9628)) b!21947))

(assert (= (and b!21947 res!9631) b!21948))

(assert (= (and b!21948 res!9630) b!21949))

(assert (= (and b!21949 res!9629) b!21950))

(declare-fun m!24127 () Bool)

(assert (=> b!21949 m!24127))

(declare-fun m!24129 () Bool)

(assert (=> b!21950 m!24129))

(assert (=> b!21948 m!24017))

(assert (=> b!21948 m!24015))

(assert (=> b!21947 m!24017))

(assert (=> b!21947 m!24015))

(assert (=> b!21716 d!13069))

(declare-fun b!21969 () Bool)

(declare-fun e!11483 () Bool)

(declare-fun appendAssoc!5 (List!339 List!339 List!339) Bool)

(assert (=> b!21969 (= e!11483 (appendAssoc!5 (++!22 (toList!99 (left!678 xs!604)) (toList!99 (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))) (toList!99 (right!681 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (toList!99 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun b!21970 () Bool)

(declare-fun e!11487 () Bool)

(declare-fun e!11486 () Bool)

(assert (=> b!21970 (= e!11487 e!11486)))

(declare-fun res!9652 () Bool)

(assert (=> b!21970 (=> (not res!9652) (not e!11486))))

(assert (=> b!21970 (= res!9652 (appendAssoc!5 (toList!99 (left!678 (right!681 (left!678 xs!604)))) (toList!99 (right!681 (right!681 (left!678 xs!604)))) (toList!99 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21971 () Bool)

(declare-fun e!11485 () Bool)

(assert (=> b!21971 (= e!11485 e!11483)))

(declare-fun res!9657 () Bool)

(assert (=> b!21971 (=> (not res!9657) (not e!11483))))

(assert (=> b!21971 (= res!9657 (appendAssoc!5 (toList!99 (left!678 xs!604)) (toList!99 (left!678 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (toList!99 (right!681 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))))

(declare-fun b!21972 () Bool)

(assert (=> b!21972 (= e!11486 (appendAssoc!5 (toList!99 (left!678 (left!678 xs!604))) (toList!99 (left!678 (right!681 (left!678 xs!604)))) (++!22 (toList!99 (right!681 (right!681 (left!678 xs!604)))) (toList!99 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun b!21973 () Bool)

(declare-fun e!11479 () Bool)

(declare-fun e!11484 () Bool)

(assert (=> b!21973 (= e!11479 e!11484)))

(declare-fun res!9654 () Bool)

(assert (=> b!21973 (=> (not res!9654) (not e!11484))))

(assert (=> b!21973 (= res!9654 (appendAssoc!5 (toList!99 (left!678 xs!604)) (toList!99 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (toList!99 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun d!13071 () Bool)

(declare-fun e!11480 () Bool)

(assert (=> d!13071 e!11480))

(declare-fun res!9651 () Bool)

(assert (=> d!13071 (=> (not res!9651) (not e!11480))))

(declare-fun e!11482 () Bool)

(assert (=> d!13071 (= res!9651 e!11482)))

(declare-fun res!9653 () Bool)

(assert (=> d!13071 (=> res!9653 e!11482)))

(assert (=> d!13071 (= res!9653 (not (is-CC!33 (left!678 xs!604))))))

(assert (=> d!13071 (= (appendAssocInst!8 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) true)))

(declare-fun b!21974 () Bool)

(assert (=> b!21974 (= e!11484 e!11485)))

(declare-fun res!9655 () Bool)

(assert (=> b!21974 (=> res!9655 e!11485)))

(assert (=> b!21974 (= res!9655 (not (is-CC!33 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun b!21975 () Bool)

(declare-fun e!11481 () Bool)

(assert (=> b!21975 (= e!11482 e!11481)))

(declare-fun res!9658 () Bool)

(assert (=> b!21975 (=> (not res!9658) (not e!11481))))

(assert (=> b!21975 (= res!9658 (appendAssoc!5 (toList!99 (left!678 (left!678 xs!604))) (toList!99 (right!681 (left!678 xs!604))) (toList!99 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21976 () Bool)

(assert (=> b!21976 (= e!11480 e!11479)))

(declare-fun res!9650 () Bool)

(assert (=> b!21976 (=> res!9650 e!11479)))

(assert (=> b!21976 (= res!9650 (not (is-CC!33 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!21977 () Bool)

(assert (=> b!21977 (= e!11481 e!11487)))

(declare-fun res!9656 () Bool)

(assert (=> b!21977 (=> res!9656 e!11487)))

(assert (=> b!21977 (= res!9656 (not (is-CC!33 (right!681 (left!678 xs!604)))))))

(assert (= (and d!13071 (not res!9653)) b!21975))

(assert (= (and b!21975 res!9658) b!21977))

(assert (= (and b!21977 (not res!9656)) b!21970))

(assert (= (and b!21970 res!9652) b!21972))

(assert (= (and d!13071 res!9651) b!21976))

(assert (= (and b!21976 (not res!9650)) b!21973))

(assert (= (and b!21973 res!9654) b!21974))

(assert (= (and b!21974 (not res!9655)) b!21971))

(assert (= (and b!21971 res!9657) b!21969))

(assert (=> b!21975 m!24119))

(assert (=> b!21975 m!24121))

(assert (=> b!21975 m!23721))

(declare-fun m!24131 () Bool)

(assert (=> b!21975 m!24131))

(assert (=> b!21975 m!24119))

(assert (=> b!21975 m!24121))

(assert (=> b!21975 m!24131))

(declare-fun m!24133 () Bool)

(assert (=> b!21975 m!24133))

(assert (=> b!21971 m!23745))

(declare-fun m!24135 () Bool)

(assert (=> b!21971 m!24135))

(declare-fun m!24137 () Bool)

(assert (=> b!21971 m!24137))

(assert (=> b!21971 m!23745))

(assert (=> b!21971 m!24135))

(assert (=> b!21971 m!24137))

(declare-fun m!24139 () Bool)

(assert (=> b!21971 m!24139))

(declare-fun m!24141 () Bool)

(assert (=> b!21972 m!24141))

(assert (=> b!21972 m!24119))

(declare-fun m!24143 () Bool)

(assert (=> b!21972 m!24143))

(assert (=> b!21972 m!24119))

(assert (=> b!21972 m!24143))

(declare-fun m!24145 () Bool)

(assert (=> b!21972 m!24145))

(declare-fun m!24147 () Bool)

(assert (=> b!21972 m!24147))

(assert (=> b!21972 m!23721))

(assert (=> b!21972 m!24131))

(assert (=> b!21972 m!24141))

(assert (=> b!21972 m!24131))

(assert (=> b!21972 m!24145))

(assert (=> b!21970 m!24143))

(assert (=> b!21970 m!24141))

(assert (=> b!21970 m!23721))

(assert (=> b!21970 m!24131))

(assert (=> b!21970 m!24143))

(assert (=> b!21970 m!24141))

(assert (=> b!21970 m!24131))

(declare-fun m!24149 () Bool)

(assert (=> b!21970 m!24149))

(assert (=> b!21973 m!23745))

(declare-fun m!24151 () Bool)

(assert (=> b!21973 m!24151))

(declare-fun m!24153 () Bool)

(assert (=> b!21973 m!24153))

(assert (=> b!21973 m!23745))

(assert (=> b!21973 m!24151))

(assert (=> b!21973 m!24153))

(declare-fun m!24155 () Bool)

(assert (=> b!21973 m!24155))

(assert (=> b!21969 m!24135))

(assert (=> b!21969 m!24137))

(assert (=> b!21969 m!23745))

(assert (=> b!21969 m!24135))

(declare-fun m!24157 () Bool)

(assert (=> b!21969 m!24157))

(assert (=> b!21969 m!24157))

(assert (=> b!21969 m!24137))

(assert (=> b!21969 m!24153))

(declare-fun m!24159 () Bool)

(assert (=> b!21969 m!24159))

(assert (=> b!21969 m!23745))

(assert (=> b!21969 m!24153))

(assert (=> b!21673 d!13071))

(declare-fun d!13073 () Bool)

(declare-fun lt!3503 () Int)

(assert (=> d!13073 (>= lt!3503 0)))

(declare-fun e!11488 () Int)

(assert (=> d!13073 (= lt!3503 e!11488)))

(declare-fun c!5252 () Bool)

(assert (=> d!13073 (= c!5252 (is-Nil!334 lt!3420))))

(assert (=> d!13073 (= (size!228 lt!3420) lt!3503)))

(declare-fun b!21978 () Bool)

(assert (=> b!21978 (= e!11488 0)))

(declare-fun b!21979 () Bool)

(assert (=> b!21979 (= e!11488 (+ 1 (size!228 (t!4334 lt!3420))))))

(assert (= (and d!13073 c!5252) b!21978))

(assert (= (and d!13073 (not c!5252)) b!21979))

(declare-fun m!24161 () Bool)

(assert (=> b!21979 m!24161))

(assert (=> d!12985 d!13073))

(declare-fun b!21980 () Bool)

(declare-fun e!11490 () Int)

(assert (=> b!21980 (= e!11490 0)))

(declare-fun b!21983 () Bool)

(declare-fun e!11489 () Int)

(assert (=> b!21983 (= e!11489 (+ (size!227 (left!678 res!5614)) (size!227 (right!681 res!5614))))))

(declare-fun b!21982 () Bool)

(assert (=> b!21982 (= e!11489 1)))

(declare-fun b!21981 () Bool)

(assert (=> b!21981 (= e!11490 e!11489)))

(declare-fun c!5254 () Bool)

(assert (=> b!21981 (= c!5254 (is-Single!33 res!5614))))

(declare-fun d!13075 () Bool)

(declare-fun lt!3504 () Int)

(assert (=> d!13075 (>= lt!3504 0)))

(assert (=> d!13075 (= lt!3504 e!11490)))

(declare-fun c!5253 () Bool)

(assert (=> d!13075 (= c!5253 (is-Empty!44 res!5614))))

(assert (=> d!13075 (= (size!227 res!5614) lt!3504)))

(assert (= (and b!21981 c!5254) b!21982))

(assert (= (and b!21981 (not c!5254)) b!21983))

(assert (= (and d!13075 c!5253) b!21980))

(assert (= (and d!13075 (not c!5253)) b!21981))

(assert (=> b!21983 m!23935))

(assert (=> b!21983 m!23945))

(assert (=> d!12985 d!13075))

(declare-fun b!21986 () Bool)

(declare-fun res!9660 () Bool)

(declare-fun e!11491 () Bool)

(assert (=> b!21986 (=> (not res!9660) (not e!11491))))

(assert (=> b!21986 (= res!9660 (balanced!33 (left!678 (left!678 res!5614))))))

(declare-fun d!13077 () Bool)

(declare-fun res!9659 () Bool)

(declare-fun e!11492 () Bool)

(assert (=> d!13077 (=> res!9659 e!11492)))

(assert (=> d!13077 (= res!9659 (not (is-CC!33 (left!678 res!5614))))))

(assert (=> d!13077 (= (balanced!33 (left!678 res!5614)) e!11492)))

(declare-fun b!21987 () Bool)

(assert (=> b!21987 (= e!11491 (balanced!33 (right!681 (left!678 res!5614))))))

(declare-fun b!21985 () Bool)

(declare-fun res!9661 () Bool)

(assert (=> b!21985 (=> (not res!9661) (not e!11491))))

(assert (=> b!21985 (= res!9661 (<= (- (level!31 (left!678 (left!678 res!5614))) (level!31 (right!681 (left!678 res!5614)))) 1))))

(declare-fun b!21984 () Bool)

(assert (=> b!21984 (= e!11492 e!11491)))

(declare-fun res!9662 () Bool)

(assert (=> b!21984 (=> (not res!9662) (not e!11491))))

(assert (=> b!21984 (= res!9662 (>= (- (level!31 (left!678 (left!678 res!5614))) (level!31 (right!681 (left!678 res!5614)))) (- 1)))))

(assert (= (and d!13077 (not res!9659)) b!21984))

(assert (= (and b!21984 res!9662) b!21985))

(assert (= (and b!21985 res!9661) b!21986))

(assert (= (and b!21986 res!9660) b!21987))

(declare-fun m!24163 () Bool)

(assert (=> b!21986 m!24163))

(declare-fun m!24165 () Bool)

(assert (=> b!21987 m!24165))

(assert (=> b!21985 m!23859))

(assert (=> b!21985 m!23857))

(assert (=> b!21984 m!23859))

(assert (=> b!21984 m!23857))

(assert (=> b!21593 d!13077))

(declare-fun d!13079 () Bool)

(assert (=> d!13079 (= (isEmpty!296 (left!678 res!5614)) (= (left!678 res!5614) Empty!44))))

(assert (=> b!21567 d!13079))

(declare-fun b!21991 () Bool)

(declare-fun e!11493 () Bool)

(assert (=> b!21991 (= e!11493 (concInv!32 (right!681 (left!678 res!5614))))))

(declare-fun b!21989 () Bool)

(declare-fun res!9664 () Bool)

(assert (=> b!21989 (=> (not res!9664) (not e!11493))))

(assert (=> b!21989 (= res!9664 (not (isEmpty!296 (right!681 (left!678 res!5614)))))))

(declare-fun d!13081 () Bool)

(declare-fun res!9666 () Bool)

(declare-fun e!11494 () Bool)

(assert (=> d!13081 (=> res!9666 e!11494)))

(assert (=> d!13081 (= res!9666 (not (is-CC!33 (left!678 res!5614))))))

(assert (=> d!13081 (= (concInv!32 (left!678 res!5614)) e!11494)))

(declare-fun b!21990 () Bool)

(declare-fun res!9663 () Bool)

(assert (=> b!21990 (=> (not res!9663) (not e!11493))))

(assert (=> b!21990 (= res!9663 (concInv!32 (left!678 (left!678 res!5614))))))

(declare-fun b!21988 () Bool)

(assert (=> b!21988 (= e!11494 e!11493)))

(declare-fun res!9665 () Bool)

(assert (=> b!21988 (=> (not res!9665) (not e!11493))))

(assert (=> b!21988 (= res!9665 (not (isEmpty!296 (left!678 (left!678 res!5614)))))))

(assert (= (and d!13081 (not res!9666)) b!21988))

(assert (= (and b!21988 res!9665) b!21989))

(assert (= (and b!21989 res!9664) b!21990))

(assert (= (and b!21990 res!9663) b!21991))

(declare-fun m!24167 () Bool)

(assert (=> b!21991 m!24167))

(declare-fun m!24169 () Bool)

(assert (=> b!21989 m!24169))

(declare-fun m!24171 () Bool)

(assert (=> b!21990 m!24171))

(declare-fun m!24173 () Bool)

(assert (=> b!21988 m!24173))

(assert (=> b!21569 d!13081))

(assert (=> b!21715 d!13027))

(assert (=> b!21714 d!13043))

(assert (=> b!21714 d!13021))

(declare-fun b!21994 () Bool)

(declare-fun res!9668 () Bool)

(declare-fun e!11495 () Bool)

(assert (=> b!21994 (=> (not res!9668) (not e!11495))))

(assert (=> b!21994 (= res!9668 (balanced!33 (left!678 (right!681 res!5614))))))

(declare-fun d!13083 () Bool)

(declare-fun res!9667 () Bool)

(declare-fun e!11496 () Bool)

(assert (=> d!13083 (=> res!9667 e!11496)))

(assert (=> d!13083 (= res!9667 (not (is-CC!33 (right!681 res!5614))))))

(assert (=> d!13083 (= (balanced!33 (right!681 res!5614)) e!11496)))

(declare-fun b!21995 () Bool)

(assert (=> b!21995 (= e!11495 (balanced!33 (right!681 (right!681 res!5614))))))

(declare-fun b!21993 () Bool)

(declare-fun res!9669 () Bool)

(assert (=> b!21993 (=> (not res!9669) (not e!11495))))

(assert (=> b!21993 (= res!9669 (<= (- (level!31 (left!678 (right!681 res!5614))) (level!31 (right!681 (right!681 res!5614)))) 1))))

(declare-fun b!21992 () Bool)

(assert (=> b!21992 (= e!11496 e!11495)))

(declare-fun res!9670 () Bool)

(assert (=> b!21992 (=> (not res!9670) (not e!11495))))

(assert (=> b!21992 (= res!9670 (>= (- (level!31 (left!678 (right!681 res!5614))) (level!31 (right!681 (right!681 res!5614)))) (- 1)))))

(assert (= (and d!13083 (not res!9667)) b!21992))

(assert (= (and b!21992 res!9670) b!21993))

(assert (= (and b!21993 res!9669) b!21994))

(assert (= (and b!21994 res!9668) b!21995))

(declare-fun m!24175 () Bool)

(assert (=> b!21994 m!24175))

(declare-fun m!24177 () Bool)

(assert (=> b!21995 m!24177))

(assert (=> b!21993 m!23863))

(assert (=> b!21993 m!23861))

(assert (=> b!21992 m!23863))

(assert (=> b!21992 m!23861))

(assert (=> b!21594 d!13083))

(declare-fun e!11499 () Bool)

(declare-fun b!21996 () Bool)

(assert (=> b!21996 (= e!11499 (not (isEmpty!296 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824))))))

(declare-fun b!21997 () Bool)

(declare-fun e!11502 () Bool)

(declare-fun e!11505 () Bool)

(assert (=> b!21997 (= e!11502 e!11505)))

(declare-fun res!9676 () Bool)

(assert (=> b!21997 (=> (not res!9676) (not e!11505))))

(declare-fun lt!3506 () Int)

(declare-fun lt!3517 () Int)

(declare-fun lt!3520 () Int)

(assert (=> b!21997 (= res!9676 (<= lt!3517 (+ (ite (>= lt!3506 lt!3520) lt!3506 lt!3520) 1)))))

(assert (=> b!21997 (= lt!3520 (level!31 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(assert (=> b!21997 (= lt!3506 (level!31 (left!678 (right!681 xs!604))))))

(declare-fun lt!3508 () Conc!34)

(assert (=> b!21997 (= lt!3517 (level!31 lt!3508))))

(declare-fun b!21998 () Bool)

(declare-fun e!11497 () Int)

(declare-fun lt!3510 () Conc!34)

(assert (=> b!21998 (= e!11497 (level!31 lt!3510))))

(declare-fun b!21999 () Bool)

(declare-fun res!9673 () Bool)

(assert (=> b!21999 (=> (not res!9673) (not e!11499))))

(assert (=> b!21999 (= res!9673 (balanced!33 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!22000 () Bool)

(declare-fun res!9671 () Bool)

(assert (=> b!22000 (=> (not res!9671) (not e!11499))))

(assert (=> b!22000 (= res!9671 (not (isEmpty!296 (left!678 (right!681 xs!604)))))))

(declare-fun b!22001 () Bool)

(declare-fun res!9678 () Int)

(assert (=> b!22001 (= e!11497 res!9678)))

(assert (=> b!22001 true))

(declare-fun b!22002 () Bool)

(declare-fun e!11504 () Conc!34)

(declare-fun res!9677 () Conc!34)

(assert (=> b!22002 (= e!11504 res!9677)))

(assert (=> b!22002 true))

(declare-fun e!11498 () Bool)

(assert (=> b!22002 e!11498))

(declare-fun b!22003 () Bool)

(assert (=> b!22003 (= e!11498 tp_is_empty!103)))

(declare-fun b!22004 () Bool)

(assert (=> b!22004 (= e!11505 (concatCorrectness!6 lt!3508 (left!678 (right!681 xs!604)) (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!22005 () Bool)

(declare-fun e!11501 () Bool)

(assert (=> b!22005 (= e!11501 (balanced!33 (left!678 (right!681 xs!604))))))

(declare-fun b!22006 () Bool)

(declare-fun res!9674 () Bool)

(assert (=> b!22006 (=> (not res!9674) (not e!11505))))

(declare-fun lt!3514 () Int)

(declare-fun lt!3507 () Int)

(declare-fun lt!3509 () Int)

(assert (=> b!22006 (= res!9674 (>= lt!3509 (ite (>= lt!3507 lt!3514) lt!3507 lt!3514)))))

(assert (=> b!22006 (= lt!3514 (level!31 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(assert (=> b!22006 (= lt!3507 (level!31 (left!678 (right!681 xs!604))))))

(assert (=> b!22006 (= lt!3509 (level!31 lt!3508))))

(declare-fun e!11503 () Int)

(declare-fun b!22007 () Bool)

(declare-fun lt!3505 () Bool)

(assert (=> b!22007 (= e!11503 (level!31 (ite lt!3505 (left!678 (right!681 xs!604)) (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824))))))

(declare-fun b!22008 () Bool)

(declare-fun tp!4832 () Bool)

(declare-fun tp!4831 () Bool)

(assert (=> b!22008 (= e!11498 (and tp!4832 tp!4831))))

(declare-fun e!11500 () Conc!34)

(declare-fun lt!3519 () Int)

(declare-fun lt!3515 () Bool)

(declare-fun b!22009 () Bool)

(declare-fun lt!3512 () Int)

(declare-fun lt!3511 () Int)

(declare-fun lt!3516 () Int)

(assert (=> b!22009 (= e!11500 (ite lt!3515 (let ((res!9451 lt!3510)) (ite (>= lt!3512 lt!3519) (CC!33 (left!678 (left!678 (right!681 xs!604))) res!9451) (ite (= lt!3516 (- lt!3511 3)) (CC!33 (left!678 (left!678 (right!681 xs!604))) (CC!33 (left!678 (right!681 (left!678 (right!681 xs!604)))) res!9451)) (CC!33 (CC!33 (left!678 (left!678 (right!681 xs!604))) (left!678 (right!681 (left!678 (right!681 xs!604))))) res!9451)))) (let ((res!9454 lt!3510)) (ite (>= lt!3512 lt!3519) (CC!33 res!9454 (right!681 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824))) (ite (= lt!3516 (- lt!3511 3)) (CC!33 (CC!33 res!9454 (right!681 (left!678 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))) (right!681 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824))) (CC!33 res!9454 (CC!33 (right!681 (left!678 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824))) (right!681 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))))))))

(assert (=> b!22009 (= lt!3511 e!11503)))

(declare-fun c!5256 () Bool)

(assert (=> b!22009 (= c!5256 (or lt!3505 (and (not lt!3515) (not (>= lt!3512 lt!3519)))))))

(assert (=> b!22009 (= lt!3505 (and lt!3515 (not (>= lt!3512 lt!3519))))))

(assert (=> b!22009 (= lt!3516 e!11497)))

(declare-fun c!5258 () Bool)

(assert (=> b!22009 (= c!5258 (or (and lt!3515 (not (>= lt!3512 lt!3519))) (and (not lt!3515) (not (>= lt!3512 lt!3519)))))))

(assert (=> b!22009 (= lt!3510 e!11504)))

(declare-fun c!5255 () Bool)

(declare-fun lt!3518 () Bool)

(assert (=> b!22009 (= c!5255 (or lt!3518 (not lt!3515)))))

(assert (=> b!22009 (= lt!3518 lt!3515)))

(assert (=> b!22009 (= lt!3519 (level!31 (ite lt!3515 (right!681 (left!678 (right!681 xs!604))) (left!678 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))))

(assert (=> b!22009 (= lt!3512 (level!31 (ite lt!3515 (left!678 (left!678 (right!681 xs!604))) (right!681 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))))

(declare-fun lt!3513 () Int)

(assert (=> b!22009 (= lt!3515 (< lt!3513 (- 1)))))

(declare-fun b!22010 () Bool)

(declare-fun res!9682 () Int)

(assert (=> b!22010 (= e!11503 res!9682)))

(assert (=> b!22010 true))

(assert (=> b!22010 true))

(declare-fun b!22011 () Bool)

(declare-fun res!9684 () Bool)

(assert (=> b!22011 (=> (not res!9684) (not e!11505))))

(assert (=> b!22011 (= res!9684 (balanced!33 lt!3508))))

(declare-fun d!13085 () Bool)

(assert (=> d!13085 e!11502))

(declare-fun res!9680 () Bool)

(assert (=> d!13085 (=> (not res!9680) (not e!11502))))

(assert (=> d!13085 (= res!9680 (is-CC!33 lt!3508))))

(assert (=> d!13085 (= lt!3508 e!11500)))

(declare-fun c!5257 () Bool)

(assert (=> d!13085 (= c!5257 (and (>= lt!3513 (- 1)) (<= lt!3513 1)))))

(assert (=> d!13085 (= lt!3513 (- (level!31 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)) (level!31 (left!678 (right!681 xs!604)))))))

(assert (=> d!13085 e!11499))

(declare-fun res!9683 () Bool)

(assert (=> d!13085 (=> (not res!9683) (not e!11499))))

(assert (=> d!13085 (= res!9683 e!11501)))

(declare-fun res!9679 () Bool)

(assert (=> d!13085 (=> (not res!9679) (not e!11501))))

(assert (=> d!13085 (= res!9679 (concInv!32 (left!678 (right!681 xs!604))))))

(assert (=> d!13085 (= (concatNonEmpty!12 (left!678 (right!681 xs!604)) (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)) lt!3508)))

(declare-fun b!22012 () Bool)

(declare-fun res!9672 () Bool)

(assert (=> b!22012 (=> (not res!9672) (not e!11505))))

(assert (=> b!22012 (= res!9672 (appendAssocInst!8 (left!678 (right!681 xs!604)) (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!22013 () Bool)

(declare-fun res!9681 () Bool)

(assert (=> b!22013 (=> (not res!9681) (not e!11505))))

(assert (=> b!22013 (= res!9681 (concInv!32 lt!3508))))

(declare-fun b!22014 () Bool)

(declare-fun res!9675 () Bool)

(assert (=> b!22014 (=> (not res!9675) (not e!11499))))

(assert (=> b!22014 (= res!9675 (concInv!32 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!22015 () Bool)

(assert (=> b!22015 (= e!11500 (CC!33 (left!678 (right!681 xs!604)) (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!22016 () Bool)

(assert (=> b!22016 (= e!11504 (concatNonEmpty!12 (ite lt!3518 (ite (>= lt!3512 lt!3519) (right!681 (left!678 (right!681 xs!604))) (right!681 (right!681 (left!678 (right!681 xs!604))))) (left!678 (right!681 xs!604))) (ite lt!3518 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824) (ite (>= lt!3512 lt!3519) (left!678 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)) (left!678 (left!678 (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))))))

(assert (= (and d!13085 res!9679) b!22005))

(assert (= (and d!13085 res!9683) b!22014))

(assert (= (and b!22014 res!9675) b!21999))

(assert (= (and b!21999 res!9673) b!22000))

(assert (= (and b!22000 res!9671) b!21996))

(assert (= (and b!22002 (is-CC!33 res!9677)) b!22008))

(assert (= (and b!22002 (is-Single!33 res!9677)) b!22003))

(assert (= (and b!22009 c!5255) b!22016))

(assert (= (and b!22009 (not c!5255)) b!22002))

(assert (= (and b!22009 c!5258) b!21998))

(assert (= (and b!22009 (not c!5258)) b!22001))

(assert (= (and b!22009 c!5256) b!22007))

(assert (= (and b!22009 (not c!5256)) b!22010))

(assert (= (and d!13085 c!5257) b!22015))

(assert (= (and d!13085 (not c!5257)) b!22009))

(assert (= (and d!13085 res!9680) b!21997))

(assert (= (and b!21997 res!9676) b!22006))

(assert (= (and b!22006 res!9674) b!22013))

(assert (= (and b!22013 res!9681) b!22011))

(assert (= (and b!22011 res!9684) b!22012))

(assert (= (and b!22012 res!9672) b!22004))

(assert (=> b!22014 m!23837))

(declare-fun m!24179 () Bool)

(assert (=> b!22014 m!24179))

(assert (=> b!22006 m!23837))

(declare-fun m!24181 () Bool)

(assert (=> b!22006 m!24181))

(assert (=> b!22006 m!23965))

(declare-fun m!24183 () Bool)

(assert (=> b!22006 m!24183))

(assert (=> b!22012 m!23837))

(declare-fun m!24185 () Bool)

(assert (=> b!22012 m!24185))

(assert (=> d!13085 m!23837))

(assert (=> d!13085 m!24181))

(assert (=> d!13085 m!23965))

(assert (=> d!13085 m!24059))

(assert (=> b!21999 m!23837))

(declare-fun m!24187 () Bool)

(assert (=> b!21999 m!24187))

(declare-fun m!24189 () Bool)

(assert (=> b!22016 m!24189))

(declare-fun m!24191 () Bool)

(assert (=> b!22007 m!24191))

(declare-fun m!24193 () Bool)

(assert (=> b!21998 m!24193))

(assert (=> b!22000 m!24087))

(declare-fun m!24195 () Bool)

(assert (=> b!22013 m!24195))

(assert (=> b!22004 m!23837))

(declare-fun m!24197 () Bool)

(assert (=> b!22004 m!24197))

(assert (=> b!22005 m!23971))

(declare-fun m!24199 () Bool)

(assert (=> b!22011 m!24199))

(assert (=> b!21997 m!23837))

(assert (=> b!21997 m!24181))

(assert (=> b!21997 m!23965))

(assert (=> b!21997 m!24183))

(assert (=> b!21996 m!23837))

(declare-fun m!24201 () Bool)

(assert (=> b!21996 m!24201))

(declare-fun m!24203 () Bool)

(assert (=> b!22009 m!24203))

(declare-fun m!24205 () Bool)

(assert (=> b!22009 m!24205))

(assert (=> b!21721 d!13085))

(declare-fun b!22017 () Bool)

(declare-fun e!11510 () Conc!34)

(declare-fun e!11506 () Conc!34)

(assert (=> b!22017 (= e!11510 e!11506)))

(declare-fun c!5261 () Bool)

(assert (=> b!22017 (= c!5261 (is-Single!33 (right!681 (right!681 xs!604))))))

(declare-fun b!22018 () Bool)

(declare-fun res!9686 () Bool)

(declare-fun e!11509 () Bool)

(assert (=> b!22018 (=> (not res!9686) (not e!11509))))

(declare-fun lt!3521 () Conc!34)

(assert (=> b!22018 (= res!9686 (<= (- (level!31 lt!3521) (level!31 (right!681 (right!681 xs!604)))) 1))))

(declare-fun b!22019 () Bool)

(declare-fun e!11512 () Conc!34)

(assert (=> b!22019 (= e!11506 e!11512)))

(declare-fun c!5259 () Bool)

(assert (=> b!22019 (= c!5259 (< (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) (size!227 (left!678 (right!681 (right!681 xs!604))))))))

(declare-fun b!22020 () Bool)

(declare-fun res!9690 () Bool)

(assert (=> b!22020 (=> (not res!9690) (not e!11509))))

(assert (=> b!22020 (= res!9690 (not (isEmpty!296 lt!3521)))))

(declare-fun d!13087 () Bool)

(assert (=> d!13087 e!11509))

(declare-fun res!9688 () Bool)

(assert (=> d!13087 (=> (not res!9688) (not e!11509))))

(declare-fun e!11507 () Bool)

(assert (=> d!13087 (= res!9688 e!11507)))

(declare-fun res!9693 () Bool)

(assert (=> d!13087 (=> (not res!9693) (not e!11507))))

(assert (=> d!13087 (= res!9693 (concInv!32 lt!3521))))

(assert (=> d!13087 (= lt!3521 e!11510)))

(declare-fun c!5260 () Bool)

(assert (=> d!13087 (= c!5260 (is-Empty!44 (right!681 (right!681 xs!604))))))

(declare-fun e!11508 () Bool)

(assert (=> d!13087 e!11508))

(declare-fun res!9691 () Bool)

(assert (=> d!13087 (=> (not res!9691) (not e!11508))))

(declare-fun e!11511 () Bool)

(assert (=> d!13087 (= res!9691 e!11511)))

(declare-fun res!9687 () Bool)

(assert (=> d!13087 (=> (not res!9687) (not e!11511))))

(assert (=> d!13087 (= res!9687 (concInv!32 (right!681 (right!681 xs!604))))))

(assert (=> d!13087 (= (insert!21 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824) lt!3521)))

(declare-fun b!22021 () Bool)

(assert (=> b!22021 (= e!11506 (ite (= (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) 0) (CC!33 (Single!33 y!824) (right!681 (right!681 xs!604))) (CC!33 (right!681 (right!681 xs!604)) (Single!33 y!824))))))

(declare-fun b!22022 () Bool)

(assert (=> b!22022 (= e!11509 (= (toList!99 lt!3521) (insertAtIndex!12 (toList!99 (right!681 (right!681 xs!604))) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824)))))

(declare-fun b!22023 () Bool)

(declare-fun res!9689 () Bool)

(assert (=> b!22023 (=> (not res!9689) (not e!11509))))

(assert (=> b!22023 (= res!9689 (>= (level!31 lt!3521) (level!31 (right!681 (right!681 xs!604)))))))

(declare-fun b!22024 () Bool)

(assert (=> b!22024 (= e!11508 (<= (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) (size!227 (right!681 (right!681 xs!604)))))))

(declare-fun b!22025 () Bool)

(assert (=> b!22025 (= e!11507 (balanced!33 lt!3521))))

(declare-fun b!22026 () Bool)

(declare-fun res!9692 () Bool)

(assert (=> b!22026 (=> (not res!9692) (not e!11509))))

(assert (=> b!22026 (= res!9692 (insertAppendAxiomInst!14 (right!681 (right!681 xs!604)) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824))))

(declare-fun b!22027 () Bool)

(assert (=> b!22027 (= e!11512 (concatNonEmpty!12 (insert!21 (left!678 (right!681 (right!681 xs!604))) (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) y!824) (right!681 (right!681 (right!681 xs!604)))))))

(declare-fun b!22028 () Bool)

(assert (=> b!22028 (= e!11511 (balanced!33 (right!681 (right!681 xs!604))))))

(declare-fun b!22029 () Bool)

(declare-fun res!9685 () Bool)

(assert (=> b!22029 (=> (not res!9685) (not e!11508))))

(assert (=> b!22029 (= res!9685 (>= (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) 0))))

(declare-fun b!22030 () Bool)

(assert (=> b!22030 (= e!11512 (concatNonEmpty!12 (left!678 (right!681 (right!681 xs!604))) (insert!21 (right!681 (right!681 (right!681 xs!604))) (- (- (- i!298 (size!227 (left!678 xs!604))) (size!227 (left!678 (right!681 xs!604)))) (size!227 (left!678 (right!681 (right!681 xs!604))))) y!824)))))

(declare-fun b!22031 () Bool)

(assert (=> b!22031 (= e!11510 (Single!33 y!824))))

(assert (= (and d!13087 res!9687) b!22028))

(assert (= (and d!13087 res!9691) b!22029))

(assert (= (and b!22029 res!9685) b!22024))

(assert (= (and b!22019 c!5259) b!22027))

(assert (= (and b!22019 (not c!5259)) b!22030))

(assert (= (and b!22017 c!5261) b!22021))

(assert (= (and b!22017 (not c!5261)) b!22019))

(assert (= (and d!13087 c!5260) b!22031))

(assert (= (and d!13087 (not c!5260)) b!22017))

(assert (= (and d!13087 res!9693) b!22025))

(assert (= (and d!13087 res!9688) b!22018))

(assert (= (and b!22018 res!9686) b!22023))

(assert (= (and b!22023 res!9689) b!22020))

(assert (= (and b!22020 res!9690) b!22026))

(assert (= (and b!22026 res!9692) b!22022))

(declare-fun m!24207 () Bool)

(assert (=> b!22027 m!24207))

(assert (=> b!22027 m!24207))

(declare-fun m!24209 () Bool)

(assert (=> b!22027 m!24209))

(declare-fun m!24211 () Bool)

(assert (=> b!22020 m!24211))

(declare-fun m!24213 () Bool)

(assert (=> d!13087 m!24213))

(assert (=> d!13087 m!24019))

(assert (=> b!22024 m!23975))

(declare-fun m!24215 () Bool)

(assert (=> b!22022 m!24215))

(assert (=> b!22022 m!24007))

(assert (=> b!22022 m!24007))

(declare-fun m!24217 () Bool)

(assert (=> b!22022 m!24217))

(declare-fun m!24219 () Bool)

(assert (=> b!22023 m!24219))

(assert (=> b!22023 m!23963))

(assert (=> b!22018 m!24219))

(assert (=> b!22018 m!23963))

(assert (=> b!22028 m!23973))

(declare-fun m!24221 () Bool)

(assert (=> b!22025 m!24221))

(declare-fun m!24223 () Bool)

(assert (=> b!22026 m!24223))

(declare-fun m!24225 () Bool)

(assert (=> b!22019 m!24225))

(assert (=> b!22030 m!24225))

(declare-fun m!24227 () Bool)

(assert (=> b!22030 m!24227))

(assert (=> b!22030 m!24227))

(declare-fun m!24229 () Bool)

(assert (=> b!22030 m!24229))

(assert (=> b!21721 d!13087))

(assert (=> b!21721 d!12999))

(declare-fun b!22034 () Bool)

(declare-fun res!9695 () Bool)

(declare-fun e!11513 () Bool)

(assert (=> b!22034 (=> (not res!9695) (not e!11513))))

(assert (=> b!22034 (= res!9695 (balanced!33 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun d!13089 () Bool)

(declare-fun res!9694 () Bool)

(declare-fun e!11514 () Bool)

(assert (=> d!13089 (=> res!9694 e!11514)))

(assert (=> d!13089 (= res!9694 (not (is-CC!33 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(assert (=> d!13089 (= (balanced!33 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) e!11514)))

(declare-fun b!22035 () Bool)

(assert (=> b!22035 (= e!11513 (balanced!33 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))))))

(declare-fun b!22033 () Bool)

(declare-fun res!9696 () Bool)

(assert (=> b!22033 (=> (not res!9696) (not e!11513))))

(assert (=> b!22033 (= res!9696 (<= (- (level!31 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (level!31 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) 1))))

(declare-fun b!22032 () Bool)

(assert (=> b!22032 (= e!11514 e!11513)))

(declare-fun res!9697 () Bool)

(assert (=> b!22032 (=> (not res!9697) (not e!11513))))

(assert (=> b!22032 (= res!9697 (>= (- (level!31 (left!678 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824))) (level!31 (right!681 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))) (- 1)))))

(assert (= (and d!13089 (not res!9694)) b!22032))

(assert (= (and b!22032 res!9697) b!22033))

(assert (= (and b!22033 res!9696) b!22034))

(assert (= (and b!22034 res!9695) b!22035))

(declare-fun m!24231 () Bool)

(assert (=> b!22034 m!24231))

(declare-fun m!24233 () Bool)

(assert (=> b!22035 m!24233))

(assert (=> b!22033 m!24077))

(assert (=> b!22033 m!24075))

(assert (=> b!22032 m!24077))

(assert (=> b!22032 m!24075))

(assert (=> b!21660 d!13089))

(assert (=> b!21614 d!13053))

(assert (=> b!21588 d!12993))

(assert (=> b!21588 d!12991))

(assert (=> b!21580 d!13019))

(assert (=> b!21580 d!13021))

(assert (=> b!21557 d!12973))

(declare-fun d!13091 () Bool)

(assert (=> d!13091 (= (isEmpty!296 (right!681 res!5614)) (= (right!681 res!5614) Empty!44))))

(assert (=> b!21568 d!13091))

(declare-fun b!22038 () Bool)

(declare-fun res!9698 () Bool)

(declare-fun e!11515 () Bool)

(assert (=> b!22038 (=> (not res!9698) (not e!11515))))

(declare-fun lt!3522 () List!339)

(assert (=> b!22038 (= res!9698 (= (size!228 lt!3522) (+ (size!228 (toList!99 (left!678 xs!604))) (size!228 (toList!99 (right!681 xs!604))))))))

(declare-fun b!22039 () Bool)

(assert (=> b!22039 (= e!11515 (or (not (= (toList!99 (right!681 xs!604)) Nil!334)) (= lt!3522 (toList!99 (left!678 xs!604)))))))

(declare-fun b!22036 () Bool)

(declare-fun e!11516 () List!339)

(assert (=> b!22036 (= e!11516 (toList!99 (right!681 xs!604)))))

(declare-fun d!13093 () Bool)

(assert (=> d!13093 e!11515))

(declare-fun res!9699 () Bool)

(assert (=> d!13093 (=> (not res!9699) (not e!11515))))

(assert (=> d!13093 (= res!9699 (= (content!60 lt!3522) (union (content!60 (toList!99 (left!678 xs!604))) (content!60 (toList!99 (right!681 xs!604))))))))

(assert (=> d!13093 (= lt!3522 e!11516)))

(declare-fun c!5262 () Bool)

(assert (=> d!13093 (= c!5262 (is-Nil!334 (toList!99 (left!678 xs!604))))))

(assert (=> d!13093 (= (++!22 (toList!99 (left!678 xs!604)) (toList!99 (right!681 xs!604))) lt!3522)))

(declare-fun b!22037 () Bool)

(assert (=> b!22037 (= e!11516 (Cons!333 (h!247 (toList!99 (left!678 xs!604))) (++!22 (t!4334 (toList!99 (left!678 xs!604))) (toList!99 (right!681 xs!604)))))))

(assert (= (and d!13093 c!5262) b!22036))

(assert (= (and d!13093 (not c!5262)) b!22037))

(assert (= (and d!13093 res!9699) b!22038))

(assert (= (and b!22038 res!9698) b!22039))

(declare-fun m!24235 () Bool)

(assert (=> b!22038 m!24235))

(assert (=> b!22038 m!23745))

(assert (=> b!22038 m!24105))

(assert (=> b!22038 m!23747))

(assert (=> b!22038 m!24107))

(declare-fun m!24237 () Bool)

(assert (=> d!13093 m!24237))

(assert (=> d!13093 m!23745))

(declare-fun m!24239 () Bool)

(assert (=> d!13093 m!24239))

(assert (=> d!13093 m!23747))

(declare-fun m!24241 () Bool)

(assert (=> d!13093 m!24241))

(assert (=> b!22037 m!23747))

(declare-fun m!24243 () Bool)

(assert (=> b!22037 m!24243))

(assert (=> b!21750 d!13093))

(assert (=> b!21750 d!13065))

(assert (=> b!21750 d!13039))

(assert (=> b!21581 d!13055))

(assert (=> b!21592 d!12991))

(assert (=> b!21592 d!12993))

(declare-fun b!22043 () Bool)

(declare-fun e!11517 () Bool)

(assert (=> b!22043 (= e!11517 (concInv!32 (right!681 (right!681 res!5614))))))

(declare-fun b!22041 () Bool)

(declare-fun res!9701 () Bool)

(assert (=> b!22041 (=> (not res!9701) (not e!11517))))

(assert (=> b!22041 (= res!9701 (not (isEmpty!296 (right!681 (right!681 res!5614)))))))

(declare-fun d!13095 () Bool)

(declare-fun res!9703 () Bool)

(declare-fun e!11518 () Bool)

(assert (=> d!13095 (=> res!9703 e!11518)))

(assert (=> d!13095 (= res!9703 (not (is-CC!33 (right!681 res!5614))))))

(assert (=> d!13095 (= (concInv!32 (right!681 res!5614)) e!11518)))

(declare-fun b!22042 () Bool)

(declare-fun res!9700 () Bool)

(assert (=> b!22042 (=> (not res!9700) (not e!11517))))

(assert (=> b!22042 (= res!9700 (concInv!32 (left!678 (right!681 res!5614))))))

(declare-fun b!22040 () Bool)

(assert (=> b!22040 (= e!11518 e!11517)))

(declare-fun res!9702 () Bool)

(assert (=> b!22040 (=> (not res!9702) (not e!11517))))

(assert (=> b!22040 (= res!9702 (not (isEmpty!296 (left!678 (right!681 res!5614)))))))

(assert (= (and d!13095 (not res!9703)) b!22040))

(assert (= (and b!22040 res!9702) b!22041))

(assert (= (and b!22041 res!9701) b!22042))

(assert (= (and b!22042 res!9700) b!22043))

(declare-fun m!24245 () Bool)

(assert (=> b!22043 m!24245))

(declare-fun m!24247 () Bool)

(assert (=> b!22041 m!24247))

(declare-fun m!24249 () Bool)

(assert (=> b!22042 m!24249))

(declare-fun m!24251 () Bool)

(assert (=> b!22040 m!24251))

(assert (=> b!21570 d!13095))

(declare-fun d!13097 () Bool)

(declare-fun c!5263 () Bool)

(assert (=> d!13097 (= c!5263 (is-Nil!334 (t!4334 (toList!99 xs!604))))))

(declare-fun e!11519 () List!339)

(assert (=> d!13097 (= (insertAtIndex!12 (t!4334 (toList!99 xs!604)) (- i!298 1) y!824) e!11519)))

(declare-fun b!22046 () Bool)

(declare-fun e!11520 () List!339)

(assert (=> b!22046 (= e!11520 (Cons!333 y!824 (t!4334 (toList!99 xs!604))))))

(declare-fun b!22045 () Bool)

(assert (=> b!22045 (= e!11519 e!11520)))

(declare-fun c!5264 () Bool)

(assert (=> b!22045 (= c!5264 (= (- i!298 1) 0))))

(declare-fun b!22044 () Bool)

(assert (=> b!22044 (= e!11519 (Cons!333 y!824 Nil!334))))

(declare-fun b!22047 () Bool)

(assert (=> b!22047 (= e!11520 (Cons!333 (h!247 (t!4334 (toList!99 xs!604))) (insertAtIndex!12 (t!4334 (t!4334 (toList!99 xs!604))) (- (- i!298 1) 1) y!824)))))

(assert (= (and b!22045 c!5264) b!22046))

(assert (= (and b!22045 (not c!5264)) b!22047))

(assert (= (and d!13097 c!5263) b!22044))

(assert (= (and d!13097 (not c!5263)) b!22045))

(declare-fun m!24253 () Bool)

(assert (=> b!22047 m!24253))

(assert (=> b!21746 d!13097))

(assert (=> b!21582 d!13025))

(declare-fun d!13099 () Bool)

(assert (=> d!13099 (= (concatCorrectness!6 lt!3402 (left!678 xs!604) (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)) (= (toList!99 lt!3402) (++!22 (toList!99 (left!678 xs!604)) (toList!99 (insert!21 (right!681 xs!604) (- i!298 (size!227 (left!678 xs!604))) y!824)))))))

(declare-fun bs!5051 () Bool)

(assert (= bs!5051 d!13099))

(assert (=> bs!5051 m!23721))

(assert (=> bs!5051 m!24131))

(assert (=> bs!5051 m!23745))

(declare-fun m!24255 () Bool)

(assert (=> bs!5051 m!24255))

(assert (=> bs!5051 m!23745))

(assert (=> bs!5051 m!24131))

(declare-fun m!24257 () Bool)

(assert (=> bs!5051 m!24257))

(assert (=> b!21665 d!13099))

(declare-fun b!22051 () Bool)

(declare-fun e!11521 () Bool)

(assert (=> b!22051 (= e!11521 (concInv!32 (right!681 lt!3402)))))

(declare-fun b!22049 () Bool)

(declare-fun res!9706 () Bool)

(assert (=> b!22049 (=> (not res!9706) (not e!11521))))

(assert (=> b!22049 (= res!9706 (not (isEmpty!296 (right!681 lt!3402))))))

(declare-fun d!13101 () Bool)

(declare-fun res!9708 () Bool)

(declare-fun e!11522 () Bool)

(assert (=> d!13101 (=> res!9708 e!11522)))

(assert (=> d!13101 (= res!9708 (not (is-CC!33 lt!3402)))))

(assert (=> d!13101 (= (concInv!32 lt!3402) e!11522)))

(declare-fun b!22050 () Bool)

(declare-fun res!9705 () Bool)

(assert (=> b!22050 (=> (not res!9705) (not e!11521))))

(assert (=> b!22050 (= res!9705 (concInv!32 (left!678 lt!3402)))))

(declare-fun b!22048 () Bool)

(assert (=> b!22048 (= e!11522 e!11521)))

(declare-fun res!9707 () Bool)

(assert (=> b!22048 (=> (not res!9707) (not e!11521))))

(assert (=> b!22048 (= res!9707 (not (isEmpty!296 (left!678 lt!3402))))))

(assert (= (and d!13101 (not res!9708)) b!22048))

(assert (= (and b!22048 res!9707) b!22049))

(assert (= (and b!22049 res!9706) b!22050))

(assert (= (and b!22050 res!9705) b!22051))

(declare-fun m!24259 () Bool)

(assert (=> b!22051 m!24259))

(declare-fun m!24261 () Bool)

(assert (=> b!22049 m!24261))

(declare-fun m!24263 () Bool)

(assert (=> b!22050 m!24263))

(declare-fun m!24265 () Bool)

(assert (=> b!22048 m!24265))

(assert (=> b!21674 d!13101))

(declare-fun b!22052 () Bool)

(declare-fun e!11523 () Bool)

(declare-fun tp!4833 () Bool)

(declare-fun tp!4834 () Bool)

(assert (=> b!22052 (= e!11523 (and tp!4833 tp!4834))))

(declare-fun b!22053 () Bool)

(assert (=> b!22053 (= e!11523 tp_is_empty!103)))

(assert (=> b!21759 (= tp!4821 e!11523)))

(assert (= (and b!21759 (is-CC!33 (left!678 (right!681 xs!604)))) b!22052))

(assert (= (and b!21759 (is-Single!33 (left!678 (right!681 xs!604)))) b!22053))

(declare-fun b!22054 () Bool)

(declare-fun e!11524 () Bool)

(declare-fun tp!4835 () Bool)

(declare-fun tp!4836 () Bool)

(assert (=> b!22054 (= e!11524 (and tp!4835 tp!4836))))

(declare-fun b!22055 () Bool)

(assert (=> b!22055 (= e!11524 tp_is_empty!103)))

(assert (=> b!21759 (= tp!4822 e!11524)))

(assert (= (and b!21759 (is-CC!33 (right!681 (right!681 xs!604)))) b!22054))

(assert (= (and b!21759 (is-Single!33 (right!681 (right!681 xs!604)))) b!22055))

(declare-fun b!22056 () Bool)

(declare-fun e!11525 () Bool)

(declare-fun tp!4837 () Bool)

(declare-fun tp!4838 () Bool)

(assert (=> b!22056 (= e!11525 (and tp!4837 tp!4838))))

(declare-fun b!22057 () Bool)

(assert (=> b!22057 (= e!11525 tp_is_empty!103)))

(assert (=> b!21763 (= tp!4825 e!11525)))

(assert (= (and b!21763 (is-CC!33 (left!678 (right!681 res!5614)))) b!22056))

(assert (= (and b!21763 (is-Single!33 (left!678 (right!681 res!5614)))) b!22057))

(declare-fun b!22058 () Bool)

(declare-fun e!11526 () Bool)

(declare-fun tp!4839 () Bool)

(declare-fun tp!4840 () Bool)

(assert (=> b!22058 (= e!11526 (and tp!4839 tp!4840))))

(declare-fun b!22059 () Bool)

(assert (=> b!22059 (= e!11526 tp_is_empty!103)))

(assert (=> b!21763 (= tp!4826 e!11526)))

(assert (= (and b!21763 (is-CC!33 (right!681 (right!681 res!5614)))) b!22058))

(assert (= (and b!21763 (is-Single!33 (right!681 (right!681 res!5614)))) b!22059))

(declare-fun b!22060 () Bool)

(declare-fun e!11527 () Bool)

(declare-fun tp!4841 () Bool)

(declare-fun tp!4842 () Bool)

(assert (=> b!22060 (= e!11527 (and tp!4841 tp!4842))))

(declare-fun b!22061 () Bool)

(assert (=> b!22061 (= e!11527 tp_is_empty!103)))

(assert (=> b!21669 (= tp!4814 e!11527)))

(assert (= (and b!21669 (is-CC!33 (left!678 res!9508))) b!22060))

(assert (= (and b!21669 (is-Single!33 (left!678 res!9508))) b!22061))

(declare-fun b!22062 () Bool)

(declare-fun e!11528 () Bool)

(declare-fun tp!4843 () Bool)

(declare-fun tp!4844 () Bool)

(assert (=> b!22062 (= e!11528 (and tp!4843 tp!4844))))

(declare-fun b!22063 () Bool)

(assert (=> b!22063 (= e!11528 tp_is_empty!103)))

(assert (=> b!21669 (= tp!4813 e!11528)))

(assert (= (and b!21669 (is-CC!33 (right!681 res!9508))) b!22062))

(assert (= (and b!21669 (is-Single!33 (right!681 res!9508))) b!22063))

(declare-fun b!22064 () Bool)

(declare-fun e!11529 () Bool)

(declare-fun tp!4845 () Bool)

(declare-fun tp!4846 () Bool)

(assert (=> b!22064 (= e!11529 (and tp!4845 tp!4846))))

(declare-fun b!22065 () Bool)

(assert (=> b!22065 (= e!11529 tp_is_empty!103)))

(assert (=> b!21761 (= tp!4823 e!11529)))

(assert (= (and b!21761 (is-CC!33 (left!678 (left!678 res!5614)))) b!22064))

(assert (= (and b!21761 (is-Single!33 (left!678 (left!678 res!5614)))) b!22065))

(declare-fun b!22066 () Bool)

(declare-fun e!11530 () Bool)

(declare-fun tp!4847 () Bool)

(declare-fun tp!4848 () Bool)

(assert (=> b!22066 (= e!11530 (and tp!4847 tp!4848))))

(declare-fun b!22067 () Bool)

(assert (=> b!22067 (= e!11530 tp_is_empty!103)))

(assert (=> b!21761 (= tp!4824 e!11530)))

(assert (= (and b!21761 (is-CC!33 (right!681 (left!678 res!5614)))) b!22066))

(assert (= (and b!21761 (is-Single!33 (right!681 (left!678 res!5614)))) b!22067))

(declare-fun b!22068 () Bool)

(declare-fun e!11531 () Bool)

(declare-fun tp!4849 () Bool)

(declare-fun tp!4850 () Bool)

(assert (=> b!22068 (= e!11531 (and tp!4849 tp!4850))))

(declare-fun b!22069 () Bool)

(assert (=> b!22069 (= e!11531 tp_is_empty!103)))

(assert (=> b!21757 (= tp!4819 e!11531)))

(assert (= (and b!21757 (is-CC!33 (left!678 (left!678 xs!604)))) b!22068))

(assert (= (and b!21757 (is-Single!33 (left!678 (left!678 xs!604)))) b!22069))

(declare-fun b!22070 () Bool)

(declare-fun e!11532 () Bool)

(declare-fun tp!4851 () Bool)

(declare-fun tp!4852 () Bool)

(assert (=> b!22070 (= e!11532 (and tp!4851 tp!4852))))

(declare-fun b!22071 () Bool)

(assert (=> b!22071 (= e!11532 tp_is_empty!103)))

(assert (=> b!21757 (= tp!4820 e!11532)))

(assert (= (and b!21757 (is-CC!33 (right!681 (left!678 xs!604)))) b!22070))

(assert (= (and b!21757 (is-Single!33 (right!681 (left!678 xs!604)))) b!22071))

(push 1)

(assert (not b!22000))

(assert (not b!21768))

(assert (not b!21927))

(assert (not b!21882))

(assert (not b!21812))

(assert (not b!22070))

(assert (not b!21926))

(assert (not b!21973))

(assert (not b!22016))

(assert (not b!21941))

(assert (not b!21896))

(assert (not d!13065))

(assert (not b!21998))

(assert (not b!22008))

(assert (not b!22048))

(assert (not b!21831))

(assert (not b!21824))

(assert (not b!22028))

(assert (not b!21922))

(assert (not b!21801))

(assert (not b!21841))

(assert (not b!21902))

(assert (not b!21780))

(assert (not b!21776))

(assert (not b!21900))

(assert (not d!13093))

(assert (not b!21939))

(assert (not b!21972))

(assert (not b!21873))

(assert (not b!21829))

(assert (not b!21887))

(assert (not b!21901))

(assert (not b!21985))

(assert (not b!21826))

(assert (not b!21844))

(assert (not b!21796))

(assert (not b!22043))

(assert (not b!21948))

(assert (not d!13039))

(assert (not d!13011))

(assert (not b!21989))

(assert (not b!21913))

(assert (not d!13035))

(assert (not b!22058))

(assert (not b!21878))

(assert (not b!21949))

(assert (not b!21918))

(assert (not b!21993))

(assert (not b!21793))

(assert (not b!22032))

(assert (not b!21790))

(assert (not b!22027))

(assert (not b!22066))

(assert (not b!22042))

(assert (not b!21995))

(assert (not b!21986))

(assert (not b!21970))

(assert (not b!21772))

(assert (not b!21835))

(assert (not b!22033))

(assert (not b!22051))

(assert (not b!21881))

(assert (not b!21766))

(assert (not b!21783))

(assert (not b!21883))

(assert (not b!21867))

(assert (not b!22056))

(assert (not b!22054))

(assert (not b!21919))

(assert (not b!21798))

(assert (not b!22025))

(assert (not b!22062))

(assert (not b!21975))

(assert (not b!22041))

(assert tp_is_empty!103)

(assert (not b!22038))

(assert (not b!21847))

(assert (not b!21870))

(assert (not b!21872))

(assert (not b!22052))

(assert (not b!21992))

(assert (not b!21910))

(assert (not b!21843))

(assert (not b!22007))

(assert (not b!21871))

(assert (not b!22049))

(assert (not b!22060))

(assert (not b!21886))

(assert (not b!21845))

(assert (not b!22009))

(assert (not b!21899))

(assert (not b!21924))

(assert (not b!22035))

(assert (not b!22020))

(assert (not d!13005))

(assert (not d!13009))

(assert (not b!21861))

(assert (not d!13099))

(assert (not b!21907))

(assert (not b!21789))

(assert (not b!22012))

(assert (not b!21988))

(assert (not b!21781))

(assert (not b!21911))

(assert (not b!21994))

(assert (not b!21914))

(assert (not b!21983))

(assert (not b!21898))

(assert (not b!22018))

(assert (not b!22006))

(assert (not b!22068))

(assert (not b!21784))

(assert (not d!13087))

(assert (not b!21946))

(assert (not b!21904))

(assert (not b!21888))

(assert (not b!21825))

(assert (not b!21792))

(assert (not b!21791))

(assert (not b!21969))

(assert (not b!21916))

(assert (not b!21921))

(assert (not b!21925))

(assert (not d!13045))

(assert (not b!22013))

(assert (not b!21996))

(assert (not b!22022))

(assert (not b!22047))

(assert (not b!21987))

(assert (not b!21912))

(assert (not b!21880))

(assert (not b!21893))

(assert (not b!21799))

(assert (not b!22004))

(assert (not b!21827))

(assert (not b!21909))

(assert (not b!21890))

(assert (not b!22026))

(assert (not b!21897))

(assert (not b!22005))

(assert (not d!13007))

(assert (not b!21997))

(assert (not b!22040))

(assert (not b!21785))

(assert (not b!21857))

(assert (not b!21923))

(assert (not b!21991))

(assert (not b!21971))

(assert (not b!21879))

(assert (not b!22064))

(assert (not b!21894))

(assert (not b!21917))

(assert (not b!21817))

(assert (not b!21823))

(assert (not b!21979))

(assert (not b!21837))

(assert (not b!21999))

(assert (not b!21908))

(assert (not b!22023))

(assert (not b!21915))

(assert (not b!22037))

(assert (not b!21942))

(assert (not b!21836))

(assert (not b!22019))

(assert (not b!21853))

(assert (not b!22014))

(assert (not b!21833))

(assert (not b!21842))

(assert (not d!13085))

(assert (not b!21811))

(assert (not b!21782))

(assert (not b!21821))

(assert (not b!21885))

(assert (not b!21869))

(assert (not b!21940))

(assert (not b!21947))

(assert (not b!21834))

(assert (not b!21984))

(assert (not b!21990))

(assert (not b!21849))

(assert (not b!21874))

(assert (not b!21950))

(assert (not b!22050))

(assert (not b!21938))

(assert (not b!22024))

(assert (not b!22034))

(assert (not b!21892))

(assert (not b!22030))

(assert (not d!13047))

(assert (not b!21794))

(assert (not b!22011))

(assert (not b!21797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

