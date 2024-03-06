; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7486 () Bool)

(assert start!7486)

(declare-fun res!24512 () Bool)

(declare-fun e!28052 () Bool)

(assert (=> start!7486 (=> (not res!24512) (not e!28052))))

(declare-datatypes () ((IntSet!14 (Node!101 (left!1084 IntSet!14) (elem!160 (_ BitVec 32)) (right!1087 IntSet!14)) (Empty!140))))

(declare-fun s!875 () IntSet!14)

(declare-fun y!1635 () (_ BitVec 32))

(declare-fun x!21283 () (_ BitVec 32))

(assert (=> start!7486 (= res!24512 (and (not (= x!21283 y!1635)) (not (is-Empty!140 s!875)) (bvslt x!21283 (elem!160 s!875))))))

(assert (=> start!7486 e!28052))

(assert (=> start!7486 true))

(declare-fun b!53779 () Bool)

(declare-fun res!24513 () Bool)

(assert (=> b!53779 (=> (not res!24513) (not e!28052))))

(declare-fun thiss!7534 () IntSet!14)

(declare-fun x$3!136 () Bool)

(declare-fun P3!3 (IntSet!14 IntSet!14 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!53779 (= res!24513 (= x$3!136 (P3!3 thiss!7534 (left!1084 s!875) x!21283 y!1635)))))

(declare-fun b!53780 () Bool)

(declare-fun contains!12 (IntSet!14 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!14 (_ BitVec 32)) IntSet!14)

(assert (=> b!53780 (= e!28052 (not (= (contains!12 (incl!3 s!875 x!21283) y!1635) (contains!12 s!875 y!1635))))))

(assert (= (and start!7486 res!24512) b!53779))

(assert (= (and b!53779 res!24513) b!53780))

(declare-fun m!57604 () Bool)

(assert (=> b!53779 m!57604))

(declare-fun m!57606 () Bool)

(assert (=> b!53780 m!57606))

(assert (=> b!53780 m!57606))

(declare-fun m!57608 () Bool)

(assert (=> b!53780 m!57608))

(declare-fun m!57610 () Bool)

(assert (=> b!53780 m!57610))

(push 1)

(assert (not b!53779))

