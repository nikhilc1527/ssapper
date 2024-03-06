; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14670 () Bool)

(assert start!14670)

(declare-datatypes () ((P!53 (Charlie!53) (Alice!53) (Bob!53))))

(declare-datatypes () ((S!125 (S!126 (who!2192 P!53) (amount!2192 Int)))))

(declare-datatypes () ((List!856 (Cons!794 (h!4530 S!125) (t!52742 List!856)) (Nil!796))))

(declare-fun lt!21510 () List!856)

(assert (=> start!14670 (= lt!21510 (Cons!794 (S!126 Charlie!53 4000) Nil!796))))

(declare-datatypes () ((List!857 (Cons!795 (h!4531 P!53) (t!52743 List!857)) (Nil!797))))

(declare-fun size!970 (List!857) Int)

(declare-fun size!971 (List!856) Int)

(assert (=> start!14670 (not (= (size!970 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797)) (size!971 lt!21510)))))

(declare-fun bs!42965 () Bool)

(assert (= bs!42965 start!14670))

(declare-fun m!89703 () Bool)

(assert (=> bs!42965 m!89703))

(declare-fun m!89705 () Bool)

(assert (=> bs!42965 m!89705))

(push 1)

(assert (not start!14670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61428 () Bool)

(declare-fun lt!21513 () Int)

(assert (=> d!61428 (>= lt!21513 0)))

(declare-fun e!51544 () Int)

(assert (=> d!61428 (= lt!21513 e!51544)))

(declare-fun c!23136 () Bool)

(assert (=> d!61428 (= c!23136 (is-Nil!797 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797)))))

(assert (=> d!61428 (= (size!970 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797)) lt!21513)))

(declare-fun b!94089 () Bool)

(assert (=> b!94089 (= e!51544 0)))

(declare-fun b!94090 () Bool)

(assert (=> b!94090 (= e!51544 (+ 1 (size!970 (t!52743 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797)))))))

(assert (= (and d!61428 c!23136) b!94089))

(assert (= (and d!61428 (not c!23136)) b!94090))

(declare-fun m!89707 () Bool)

(assert (=> b!94090 m!89707))

(assert (=> start!14670 d!61428))

(declare-fun d!61430 () Bool)

(declare-fun lt!21516 () Int)

(assert (=> d!61430 (>= lt!21516 0)))

(declare-fun e!51547 () Int)

(assert (=> d!61430 (= lt!21516 e!51547)))

(declare-fun c!23139 () Bool)

(assert (=> d!61430 (= c!23139 (is-Nil!796 lt!21510))))

(assert (=> d!61430 (= (size!971 lt!21510) lt!21516)))

(declare-fun b!94095 () Bool)

(assert (=> b!94095 (= e!51547 0)))

(declare-fun b!94096 () Bool)

(assert (=> b!94096 (= e!51547 (+ 1 (size!971 (t!52742 lt!21510))))))

(assert (= (and d!61430 c!23139) b!94095))

(assert (= (and d!61430 (not c!23139)) b!94096))

(declare-fun m!89709 () Bool)

(assert (=> b!94096 m!89709))

(assert (=> start!14670 d!61430))

(push 1)

(assert (not b!94090))

(assert (not b!94096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61432 () Bool)

(declare-fun lt!21517 () Int)

(assert (=> d!61432 (>= lt!21517 0)))

(declare-fun e!51548 () Int)

(assert (=> d!61432 (= lt!21517 e!51548)))

(declare-fun c!23140 () Bool)

(assert (=> d!61432 (= c!23140 (is-Nil!797 (t!52743 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797))))))

(assert (=> d!61432 (= (size!970 (t!52743 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797))) lt!21517)))

(declare-fun b!94097 () Bool)

(assert (=> b!94097 (= e!51548 0)))

(declare-fun b!94098 () Bool)

(assert (=> b!94098 (= e!51548 (+ 1 (size!970 (t!52743 (t!52743 (Cons!795 (who!2192 (h!4530 lt!21510)) Nil!797))))))))

(assert (= (and d!61432 c!23140) b!94097))

(assert (= (and d!61432 (not c!23140)) b!94098))

(declare-fun m!89711 () Bool)

(assert (=> b!94098 m!89711))

(assert (=> b!94090 d!61432))

(declare-fun d!61434 () Bool)

(declare-fun lt!21518 () Int)

(assert (=> d!61434 (>= lt!21518 0)))

(declare-fun e!51549 () Int)

(assert (=> d!61434 (= lt!21518 e!51549)))

(declare-fun c!23141 () Bool)

(assert (=> d!61434 (= c!23141 (is-Nil!796 (t!52742 lt!21510)))))

(assert (=> d!61434 (= (size!971 (t!52742 lt!21510)) lt!21518)))

(declare-fun b!94099 () Bool)

(assert (=> b!94099 (= e!51549 0)))

(declare-fun b!94100 () Bool)

(assert (=> b!94100 (= e!51549 (+ 1 (size!971 (t!52742 (t!52742 lt!21510)))))))

(assert (= (and d!61434 c!23141) b!94099))

(assert (= (and d!61434 (not c!23141)) b!94100))

(declare-fun m!89713 () Bool)

(assert (=> b!94100 m!89713))

(assert (=> b!94096 d!61434))

(push 1)

(assert (not b!94098))

(assert (not b!94100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

