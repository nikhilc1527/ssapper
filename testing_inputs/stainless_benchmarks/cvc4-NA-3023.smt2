; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15176 () Bool)

(assert start!15176)

(declare-fun res!49370 () Bool)

(declare-fun e!51718 () Bool)

(assert (=> start!15176 (=> res!49370 e!51718)))

(declare-datatypes () ((P!80 (Charlie!80) (Alice!80) (Bob!80))))

(declare-datatypes () ((tuple2!506 (tuple2!507 (_1!292 P!80) (_2!292 P!80)))))

(declare-datatypes () ((List!882 (Cons!820 (h!6655 tuple2!506) (t!54959 List!882)) (Nil!822))))

(declare-fun lt!21725 () List!882)

(declare-fun lt!21724 () List!882)

(declare-fun size!993 (List!882) Int)

(assert (=> start!15176 (= res!49370 (> (size!993 lt!21725) (size!993 (t!54959 lt!21724))))))

(assert (=> start!15176 (= lt!21725 Nil!822)))

(declare-fun lt!21723 () List!882)

(assert (=> start!15176 (= lt!21724 (t!54959 (Cons!820 (tuple2!507 Alice!80 Charlie!80) (Cons!820 (h!6655 lt!21723) (Cons!820 (h!6655 (t!54959 lt!21723)) Nil!822)))))))

(assert (=> start!15176 (= lt!21723 (Cons!820 (tuple2!507 Charlie!80 Alice!80) (Cons!820 (tuple2!507 Charlie!80 Charlie!80) Nil!822)))))

(assert (=> start!15176 e!51718))

(declare-fun b!94776 () Bool)

(declare-fun res!49369 () Bool)

(assert (=> b!94776 (=> res!49369 e!51718)))

(declare-fun content!203 (List!882) (Set tuple2!506))

(assert (=> b!94776 (= res!49369 (not (subset (content!203 lt!21725) (content!203 (t!54959 lt!21724)))))))

(declare-fun b!94777 () Bool)

(declare-fun lambda!11196 () Int)

(declare-fun forall!80 (List!882 Int) Bool)

(assert (=> b!94777 (= e!51718 (not (forall!80 lt!21725 lambda!11196)))))

(assert (= (and start!15176 (not res!49370)) b!94776))

(assert (= (and b!94776 (not res!49369)) b!94777))

(declare-fun m!90037 () Bool)

(assert (=> start!15176 m!90037))

(declare-fun m!90039 () Bool)

(assert (=> start!15176 m!90039))

(declare-fun m!90041 () Bool)

(assert (=> b!94776 m!90041))

(declare-fun m!90043 () Bool)

(assert (=> b!94776 m!90043))

(declare-fun m!90045 () Bool)

(assert (=> b!94777 m!90045))

(push 1)

(assert (not b!94777))

(assert (not start!15176))

