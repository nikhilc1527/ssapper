; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14008 () Bool)

(assert start!14008)

(declare-datatypes () ((List!834 (Cons!772 (h!3365 Int) (t!51490 List!834)) (Nil!774))))

(declare-fun size!948 (List!834) Int)

(declare-datatypes () ((P!35 (Charlie!35) (Alice!35) (Bob!35))))

(declare-datatypes () ((S!89 (S!90 (who!1416 P!35) (amount!1416 Int)))))

(declare-datatypes () ((List!835 (Cons!773 (h!3366 S!89) (t!51491 List!835)) (Nil!775))))

(declare-fun size!949 (List!835) Int)

(assert (=> start!14008 (not (= (size!948 Nil!774) (size!949 Nil!775)))))

(declare-fun bs!42645 () Bool)

(assert (= bs!42645 start!14008))

(declare-fun m!89487 () Bool)

(assert (=> bs!42645 m!89487))

(declare-fun m!89489 () Bool)

(assert (=> bs!42645 m!89489))

(push 1)

(assert (not start!14008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61304 () Bool)

(declare-fun lt!21381 () Int)

(assert (=> d!61304 (>= lt!21381 0)))

(declare-fun e!51413 () Int)

(assert (=> d!61304 (= lt!21381 e!51413)))

(declare-fun c!23036 () Bool)

(assert (=> d!61304 (= c!23036 (is-Nil!774 Nil!774))))

(assert (=> d!61304 (= (size!948 Nil!774) lt!21381)))

(declare-fun b!93849 () Bool)

(assert (=> b!93849 (= e!51413 0)))

(declare-fun b!93850 () Bool)

(assert (=> b!93850 (= e!51413 (+ 1 (size!948 (t!51490 Nil!774))))))

(assert (= (and d!61304 c!23036) b!93849))

(assert (= (and d!61304 (not c!23036)) b!93850))

(declare-fun m!89491 () Bool)

(assert (=> b!93850 m!89491))

(assert (=> start!14008 d!61304))

(declare-fun d!61306 () Bool)

(declare-fun lt!21384 () Int)

(assert (=> d!61306 (>= lt!21384 0)))

(declare-fun e!51416 () Int)

(assert (=> d!61306 (= lt!21384 e!51416)))

(declare-fun c!23039 () Bool)

(assert (=> d!61306 (= c!23039 (is-Nil!775 Nil!775))))

(assert (=> d!61306 (= (size!949 Nil!775) lt!21384)))

(declare-fun b!93855 () Bool)

(assert (=> b!93855 (= e!51416 0)))

(declare-fun b!93856 () Bool)

(assert (=> b!93856 (= e!51416 (+ 1 (size!949 (t!51491 Nil!775))))))

(assert (= (and d!61306 c!23039) b!93855))

(assert (= (and d!61306 (not c!23039)) b!93856))

(declare-fun m!89493 () Bool)

(assert (=> b!93856 m!89493))

(assert (=> start!14008 d!61306))

(push 1)

(assert (not b!93850))

(assert (not b!93856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

