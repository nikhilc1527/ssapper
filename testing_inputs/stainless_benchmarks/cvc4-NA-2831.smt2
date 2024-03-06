; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14738 () Bool)

(assert start!14738)

(declare-datatypes () ((P!55 (Charlie!55) (Alice!55) (Bob!55))))

(declare-datatypes () ((tuple2!456 (tuple2!457 (_1!267 P!55) (_2!267 P!55)))))

(declare-datatypes () ((List!860 (Cons!798 (h!4653 tuple2!456) (t!52866 List!860)) (Nil!800))))

(declare-fun size!974 (List!860) Int)

(declare-datatypes () ((List!861 (Cons!799 (h!4654 P!55) (t!52867 List!861)) (Nil!801))))

(declare-fun size!975 (List!861) Int)

(assert (=> start!14738 (not (= (size!974 Nil!800) (size!975 Nil!801)))))

(assert (=> start!14738 true))

(declare-fun bs!42997 () Bool)

(assert (= bs!42997 start!14738))

(declare-fun m!89731 () Bool)

(assert (=> bs!42997 m!89731))

(declare-fun m!89733 () Bool)

(assert (=> bs!42997 m!89733))

(push 1)

(assert (not start!14738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61448 () Bool)

(declare-fun lt!21537 () Int)

(assert (=> d!61448 (>= lt!21537 0)))

(declare-fun e!51562 () Int)

(assert (=> d!61448 (= lt!21537 e!51562)))

(declare-fun c!23154 () Bool)

(assert (=> d!61448 (= c!23154 (is-Nil!800 Nil!800))))

(assert (=> d!61448 (= (size!974 Nil!800) lt!21537)))

(declare-fun b!94140 () Bool)

(assert (=> b!94140 (= e!51562 0)))

(declare-fun b!94141 () Bool)

(assert (=> b!94141 (= e!51562 (+ 1 (size!974 (t!52866 Nil!800))))))

(assert (= (and d!61448 c!23154) b!94140))

(assert (= (and d!61448 (not c!23154)) b!94141))

(declare-fun m!89735 () Bool)

(assert (=> b!94141 m!89735))

(assert (=> start!14738 d!61448))

(declare-fun d!61450 () Bool)

(declare-fun lt!21540 () Int)

(assert (=> d!61450 (>= lt!21540 0)))

(declare-fun e!51565 () Int)

(assert (=> d!61450 (= lt!21540 e!51565)))

(declare-fun c!23157 () Bool)

(assert (=> d!61450 (= c!23157 (is-Nil!801 Nil!801))))

(assert (=> d!61450 (= (size!975 Nil!801) lt!21540)))

(declare-fun b!94146 () Bool)

(assert (=> b!94146 (= e!51565 0)))

(declare-fun b!94147 () Bool)

(assert (=> b!94147 (= e!51565 (+ 1 (size!975 (t!52867 Nil!801))))))

(assert (= (and d!61450 c!23157) b!94146))

(assert (= (and d!61450 (not c!23157)) b!94147))

(declare-fun m!89737 () Bool)

(assert (=> b!94147 m!89737))

(assert (=> start!14738 d!61450))

(push 1)

(assert (not b!94141))

(assert (not b!94147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

