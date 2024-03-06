; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14818 () Bool)

(assert start!14818)

(declare-datatypes () ((P!58 (Charlie!58) (Alice!58) (Bob!58))))

(declare-datatypes () ((tuple2!462 (tuple2!463 (_1!270 P!58) (_2!270 P!58)))))

(declare-datatypes () ((List!866 (Cons!804 (h!4904 tuple2!462) (t!53119 List!866)) (Nil!806))))

(declare-datatypes () ((List!867 (Cons!805 (h!4905 List!866) (t!53120 List!867)) (Nil!807))))

(declare-fun size!980 (List!867) Int)

(declare-datatypes () ((List!868 (Cons!806 (h!4906 P!58) (t!53121 List!868)) (Nil!808))))

(declare-fun size!981 (List!868) Int)

(assert (=> start!14818 (not (= (size!980 Nil!807) (size!981 Nil!808)))))

(declare-fun bs!43034 () Bool)

(assert (= bs!43034 start!14818))

(declare-fun m!89767 () Bool)

(assert (=> bs!43034 m!89767))

(declare-fun m!89769 () Bool)

(assert (=> bs!43034 m!89769))

(push 1)

(assert (not start!14818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61472 () Bool)

(declare-fun lt!21570 () Int)

(assert (=> d!61472 (>= lt!21570 0)))

(declare-fun e!51586 () Int)

(assert (=> d!61472 (= lt!21570 e!51586)))

(declare-fun c!23178 () Bool)

(assert (=> d!61472 (= c!23178 (is-Nil!807 Nil!807))))

(assert (=> d!61472 (= (size!980 Nil!807) lt!21570)))

(declare-fun b!94233 () Bool)

(assert (=> b!94233 (= e!51586 0)))

(declare-fun b!94234 () Bool)

(assert (=> b!94234 (= e!51586 (+ 1 (size!980 (t!53120 Nil!807))))))

(assert (= (and d!61472 c!23178) b!94233))

(assert (= (and d!61472 (not c!23178)) b!94234))

(declare-fun m!89771 () Bool)

(assert (=> b!94234 m!89771))

(assert (=> start!14818 d!61472))

(declare-fun d!61474 () Bool)

(declare-fun lt!21573 () Int)

(assert (=> d!61474 (>= lt!21573 0)))

(declare-fun e!51589 () Int)

(assert (=> d!61474 (= lt!21573 e!51589)))

(declare-fun c!23181 () Bool)

(assert (=> d!61474 (= c!23181 (is-Nil!808 Nil!808))))

(assert (=> d!61474 (= (size!981 Nil!808) lt!21573)))

(declare-fun b!94239 () Bool)

(assert (=> b!94239 (= e!51589 0)))

(declare-fun b!94240 () Bool)

(assert (=> b!94240 (= e!51589 (+ 1 (size!981 (t!53121 Nil!808))))))

(assert (= (and d!61474 c!23181) b!94239))

(assert (= (and d!61474 (not c!23181)) b!94240))

(declare-fun m!89773 () Bool)

(assert (=> b!94240 m!89773))

(assert (=> start!14818 d!61474))

(push 1)

(assert (not b!94234))

(assert (not b!94240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

