; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14754 () Bool)

(assert start!14754)

(declare-datatypes () ((P!57 (Charlie!57) (Alice!57) (Bob!57))))

(declare-datatypes () ((List!864 (Cons!802 (h!4677 P!57) (t!52894 List!864)) (Nil!804))))

(declare-fun lt!21557 () List!864)

(assert (=> start!14754 (= lt!21557 (Cons!802 Charlie!57 Nil!804))))

(declare-fun lt!21556 () P!57)

(assert (=> start!14754 (= lt!21556 Alice!57)))

(declare-fun a!232 () P!57)

(declare-datatypes () ((tuple2!460 (tuple2!461 (_1!269 P!57) (_2!269 P!57)))))

(declare-datatypes () ((List!865 (Cons!803 (h!4678 tuple2!460) (t!52895 List!865)) (Nil!805))))

(declare-fun size!978 (List!865) Int)

(declare-fun size!979 (List!864) Int)

(assert (=> start!14754 (not (= (size!978 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))) (size!979 (Cons!802 lt!21556 lt!21557))))))

(assert (=> start!14754 true))

(declare-fun bs!43003 () Bool)

(assert (= bs!43003 start!14754))

(declare-fun m!89751 () Bool)

(assert (=> bs!43003 m!89751))

(declare-fun m!89753 () Bool)

(assert (=> bs!43003 m!89753))

(push 1)

(assert (not start!14754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61460 () Bool)

(declare-fun lt!21560 () Int)

(assert (=> d!61460 (>= lt!21560 0)))

(declare-fun e!51576 () Int)

(assert (=> d!61460 (= lt!21560 e!51576)))

(declare-fun c!23168 () Bool)

(assert (=> d!61460 (= c!23168 (is-Nil!805 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))))))

(assert (=> d!61460 (= (size!978 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))) lt!21560)))

(declare-fun b!94174 () Bool)

(assert (=> b!94174 (= e!51576 0)))

(declare-fun b!94175 () Bool)

(assert (=> b!94175 (= e!51576 (+ 1 (size!978 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))))))))

(assert (= (and d!61460 c!23168) b!94174))

(assert (= (and d!61460 (not c!23168)) b!94175))

(declare-fun m!89755 () Bool)

(assert (=> b!94175 m!89755))

(assert (=> start!14754 d!61460))

(declare-fun d!61462 () Bool)

(declare-fun lt!21563 () Int)

(assert (=> d!61462 (>= lt!21563 0)))

(declare-fun e!51579 () Int)

(assert (=> d!61462 (= lt!21563 e!51579)))

(declare-fun c!23171 () Bool)

(assert (=> d!61462 (= c!23171 (is-Nil!804 (Cons!802 lt!21556 lt!21557)))))

(assert (=> d!61462 (= (size!979 (Cons!802 lt!21556 lt!21557)) lt!21563)))

(declare-fun b!94180 () Bool)

(assert (=> b!94180 (= e!51579 0)))

(declare-fun b!94181 () Bool)

(assert (=> b!94181 (= e!51579 (+ 1 (size!979 (t!52894 (Cons!802 lt!21556 lt!21557)))))))

(assert (= (and d!61462 c!23171) b!94180))

(assert (= (and d!61462 (not c!23171)) b!94181))

(declare-fun m!89757 () Bool)

(assert (=> b!94181 m!89757))

(assert (=> start!14754 d!61462))

(push 1)

(assert (not b!94175))

(assert (not b!94181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61464 () Bool)

(declare-fun lt!21564 () Int)

(assert (=> d!61464 (>= lt!21564 0)))

(declare-fun e!51580 () Int)

(assert (=> d!61464 (= lt!21564 e!51580)))

(declare-fun c!23172 () Bool)

(assert (=> d!61464 (= c!23172 (is-Nil!805 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805)))))))

(assert (=> d!61464 (= (size!978 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805)))) lt!21564)))

(declare-fun b!94182 () Bool)

(assert (=> b!94182 (= e!51580 0)))

