; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3286 () Bool)

(assert start!3286)

(declare-fun b!18509 () Bool)

(declare-fun res!7784 () Bool)

(declare-fun e!9894 () Bool)

(assert (=> b!18509 (=> (not res!7784) (not e!9894))))

(declare-datatypes () ((T!1735 (T!1736 (val!40 Int)))))

(declare-datatypes () ((Conc!22 (CC!21 (left!666 Conc!22) (right!669 Conc!22)) (Single!21 (x!8753 T!1735)) (Empty!32))))

(declare-fun xs!604 () Conc!22)

(assert (=> b!18509 (= res!7784 (and (not (is-Empty!32 xs!604)) (not (is-Single!21 xs!604))))))

(declare-fun res!7782 () Bool)

(assert (=> start!3286 (=> (not res!7782) (not e!9894))))

(declare-fun concInv!20 (Conc!22) Bool)

(assert (=> start!3286 (= res!7782 (concInv!20 xs!604))))

(assert (=> start!3286 e!9894))

(declare-fun tp_is_empty!79 () Bool)

(assert (=> start!3286 tp_is_empty!79))

(assert (=> start!3286 true))

(declare-fun e!9893 () Bool)

(assert (=> start!3286 e!9893))

(declare-fun e!9895 () Bool)

(assert (=> start!3286 e!9895))

(declare-fun b!18510 () Bool)

(declare-fun res!7785 () Bool)

(assert (=> b!18510 (=> (not res!7785) (not e!9894))))

(declare-fun i!298 () Int)

(assert (=> b!18510 (= res!7785 (>= i!298 0))))

(declare-fun b!18511 () Bool)

(declare-fun res!7783 () Bool)

(assert (=> b!18511 (=> (not res!7783) (not e!9894))))

(declare-fun size!209 (Conc!22) Int)

(assert (=> b!18511 (= res!7783 (<= i!298 (size!209 xs!604)))))

(declare-fun b!18512 () Bool)

(declare-fun e!9892 () Bool)

(assert (=> b!18512 (= e!9894 e!9892)))

(declare-fun res!7779 () Bool)

(assert (=> b!18512 (=> res!7779 e!9892)))

(declare-fun xs!613 () Conc!22)

(assert (=> b!18512 (= res!7779 (not (concInv!20 xs!613)))))

(declare-fun b!18513 () Bool)

(declare-fun tp!4347 () Bool)

(declare-fun tp!4348 () Bool)

(assert (=> b!18513 (= e!9895 (and tp!4347 tp!4348))))

(declare-fun b!18514 () Bool)

(assert (=> b!18514 (= e!9893 tp_is_empty!79)))

(declare-fun b!18515 () Bool)

(declare-fun res!7778 () Bool)

(assert (=> b!18515 (=> (not res!7778) (not e!9894))))

(assert (=> b!18515 (= res!7778 (< i!298 (size!209 (left!666 xs!604))))))

(declare-fun b!18516 () Bool)

(declare-fun res!7781 () Bool)

(assert (=> b!18516 (=> (not res!7781) (not e!9894))))

(declare-fun y!851 () T!1735)

(declare-fun i!311 () Int)

(declare-fun y!824 () T!1735)

(assert (=> b!18516 (= res!7781 (and (= xs!613 (left!666 xs!604)) (= i!311 i!298) (= y!851 y!824)))))

(declare-fun b!18517 () Bool)

(declare-fun res!7777 () Bool)

(assert (=> b!18517 (=> (not res!7777) (not e!9894))))

(declare-fun balanced!21 (Conc!22) Bool)

(assert (=> b!18517 (= res!7777 (balanced!21 xs!604))))

(declare-fun b!18518 () Bool)

(declare-fun res!7780 () Bool)

(assert (=> b!18518 (=> res!7780 e!9892)))

(assert (=> b!18518 (= res!7780 (not (balanced!21 xs!613)))))

(declare-fun b!18519 () Bool)

(assert (=> b!18519 (= e!9892 (> i!311 (size!209 xs!613)))))

(declare-fun b!18520 () Bool)

(declare-fun res!7786 () Bool)

(assert (=> b!18520 (=> res!7786 e!9892)))

(assert (=> b!18520 (= res!7786 (< i!311 0))))

(declare-fun b!18521 () Bool)

(assert (=> b!18521 (= e!9895 tp_is_empty!79)))

(declare-fun b!18522 () Bool)

(declare-fun tp!4350 () Bool)

(declare-fun tp!4349 () Bool)

(assert (=> b!18522 (= e!9893 (and tp!4350 tp!4349))))

