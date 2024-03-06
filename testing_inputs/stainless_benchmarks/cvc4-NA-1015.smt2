; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7512 () Bool)

(assert start!7512)

(declare-fun res!24606 () Bool)

(declare-fun e!28124 () Bool)

(assert (=> start!7512 (=> (not res!24606) (not e!28124))))

(declare-datatypes () ((IntSet!18 (Node!105 (left!1088 IntSet!18) (elem!164 (_ BitVec 32)) (right!1091 IntSet!18)) (Empty!144))))

(declare-fun s!880 () IntSet!18)

(declare-fun x$2!291 () Bool)

(assert (=> start!7512 (= res!24606 (and (is-Empty!144 s!880) (= x$2!291 true)))))

(assert (=> start!7512 e!28124))

(assert (=> start!7512 true))

(declare-fun b!53894 () Bool)

(declare-fun x!21315 () (_ BitVec 32))

(declare-fun contains!12 (IntSet!18 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!18 (_ BitVec 32)) IntSet!18)

(assert (=> b!53894 (= e!28124 (not (contains!12 (incl!3 s!880 x!21315) x!21315)))))

(assert (= (and start!7512 res!24606) b!53894))

(declare-fun m!57664 () Bool)

(assert (=> b!53894 m!57664))

(assert (=> b!53894 m!57664))

(declare-fun m!57666 () Bool)

(assert (=> b!53894 m!57666))

(push 1)

(assert (not b!53894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44789 () Bool)

(declare-fun res!24614 () Bool)

(declare-fun e!28129 () Bool)

(assert (=> d!44789 (=> (not res!24614) (not e!28129))))

(assert (=> d!44789 (= res!24614 (not (is-Empty!144 (incl!3 s!880 x!21315))))))

(assert (=> d!44789 (= (contains!12 (incl!3 s!880 x!21315) x!21315) e!28129)))

(declare-fun lt!9440 () Bool)

(declare-fun b!53901 () Bool)

(declare-fun lt!9441 () Bool)

(assert (=> b!53901 (= e!28129 (ite lt!9440 lt!9441 (or (not (bvsgt x!21315 (elem!164 (incl!3 s!880 x!21315)))) lt!9441)))))

(declare-fun e!28130 () Bool)

(assert (=> b!53901 (= lt!9441 e!28130)))

(declare-fun c!11713 () Bool)

(assert (=> b!53901 (= c!11713 (or lt!9440 (bvsgt x!21315 (elem!164 (incl!3 s!880 x!21315)))))))

(assert (=> b!53901 (= lt!9440 (bvslt x!21315 (elem!164 (incl!3 s!880 x!21315))))))

(declare-fun b!53903 () Bool)

(declare-fun res!24615 () Bool)

(assert (=> b!53903 (= e!28130 res!24615)))

(assert (=> b!53903 true))

(assert (=> b!53903 true))

(declare-fun b!53902 () Bool)

(assert (=> b!53902 (= e!28130 (contains!12 (ite lt!9440 (left!1088 (incl!3 s!880 x!21315)) (right!1091 (incl!3 s!880 x!21315))) x!21315))))

(assert (= (and d!44789 res!24614) b!53901))

(assert (= (and b!53901 c!11713) b!53902))

(assert (= (and b!53901 (not c!11713)) b!53903))

(declare-fun m!57668 () Bool)

(assert (=> b!53902 m!57668))

(assert (=> b!53894 d!44789))

(declare-fun lt!9447 () Bool)

(declare-fun b!53913 () Bool)

(declare-fun lt!9446 () IntSet!18)

(declare-fun e!28136 () IntSet!18)

(assert (=> b!53913 (= e!28136 (ite lt!9447 (Node!105 lt!9446 (elem!164 s!880) (right!1091 s!880)) (ite (bvsgt x!21315 (elem!164 s!880)) (Node!105 (left!1088 s!880) (elem!164 s!880) lt!9446) s!880)))))

(declare-fun e!28135 () IntSet!18)

(assert (=> b!53913 (= lt!9446 e!28135)))

(declare-fun c!11719 () Bool)

(assert (=> b!53913 (= c!11719 (or lt!9447 (bvsgt x!21315 (elem!164 s!880))))))

(assert (=> b!53913 (= lt!9447 (bvslt x!21315 (elem!164 s!880)))))

(declare-fun d!44791 () Bool)

(declare-fun c!11718 () Bool)

(assert (=> d!44791 (= c!11718 (is-Empty!144 s!880))))

(assert (=> d!44791 (= (incl!3 s!880 x!21315) e!28136)))

(declare-fun b!53912 () Bool)

(assert (=> b!53912 (= e!28136 (Node!105 Empty!144 x!21315 Empty!144))))

(declare-fun b!53914 () Bool)

(assert (=> b!53914 (= e!28135 (incl!3 (ite lt!9447 (left!1088 s!880) (right!1091 s!880)) x!21315))))

(declare-fun b!53915 () Bool)

(declare-fun res!24621 () IntSet!18)

(assert (=> b!53915 (= e!28135 res!24621)))

(assert (=> b!53915 true))

(assert (=> b!53915 true))

(assert (= (and b!53913 c!11719) b!53914))

(assert (= (and b!53913 (not c!11719)) b!53915))

(assert (= (and d!44791 c!11718) b!53912))

(assert (= (and d!44791 (not c!11718)) b!53913))

(declare-fun m!57670 () Bool)

(assert (=> b!53914 m!57670))

(assert (=> b!53894 d!44791))

(push 1)

(assert (not b!53902))

(assert (not b!53914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