(declare-fun b!94183 () Bool)

(assert (=> b!94183 (= e!51580 (+ 1 (size!978 (t!52895 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805)))))))))

(assert (= (and d!61464 c!23172) b!94182))

(assert (= (and d!61464 (not c!23172)) b!94183))

(declare-fun m!89759 () Bool)

(assert (=> b!94183 m!89759))

(assert (=> b!94175 d!61464))

(declare-fun d!61466 () Bool)

(declare-fun lt!21565 () Int)

(assert (=> d!61466 (>= lt!21565 0)))

(declare-fun e!51581 () Int)

(assert (=> d!61466 (= lt!21565 e!51581)))

(declare-fun c!23173 () Bool)

(assert (=> d!61466 (= c!23173 (is-Nil!804 (t!52894 (Cons!802 lt!21556 lt!21557))))))

(assert (=> d!61466 (= (size!979 (t!52894 (Cons!802 lt!21556 lt!21557))) lt!21565)))

(declare-fun b!94184 () Bool)

(assert (=> b!94184 (= e!51581 0)))

(declare-fun b!94185 () Bool)

(assert (=> b!94185 (= e!51581 (+ 1 (size!979 (t!52894 (t!52894 (Cons!802 lt!21556 lt!21557))))))))

(assert (= (and d!61466 c!23173) b!94184))

(assert (= (and d!61466 (not c!23173)) b!94185))

(declare-fun m!89761 () Bool)

(assert (=> b!94185 m!89761))

(assert (=> b!94181 d!61466))

(push 1)

(assert (not b!94183))

(assert (not b!94185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61468 () Bool)

(declare-fun lt!21566 () Int)

(assert (=> d!61468 (>= lt!21566 0)))

(declare-fun e!51582 () Int)

(assert (=> d!61468 (= lt!21566 e!51582)))

(declare-fun c!23174 () Bool)

(assert (=> d!61468 (= c!23174 (is-Nil!805 (t!52895 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))))))))

(assert (=> d!61468 (= (size!978 (t!52895 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))))) lt!21566)))

(declare-fun b!94186 () Bool)

(assert (=> b!94186 (= e!51582 0)))

(declare-fun b!94187 () Bool)

(assert (=> b!94187 (= e!51582 (+ 1 (size!978 (t!52895 (t!52895 (t!52895 (Cons!803 (tuple2!461 a!232 lt!21556) (Cons!803 (tuple2!461 a!232 (h!4677 lt!21557)) Nil!805))))))))))

(assert (= (and d!61468 c!23174) b!94186))

(assert (= (and d!61468 (not c!23174)) b!94187))

(declare-fun m!89763 () Bool)

(assert (=> b!94187 m!89763))

(assert (=> b!94183 d!61468))

(declare-fun d!61470 () Bool)

(declare-fun lt!21567 () Int)

(assert (=> d!61470 (>= lt!21567 0)))

(declare-fun e!51583 () Int)

(assert (=> d!61470 (= lt!21567 e!51583)))

(declare-fun c!23175 () Bool)

(assert (=> d!61470 (= c!23175 (is-Nil!804 (t!52894 (t!52894 (Cons!802 lt!21556 lt!21557)))))))

(assert (=> d!61470 (= (size!979 (t!52894 (t!52894 (Cons!802 lt!21556 lt!21557)))) lt!21567)))

(declare-fun b!94188 () Bool)

(assert (=> b!94188 (= e!51583 0)))

(declare-fun b!94189 () Bool)

(assert (=> b!94189 (= e!51583 (+ 1 (size!979 (t!52894 (t!52894 (t!52894 (Cons!802 lt!21556 lt!21557)))))))))

(assert (= (and d!61470 c!23175) b!94188))

(assert (= (and d!61470 (not c!23175)) b!94189))

(declare-fun m!89765 () Bool)

(assert (=> b!94189 m!89765))

(assert (=> b!94185 d!61470))

(push 1)

(assert (not b!94187))

(assert (not b!94189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