(assert (= (and start!3286 res!7782) b!18517))

(assert (= (and b!18517 res!7777) b!18510))

(assert (= (and b!18510 res!7785) b!18511))

(assert (= (and b!18511 res!7783) b!18509))

(assert (= (and b!18509 res!7784) b!18515))

(assert (= (and b!18515 res!7778) b!18516))

(assert (= (and b!18516 res!7781) b!18512))

(assert (= (and b!18512 (not res!7779)) b!18518))

(assert (= (and b!18518 (not res!7780)) b!18520))

(assert (= (and b!18520 (not res!7786)) b!18519))

(assert (= (and start!3286 (is-CC!21 xs!613)) b!18522))

(assert (= (and start!3286 (is-Single!21 xs!613)) b!18514))

(assert (= (and start!3286 (is-CC!21 xs!604)) b!18513))

(assert (= (and start!3286 (is-Single!21 xs!604)) b!18521))

(declare-fun m!21257 () Bool)

(assert (=> b!18518 m!21257))

(declare-fun m!21259 () Bool)

(assert (=> start!3286 m!21259))

(declare-fun m!21261 () Bool)

(assert (=> b!18519 m!21261))

(declare-fun m!21263 () Bool)

(assert (=> b!18512 m!21263))

(declare-fun m!21265 () Bool)

(assert (=> b!18515 m!21265))

(declare-fun m!21267 () Bool)

(assert (=> b!18511 m!21267))

(declare-fun m!21269 () Bool)

(assert (=> b!18517 m!21269))

(push 1)

(assert tp_is_empty!79)

(assert (not b!18522))

(assert (not b!18512))

(assert (not b!18513))

(assert (not b!18515))

(assert (not b!18519))

(assert (not start!3286))

(assert (not b!18517))

(assert (not b!18518))

