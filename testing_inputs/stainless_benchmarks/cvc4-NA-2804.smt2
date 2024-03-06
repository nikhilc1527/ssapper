; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14680 () Bool)

(assert start!14680)

(declare-datatypes () ((P!54 (Charlie!54) (Alice!54) (Bob!54))))

(declare-datatypes () ((S!127 (S!128 (who!2200 P!54) (amount!2200 Int)))))

(declare-datatypes () ((List!858 (Cons!796 (h!4542 S!127) (t!52757 List!858)) (Nil!798))))

(declare-fun lt!21524 () List!858)

(assert (=> start!14680 (= lt!21524 (Cons!796 (S!128 Charlie!54 4000) Nil!798))))

(declare-fun lt!21523 () P!54)

(assert (=> start!14680 (= lt!21523 Alice!54)))

(declare-datatypes () ((List!859 (Cons!797 (h!4543 P!54) (t!52758 List!859)) (Nil!799))))

(declare-fun size!972 (List!859) Int)

(declare-fun size!973 (List!858) Int)

(assert (=> start!14680 (not (= (size!972 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))) (size!973 (Cons!796 (S!128 lt!21523 0) lt!21524))))))

(declare-fun bs!42969 () Bool)

(assert (= bs!42969 start!14680))

(declare-fun m!89715 () Bool)

(assert (=> bs!42969 m!89715))

(declare-fun m!89717 () Bool)

(assert (=> bs!42969 m!89717))

(push 1)

(assert (not start!14680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61436 () Bool)

(declare-fun lt!21527 () Int)

(assert (=> d!61436 (>= lt!21527 0)))

(declare-fun e!51552 () Int)

(assert (=> d!61436 (= lt!21527 e!51552)))

(declare-fun c!23144 () Bool)

(assert (=> d!61436 (= c!23144 (is-Nil!799 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))))))

(assert (=> d!61436 (= (size!972 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))) lt!21527)))

(declare-fun b!94105 () Bool)

(assert (=> b!94105 (= e!51552 0)))

(declare-fun b!94106 () Bool)

(assert (=> b!94106 (= e!51552 (+ 1 (size!972 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))))))))

(assert (= (and d!61436 c!23144) b!94105))

(assert (= (and d!61436 (not c!23144)) b!94106))

(declare-fun m!89719 () Bool)

(assert (=> b!94106 m!89719))

(assert (=> start!14680 d!61436))

(declare-fun d!61438 () Bool)

(declare-fun lt!21530 () Int)

(assert (=> d!61438 (>= lt!21530 0)))

(declare-fun e!51555 () Int)

(assert (=> d!61438 (= lt!21530 e!51555)))

(declare-fun c!23147 () Bool)

(assert (=> d!61438 (= c!23147 (is-Nil!798 (Cons!796 (S!128 lt!21523 0) lt!21524)))))

(assert (=> d!61438 (= (size!973 (Cons!796 (S!128 lt!21523 0) lt!21524)) lt!21530)))

(declare-fun b!94111 () Bool)

(assert (=> b!94111 (= e!51555 0)))

(declare-fun b!94112 () Bool)

(assert (=> b!94112 (= e!51555 (+ 1 (size!973 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524)))))))

(assert (= (and d!61438 c!23147) b!94111))

(assert (= (and d!61438 (not c!23147)) b!94112))

(declare-fun m!89721 () Bool)

(assert (=> b!94112 m!89721))

(assert (=> start!14680 d!61438))

(push 1)

(assert (not b!94112))

(assert (not b!94106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61440 () Bool)

(declare-fun lt!21531 () Int)

(assert (=> d!61440 (>= lt!21531 0)))

(declare-fun e!51556 () Int)

(assert (=> d!61440 (= lt!21531 e!51556)))

(declare-fun c!23148 () Bool)

(assert (=> d!61440 (= c!23148 (is-Nil!798 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524))))))

(assert (=> d!61440 (= (size!973 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524))) lt!21531)))

(declare-fun b!94113 () Bool)

(assert (=> b!94113 (= e!51556 0)))

(declare-fun b!94114 () Bool)

(assert (=> b!94114 (= e!51556 (+ 1 (size!973 (t!52757 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524))))))))

(assert (= (and d!61440 c!23148) b!94113))

(assert (= (and d!61440 (not c!23148)) b!94114))

(declare-fun m!89723 () Bool)

(assert (=> b!94114 m!89723))

(assert (=> b!94112 d!61440))

(declare-fun d!61442 () Bool)

(declare-fun lt!21532 () Int)

(assert (=> d!61442 (>= lt!21532 0)))

(declare-fun e!51557 () Int)

(assert (=> d!61442 (= lt!21532 e!51557)))

(declare-fun c!23149 () Bool)

(assert (=> d!61442 (= c!23149 (is-Nil!799 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799)))))))

(assert (=> d!61442 (= (size!972 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799)))) lt!21532)))

(declare-fun b!94115 () Bool)

(assert (=> b!94115 (= e!51557 0)))

(declare-fun b!94116 () Bool)

(assert (=> b!94116 (= e!51557 (+ 1 (size!972 (t!52758 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799)))))))))

(assert (= (and d!61442 c!23149) b!94115))

(assert (= (and d!61442 (not c!23149)) b!94116))

(declare-fun m!89725 () Bool)

(assert (=> b!94116 m!89725))

(assert (=> b!94106 d!61442))

(push 1)

(assert (not b!94116))

(assert (not b!94114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61444 () Bool)

(declare-fun lt!21533 () Int)

(assert (=> d!61444 (>= lt!21533 0)))

(declare-fun e!51558 () Int)

(assert (=> d!61444 (= lt!21533 e!51558)))

(declare-fun c!23150 () Bool)

(assert (=> d!61444 (= c!23150 (is-Nil!799 (t!52758 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))))))))

(assert (=> d!61444 (= (size!972 (t!52758 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))))) lt!21533)))

(declare-fun b!94117 () Bool)

(assert (=> b!94117 (= e!51558 0)))

(declare-fun b!94118 () Bool)

(assert (=> b!94118 (= e!51558 (+ 1 (size!972 (t!52758 (t!52758 (t!52758 (Cons!797 lt!21523 (Cons!797 (who!2200 (h!4542 lt!21524)) Nil!799))))))))))

(assert (= (and d!61444 c!23150) b!94117))

(assert (= (and d!61444 (not c!23150)) b!94118))

(declare-fun m!89727 () Bool)

(assert (=> b!94118 m!89727))

(assert (=> b!94116 d!61444))

(declare-fun d!61446 () Bool)

(declare-fun lt!21534 () Int)

(assert (=> d!61446 (>= lt!21534 0)))

(declare-fun e!51559 () Int)

(assert (=> d!61446 (= lt!21534 e!51559)))

(declare-fun c!23151 () Bool)

(assert (=> d!61446 (= c!23151 (is-Nil!798 (t!52757 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524)))))))

(assert (=> d!61446 (= (size!973 (t!52757 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524)))) lt!21534)))

(declare-fun b!94119 () Bool)

(assert (=> b!94119 (= e!51559 0)))

(declare-fun b!94120 () Bool)

(assert (=> b!94120 (= e!51559 (+ 1 (size!973 (t!52757 (t!52757 (t!52757 (Cons!796 (S!128 lt!21523 0) lt!21524)))))))))

(assert (= (and d!61446 c!23151) b!94119))

(assert (= (and d!61446 (not c!23151)) b!94120))

(declare-fun m!89729 () Bool)

(assert (=> b!94120 m!89729))

(assert (=> b!94114 d!61446))

(push 1)

(assert (not b!94118))

(assert (not b!94120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

