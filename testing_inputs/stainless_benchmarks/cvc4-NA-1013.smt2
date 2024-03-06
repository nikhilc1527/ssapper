; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7502 () Bool)

(assert start!7502)

(declare-fun res!24574 () Bool)

(declare-fun e!28098 () Bool)

(assert (=> start!7502 (=> (not res!24574) (not e!28098))))

(declare-datatypes () ((IntSet!16 (Node!103 (left!1086 IntSet!16) (elem!162 (_ BitVec 32)) (right!1089 IntSet!16)) (Empty!142))))

(declare-fun s!875 () IntSet!16)

(declare-fun y!1635 () (_ BitVec 32))

(declare-fun x!21283 () (_ BitVec 32))

(declare-fun x$3!140 () Bool)

(assert (=> start!7502 (= res!24574 (and (not (= x!21283 y!1635)) (not (is-Empty!142 s!875)) (bvsge x!21283 (elem!162 s!875)) (bvsle x!21283 (elem!162 s!875)) (= x$3!140 true)))))

(assert (=> start!7502 e!28098))

(assert (=> start!7502 true))

(declare-fun b!53855 () Bool)

(declare-fun contains!12 (IntSet!16 (_ BitVec 32)) Bool)

(declare-fun incl!3 (IntSet!16 (_ BitVec 32)) IntSet!16)

(assert (=> b!53855 (= e!28098 (not (= (contains!12 (incl!3 s!875 x!21283) y!1635) (contains!12 s!875 y!1635))))))

(assert (= (and start!7502 res!24574) b!53855))

(declare-fun m!57648 () Bool)

(assert (=> b!53855 m!57648))

(assert (=> b!53855 m!57648))

(declare-fun m!57650 () Bool)

(assert (=> b!53855 m!57650))

(declare-fun m!57652 () Bool)

(assert (=> b!53855 m!57652))

(push 1)