(assert (not b!53780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44765 () Bool)

(assert (=> d!44765 (= (contains!12 (incl!3 (left!1084 s!875) x!21283) y!1635) (contains!12 (left!1084 s!875) y!1635))))

(declare-fun lt!9378 () Bool)

(declare-fun e!28058 () Bool)

(assert (=> d!44765 (= lt!9378 e!28058)))

(declare-fun res!24521 () Bool)

(assert (=> d!44765 (=> res!24521 e!28058)))

(assert (=> d!44765 (= res!24521 (is-Empty!140 (left!1084 s!875)))))

(assert (=> d!44765 (not (= x!21283 y!1635))))

(assert (=> d!44765 (= (P3!3 thiss!7534 (left!1084 s!875) x!21283 y!1635) lt!9378)))

(declare-fun b!53787 () Bool)

(declare-fun lt!9376 () Bool)

(declare-fun lt!9377 () Bool)

(assert (=> b!53787 (= e!28058 (ite lt!9377 lt!9376 (or (not (bvsgt x!21283 (elem!160 (left!1084 s!875)))) lt!9376)))))

(declare-fun e!28057 () Bool)

(assert (=> b!53787 (= lt!9376 e!28057)))

(declare-fun c!11674 () Bool)

(assert (=> b!53787 (= c!11674 (or lt!9377 (bvsgt x!21283 (elem!160 (left!1084 s!875)))))))

(assert (=> b!53787 (= lt!9377 (bvslt x!21283 (elem!160 (left!1084 s!875))))))

(declare-fun b!53789 () Bool)

(declare-fun res!24522 () Bool)

(assert (=> b!53789 (= e!28057 res!24522)))

(assert (=> b!53789 true))

(assert (=> b!53789 true))

(declare-fun b!53788 () Bool)

(assert (=> b!53788 (= e!28057 (P3!3 thiss!7534 (ite lt!9377 (left!1084 (left!1084 s!875)) (right!1087 (left!1084 s!875))) x!21283 y!1635))))

(assert (= (and d!44765 (not res!24521)) b!53787))

(assert (= (and b!53787 c!11674) b!53788))

(assert (= (and b!53787 (not c!11674)) b!53789))

(declare-fun m!57612 () Bool)

(assert (=> d!44765 m!57612))

(assert (=> d!44765 m!57612))

(declare-fun m!57614 () Bool)

(assert (=> d!44765 m!57614))

(declare-fun m!57616 () Bool)

(assert (=> d!44765 m!57616))

(declare-fun m!57618 () Bool)

(assert (=> b!53788 m!57618))

(assert (=> b!53779 d!44765))

(declare-fun d!44767 () Bool)

(declare-fun res!24531 () Bool)

(declare-fun e!28063 () Bool)

(assert (=> d!44767 (=> (not res!24531) (not e!28063))))

(assert (=> d!44767 (= res!24531 (not (is-Empty!140 (incl!3 s!875 x!21283))))))

(assert (=> d!44767 (= (contains!12 (incl!3 s!875 x!21283) y!1635) e!28063)))

(declare-fun lt!9383 () Bool)

(declare-fun b!53796 () Bool)

(declare-fun lt!9384 () Bool)

(assert (=> b!53796 (= e!28063 (ite lt!9384 lt!9383 (or (not (bvsgt y!1635 (elem!160 (incl!3 s!875 x!21283)))) lt!9383)))))

(declare-fun e!28064 () Bool)

(assert (=> b!53796 (= lt!9383 e!28064)))

(declare-fun c!11677 () Bool)

(assert (=> b!53796 (= c!11677 (or lt!9384 (bvsgt y!1635 (elem!160 (incl!3 s!875 x!21283)))))))

(assert (=> b!53796 (= lt!9384 (bvslt y!1635 (elem!160 (incl!3 s!875 x!21283))))))

(declare-fun b!53798 () Bool)

(declare-fun res!24530 () Bool)

(assert (=> b!53798 (= e!28064 res!24530)))

(assert (=> b!53798 true))

(assert (=> b!53798 true))

(declare-fun b!53797 () Bool)

(assert (=> b!53797 (= e!28064 (contains!12 (ite lt!9384 (left!1084 (incl!3 s!875 x!21283)) (right!1087 (incl!3 s!875 x!21283))) y!1635))))

(assert (= (and d!44767 res!24531) b!53796))

(assert (= (and b!53796 c!11677) b!53797))

(assert (= (and b!53796 (not c!11677)) b!53798))

(declare-fun m!57620 () Bool)

(assert (=> b!53797 m!57620))

(assert (=> b!53780 d!44767))

(declare-fun lt!9390 () Bool)

(declare-fun e!28070 () IntSet!14)

(declare-fun b!53809 () Bool)

(assert (=> b!53809 (= e!28070 (incl!3 (ite lt!9390 (left!1084 s!875) (right!1087 s!875)) x!21283))))

(declare-fun b!53807 () Bool)

(declare-fun e!28069 () IntSet!14)

(assert (=> b!53807 (= e!28069 (Node!101 Empty!140 x!21283 Empty!140))))

(declare-fun b!53810 () Bool)

(declare-fun res!24537 () IntSet!14)

(assert (=> b!53810 (= e!28070 res!24537)))

(assert (=> b!53810 true))

(assert (=> b!53810 true))

(declare-fun d!44769 () Bool)

(declare-fun c!11682 () Bool)

(assert (=> d!44769 (= c!11682 (is-Empty!140 s!875))))

(assert (=> d!44769 (= (incl!3 s!875 x!21283) e!28069)))

(declare-fun lt!9389 () IntSet!14)

(declare-fun b!53808 () Bool)

(assert (=> b!53808 (= e!28069 (ite lt!9390 (Node!101 lt!9389 (elem!160 s!875) (right!1087 s!875)) (ite (bvsgt x!21283 (elem!160 s!875)) (Node!101 (left!1084 s!875) (elem!160 s!875) lt!9389) s!875)))))

(assert (=> b!53808 (= lt!9389 e!28070)))

(declare-fun c!11683 () Bool)

(assert (=> b!53808 (= c!11683 (or lt!9390 (bvsgt x!21283 (elem!160 s!875))))))

(assert (=> b!53808 (= lt!9390 (bvslt x!21283 (elem!160 s!875)))))

(assert (= (and b!53808 c!11683) b!53809))

(assert (= (and b!53808 (not c!11683)) b!53810))

(assert (= (and d!44769 c!11682) b!53807))

(assert (= (and d!44769 (not c!11682)) b!53808))

(declare-fun m!57622 () Bool)

(assert (=> b!53809 m!57622))

(assert (=> b!53780 d!44769))

(declare-fun d!44771 () Bool)

(declare-fun res!24539 () Bool)

(declare-fun e!28071 () Bool)

(assert (=> d!44771 (=> (not res!24539) (not e!28071))))

(assert (=> d!44771 (= res!24539 (not (is-Empty!140 s!875)))))

(assert (=> d!44771 (= (contains!12 s!875 y!1635) e!28071)))

(declare-fun lt!9391 () Bool)

(declare-fun lt!9392 () Bool)

(declare-fun b!53811 () Bool)

(assert (=> b!53811 (= e!28071 (ite lt!9392 lt!9391 (or (not (bvsgt y!1635 (elem!160 s!875))) lt!9391)))))

(declare-fun e!28072 () Bool)

(assert (=> b!53811 (= lt!9391 e!28072)))

(declare-fun c!11684 () Bool)

(assert (=> b!53811 (= c!11684 (or lt!9392 (bvsgt y!1635 (elem!160 s!875))))))

(assert (=> b!53811 (= lt!9392 (bvslt y!1635 (elem!160 s!875)))))

(declare-fun b!53813 () Bool)

(declare-fun res!24538 () Bool)

(assert (=> b!53813 (= e!28072 res!24538)))

(assert (=> b!53813 true))

(assert (=> b!53813 true))

(declare-fun b!53812 () Bool)

(assert (=> b!53812 (= e!28072 (contains!12 (ite lt!9392 (left!1084 s!875) (right!1087 s!875)) y!1635))))

(assert (= (and d!44771 res!24539) b!53811))

(assert (= (and b!53811 c!11684) b!53812))

(assert (= (and b!53811 (not c!11684)) b!53813))

(declare-fun m!57624 () Bool)

(assert (=> b!53812 m!57624))

(assert (=> b!53780 d!44771))

(push 1)

(assert (not b!53797))

(assert (not b!53809))

(assert (not b!53788))

(assert (not d!44765))

(assert (not b!53812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

