; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7526 () Bool)

(assert start!7526)

(declare-fun res!24656 () Bool)

(declare-fun e!28160 () Bool)

(assert (=> start!7526 (=> (not res!24656) (not e!28160))))

(declare-datatypes () ((IntSet!20 (Node!107 (left!1090 IntSet!20) (elem!166 (_ BitVec 32)) (right!1093 IntSet!20)) (Empty!146))))

(declare-fun s!880 () IntSet!20)

(declare-fun x!21315 () (_ BitVec 32))

(assert (=> start!7526 (= res!24656 (and (not (is-Empty!146 s!880)) (bvsge x!21315 (elem!166 s!880)) (bvsgt x!21315 (elem!166 s!880))))))

(assert (=> start!7526 e!28160))

(assert (=> start!7526 true))

(declare-fun b!53956 () Bool)

(declare-fun res!24657 () Bool)

(assert (=> b!53956 (=> (not res!24657) (not e!28160))))

(declare-fun x$2!294 () Bool)

(declare-fun thiss!7566 () IntSet!20)

(declare-fun P2!3 (IntSet!20 IntSet!20 (_ BitVec 32)) Bool)

(assert (=> b!53956 (= res!24657 (= x$2!294 (P2!3 thiss!7566 (right!1093 s!880) x!21315)))))

(declare-fun b!53957 () Bool)

(declare-fun contains!12 (IntSet!20 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!20 (_ BitVec 32)) IntSet!20)

(assert (=> b!53957 (= e!28160 (not (contains!12 (incl!3 s!880 x!21315) x!21315)))))

(assert (= (and start!7526 res!24656) b!53956))

(assert (= (and b!53956 res!24657) b!53957))

(declare-fun m!57688 () Bool)

(assert (=> b!53956 m!57688))

(declare-fun m!57690 () Bool)

(assert (=> b!53957 m!57690))

(assert (=> b!53957 m!57690))

(declare-fun m!57692 () Bool)

(assert (=> b!53957 m!57692))

(push 1)

(assert (not b!53957))

