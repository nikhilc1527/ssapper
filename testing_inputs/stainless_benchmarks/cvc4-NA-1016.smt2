; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7518 () Bool)

(assert start!7518)

(declare-fun res!24626 () Bool)

(declare-fun e!28139 () Bool)

(assert (=> start!7518 (=> (not res!24626) (not e!28139))))

(declare-datatypes () ((IntSet!19 (Node!106 (left!1089 IntSet!19) (elem!165 (_ BitVec 32)) (right!1092 IntSet!19)) (Empty!145))))

(declare-fun s!880 () IntSet!19)

(declare-fun x!21315 () (_ BitVec 32))

(assert (=> start!7518 (= res!24626 (and (not (is-Empty!145 s!880)) (bvslt x!21315 (elem!165 s!880))))))

(assert (=> start!7518 e!28139))

(assert (=> start!7518 true))

(declare-fun b!53920 () Bool)

(declare-fun res!24627 () Bool)

(assert (=> b!53920 (=> (not res!24627) (not e!28139))))

(declare-fun x$2!292 () Bool)

(declare-fun thiss!7566 () IntSet!19)

(declare-fun P2!3 (IntSet!19 IntSet!19 (_ BitVec 32)) Bool)

(assert (=> b!53920 (= res!24627 (= x$2!292 (P2!3 thiss!7566 (left!1089 s!880) x!21315)))))

(declare-fun b!53921 () Bool)

(declare-fun contains!12 (IntSet!19 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!19 (_ BitVec 32)) IntSet!19)

(assert (=> b!53921 (= e!28139 (not (contains!12 (incl!3 s!880 x!21315) x!21315)))))

(assert (= (and start!7518 res!24626) b!53920))

(assert (= (and b!53920 res!24627) b!53921))

(declare-fun m!57672 () Bool)

(assert (=> b!53920 m!57672))

(declare-fun m!57674 () Bool)

(assert (=> b!53921 m!57674))

(assert (=> b!53921 m!57674))

(declare-fun m!57676 () Bool)

(assert (=> b!53921 m!57676))

(push 1)

(assert (not b!53920))

