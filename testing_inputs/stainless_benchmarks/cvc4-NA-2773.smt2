; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14606 () Bool)

(assert start!14606)

(declare-datatypes () ((P!51 (Charlie!51) (Alice!51) (Bob!51))))

(declare-datatypes () ((S!121 (S!122 (who!2143 P!51) (amount!2143 Int)))))

(declare-datatypes () ((List!852 (Cons!790 (h!4457 S!121) (t!52670 List!852)) (Nil!792))))

(declare-fun lt!21491 () List!852)

(assert (=> start!14606 (= lt!21491 (Cons!790 (S!122 Charlie!51 4000) Nil!792))))

(declare-fun lt!21490 () P!51)

(assert (=> start!14606 (= lt!21490 Alice!51)))

(declare-datatypes () ((List!853 (Cons!791 (h!4458 P!51) (t!52671 List!853)) (Nil!793))))

(declare-fun size!966 (List!853) Int)

(declare-fun size!967 (List!852) Int)

(assert (=> start!14606 (not (= (size!966 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))) (size!967 (Cons!790 (S!122 lt!21490 0) lt!21491))))))

(declare-fun bs!42935 () Bool)

(assert (= bs!42935 start!14606))

(declare-fun m!89679 () Bool)

(assert (=> bs!42935 m!89679))

(declare-fun m!89681 () Bool)

(assert (=> bs!42935 m!89681))

(push 1)

(assert (not start!14606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61412 () Bool)

(declare-fun lt!21494 () Int)

(assert (=> d!61412 (>= lt!21494 0)))

(declare-fun e!51528 () Int)

(assert (=> d!61412 (= lt!21494 e!51528)))

(declare-fun c!23120 () Bool)

(assert (=> d!61412 (= c!23120 (is-Nil!793 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))))))

(assert (=> d!61412 (= (size!966 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))) lt!21494)))

(declare-fun b!94057 () Bool)

(assert (=> b!94057 (= e!51528 0)))

(declare-fun b!94058 () Bool)

(assert (=> b!94058 (= e!51528 (+ 1 (size!966 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))))))))

(assert (= (and d!61412 c!23120) b!94057))

(assert (= (and d!61412 (not c!23120)) b!94058))

(declare-fun m!89683 () Bool)

(assert (=> b!94058 m!89683))

(assert (=> start!14606 d!61412))

(declare-fun d!61414 () Bool)

(declare-fun lt!21497 () Int)

(assert (=> d!61414 (>= lt!21497 0)))

(declare-fun e!51531 () Int)

(assert (=> d!61414 (= lt!21497 e!51531)))

(declare-fun c!23123 () Bool)

(assert (=> d!61414 (= c!23123 (is-Nil!792 (Cons!790 (S!122 lt!21490 0) lt!21491)))))

(assert (=> d!61414 (= (size!967 (Cons!790 (S!122 lt!21490 0) lt!21491)) lt!21497)))

(declare-fun b!94063 () Bool)

(assert (=> b!94063 (= e!51531 0)))

(declare-fun b!94064 () Bool)

(assert (=> b!94064 (= e!51531 (+ 1 (size!967 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491)))))))

(assert (= (and d!61414 c!23123) b!94063))

(assert (= (and d!61414 (not c!23123)) b!94064))

(declare-fun m!89685 () Bool)

(assert (=> b!94064 m!89685))

(assert (=> start!14606 d!61414))

(push 1)

(assert (not b!94064))

(assert (not b!94058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61416 () Bool)

(declare-fun lt!21498 () Int)

(assert (=> d!61416 (>= lt!21498 0)))

(declare-fun e!51532 () Int)

(assert (=> d!61416 (= lt!21498 e!51532)))

(declare-fun c!23124 () Bool)

(assert (=> d!61416 (= c!23124 (is-Nil!792 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491))))))

(assert (=> d!61416 (= (size!967 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491))) lt!21498)))

(declare-fun b!94065 () Bool)

(assert (=> b!94065 (= e!51532 0)))

(declare-fun b!94066 () Bool)

(assert (=> b!94066 (= e!51532 (+ 1 (size!967 (t!52670 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491))))))))

(assert (= (and d!61416 c!23124) b!94065))

(assert (= (and d!61416 (not c!23124)) b!94066))

(declare-fun m!89687 () Bool)

(assert (=> b!94066 m!89687))

(assert (=> b!94064 d!61416))

(declare-fun d!61418 () Bool)

(declare-fun lt!21499 () Int)

(assert (=> d!61418 (>= lt!21499 0)))

(declare-fun e!51533 () Int)

(assert (=> d!61418 (= lt!21499 e!51533)))

(declare-fun c!23125 () Bool)

(assert (=> d!61418 (= c!23125 (is-Nil!793 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793)))))))

(assert (=> d!61418 (= (size!966 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793)))) lt!21499)))

(declare-fun b!94067 () Bool)

(assert (=> b!94067 (= e!51533 0)))

(declare-fun b!94068 () Bool)

(assert (=> b!94068 (= e!51533 (+ 1 (size!966 (t!52671 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793)))))))))

(assert (= (and d!61418 c!23125) b!94067))

(assert (= (and d!61418 (not c!23125)) b!94068))

(declare-fun m!89689 () Bool)

(assert (=> b!94068 m!89689))

(assert (=> b!94058 d!61418))

(push 1)

(assert (not b!94068))

(assert (not b!94066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61420 () Bool)

(declare-fun lt!21500 () Int)

(assert (=> d!61420 (>= lt!21500 0)))

(declare-fun e!51534 () Int)

(assert (=> d!61420 (= lt!21500 e!51534)))

(declare-fun c!23126 () Bool)

(assert (=> d!61420 (= c!23126 (is-Nil!793 (t!52671 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))))))))

(assert (=> d!61420 (= (size!966 (t!52671 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))))) lt!21500)))

(declare-fun b!94069 () Bool)

(assert (=> b!94069 (= e!51534 0)))

(declare-fun b!94070 () Bool)

(assert (=> b!94070 (= e!51534 (+ 1 (size!966 (t!52671 (t!52671 (t!52671 (Cons!791 lt!21490 (Cons!791 (who!2143 (h!4457 lt!21491)) Nil!793))))))))))

(assert (= (and d!61420 c!23126) b!94069))

(assert (= (and d!61420 (not c!23126)) b!94070))

(declare-fun m!89691 () Bool)

(assert (=> b!94070 m!89691))

(assert (=> b!94068 d!61420))

(declare-fun d!61422 () Bool)

(declare-fun lt!21501 () Int)

(assert (=> d!61422 (>= lt!21501 0)))

(declare-fun e!51535 () Int)

(assert (=> d!61422 (= lt!21501 e!51535)))

(declare-fun c!23127 () Bool)

(assert (=> d!61422 (= c!23127 (is-Nil!792 (t!52670 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491)))))))

(assert (=> d!61422 (= (size!967 (t!52670 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491)))) lt!21501)))

(declare-fun b!94071 () Bool)

(assert (=> b!94071 (= e!51535 0)))

(declare-fun b!94072 () Bool)

(assert (=> b!94072 (= e!51535 (+ 1 (size!967 (t!52670 (t!52670 (t!52670 (Cons!790 (S!122 lt!21490 0) lt!21491)))))))))

(assert (= (and d!61422 c!23127) b!94071))

(assert (= (and d!61422 (not c!23127)) b!94072))

(declare-fun m!89693 () Bool)

(assert (=> b!94072 m!89693))

(assert (=> b!94066 d!61422))

(push 1)

(assert (not b!94072))

(assert (not b!94070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