(assert (not b!53956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44799 () Bool)

(declare-fun res!24665 () Bool)

(declare-fun e!28166 () Bool)

(assert (=> d!44799 (=> (not res!24665) (not e!28166))))

(assert (=> d!44799 (= res!24665 (not (is-Empty!146 (incl!3 s!880 x!21315))))))

(assert (=> d!44799 (= (contains!12 (incl!3 s!880 x!21315) x!21315) e!28166)))

(declare-fun b!53964 () Bool)

(declare-fun lt!9474 () Bool)

(declare-fun lt!9473 () Bool)

(assert (=> b!53964 (= e!28166 (ite lt!9474 lt!9473 (or (not (bvsgt x!21315 (elem!166 (incl!3 s!880 x!21315)))) lt!9473)))))

(declare-fun e!28165 () Bool)

(assert (=> b!53964 (= lt!9473 e!28165)))

(declare-fun c!11734 () Bool)

(assert (=> b!53964 (= c!11734 (or lt!9474 (bvsgt x!21315 (elem!166 (incl!3 s!880 x!21315)))))))

(assert (=> b!53964 (= lt!9474 (bvslt x!21315 (elem!166 (incl!3 s!880 x!21315))))))

(declare-fun b!53966 () Bool)

(declare-fun res!24666 () Bool)

(assert (=> b!53966 (= e!28165 res!24666)))

(assert (=> b!53966 true))

(assert (=> b!53966 true))

(declare-fun b!53965 () Bool)

(assert (=> b!53965 (= e!28165 (contains!12 (ite lt!9474 (left!1090 (incl!3 s!880 x!21315)) (right!1093 (incl!3 s!880 x!21315))) x!21315))))

(assert (= (and d!44799 res!24665) b!53964))

(assert (= (and b!53964 c!11734) b!53965))

(assert (= (and b!53964 (not c!11734)) b!53966))

(declare-fun m!57694 () Bool)

(assert (=> b!53965 m!57694))

(assert (=> b!53957 d!44799))

(declare-fun b!53975 () Bool)

(declare-fun e!28171 () IntSet!20)

(assert (=> b!53975 (= e!28171 (Node!107 Empty!146 x!21315 Empty!146))))

(declare-fun lt!9479 () IntSet!20)

(declare-fun b!53976 () Bool)

(declare-fun lt!9480 () Bool)

(assert (=> b!53976 (= e!28171 (ite lt!9480 (Node!107 lt!9479 (elem!166 s!880) (right!1093 s!880)) (ite (bvsgt x!21315 (elem!166 s!880)) (Node!107 (left!1090 s!880) (elem!166 s!880) lt!9479) s!880)))))

(declare-fun e!28172 () IntSet!20)

(assert (=> b!53976 (= lt!9479 e!28172)))

(declare-fun c!11739 () Bool)

(assert (=> b!53976 (= c!11739 (or lt!9480 (bvsgt x!21315 (elem!166 s!880))))))

(assert (=> b!53976 (= lt!9480 (bvslt x!21315 (elem!166 s!880)))))

(declare-fun b!53978 () Bool)

(declare-fun res!24672 () IntSet!20)

(assert (=> b!53978 (= e!28172 res!24672)))

(assert (=> b!53978 true))

(assert (=> b!53978 true))

(declare-fun b!53977 () Bool)

(assert (=> b!53977 (= e!28172 (incl!3 (ite lt!9480 (left!1090 s!880) (right!1093 s!880)) x!21315))))

(declare-fun d!44801 () Bool)

(declare-fun c!11740 () Bool)

(assert (=> d!44801 (= c!11740 (is-Empty!146 s!880))))

(assert (=> d!44801 (= (incl!3 s!880 x!21315) e!28171)))

(assert (= (and b!53976 c!11739) b!53977))

(assert (= (and b!53976 (not c!11739)) b!53978))

(assert (= (and d!44801 c!11740) b!53975))

(assert (= (and d!44801 (not c!11740)) b!53976))

(declare-fun m!57696 () Bool)

(assert (=> b!53977 m!57696))

(assert (=> b!53957 d!44801))

(declare-fun d!44803 () Bool)

(assert (=> d!44803 (contains!12 (incl!3 (right!1093 s!880) x!21315) x!21315)))

(declare-fun lt!9488 () Bool)

(declare-fun e!28177 () Bool)

(assert (=> d!44803 (= lt!9488 e!28177)))

(declare-fun res!24680 () Bool)

(assert (=> d!44803 (=> res!24680 e!28177)))

(assert (=> d!44803 (= res!24680 (is-Empty!146 (right!1093 s!880)))))

(assert (=> d!44803 (= (P2!3 thiss!7566 (right!1093 s!880) x!21315) lt!9488)))

(declare-fun lt!9489 () Bool)

(declare-fun lt!9487 () Bool)

(declare-fun b!53985 () Bool)

(assert (=> b!53985 (= e!28177 (ite lt!9489 lt!9487 (or (not (bvsgt x!21315 (elem!166 (right!1093 s!880)))) lt!9487)))))

(declare-fun e!28178 () Bool)

(assert (=> b!53985 (= lt!9487 e!28178)))

(declare-fun c!11743 () Bool)

(assert (=> b!53985 (= c!11743 (or lt!9489 (bvsgt x!21315 (elem!166 (right!1093 s!880)))))))

(assert (=> b!53985 (= lt!9489 (bvslt x!21315 (elem!166 (right!1093 s!880))))))

(declare-fun b!53987 () Bool)

(declare-fun res!24681 () Bool)

(assert (=> b!53987 (= e!28178 res!24681)))

(assert (=> b!53987 true))

(assert (=> b!53987 true))

(declare-fun b!53986 () Bool)

(assert (=> b!53986 (= e!28178 (P2!3 thiss!7566 (ite lt!9489 (left!1090 (right!1093 s!880)) (right!1093 (right!1093 s!880))) x!21315))))

(assert (= (and d!44803 (not res!24680)) b!53985))

(assert (= (and b!53985 c!11743) b!53986))

(assert (= (and b!53985 (not c!11743)) b!53987))

(declare-fun m!57698 () Bool)

(assert (=> d!44803 m!57698))

(assert (=> d!44803 m!57698))

(declare-fun m!57700 () Bool)

(assert (=> d!44803 m!57700))

(declare-fun m!57702 () Bool)

(assert (=> b!53986 m!57702))

(assert (=> b!53956 d!44803))

(push 1)

(assert (not b!53965))

(assert (not b!53986))

(assert (not d!44803))

(assert (not b!53977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