(assert (not b!53855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44781 () Bool)

(declare-fun res!24583 () Bool)

(declare-fun e!28103 () Bool)

(assert (=> d!44781 (=> (not res!24583) (not e!28103))))

(assert (=> d!44781 (= res!24583 (not (is-Empty!142 (incl!3 s!875 x!21283))))))

(assert (=> d!44781 (= (contains!12 (incl!3 s!875 x!21283) y!1635) e!28103)))

(declare-fun b!53862 () Bool)

(declare-fun lt!9421 () Bool)

(declare-fun lt!9420 () Bool)

(assert (=> b!53862 (= e!28103 (ite lt!9421 lt!9420 (or (not (bvsgt y!1635 (elem!162 (incl!3 s!875 x!21283)))) lt!9420)))))

(declare-fun e!28104 () Bool)

(assert (=> b!53862 (= lt!9420 e!28104)))

(declare-fun c!11700 () Bool)

(assert (=> b!53862 (= c!11700 (or lt!9421 (bvsgt y!1635 (elem!162 (incl!3 s!875 x!21283)))))))

(assert (=> b!53862 (= lt!9421 (bvslt y!1635 (elem!162 (incl!3 s!875 x!21283))))))

(declare-fun b!53864 () Bool)

(declare-fun res!24582 () Bool)

(assert (=> b!53864 (= e!28104 res!24582)))

(assert (=> b!53864 true))

(assert (=> b!53864 true))

(declare-fun b!53863 () Bool)

(assert (=> b!53863 (= e!28104 (contains!12 (ite lt!9421 (left!1086 (incl!3 s!875 x!21283)) (right!1089 (incl!3 s!875 x!21283))) y!1635))))

(assert (= (and d!44781 res!24583) b!53862))

(assert (= (and b!53862 c!11700) b!53863))

(assert (= (and b!53862 (not c!11700)) b!53864))

(declare-fun m!57654 () Bool)

(assert (=> b!53863 m!57654))

(assert (=> b!53855 d!44781))

(declare-fun lt!9426 () Bool)

(declare-fun b!53874 () Bool)

(declare-fun lt!9427 () IntSet!16)

(declare-fun e!28109 () IntSet!16)

(assert (=> b!53874 (= e!28109 (ite lt!9426 (Node!103 lt!9427 (elem!162 s!875) (right!1089 s!875)) (ite (bvsgt x!21283 (elem!162 s!875)) (Node!103 (left!1086 s!875) (elem!162 s!875) lt!9427) s!875)))))

(declare-fun e!28110 () IntSet!16)

(assert (=> b!53874 (= lt!9427 e!28110)))

(declare-fun c!11705 () Bool)

(assert (=> b!53874 (= c!11705 (or lt!9426 (bvsgt x!21283 (elem!162 s!875))))))

(assert (=> b!53874 (= lt!9426 (bvslt x!21283 (elem!162 s!875)))))

(declare-fun d!44783 () Bool)

(declare-fun c!11706 () Bool)

(assert (=> d!44783 (= c!11706 (is-Empty!142 s!875))))

(assert (=> d!44783 (= (incl!3 s!875 x!21283) e!28109)))

(declare-fun b!53876 () Bool)

(declare-fun res!24589 () IntSet!16)

(assert (=> b!53876 (= e!28110 res!24589)))

(assert (=> b!53876 true))

(assert (=> b!53876 true))

(declare-fun b!53875 () Bool)

(assert (=> b!53875 (= e!28110 (incl!3 (ite lt!9426 (left!1086 s!875) (right!1089 s!875)) x!21283))))

(declare-fun b!53873 () Bool)

(assert (=> b!53873 (= e!28109 (Node!103 Empty!142 x!21283 Empty!142))))

(assert (= (and b!53874 c!11705) b!53875))

(assert (= (and b!53874 (not c!11705)) b!53876))

(assert (= (and d!44783 c!11706) b!53873))

(assert (= (and d!44783 (not c!11706)) b!53874))

(declare-fun m!57656 () Bool)

(assert (=> b!53875 m!57656))

(assert (=> b!53855 d!44783))

(declare-fun d!44785 () Bool)

(declare-fun res!24591 () Bool)

(declare-fun e!28111 () Bool)

(assert (=> d!44785 (=> (not res!24591) (not e!28111))))

(assert (=> d!44785 (= res!24591 (not (is-Empty!142 s!875)))))

(assert (=> d!44785 (= (contains!12 s!875 y!1635) e!28111)))

(declare-fun lt!9429 () Bool)

(declare-fun lt!9428 () Bool)

(declare-fun b!53877 () Bool)

(assert (=> b!53877 (= e!28111 (ite lt!9429 lt!9428 (or (not (bvsgt y!1635 (elem!162 s!875))) lt!9428)))))

(declare-fun e!28112 () Bool)

(assert (=> b!53877 (= lt!9428 e!28112)))

(declare-fun c!11707 () Bool)

(assert (=> b!53877 (= c!11707 (or lt!9429 (bvsgt y!1635 (elem!162 s!875))))))

(assert (=> b!53877 (= lt!9429 (bvslt y!1635 (elem!162 s!875)))))

(declare-fun b!53879 () Bool)

(declare-fun res!24590 () Bool)

(assert (=> b!53879 (= e!28112 res!24590)))

(assert (=> b!53879 true))

(assert (=> b!53879 true))

(declare-fun b!53878 () Bool)

(assert (=> b!53878 (= e!28112 (contains!12 (ite lt!9429 (left!1086 s!875) (right!1089 s!875)) y!1635))))

(assert (= (and d!44785 res!24591) b!53877))

(assert (= (and b!53877 c!11707) b!53878))

(assert (= (and b!53877 (not c!11707)) b!53879))

(declare-fun m!57658 () Bool)

(assert (=> b!53878 m!57658))

(assert (=> b!53855 d!44785))

(push 1)

(assert (not b!53875))

(assert (not b!53878))

(assert (not b!53863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