(assert (not b!94776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61606 () Bool)

(declare-fun res!49375 () Bool)

(declare-fun e!51723 () Bool)

(assert (=> d!61606 (=> res!49375 e!51723)))

(assert (=> d!61606 (= res!49375 (is-Nil!822 lt!21725))))

(assert (=> d!61606 (= (forall!80 lt!21725 lambda!11196) e!51723)))

(declare-fun b!94782 () Bool)

(declare-fun e!51724 () Bool)

(assert (=> b!94782 (= e!51723 e!51724)))

(declare-fun res!49376 () Bool)

(assert (=> b!94782 (=> (not res!49376) (not e!51724))))

(declare-fun dynLambda!1150 (Int tuple2!506) Bool)

(assert (=> b!94782 (= res!49376 (dynLambda!1150 lambda!11196 (h!6655 lt!21725)))))

(declare-fun b!94783 () Bool)

(assert (=> b!94783 (= e!51724 (forall!80 (t!54959 lt!21725) lambda!11196))))

(assert (= (and d!61606 (not res!49375)) b!94782))

(assert (= (and b!94782 res!49376) b!94783))

(declare-fun b_lambda!18979 () Bool)

(assert (=> (not b_lambda!18979) (not b!94782)))

(declare-fun m!90047 () Bool)

(assert (=> b!94782 m!90047))

(declare-fun m!90049 () Bool)

(assert (=> b!94783 m!90049))

(assert (=> b!94777 d!61606))

(declare-fun d!61608 () Bool)

(declare-fun lt!21728 () Int)

(assert (=> d!61608 (>= lt!21728 0)))

(declare-fun e!51727 () Int)

(assert (=> d!61608 (= lt!21728 e!51727)))

(declare-fun c!23283 () Bool)

(assert (=> d!61608 (= c!23283 (is-Nil!822 lt!21725))))

(assert (=> d!61608 (= (size!993 lt!21725) lt!21728)))

(declare-fun b!94788 () Bool)

(assert (=> b!94788 (= e!51727 0)))

(declare-fun b!94789 () Bool)

(assert (=> b!94789 (= e!51727 (+ 1 (size!993 (t!54959 lt!21725))))))

(assert (= (and d!61608 c!23283) b!94788))

(assert (= (and d!61608 (not c!23283)) b!94789))

(declare-fun m!90051 () Bool)

(assert (=> b!94789 m!90051))

(assert (=> start!15176 d!61608))

(declare-fun d!61610 () Bool)

(declare-fun lt!21729 () Int)

(assert (=> d!61610 (>= lt!21729 0)))

(declare-fun e!51728 () Int)

(assert (=> d!61610 (= lt!21729 e!51728)))

(declare-fun c!23284 () Bool)

(assert (=> d!61610 (= c!23284 (is-Nil!822 (t!54959 lt!21724)))))

(assert (=> d!61610 (= (size!993 (t!54959 lt!21724)) lt!21729)))

(declare-fun b!94790 () Bool)

(assert (=> b!94790 (= e!51728 0)))

(declare-fun b!94791 () Bool)

(assert (=> b!94791 (= e!51728 (+ 1 (size!993 (t!54959 (t!54959 lt!21724)))))))

(assert (= (and d!61610 c!23284) b!94790))

(assert (= (and d!61610 (not c!23284)) b!94791))

(declare-fun m!90053 () Bool)

(assert (=> b!94791 m!90053))

(assert (=> start!15176 d!61610))

(declare-fun d!61612 () Bool)

(declare-fun c!23287 () Bool)

(assert (=> d!61612 (= c!23287 (is-Nil!822 lt!21725))))

(declare-fun e!51731 () (Set tuple2!506))

(assert (=> d!61612 (= (content!203 lt!21725) e!51731)))

(declare-fun b!94796 () Bool)

(assert (=> b!94796 (= e!51731 (as emptyset (Set tuple2!506)))))

(declare-fun b!94797 () Bool)

(assert (=> b!94797 (= e!51731 (union (insert (h!6655 lt!21725) (as emptyset (Set tuple2!506))) (content!203 (t!54959 lt!21725))))))

(assert (= (and d!61612 c!23287) b!94796))

(assert (= (and d!61612 (not c!23287)) b!94797))

(declare-fun m!90055 () Bool)

(assert (=> b!94797 m!90055))

(declare-fun m!90057 () Bool)

(assert (=> b!94797 m!90057))

(assert (=> b!94776 d!61612))

(declare-fun d!61614 () Bool)

(declare-fun c!23288 () Bool)

(assert (=> d!61614 (= c!23288 (is-Nil!822 (t!54959 lt!21724)))))

(declare-fun e!51732 () (Set tuple2!506))

(assert (=> d!61614 (= (content!203 (t!54959 lt!21724)) e!51732)))

(declare-fun b!94798 () Bool)

(assert (=> b!94798 (= e!51732 (as emptyset (Set tuple2!506)))))

(declare-fun b!94799 () Bool)

(assert (=> b!94799 (= e!51732 (union (insert (h!6655 (t!54959 lt!21724)) (as emptyset (Set tuple2!506))) (content!203 (t!54959 (t!54959 lt!21724)))))))

(assert (= (and d!61614 c!23288) b!94798))

(assert (= (and d!61614 (not c!23288)) b!94799))

(declare-fun m!90059 () Bool)

(assert (=> b!94799 m!90059))

(declare-fun m!90061 () Bool)

(assert (=> b!94799 m!90061))

(assert (=> b!94776 d!61614))

(declare-fun b_lambda!18981 () Bool)

(assert (= b_lambda!18979 (or b!94777 b_lambda!18981)))

(declare-fun bs!43196 () Bool)

(declare-fun d!61616 () Bool)

(assert (= bs!43196 (and d!61616 b!94777)))

(assert (=> bs!43196 (= (dynLambda!1150 lambda!11196 (h!6655 lt!21725)) (not (= (_1!292 (h!6655 lt!21725)) (_2!292 (h!6655 lt!21725)))))))

(assert (=> b!94782 d!61616))

(push 1)

(assert (not b!94783))

(assert (not b!94799))

(assert (not b!94797))

(assert (not b!94789))

(assert (not b!94791))

(assert (not b_lambda!18981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