(assert (not b!18511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!18533 () Bool)

(declare-fun e!9901 () Int)

(assert (=> b!18533 (= e!9901 1)))

(declare-fun b!18534 () Bool)

(assert (=> b!18534 (= e!9901 (+ (size!209 (left!666 xs!613)) (size!209 (right!669 xs!613))))))

(declare-fun b!18532 () Bool)

(declare-fun e!9900 () Int)

(assert (=> b!18532 (= e!9900 e!9901)))

(declare-fun c!4632 () Bool)

(assert (=> b!18532 (= c!4632 (is-Single!21 xs!613))))

(declare-fun d!12197 () Bool)

(declare-fun lt!2785 () Int)

(assert (=> d!12197 (>= lt!2785 0)))

(assert (=> d!12197 (= lt!2785 e!9900)))

(declare-fun c!4631 () Bool)

(assert (=> d!12197 (= c!4631 (is-Empty!32 xs!613))))

(assert (=> d!12197 (= (size!209 xs!613) lt!2785)))

(declare-fun b!18531 () Bool)

(assert (=> b!18531 (= e!9900 0)))

(assert (= (and b!18532 c!4632) b!18533))

(assert (= (and b!18532 (not c!4632)) b!18534))

(assert (= (and d!12197 c!4631) b!18531))

(assert (= (and d!12197 (not c!4631)) b!18532))

(declare-fun m!21271 () Bool)

(assert (=> b!18534 m!21271))

(declare-fun m!21273 () Bool)

(assert (=> b!18534 m!21273))

(assert (=> b!18519 d!12197))

(declare-fun b!18537 () Bool)

(declare-fun e!9903 () Int)

(assert (=> b!18537 (= e!9903 1)))

(declare-fun b!18538 () Bool)

(assert (=> b!18538 (= e!9903 (+ (size!209 (left!666 xs!604)) (size!209 (right!669 xs!604))))))

(declare-fun b!18536 () Bool)

(declare-fun e!9902 () Int)

(assert (=> b!18536 (= e!9902 e!9903)))

(declare-fun c!4634 () Bool)

(assert (=> b!18536 (= c!4634 (is-Single!21 xs!604))))

(declare-fun d!12199 () Bool)

(declare-fun lt!2786 () Int)

(assert (=> d!12199 (>= lt!2786 0)))

(assert (=> d!12199 (= lt!2786 e!9902)))

(declare-fun c!4633 () Bool)

(assert (=> d!12199 (= c!4633 (is-Empty!32 xs!604))))

(assert (=> d!12199 (= (size!209 xs!604) lt!2786)))

(declare-fun b!18535 () Bool)

(assert (=> b!18535 (= e!9902 0)))

(assert (= (and b!18536 c!4634) b!18537))

(assert (= (and b!18536 (not c!4634)) b!18538))

(assert (= (and d!12199 c!4633) b!18535))

(assert (= (and d!12199 (not c!4633)) b!18536))

(assert (=> b!18538 m!21265))

(declare-fun m!21275 () Bool)

(assert (=> b!18538 m!21275))

(assert (=> b!18511 d!12199))

(declare-fun b!18550 () Bool)

(declare-fun e!9908 () Bool)

(assert (=> b!18550 (= e!9908 (concInv!20 (right!669 xs!604)))))

(declare-fun b!18548 () Bool)

(declare-fun res!7798 () Bool)

(assert (=> b!18548 (=> (not res!7798) (not e!9908))))

(declare-fun isEmpty!284 (Conc!22) Bool)

(assert (=> b!18548 (= res!7798 (not (isEmpty!284 (right!669 xs!604))))))

(declare-fun b!18547 () Bool)

(declare-fun e!9909 () Bool)

(assert (=> b!18547 (= e!9909 e!9908)))

(declare-fun res!7796 () Bool)

(assert (=> b!18547 (=> (not res!7796) (not e!9908))))

(assert (=> b!18547 (= res!7796 (not (isEmpty!284 (left!666 xs!604))))))

(declare-fun d!12201 () Bool)

(declare-fun res!7795 () Bool)

(assert (=> d!12201 (=> res!7795 e!9909)))

(assert (=> d!12201 (= res!7795 (not (is-CC!21 xs!604)))))

(assert (=> d!12201 (= (concInv!20 xs!604) e!9909)))

(declare-fun b!18549 () Bool)

(declare-fun res!7797 () Bool)

(assert (=> b!18549 (=> (not res!7797) (not e!9908))))

(assert (=> b!18549 (= res!7797 (concInv!20 (left!666 xs!604)))))

(assert (= (and d!12201 (not res!7795)) b!18547))

(assert (= (and b!18547 res!7796) b!18548))

(assert (= (and b!18548 res!7798) b!18549))

(assert (= (and b!18549 res!7797) b!18550))

(declare-fun m!21277 () Bool)

(assert (=> b!18550 m!21277))

(declare-fun m!21279 () Bool)

(assert (=> b!18548 m!21279))

(declare-fun m!21281 () Bool)

(assert (=> b!18547 m!21281))

(declare-fun m!21283 () Bool)

(assert (=> b!18549 m!21283))

(assert (=> start!3286 d!12201))

(declare-fun b!18553 () Bool)

(declare-fun e!9911 () Int)

(assert (=> b!18553 (= e!9911 1)))

(declare-fun b!18554 () Bool)

(assert (=> b!18554 (= e!9911 (+ (size!209 (left!666 (left!666 xs!604))) (size!209 (right!669 (left!666 xs!604)))))))

(declare-fun b!18552 () Bool)

(declare-fun e!9910 () Int)

(assert (=> b!18552 (= e!9910 e!9911)))

(declare-fun c!4636 () Bool)

(assert (=> b!18552 (= c!4636 (is-Single!21 (left!666 xs!604)))))

(declare-fun d!12203 () Bool)

(declare-fun lt!2787 () Int)

(assert (=> d!12203 (>= lt!2787 0)))

(assert (=> d!12203 (= lt!2787 e!9910)))

(declare-fun c!4635 () Bool)

(assert (=> d!12203 (= c!4635 (is-Empty!32 (left!666 xs!604)))))

(assert (=> d!12203 (= (size!209 (left!666 xs!604)) lt!2787)))

(declare-fun b!18551 () Bool)

(assert (=> b!18551 (= e!9910 0)))

(assert (= (and b!18552 c!4636) b!18553))

(assert (= (and b!18552 (not c!4636)) b!18554))

(assert (= (and d!12203 c!4635) b!18551))

(assert (= (and d!12203 (not c!4635)) b!18552))

(declare-fun m!21285 () Bool)

(assert (=> b!18554 m!21285))

(declare-fun m!21287 () Bool)

(assert (=> b!18554 m!21287))

(assert (=> b!18515 d!12203))

(declare-fun b!18558 () Bool)

(declare-fun e!9912 () Bool)

(assert (=> b!18558 (= e!9912 (concInv!20 (right!669 xs!613)))))

(declare-fun b!18556 () Bool)

(declare-fun res!7802 () Bool)

(assert (=> b!18556 (=> (not res!7802) (not e!9912))))

(assert (=> b!18556 (= res!7802 (not (isEmpty!284 (right!669 xs!613))))))

(declare-fun b!18555 () Bool)

(declare-fun e!9913 () Bool)

(assert (=> b!18555 (= e!9913 e!9912)))

(declare-fun res!7800 () Bool)

(assert (=> b!18555 (=> (not res!7800) (not e!9912))))

(assert (=> b!18555 (= res!7800 (not (isEmpty!284 (left!666 xs!613))))))

(declare-fun d!12205 () Bool)

(declare-fun res!7799 () Bool)

(assert (=> d!12205 (=> res!7799 e!9913)))

(assert (=> d!12205 (= res!7799 (not (is-CC!21 xs!613)))))

(assert (=> d!12205 (= (concInv!20 xs!613) e!9913)))

(declare-fun b!18557 () Bool)

(declare-fun res!7801 () Bool)

(assert (=> b!18557 (=> (not res!7801) (not e!9912))))

(assert (=> b!18557 (= res!7801 (concInv!20 (left!666 xs!613)))))

(assert (= (and d!12205 (not res!7799)) b!18555))

(assert (= (and b!18555 res!7800) b!18556))

(assert (= (and b!18556 res!7802) b!18557))

(assert (= (and b!18557 res!7801) b!18558))

(declare-fun m!21289 () Bool)

(assert (=> b!18558 m!21289))

(declare-fun m!21291 () Bool)

(assert (=> b!18556 m!21291))

(declare-fun m!21293 () Bool)

(assert (=> b!18555 m!21293))

(declare-fun m!21295 () Bool)

(assert (=> b!18557 m!21295))

(assert (=> b!18512 d!12205))

(declare-fun d!12207 () Bool)

(declare-fun res!7814 () Bool)

(declare-fun e!9918 () Bool)

(assert (=> d!12207 (=> res!7814 e!9918)))

(assert (=> d!12207 (= res!7814 (not (is-CC!21 xs!613)))))

(assert (=> d!12207 (= (balanced!21 xs!613) e!9918)))

(declare-fun b!18567 () Bool)

(declare-fun e!9919 () Bool)

(assert (=> b!18567 (= e!9918 e!9919)))

(declare-fun res!7813 () Bool)

(assert (=> b!18567 (=> (not res!7813) (not e!9919))))

(declare-fun level!19 (Conc!22) Int)

(assert (=> b!18567 (= res!7813 (>= (- (level!19 (left!666 xs!613)) (level!19 (right!669 xs!613))) (- 1)))))

(declare-fun b!18570 () Bool)

(assert (=> b!18570 (= e!9919 (balanced!21 (right!669 xs!613)))))

(declare-fun b!18568 () Bool)

(declare-fun res!7812 () Bool)

(assert (=> b!18568 (=> (not res!7812) (not e!9919))))

(assert (=> b!18568 (= res!7812 (<= (- (level!19 (left!666 xs!613)) (level!19 (right!669 xs!613))) 1))))

(declare-fun b!18569 () Bool)

(declare-fun res!7811 () Bool)

(assert (=> b!18569 (=> (not res!7811) (not e!9919))))

(assert (=> b!18569 (= res!7811 (balanced!21 (left!666 xs!613)))))

(assert (= (and d!12207 (not res!7814)) b!18567))

(assert (= (and b!18567 res!7813) b!18568))

(assert (= (and b!18568 res!7812) b!18569))

(assert (= (and b!18569 res!7811) b!18570))

(declare-fun m!21297 () Bool)

(assert (=> b!18567 m!21297))

(declare-fun m!21299 () Bool)

(assert (=> b!18567 m!21299))

(declare-fun m!21301 () Bool)

(assert (=> b!18570 m!21301))

(assert (=> b!18568 m!21297))

(assert (=> b!18568 m!21299))

(declare-fun m!21303 () Bool)

(assert (=> b!18569 m!21303))

(assert (=> b!18518 d!12207))

(declare-fun d!12209 () Bool)

(declare-fun res!7818 () Bool)

(declare-fun e!9920 () Bool)

(assert (=> d!12209 (=> res!7818 e!9920)))

(assert (=> d!12209 (= res!7818 (not (is-CC!21 xs!604)))))

(assert (=> d!12209 (= (balanced!21 xs!604) e!9920)))

(declare-fun b!18571 () Bool)

(declare-fun e!9921 () Bool)

(assert (=> b!18571 (= e!9920 e!9921)))

(declare-fun res!7817 () Bool)

(assert (=> b!18571 (=> (not res!7817) (not e!9921))))

(assert (=> b!18571 (= res!7817 (>= (- (level!19 (left!666 xs!604)) (level!19 (right!669 xs!604))) (- 1)))))

(declare-fun b!18574 () Bool)

(assert (=> b!18574 (= e!9921 (balanced!21 (right!669 xs!604)))))

(declare-fun b!18572 () Bool)

(declare-fun res!7816 () Bool)

(assert (=> b!18572 (=> (not res!7816) (not e!9921))))

(assert (=> b!18572 (= res!7816 (<= (- (level!19 (left!666 xs!604)) (level!19 (right!669 xs!604))) 1))))

(declare-fun b!18573 () Bool)

(declare-fun res!7815 () Bool)

(assert (=> b!18573 (=> (not res!7815) (not e!9921))))

(assert (=> b!18573 (= res!7815 (balanced!21 (left!666 xs!604)))))

(assert (= (and d!12209 (not res!7818)) b!18571))

(assert (= (and b!18571 res!7817) b!18572))

(assert (= (and b!18572 res!7816) b!18573))

(assert (= (and b!18573 res!7815) b!18574))

(declare-fun m!21305 () Bool)

(assert (=> b!18571 m!21305))

(declare-fun m!21307 () Bool)

(assert (=> b!18571 m!21307))

(declare-fun m!21309 () Bool)

(assert (=> b!18574 m!21309))

(assert (=> b!18572 m!21305))

(assert (=> b!18572 m!21307))

(declare-fun m!21311 () Bool)

(assert (=> b!18573 m!21311))

(assert (=> b!18517 d!12209))

(declare-fun b!18581 () Bool)

(declare-fun e!9924 () Bool)

(declare-fun tp!4355 () Bool)

(declare-fun tp!4356 () Bool)

(assert (=> b!18581 (= e!9924 (and tp!4355 tp!4356))))

(declare-fun b!18582 () Bool)

(assert (=> b!18582 (= e!9924 tp_is_empty!79)))

(assert (=> b!18522 (= tp!4350 e!9924)))

(assert (= (and b!18522 (is-CC!21 (left!666 xs!613))) b!18581))

(assert (= (and b!18522 (is-Single!21 (left!666 xs!613))) b!18582))

(declare-fun b!18583 () Bool)

(declare-fun e!9925 () Bool)

(declare-fun tp!4357 () Bool)

(declare-fun tp!4358 () Bool)

(assert (=> b!18583 (= e!9925 (and tp!4357 tp!4358))))

(declare-fun b!18584 () Bool)

(assert (=> b!18584 (= e!9925 tp_is_empty!79)))

(assert (=> b!18522 (= tp!4349 e!9925)))

(assert (= (and b!18522 (is-CC!21 (right!669 xs!613))) b!18583))

(assert (= (and b!18522 (is-Single!21 (right!669 xs!613))) b!18584))

(declare-fun b!18585 () Bool)

(declare-fun e!9926 () Bool)

(declare-fun tp!4359 () Bool)

(declare-fun tp!4360 () Bool)

(assert (=> b!18585 (= e!9926 (and tp!4359 tp!4360))))

(declare-fun b!18586 () Bool)

(assert (=> b!18586 (= e!9926 tp_is_empty!79)))

(assert (=> b!18513 (= tp!4347 e!9926)))

(assert (= (and b!18513 (is-CC!21 (left!666 xs!604))) b!18585))

(assert (= (and b!18513 (is-Single!21 (left!666 xs!604))) b!18586))

(declare-fun b!18587 () Bool)

(declare-fun e!9927 () Bool)

(declare-fun tp!4361 () Bool)

(declare-fun tp!4362 () Bool)

(assert (=> b!18587 (= e!9927 (and tp!4361 tp!4362))))

(declare-fun b!18588 () Bool)

(assert (=> b!18588 (= e!9927 tp_is_empty!79)))

(assert (=> b!18513 (= tp!4348 e!9927)))

(assert (= (and b!18513 (is-CC!21 (right!669 xs!604))) b!18587))

(assert (= (and b!18513 (is-Single!21 (right!669 xs!604))) b!18588))

(push 1)

(assert tp_is_empty!79)

(assert (not b!18538))

(assert (not b!18567))

(assert (not b!18568))

(assert (not b!18583))

(assert (not b!18581))

(assert (not b!18550))

(assert (not b!18554))

(assert (not b!18548))

(assert (not b!18572))

(assert (not b!18557))

(assert (not b!18547))

(assert (not b!18585))

(assert (not b!18571))

(assert (not b!18534))

(assert (not b!18587))

(assert (not b!18574))

(assert (not b!18556))

(assert (not b!18555))

(assert (not b!18573))

(assert (not b!18558))

(assert (not b!18549))

(assert (not b!18569))

(assert (not b!18570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

