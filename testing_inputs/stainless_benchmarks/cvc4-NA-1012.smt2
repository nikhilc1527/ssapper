; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7494 () Bool)

(assert start!7494)

(declare-fun res!24544 () Bool)

(declare-fun e!28075 () Bool)

(assert (=> start!7494 (=> (not res!24544) (not e!28075))))

(declare-datatypes () ((IntSet!15 (Node!102 (left!1085 IntSet!15) (elem!161 (_ BitVec 32)) (right!1088 IntSet!15)) (Empty!141))))

(declare-fun s!875 () IntSet!15)

(declare-fun y!1635 () (_ BitVec 32))

(declare-fun x!21283 () (_ BitVec 32))

(assert (=> start!7494 (= res!24544 (and (not (= x!21283 y!1635)) (not (is-Empty!141 s!875)) (bvsge x!21283 (elem!161 s!875)) (bvsgt x!21283 (elem!161 s!875))))))

(assert (=> start!7494 e!28075))

(assert (=> start!7494 true))

(declare-fun b!53818 () Bool)

(declare-fun res!24545 () Bool)

(assert (=> b!53818 (=> (not res!24545) (not e!28075))))

(declare-fun thiss!7534 () IntSet!15)

(declare-fun x$3!138 () Bool)

(declare-fun P3!3 (IntSet!15 IntSet!15 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!53818 (= res!24545 (= x$3!138 (P3!3 thiss!7534 (right!1088 s!875) x!21283 y!1635)))))

(declare-fun b!53819 () Bool)

(declare-fun contains!12 (IntSet!15 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!15 (_ BitVec 32)) IntSet!15)

(assert (=> b!53819 (= e!28075 (not (= (contains!12 (incl!3 s!875 x!21283) y!1635) (contains!12 s!875 y!1635))))))

(assert (= (and start!7494 res!24544) b!53818))

(assert (= (and b!53818 res!24545) b!53819))

(declare-fun m!57626 () Bool)

(assert (=> b!53818 m!57626))

(declare-fun m!57628 () Bool)

(assert (=> b!53819 m!57628))

(assert (=> b!53819 m!57628))

(declare-fun m!57630 () Bool)

(assert (=> b!53819 m!57630))

(declare-fun m!57632 () Bool)

(assert (=> b!53819 m!57632))

(push 1)

(assert (not b!53819))

