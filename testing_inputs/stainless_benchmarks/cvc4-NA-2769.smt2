; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14590 () Bool)

(assert start!14590)

(declare-datatypes () ((P!49 (Charlie!49) (Alice!49) (Bob!49))))

(declare-datatypes () ((List!848 (Cons!786 (h!4439 P!49) (t!52648 List!848)) (Nil!788))))

(declare-fun size!962 (List!848) Int)

(declare-datatypes () ((S!117 (S!118 (who!2131 P!49) (amount!2131 Int)))))

(declare-datatypes () ((List!849 (Cons!787 (h!4440 S!117) (t!52649 List!849)) (Nil!789))))

(declare-fun size!963 (List!849) Int)

(assert (=> start!14590 (not (= (size!962 Nil!788) (size!963 Nil!789)))))

(declare-fun bs!42929 () Bool)

(assert (= bs!42929 start!14590))

(declare-fun m!89659 () Bool)

(assert (=> bs!42929 m!89659))

(declare-fun m!89661 () Bool)

(assert (=> bs!42929 m!89661))

(push 1)

(assert (not start!14590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61400 () Bool)

(declare-fun lt!21471 () Int)

(assert (=> d!61400 (>= lt!21471 0)))

(declare-fun e!51514 () Int)

(assert (=> d!61400 (= lt!21471 e!51514)))

(declare-fun c!23106 () Bool)

(assert (=> d!61400 (= c!23106 (is-Nil!788 Nil!788))))

(assert (=> d!61400 (= (size!962 Nil!788) lt!21471)))

(declare-fun b!94029 () Bool)

(assert (=> b!94029 (= e!51514 0)))

(declare-fun b!94030 () Bool)

(assert (=> b!94030 (= e!51514 (+ 1 (size!962 (t!52648 Nil!788))))))

(assert (= (and d!61400 c!23106) b!94029))

(assert (= (and d!61400 (not c!23106)) b!94030))

(declare-fun m!89663 () Bool)

(assert (=> b!94030 m!89663))

(assert (=> start!14590 d!61400))

(declare-fun d!61402 () Bool)

(declare-fun lt!21474 () Int)

(assert (=> d!61402 (>= lt!21474 0)))

(declare-fun e!51517 () Int)

(assert (=> d!61402 (= lt!21474 e!51517)))

(declare-fun c!23109 () Bool)

(assert (=> d!61402 (= c!23109 (is-Nil!789 Nil!789))))

(assert (=> d!61402 (= (size!963 Nil!789) lt!21474)))

(declare-fun b!94035 () Bool)

(assert (=> b!94035 (= e!51517 0)))

(declare-fun b!94036 () Bool)

(assert (=> b!94036 (= e!51517 (+ 1 (size!963 (t!52649 Nil!789))))))

(assert (= (and d!61402 c!23109) b!94035))

(assert (= (and d!61402 (not c!23109)) b!94036))

(declare-fun m!89665 () Bool)

(assert (=> b!94036 m!89665))

(assert (=> start!14590 d!61402))

(push 1)

(assert (not b!94030))

(assert (not b!94036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

