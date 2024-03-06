; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14824 () Bool)

(assert start!14824)

(declare-datatypes () ((P!59 (Charlie!59) (Alice!59) (Bob!59))))

(declare-fun lt!21579 () P!59)

(declare-datatypes () ((List!869 (Cons!807 (h!4917 P!59) (t!53133 List!869)) (Nil!809))))

(declare-fun lt!21578 () List!869)

(assert (=> start!14824 (= lt!21579 (h!4917 lt!21578))))

(assert (=> start!14824 (= lt!21578 (Cons!807 Charlie!59 Nil!809))))

(declare-datatypes () ((tuple2!464 (tuple2!465 (_1!271 P!59) (_2!271 P!59)))))

(declare-datatypes () ((List!870 (Cons!808 (h!4918 tuple2!464) (t!53134 List!870)) (Nil!810))))

(declare-datatypes () ((List!871 (Cons!809 (h!4919 List!870) (t!53135 List!871)) (Nil!811))))

(declare-fun size!982 (List!871) Int)

(declare-fun size!983 (List!869) Int)

(assert (=> start!14824 (not (= (size!982 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811)) (size!983 lt!21578)))))

(declare-fun bs!43036 () Bool)

(assert (= bs!43036 start!14824))

(declare-fun m!89775 () Bool)

(assert (=> bs!43036 m!89775))

(declare-fun m!89777 () Bool)

(assert (=> bs!43036 m!89777))

(push 1)

(assert (not start!14824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61476 () Bool)

(declare-fun lt!21582 () Int)

(assert (=> d!61476 (>= lt!21582 0)))

(declare-fun e!51592 () Int)

(assert (=> d!61476 (= lt!21582 e!51592)))

(declare-fun c!23184 () Bool)

(assert (=> d!61476 (= c!23184 (is-Nil!811 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811)))))

(assert (=> d!61476 (= (size!982 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811)) lt!21582)))

(declare-fun b!94247 () Bool)

(assert (=> b!94247 (= e!51592 0)))

(declare-fun b!94248 () Bool)

(assert (=> b!94248 (= e!51592 (+ 1 (size!982 (t!53135 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811)))))))

(assert (= (and d!61476 c!23184) b!94247))

(assert (= (and d!61476 (not c!23184)) b!94248))

(declare-fun m!89779 () Bool)

(assert (=> b!94248 m!89779))

(assert (=> start!14824 d!61476))

(declare-fun d!61478 () Bool)

(declare-fun lt!21585 () Int)

(assert (=> d!61478 (>= lt!21585 0)))

(declare-fun e!51595 () Int)

(assert (=> d!61478 (= lt!21585 e!51595)))

(declare-fun c!23187 () Bool)

(assert (=> d!61478 (= c!23187 (is-Nil!809 lt!21578))))

(assert (=> d!61478 (= (size!983 lt!21578) lt!21585)))

(declare-fun b!94253 () Bool)

(assert (=> b!94253 (= e!51595 0)))

(declare-fun b!94254 () Bool)

(assert (=> b!94254 (= e!51595 (+ 1 (size!983 (t!53133 lt!21578))))))

(assert (= (and d!61478 c!23187) b!94253))

(assert (= (and d!61478 (not c!23187)) b!94254))

(declare-fun m!89781 () Bool)

(assert (=> b!94254 m!89781))

(assert (=> start!14824 d!61478))

(push 1)

(assert (not b!94248))

(assert (not b!94254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61480 () Bool)

(declare-fun lt!21586 () Int)

(assert (=> d!61480 (>= lt!21586 0)))

(declare-fun e!51596 () Int)

(assert (=> d!61480 (= lt!21586 e!51596)))

(declare-fun c!23188 () Bool)

(assert (=> d!61480 (= c!23188 (is-Nil!811 (t!53135 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811))))))

(assert (=> d!61480 (= (size!982 (t!53135 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811))) lt!21586)))

(declare-fun b!94255 () Bool)

(assert (=> b!94255 (= e!51596 0)))

(declare-fun b!94256 () Bool)

(assert (=> b!94256 (= e!51596 (+ 1 (size!982 (t!53135 (t!53135 (Cons!809 (Cons!808 (tuple2!465 lt!21579 Alice!59) (Cons!808 (tuple2!465 lt!21579 Charlie!59) Nil!810)) Nil!811))))))))

(assert (= (and d!61480 c!23188) b!94255))

(assert (= (and d!61480 (not c!23188)) b!94256))

(declare-fun m!89783 () Bool)

(assert (=> b!94256 m!89783))

(assert (=> b!94248 d!61480))

(declare-fun d!61482 () Bool)

(declare-fun lt!21587 () Int)

(assert (=> d!61482 (>= lt!21587 0)))

(declare-fun e!51597 () Int)

(assert (=> d!61482 (= lt!21587 e!51597)))

(declare-fun c!23189 () Bool)

(assert (=> d!61482 (= c!23189 (is-Nil!809 (t!53133 lt!21578)))))

(assert (=> d!61482 (= (size!983 (t!53133 lt!21578)) lt!21587)))

(declare-fun b!94257 () Bool)

(assert (=> b!94257 (= e!51597 0)))

(declare-fun b!94258 () Bool)

(assert (=> b!94258 (= e!51597 (+ 1 (size!983 (t!53133 (t!53133 lt!21578)))))))

(assert (= (and d!61482 c!23189) b!94257))

(assert (= (and d!61482 (not c!23189)) b!94258))

(declare-fun m!89785 () Bool)

(assert (=> b!94258 m!89785))

(assert (=> b!94254 d!61482))

(push 1)

(assert (not b!94258))

(assert (not b!94256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