(assert (not b!53921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44793 () Bool)

(assert (=> d!44793 (contains!12 (incl!3 (left!1089 s!880) x!21315) x!21315)))

(declare-fun lt!9455 () Bool)

(declare-fun e!28144 () Bool)

(assert (=> d!44793 (= lt!9455 e!28144)))

(declare-fun res!24636 () Bool)

(assert (=> d!44793 (=> res!24636 e!28144)))

(assert (=> d!44793 (= res!24636 (is-Empty!145 (left!1089 s!880)))))

(assert (=> d!44793 (= (P2!3 thiss!7566 (left!1089 s!880) x!21315) lt!9455)))

(declare-fun lt!9456 () Bool)

(declare-fun b!53928 () Bool)

(declare-fun lt!9454 () Bool)

(assert (=> b!53928 (= e!28144 (ite lt!9456 lt!9454 (or (not (bvsgt x!21315 (elem!165 (left!1089 s!880)))) lt!9454)))))

(declare-fun e!28145 () Bool)

(assert (=> b!53928 (= lt!9454 e!28145)))

(declare-fun c!11722 () Bool)

(assert (=> b!53928 (= c!11722 (or lt!9456 (bvsgt x!21315 (elem!165 (left!1089 s!880)))))))

(assert (=> b!53928 (= lt!9456 (bvslt x!21315 (elem!165 (left!1089 s!880))))))

(declare-fun b!53930 () Bool)

(declare-fun res!24635 () Bool)

(assert (=> b!53930 (= e!28145 res!24635)))

(assert (=> b!53930 true))

(assert (=> b!53930 true))

(declare-fun b!53929 () Bool)

(assert (=> b!53929 (= e!28145 (P2!3 thiss!7566 (ite lt!9456 (left!1089 (left!1089 s!880)) (right!1092 (left!1089 s!880))) x!21315))))

(assert (= (and d!44793 (not res!24636)) b!53928))

(assert (= (and b!53928 c!11722) b!53929))

(assert (= (and b!53928 (not c!11722)) b!53930))

(declare-fun m!57678 () Bool)

(assert (=> d!44793 m!57678))

(assert (=> d!44793 m!57678))

(declare-fun m!57680 () Bool)

(assert (=> d!44793 m!57680))

(declare-fun m!57682 () Bool)

(assert (=> b!53929 m!57682))

(assert (=> b!53920 d!44793))

(declare-fun d!44795 () Bool)

(declare-fun res!24644 () Bool)

(declare-fun e!28151 () Bool)

(assert (=> d!44795 (=> (not res!24644) (not e!28151))))

(assert (=> d!44795 (= res!24644 (not (is-Empty!145 (incl!3 s!880 x!21315))))))

(assert (=> d!44795 (= (contains!12 (incl!3 s!880 x!21315) x!21315) e!28151)))

(declare-fun b!53937 () Bool)

(declare-fun lt!9461 () Bool)

(declare-fun lt!9462 () Bool)

(assert (=> b!53937 (= e!28151 (ite lt!9462 lt!9461 (or (not (bvsgt x!21315 (elem!165 (incl!3 s!880 x!21315)))) lt!9461)))))

(declare-fun e!28150 () Bool)

(assert (=> b!53937 (= lt!9461 e!28150)))

(declare-fun c!11725 () Bool)

(assert (=> b!53937 (= c!11725 (or lt!9462 (bvsgt x!21315 (elem!165 (incl!3 s!880 x!21315)))))))

(assert (=> b!53937 (= lt!9462 (bvslt x!21315 (elem!165 (incl!3 s!880 x!21315))))))

(declare-fun b!53939 () Bool)

(declare-fun res!24645 () Bool)

(assert (=> b!53939 (= e!28150 res!24645)))

(assert (=> b!53939 true))

(assert (=> b!53939 true))

(declare-fun b!53938 () Bool)

(assert (=> b!53938 (= e!28150 (contains!12 (ite lt!9462 (left!1089 (incl!3 s!880 x!21315)) (right!1092 (incl!3 s!880 x!21315))) x!21315))))

(assert (= (and d!44795 res!24644) b!53937))

(assert (= (and b!53937 c!11725) b!53938))

(assert (= (and b!53937 (not c!11725)) b!53939))

(declare-fun m!57684 () Bool)

(assert (=> b!53938 m!57684))

(assert (=> b!53921 d!44795))

(declare-fun lt!9468 () Bool)

(declare-fun e!28156 () IntSet!19)

(declare-fun b!53950 () Bool)

(assert (=> b!53950 (= e!28156 (incl!3 (ite lt!9468 (left!1089 s!880) (right!1092 s!880)) x!21315))))

(declare-fun b!53948 () Bool)

(declare-fun e!28157 () IntSet!19)

(assert (=> b!53948 (= e!28157 (Node!106 Empty!145 x!21315 Empty!145))))

(declare-fun b!53951 () Bool)

(declare-fun res!24651 () IntSet!19)

(assert (=> b!53951 (= e!28156 res!24651)))

(assert (=> b!53951 true))

(assert (=> b!53951 true))

(declare-fun d!44797 () Bool)

(declare-fun c!11731 () Bool)

(assert (=> d!44797 (= c!11731 (is-Empty!145 s!880))))

(assert (=> d!44797 (= (incl!3 s!880 x!21315) e!28157)))

(declare-fun b!53949 () Bool)

(declare-fun lt!9467 () IntSet!19)

(assert (=> b!53949 (= e!28157 (ite lt!9468 (Node!106 lt!9467 (elem!165 s!880) (right!1092 s!880)) (ite (bvsgt x!21315 (elem!165 s!880)) (Node!106 (left!1089 s!880) (elem!165 s!880) lt!9467) s!880)))))

(assert (=> b!53949 (= lt!9467 e!28156)))

(declare-fun c!11730 () Bool)

(assert (=> b!53949 (= c!11730 (or lt!9468 (bvsgt x!21315 (elem!165 s!880))))))

(assert (=> b!53949 (= lt!9468 (bvslt x!21315 (elem!165 s!880)))))

(assert (= (and b!53949 c!11730) b!53950))

(assert (= (and b!53949 (not c!11730)) b!53951))

(assert (= (and d!44797 c!11731) b!53948))

(assert (= (and d!44797 (not c!11731)) b!53949))

(declare-fun m!57686 () Bool)

(assert (=> b!53950 m!57686))

(assert (=> b!53921 d!44797))

(push 1)

(assert (not b!53938))

(assert (not b!53929))

(assert (not d!44793))

(assert (not b!53950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

