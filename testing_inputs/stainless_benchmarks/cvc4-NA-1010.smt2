; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7480 () Bool)

(assert start!7480)

(declare-fun res!24490 () Bool)

(declare-fun e!28035 () Bool)

(assert (=> start!7480 (=> (not res!24490) (not e!28035))))

(declare-datatypes () ((IntSet!13 (Node!100 (left!1083 IntSet!13) (elem!159 (_ BitVec 32)) (right!1086 IntSet!13)) (Empty!139))))

(declare-fun s!875 () IntSet!13)

(declare-fun y!1635 () (_ BitVec 32))

(declare-fun x$3!135 () Bool)

(declare-fun x!21283 () (_ BitVec 32))

(assert (=> start!7480 (= res!24490 (and (not (= x!21283 y!1635)) (is-Empty!139 s!875) (= x$3!135 true)))))

(assert (=> start!7480 e!28035))

(assert (=> start!7480 true))

(declare-fun b!53750 () Bool)

(declare-fun contains!12 (IntSet!13 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!13 (_ BitVec 32)) IntSet!13)

(assert (=> b!53750 (= e!28035 (not (= (contains!12 (incl!3 s!875 x!21283) y!1635) (contains!12 s!875 y!1635))))))

(assert (= (and start!7480 res!24490) b!53750))

(declare-fun m!57592 () Bool)

(assert (=> b!53750 m!57592))

(assert (=> b!53750 m!57592))

(declare-fun m!57594 () Bool)

(assert (=> b!53750 m!57594))

(declare-fun m!57596 () Bool)

(assert (=> b!53750 m!57596))

(push 1)

(assert (not b!53750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44759 () Bool)

(declare-fun res!24498 () Bool)

(declare-fun e!28040 () Bool)

(assert (=> d!44759 (=> (not res!24498) (not e!28040))))

(assert (=> d!44759 (= res!24498 (not (is-Empty!139 (incl!3 s!875 x!21283))))))

(assert (=> d!44759 (= (contains!12 (incl!3 s!875 x!21283) y!1635) e!28040)))

(declare-fun lt!9361 () Bool)

(declare-fun b!53757 () Bool)

(declare-fun lt!9360 () Bool)

(assert (=> b!53757 (= e!28040 (ite lt!9360 lt!9361 (or (not (bvsgt y!1635 (elem!159 (incl!3 s!875 x!21283)))) lt!9361)))))

(declare-fun e!28041 () Bool)

(assert (=> b!53757 (= lt!9361 e!28041)))

(declare-fun c!11664 () Bool)

(assert (=> b!53757 (= c!11664 (or lt!9360 (bvsgt y!1635 (elem!159 (incl!3 s!875 x!21283)))))))

(assert (=> b!53757 (= lt!9360 (bvslt y!1635 (elem!159 (incl!3 s!875 x!21283))))))

(declare-fun b!53759 () Bool)

(declare-fun res!24499 () Bool)

(assert (=> b!53759 (= e!28041 res!24499)))

(assert (=> b!53759 true))

(assert (=> b!53759 true))

(declare-fun b!53758 () Bool)

(assert (=> b!53758 (= e!28041 (contains!12 (ite lt!9360 (left!1083 (incl!3 s!875 x!21283)) (right!1086 (incl!3 s!875 x!21283))) y!1635))))

(assert (= (and d!44759 res!24498) b!53757))

(assert (= (and b!53757 c!11664) b!53758))

(assert (= (and b!53757 (not c!11664)) b!53759))

(declare-fun m!57598 () Bool)

(assert (=> b!53758 m!57598))

(assert (=> b!53750 d!44759))

(declare-fun b!53769 () Bool)

(declare-fun e!28046 () IntSet!13)

(declare-fun lt!9367 () Bool)

(declare-fun lt!9366 () IntSet!13)

(assert (=> b!53769 (= e!28046 (ite lt!9367 (Node!100 lt!9366 (elem!159 s!875) (right!1086 s!875)) (ite (bvsgt x!21283 (elem!159 s!875)) (Node!100 (left!1083 s!875) (elem!159 s!875) lt!9366) s!875)))))

(declare-fun e!28047 () IntSet!13)

(assert (=> b!53769 (= lt!9366 e!28047)))

(declare-fun c!11670 () Bool)

(assert (=> b!53769 (= c!11670 (or lt!9367 (bvsgt x!21283 (elem!159 s!875))))))

(assert (=> b!53769 (= lt!9367 (bvslt x!21283 (elem!159 s!875)))))

(declare-fun b!53768 () Bool)

(assert (=> b!53768 (= e!28046 (Node!100 Empty!139 x!21283 Empty!139))))

(declare-fun d!44761 () Bool)

(declare-fun c!11669 () Bool)

(assert (=> d!44761 (= c!11669 (is-Empty!139 s!875))))

(assert (=> d!44761 (= (incl!3 s!875 x!21283) e!28046)))

(declare-fun b!53771 () Bool)

(declare-fun res!24505 () IntSet!13)

(assert (=> b!53771 (= e!28047 res!24505)))

(assert (=> b!53771 true))

(assert (=> b!53771 true))

(declare-fun b!53770 () Bool)

(assert (=> b!53770 (= e!28047 (incl!3 (ite lt!9367 (left!1083 s!875) (right!1086 s!875)) x!21283))))

(assert (= (and b!53769 c!11670) b!53770))

(assert (= (and b!53769 (not c!11670)) b!53771))

(assert (= (and d!44761 c!11669) b!53768))

(assert (= (and d!44761 (not c!11669)) b!53769))

(declare-fun m!57600 () Bool)

(assert (=> b!53770 m!57600))

(assert (=> b!53750 d!44761))

(declare-fun d!44763 () Bool)

(declare-fun res!24506 () Bool)

(declare-fun e!28048 () Bool)

(assert (=> d!44763 (=> (not res!24506) (not e!28048))))

(assert (=> d!44763 (= res!24506 (not (is-Empty!139 s!875)))))

(assert (=> d!44763 (= (contains!12 s!875 y!1635) e!28048)))

(declare-fun lt!9369 () Bool)

(declare-fun lt!9368 () Bool)

(declare-fun b!53772 () Bool)

(assert (=> b!53772 (= e!28048 (ite lt!9368 lt!9369 (or (not (bvsgt y!1635 (elem!159 s!875))) lt!9369)))))

(declare-fun e!28049 () Bool)

(assert (=> b!53772 (= lt!9369 e!28049)))

(declare-fun c!11671 () Bool)

(assert (=> b!53772 (= c!11671 (or lt!9368 (bvsgt y!1635 (elem!159 s!875))))))

(assert (=> b!53772 (= lt!9368 (bvslt y!1635 (elem!159 s!875)))))

(declare-fun b!53774 () Bool)

(declare-fun res!24507 () Bool)

(assert (=> b!53774 (= e!28049 res!24507)))

(assert (=> b!53774 true))

(assert (=> b!53774 true))

(declare-fun b!53773 () Bool)

(assert (=> b!53773 (= e!28049 (contains!12 (ite lt!9368 (left!1083 s!875) (right!1086 s!875)) y!1635))))

(assert (= (and d!44763 res!24506) b!53772))

(assert (= (and b!53772 c!11671) b!53773))

(assert (= (and b!53772 (not c!11671)) b!53774))

(declare-fun m!57602 () Bool)

(assert (=> b!53773 m!57602))

(assert (=> b!53750 d!44763))

(push 1)

(assert (not b!53758))

(assert (not b!53773))

(assert (not b!53770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

