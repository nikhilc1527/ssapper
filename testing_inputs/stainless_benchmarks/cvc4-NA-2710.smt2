; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14468 () Bool)

(assert start!14468)

(declare-datatypes () ((List!846 (Cons!784 (h!4235 Int) (t!52423 List!846)) (Nil!786))))

(declare-fun size!960 (List!846) Int)

(declare-datatypes () ((P!48 (Charlie!48) (Alice!48) (Bob!48))))

(declare-datatypes () ((S!115 (S!116 (who!1988 P!48) (amount!1988 Int)))))

(declare-datatypes () ((List!847 (Cons!785 (h!4236 S!115) (t!52424 List!847)) (Nil!787))))

(declare-fun size!961 (List!847) Int)

(assert (=> start!14468 (not (= (size!960 (Cons!784 (- 2000) Nil!786)) (size!961 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787))))))

(declare-fun bs!42869 () Bool)

(assert (= bs!42869 start!14468))

(declare-fun m!89647 () Bool)

(assert (=> bs!42869 m!89647))

(declare-fun m!89649 () Bool)

(assert (=> bs!42869 m!89649))

(push 1)

(assert (not start!14468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61392 () Bool)

(declare-fun lt!21463 () Int)

(assert (=> d!61392 (>= lt!21463 0)))

(declare-fun e!51506 () Int)

(assert (=> d!61392 (= lt!21463 e!51506)))

(declare-fun c!23098 () Bool)

(assert (=> d!61392 (= c!23098 (is-Nil!786 (Cons!784 (- 2000) Nil!786)))))

(assert (=> d!61392 (= (size!960 (Cons!784 (- 2000) Nil!786)) lt!21463)))

(declare-fun b!94013 () Bool)

(assert (=> b!94013 (= e!51506 0)))

(declare-fun b!94014 () Bool)

(assert (=> b!94014 (= e!51506 (+ 1 (size!960 (t!52423 (Cons!784 (- 2000) Nil!786)))))))

(assert (= (and d!61392 c!23098) b!94013))

(assert (= (and d!61392 (not c!23098)) b!94014))

(declare-fun m!89651 () Bool)

(assert (=> b!94014 m!89651))

(assert (=> start!14468 d!61392))

(declare-fun d!61394 () Bool)

(declare-fun lt!21466 () Int)

(assert (=> d!61394 (>= lt!21466 0)))

(declare-fun e!51509 () Int)

(assert (=> d!61394 (= lt!21466 e!51509)))

(declare-fun c!23101 () Bool)

(assert (=> d!61394 (= c!23101 (is-Nil!787 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787)))))

(assert (=> d!61394 (= (size!961 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787)) lt!21466)))

(declare-fun b!94019 () Bool)

(assert (=> b!94019 (= e!51509 0)))

(declare-fun b!94020 () Bool)

(assert (=> b!94020 (= e!51509 (+ 1 (size!961 (t!52424 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787)))))))

(assert (= (and d!61394 c!23101) b!94019))

(assert (= (and d!61394 (not c!23101)) b!94020))

(declare-fun m!89653 () Bool)

(assert (=> b!94020 m!89653))

(assert (=> start!14468 d!61394))

(push 1)

(assert (not b!94014))

(assert (not b!94020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61396 () Bool)

(declare-fun lt!21467 () Int)

(assert (=> d!61396 (>= lt!21467 0)))

(declare-fun e!51510 () Int)

(assert (=> d!61396 (= lt!21467 e!51510)))

(declare-fun c!23102 () Bool)

(assert (=> d!61396 (= c!23102 (is-Nil!786 (t!52423 (Cons!784 (- 2000) Nil!786))))))

(assert (=> d!61396 (= (size!960 (t!52423 (Cons!784 (- 2000) Nil!786))) lt!21467)))

(declare-fun b!94021 () Bool)

(assert (=> b!94021 (= e!51510 0)))

(declare-fun b!94022 () Bool)

(assert (=> b!94022 (= e!51510 (+ 1 (size!960 (t!52423 (t!52423 (Cons!784 (- 2000) Nil!786))))))))

(assert (= (and d!61396 c!23102) b!94021))

(assert (= (and d!61396 (not c!23102)) b!94022))

(declare-fun m!89655 () Bool)

(assert (=> b!94022 m!89655))

(assert (=> b!94014 d!61396))

(declare-fun d!61398 () Bool)

(declare-fun lt!21468 () Int)

(assert (=> d!61398 (>= lt!21468 0)))

(declare-fun e!51511 () Int)

(assert (=> d!61398 (= lt!21468 e!51511)))

(declare-fun c!23103 () Bool)

(assert (=> d!61398 (= c!23103 (is-Nil!787 (t!52424 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787))))))

(assert (=> d!61398 (= (size!961 (t!52424 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787))) lt!21468)))

(declare-fun b!94023 () Bool)

(assert (=> b!94023 (= e!51511 0)))

(declare-fun b!94024 () Bool)

(assert (=> b!94024 (= e!51511 (+ 1 (size!961 (t!52424 (t!52424 (Cons!785 (S!116 Charlie!48 (- 2000)) Nil!787))))))))

(assert (= (and d!61398 c!23103) b!94023))

(assert (= (and d!61398 (not c!23103)) b!94024))

(declare-fun m!89657 () Bool)

(assert (=> b!94024 m!89657))

(assert (=> b!94020 d!61398))

(push 1)

(assert (not b!94022))

(assert (not b!94024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

