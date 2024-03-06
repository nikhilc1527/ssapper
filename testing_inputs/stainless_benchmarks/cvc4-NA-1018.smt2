; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7534 () Bool)

(assert start!7534)

(declare-fun res!24684 () Bool)

(declare-fun e!28181 () Bool)

(assert (=> start!7534 (=> (not res!24684) (not e!28181))))

(declare-fun x$2!296 () Bool)

(declare-datatypes () ((IntSet!21 (Node!108 (left!1091 IntSet!21) (elem!167 (_ BitVec 32)) (right!1094 IntSet!21)) (Empty!147))))

(declare-fun s!880 () IntSet!21)

(declare-fun x!21315 () (_ BitVec 32))

(assert (=> start!7534 (= res!24684 (and (not (is-Empty!147 s!880)) (bvsge x!21315 (elem!167 s!880)) (bvsle x!21315 (elem!167 s!880)) (= x$2!296 true)))))

(assert (=> start!7534 e!28181))

(assert (=> start!7534 true))

(declare-fun b!53990 () Bool)

(declare-fun contains!12 (IntSet!21 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!21 (_ BitVec 32)) IntSet!21)

(assert (=> b!53990 (= e!28181 (not (contains!12 (incl!3 s!880 x!21315) x!21315)))))

(assert (= (and start!7534 res!24684) b!53990))

(declare-fun m!57704 () Bool)

(assert (=> b!53990 m!57704))

(assert (=> b!53990 m!57704))

(declare-fun m!57706 () Bool)

(assert (=> b!53990 m!57706))

(push 1)

(assert (not b!53990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44805 () Bool)

(declare-fun res!24692 () Bool)

(declare-fun e!28186 () Bool)

(assert (=> d!44805 (=> (not res!24692) (not e!28186))))

(assert (=> d!44805 (= res!24692 (not (is-Empty!147 (incl!3 s!880 x!21315))))))

(assert (=> d!44805 (= (contains!12 (incl!3 s!880 x!21315) x!21315) e!28186)))

(declare-fun lt!9495 () Bool)

(declare-fun b!53997 () Bool)

(declare-fun lt!9494 () Bool)

(assert (=> b!53997 (= e!28186 (ite lt!9495 lt!9494 (or (not (bvsgt x!21315 (elem!167 (incl!3 s!880 x!21315)))) lt!9494)))))

(declare-fun e!28187 () Bool)

(assert (=> b!53997 (= lt!9494 e!28187)))

(declare-fun c!11746 () Bool)

(assert (=> b!53997 (= c!11746 (or lt!9495 (bvsgt x!21315 (elem!167 (incl!3 s!880 x!21315)))))))

(assert (=> b!53997 (= lt!9495 (bvslt x!21315 (elem!167 (incl!3 s!880 x!21315))))))

(declare-fun b!53999 () Bool)

(declare-fun res!24693 () Bool)

(assert (=> b!53999 (= e!28187 res!24693)))

(assert (=> b!53999 true))

(assert (=> b!53999 true))

(declare-fun b!53998 () Bool)

(assert (=> b!53998 (= e!28187 (contains!12 (ite lt!9495 (left!1091 (incl!3 s!880 x!21315)) (right!1094 (incl!3 s!880 x!21315))) x!21315))))

(assert (= (and d!44805 res!24692) b!53997))

(assert (= (and b!53997 c!11746) b!53998))

(assert (= (and b!53997 (not c!11746)) b!53999))

(declare-fun m!57708 () Bool)

(assert (=> b!53998 m!57708))

(assert (=> b!53990 d!44805))

(declare-fun b!54011 () Bool)

(declare-fun e!28192 () IntSet!21)

(declare-fun res!24699 () IntSet!21)

(assert (=> b!54011 (= e!28192 res!24699)))

(assert (=> b!54011 true))

(assert (=> b!54011 true))

(declare-fun d!44807 () Bool)

(declare-fun c!11751 () Bool)

(assert (=> d!44807 (= c!11751 (is-Empty!147 s!880))))

(declare-fun e!28193 () IntSet!21)

(assert (=> d!44807 (= (incl!3 s!880 x!21315) e!28193)))

(declare-fun b!54008 () Bool)

(assert (=> b!54008 (= e!28193 (Node!108 Empty!147 x!21315 Empty!147))))

(declare-fun lt!9500 () Bool)

(declare-fun lt!9501 () IntSet!21)

(declare-fun b!54009 () Bool)

(assert (=> b!54009 (= e!28193 (ite lt!9500 (Node!108 lt!9501 (elem!167 s!880) (right!1094 s!880)) (ite (bvsgt x!21315 (elem!167 s!880)) (Node!108 (left!1091 s!880) (elem!167 s!880) lt!9501) s!880)))))

(assert (=> b!54009 (= lt!9501 e!28192)))

(declare-fun c!11752 () Bool)

(assert (=> b!54009 (= c!11752 (or lt!9500 (bvsgt x!21315 (elem!167 s!880))))))

(assert (=> b!54009 (= lt!9500 (bvslt x!21315 (elem!167 s!880)))))

(declare-fun b!54010 () Bool)

(assert (=> b!54010 (= e!28192 (incl!3 (ite lt!9500 (left!1091 s!880) (right!1094 s!880)) x!21315))))

(assert (= (and b!54009 c!11752) b!54010))

(assert (= (and b!54009 (not c!11752)) b!54011))

(assert (= (and d!44807 c!11751) b!54008))

(assert (= (and d!44807 (not c!11751)) b!54009))

(declare-fun m!57710 () Bool)

(assert (=> b!54010 m!57710))

(assert (=> b!53990 d!44807))

(push 1)

(assert (not b!54010))

(assert (not b!53998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

