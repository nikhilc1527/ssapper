; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14462 () Bool)

(assert start!14462)

(declare-datatypes () ((List!844 (Cons!782 (h!4228 Int) (t!52414 List!844)) (Nil!784))))

(declare-fun size!958 (List!844) Int)

(declare-datatypes () ((P!47 (Charlie!47) (Alice!47) (Bob!47))))

(declare-datatypes () ((S!113 (S!114 (who!1983 P!47) (amount!1983 Int)))))

(declare-datatypes () ((List!845 (Cons!783 (h!4229 S!113) (t!52415 List!845)) (Nil!785))))

(declare-fun size!959 (List!845) Int)

(assert (=> start!14462 (not (= (size!958 Nil!784) (size!959 Nil!785)))))

(declare-fun bs!42867 () Bool)

(assert (= bs!42867 start!14462))

(declare-fun m!89639 () Bool)

(assert (=> bs!42867 m!89639))

(declare-fun m!89641 () Bool)

(assert (=> bs!42867 m!89641))

(push 1)

(assert (not start!14462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61388 () Bool)

(declare-fun lt!21457 () Int)

(assert (=> d!61388 (>= lt!21457 0)))

(declare-fun e!51500 () Int)

(assert (=> d!61388 (= lt!21457 e!51500)))

(declare-fun c!23092 () Bool)

(assert (=> d!61388 (= c!23092 (is-Nil!784 Nil!784))))

(assert (=> d!61388 (= (size!958 Nil!784) lt!21457)))

(declare-fun b!94001 () Bool)

(assert (=> b!94001 (= e!51500 0)))

(declare-fun b!94002 () Bool)

(assert (=> b!94002 (= e!51500 (+ 1 (size!958 (t!52414 Nil!784))))))

(assert (= (and d!61388 c!23092) b!94001))

(assert (= (and d!61388 (not c!23092)) b!94002))

(declare-fun m!89643 () Bool)

(assert (=> b!94002 m!89643))

(assert (=> start!14462 d!61388))

(declare-fun d!61390 () Bool)

(declare-fun lt!21460 () Int)

(assert (=> d!61390 (>= lt!21460 0)))

(declare-fun e!51503 () Int)

(assert (=> d!61390 (= lt!21460 e!51503)))

(declare-fun c!23095 () Bool)

(assert (=> d!61390 (= c!23095 (is-Nil!785 Nil!785))))

(assert (=> d!61390 (= (size!959 Nil!785) lt!21460)))

(declare-fun b!94007 () Bool)

(assert (=> b!94007 (= e!51503 0)))

(declare-fun b!94008 () Bool)

(assert (=> b!94008 (= e!51503 (+ 1 (size!959 (t!52415 Nil!785))))))

(assert (= (and d!61390 c!23095) b!94007))

(assert (= (and d!61390 (not c!23095)) b!94008))

(declare-fun m!89645 () Bool)

(assert (=> b!94008 m!89645))

(assert (=> start!14462 d!61390))

(push 1)

(assert (not b!94002))

(assert (not b!94008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