(assert (not b!53818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44773 () Bool)

(declare-fun res!24553 () Bool)

(declare-fun e!28080 () Bool)

(assert (=> d!44773 (=> (not res!24553) (not e!28080))))

(assert (=> d!44773 (= res!24553 (not (is-Empty!141 (incl!3 s!875 x!21283))))))

(assert (=> d!44773 (= (contains!12 (incl!3 s!875 x!21283) y!1635) e!28080)))

(declare-fun b!53826 () Bool)

(declare-fun lt!9397 () Bool)

(declare-fun lt!9398 () Bool)

(assert (=> b!53826 (= e!28080 (ite lt!9397 lt!9398 (or (not (bvsgt y!1635 (elem!161 (incl!3 s!875 x!21283)))) lt!9398)))))

(declare-fun e!28081 () Bool)

(assert (=> b!53826 (= lt!9398 e!28081)))

(declare-fun c!11687 () Bool)

(assert (=> b!53826 (= c!11687 (or lt!9397 (bvsgt y!1635 (elem!161 (incl!3 s!875 x!21283)))))))

(assert (=> b!53826 (= lt!9397 (bvslt y!1635 (elem!161 (incl!3 s!875 x!21283))))))

(declare-fun b!53828 () Bool)

(declare-fun res!24554 () Bool)

(assert (=> b!53828 (= e!28081 res!24554)))

(assert (=> b!53828 true))

(assert (=> b!53828 true))

(declare-fun b!53827 () Bool)

(assert (=> b!53827 (= e!28081 (contains!12 (ite lt!9397 (left!1085 (incl!3 s!875 x!21283)) (right!1088 (incl!3 s!875 x!21283))) y!1635))))

(assert (= (and d!44773 res!24553) b!53826))

(assert (= (and b!53826 c!11687) b!53827))

(assert (= (and b!53826 (not c!11687)) b!53828))

(declare-fun m!57634 () Bool)

(assert (=> b!53827 m!57634))

(assert (=> b!53819 d!44773))

(declare-fun lt!9403 () Bool)

(declare-fun b!53838 () Bool)

(declare-fun lt!9404 () IntSet!15)

(declare-fun e!28087 () IntSet!15)

(assert (=> b!53838 (= e!28087 (ite lt!9403 (Node!102 lt!9404 (elem!161 s!875) (right!1088 s!875)) (ite (bvsgt x!21283 (elem!161 s!875)) (Node!102 (left!1085 s!875) (elem!161 s!875) lt!9404) s!875)))))

(declare-fun e!28086 () IntSet!15)

(assert (=> b!53838 (= lt!9404 e!28086)))

(declare-fun c!11693 () Bool)

(assert (=> b!53838 (= c!11693 (or lt!9403 (bvsgt x!21283 (elem!161 s!875))))))

(assert (=> b!53838 (= lt!9403 (bvslt x!21283 (elem!161 s!875)))))

(declare-fun b!53837 () Bool)

(assert (=> b!53837 (= e!28087 (Node!102 Empty!141 x!21283 Empty!141))))

(declare-fun d!44775 () Bool)

(declare-fun c!11692 () Bool)

(assert (=> d!44775 (= c!11692 (is-Empty!141 s!875))))

(assert (=> d!44775 (= (incl!3 s!875 x!21283) e!28087)))

(declare-fun b!53839 () Bool)

(assert (=> b!53839 (= e!28086 (incl!3 (ite lt!9403 (left!1085 s!875) (right!1088 s!875)) x!21283))))

(declare-fun b!53840 () Bool)

(declare-fun res!24560 () IntSet!15)

(assert (=> b!53840 (= e!28086 res!24560)))

(assert (=> b!53840 true))

(assert (=> b!53840 true))

(assert (= (and b!53838 c!11693) b!53839))

(assert (= (and b!53838 (not c!11693)) b!53840))

(assert (= (and d!44775 c!11692) b!53837))

(assert (= (and d!44775 (not c!11692)) b!53838))

(declare-fun m!57636 () Bool)

(assert (=> b!53839 m!57636))

(assert (=> b!53819 d!44775))

(declare-fun d!44777 () Bool)

(declare-fun res!24561 () Bool)

(declare-fun e!28088 () Bool)

(assert (=> d!44777 (=> (not res!24561) (not e!28088))))

(assert (=> d!44777 (= res!24561 (not (is-Empty!141 s!875)))))

(assert (=> d!44777 (= (contains!12 s!875 y!1635) e!28088)))

(declare-fun b!53841 () Bool)

(declare-fun lt!9406 () Bool)

(declare-fun lt!9405 () Bool)

(assert (=> b!53841 (= e!28088 (ite lt!9405 lt!9406 (or (not (bvsgt y!1635 (elem!161 s!875))) lt!9406)))))

(declare-fun e!28089 () Bool)

(assert (=> b!53841 (= lt!9406 e!28089)))

(declare-fun c!11694 () Bool)

(assert (=> b!53841 (= c!11694 (or lt!9405 (bvsgt y!1635 (elem!161 s!875))))))

(assert (=> b!53841 (= lt!9405 (bvslt y!1635 (elem!161 s!875)))))

(declare-fun b!53843 () Bool)

(declare-fun res!24562 () Bool)

(assert (=> b!53843 (= e!28089 res!24562)))

(assert (=> b!53843 true))

(assert (=> b!53843 true))

(declare-fun b!53842 () Bool)

(assert (=> b!53842 (= e!28089 (contains!12 (ite lt!9405 (left!1085 s!875) (right!1088 s!875)) y!1635))))

(assert (= (and d!44777 res!24561) b!53841))

(assert (= (and b!53841 c!11694) b!53842))

(assert (= (and b!53841 (not c!11694)) b!53843))

(declare-fun m!57638 () Bool)

(assert (=> b!53842 m!57638))

(assert (=> b!53819 d!44777))

(declare-fun d!44779 () Bool)

(assert (=> d!44779 (= (contains!12 (incl!3 (right!1088 s!875) x!21283) y!1635) (contains!12 (right!1088 s!875) y!1635))))

(declare-fun lt!9415 () Bool)

(declare-fun e!28094 () Bool)

(assert (=> d!44779 (= lt!9415 e!28094)))

(declare-fun res!24571 () Bool)

(assert (=> d!44779 (=> res!24571 e!28094)))

(assert (=> d!44779 (= res!24571 (is-Empty!141 (right!1088 s!875)))))

(assert (=> d!44779 (not (= x!21283 y!1635))))

(assert (=> d!44779 (= (P3!3 thiss!7534 (right!1088 s!875) x!21283 y!1635) lt!9415)))

(declare-fun b!53850 () Bool)

(declare-fun lt!9413 () Bool)

(declare-fun lt!9414 () Bool)

(assert (=> b!53850 (= e!28094 (ite lt!9414 lt!9413 (or (not (bvsgt x!21283 (elem!161 (right!1088 s!875)))) lt!9413)))))

(declare-fun e!28095 () Bool)

(assert (=> b!53850 (= lt!9413 e!28095)))

(declare-fun c!11697 () Bool)

(assert (=> b!53850 (= c!11697 (or lt!9414 (bvsgt x!21283 (elem!161 (right!1088 s!875)))))))

(assert (=> b!53850 (= lt!9414 (bvslt x!21283 (elem!161 (right!1088 s!875))))))

(declare-fun b!53852 () Bool)

(declare-fun res!24570 () Bool)

(assert (=> b!53852 (= e!28095 res!24570)))

(assert (=> b!53852 true))

(assert (=> b!53852 true))

(declare-fun b!53851 () Bool)

(assert (=> b!53851 (= e!28095 (P3!3 thiss!7534 (ite lt!9414 (left!1085 (right!1088 s!875)) (right!1088 (right!1088 s!875))) x!21283 y!1635))))

(assert (= (and d!44779 (not res!24571)) b!53850))

(assert (= (and b!53850 c!11697) b!53851))

(assert (= (and b!53850 (not c!11697)) b!53852))

(declare-fun m!57640 () Bool)

(assert (=> d!44779 m!57640))

(assert (=> d!44779 m!57640))

(declare-fun m!57642 () Bool)

(assert (=> d!44779 m!57642))

(declare-fun m!57644 () Bool)

(assert (=> d!44779 m!57644))

(declare-fun m!57646 () Bool)

(assert (=> b!53851 m!57646))

(assert (=> b!53818 d!44779))

(push 1)

(assert (not b!53842))

(assert (not b!53827))

(assert (not d!44779))

(assert (not b!53839))

(assert (not b!53851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

