; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10082 () Bool)

(assert start!10082)

(declare-fun b_free!7315 () Bool)

(declare-fun b_next!39091 () Bool)

(assert (=> start!10082 (= b_free!7315 (not b_next!39091))))

(declare-fun tp!16873 () Bool)

(declare-fun b_and!58739 () Bool)

(assert (=> start!10082 (= tp!16873 b_and!58739)))

(declare-fun b!72770 () Bool)

(assert (=> b!72770 true))

(declare-fun order!467 () Int)

(declare-fun p!702 () Int)

(declare-fun lambda!9187 () Int)

(declare-fun dynLambda!959 (Int Int) Int)

(assert (=> b!72770 (< (dynLambda!959 order!467 p!702) (dynLambda!959 order!467 lambda!9187))))

(declare-fun res!35525 () Bool)

(declare-fun e!39327 () Bool)

(assert (=> start!10082 (=> (not res!35525) (not e!39327))))

(declare-datatypes () ((IList!7 (Cons!586 (head!1007 Int) (tail!1028 IList!7)) (Nil!588))))

(declare-fun l!1390 () IList!7)

(assert (=> start!10082 (= res!35525 (is-Nil!588 l!1390))))

(assert (=> start!10082 e!39327))

(assert (=> start!10082 true))

(assert (=> start!10082 tp!16873))

(declare-fun b!72768 () Bool)

(declare-fun res!35526 () Bool)

(assert (=> b!72768 (=> (not res!35526) (not e!39327))))

(declare-datatypes () ((tuple2!390 (tuple2!391 (_1!230 IList!7) (_2!230 IList!7)))))

(declare-fun res!35485 () tuple2!390)

(declare-fun lt!15444 () IList!7)

(declare-fun lt!15443 () IList!7)

(assert (=> b!72768 (= res!35526 (= res!35485 (tuple2!391 lt!15443 lt!15444)))))

(assert (=> b!72768 (is-Nil!588 lt!15444)))

(assert (=> b!72768 (is-Nil!588 lt!15443)))

(assert (=> b!72768 (= lt!15444 Nil!588)))

(assert (=> b!72768 (= lt!15443 Nil!588)))

(declare-fun b!72769 () Bool)

(declare-fun e!39328 () Bool)

(assert (=> b!72769 (= e!39327 e!39328)))

(declare-fun res!35527 () Bool)

(assert (=> b!72769 (=> res!35527 e!39328)))

(declare-fun filter!4 (IList!7 Int) IList!7)

(assert (=> b!72769 (= res!35527 (not (= (_1!230 res!35485) (filter!4 l!1390 p!702))))))

(assert (=> b!72770 (= e!39328 (not (= (_2!230 res!35485) (filter!4 l!1390 lambda!9187))))))

(assert (= (and start!10082 res!35525) b!72768))

(assert (= (and b!72768 res!35526) b!72769))

(assert (= (and b!72769 (not res!35527)) b!72770))

(declare-fun m!72616 () Bool)

(assert (=> b!72769 m!72616))

(declare-fun m!72618 () Bool)

(assert (=> b!72770 m!72618))

(push 1)

(assert (not b!72769))

(assert (not b!72770))

(assert b_and!58739)

(assert (not b_next!39091))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58739)

(assert (not b_next!39091))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54681 () Bool)

(declare-fun c!17554 () Bool)

(assert (=> d!54681 (= c!17554 (is-Nil!588 l!1390))))

(declare-fun e!39335 () IList!7)

(assert (=> d!54681 (= (filter!4 l!1390 p!702) e!39335)))

(declare-fun b!72783 () Bool)

(assert (=> b!72783 (= e!39335 Nil!588)))

(declare-fun b!72784 () Bool)

(declare-fun e!39337 () IList!7)

(assert (=> b!72784 (= e!39335 e!39337)))

(declare-fun c!17553 () Bool)

(declare-fun e!39336 () Bool)

(assert (=> b!72784 (= c!17553 e!39336)))

(declare-fun res!35533 () Bool)

(assert (=> b!72784 (=> (not res!35533) (not e!39336))))

(assert (=> b!72784 (= res!35533 (is-Cons!586 l!1390))))

(declare-fun lt!15447 () IList!7)

(assert (=> b!72784 (= lt!15447 (filter!4 (tail!1028 l!1390) p!702))))

(declare-fun b!72785 () Bool)

(assert (=> b!72785 (= e!39337 (Cons!586 (head!1007 l!1390) lt!15447))))

(declare-fun b!72786 () Bool)

(declare-fun dynLambda!960 (Int Int) Bool)

(assert (=> b!72786 (= e!39336 (dynLambda!960 p!702 (head!1007 l!1390)))))

(declare-fun b!72787 () Bool)

(assert (=> b!72787 (= e!39337 lt!15447)))

(assert (= (and b!72784 res!35533) b!72786))

(assert (= (and b!72784 c!17553) b!72785))

(assert (= (and b!72784 (not c!17553)) b!72787))

(assert (= (and d!54681 c!17554) b!72783))

(assert (= (and d!54681 (not c!17554)) b!72784))

(declare-fun b_lambda!15765 () Bool)

(assert (=> (not b_lambda!15765) (not b!72786)))

(declare-fun t!47517 () Bool)

(declare-fun tb!46143 () Bool)

(assert (=> (and start!10082 (= p!702 p!702) t!47517) tb!46143))

(declare-fun result!46571 () Bool)

(assert (=> tb!46143 (= result!46571 true)))

(assert (=> b!72786 t!47517))

(declare-fun b_and!58741 () Bool)

(assert (= b_and!58739 (and (=> t!47517 result!46571) b_and!58741)))

(declare-fun m!72620 () Bool)

(assert (=> b!72784 m!72620))

(declare-fun m!72622 () Bool)

(assert (=> b!72786 m!72622))

(assert (=> b!72769 d!54681))

(declare-fun d!54683 () Bool)

(declare-fun c!17556 () Bool)

(assert (=> d!54683 (= c!17556 (is-Nil!588 l!1390))))

(declare-fun e!39338 () IList!7)

(assert (=> d!54683 (= (filter!4 l!1390 lambda!9187) e!39338)))

(declare-fun b!72788 () Bool)

(assert (=> b!72788 (= e!39338 Nil!588)))

(declare-fun b!72789 () Bool)

(declare-fun e!39340 () IList!7)

(assert (=> b!72789 (= e!39338 e!39340)))

(declare-fun c!17555 () Bool)

(declare-fun e!39339 () Bool)

(assert (=> b!72789 (= c!17555 e!39339)))

(declare-fun res!35534 () Bool)

(assert (=> b!72789 (=> (not res!35534) (not e!39339))))

(assert (=> b!72789 (= res!35534 (is-Cons!586 l!1390))))

(declare-fun lt!15448 () IList!7)

(assert (=> b!72789 (= lt!15448 (filter!4 (tail!1028 l!1390) lambda!9187))))

(declare-fun b!72790 () Bool)

(assert (=> b!72790 (= e!39340 (Cons!586 (head!1007 l!1390) lt!15448))))

(declare-fun b!72791 () Bool)

(assert (=> b!72791 (= e!39339 (dynLambda!960 lambda!9187 (head!1007 l!1390)))))

(declare-fun b!72792 () Bool)

(assert (=> b!72792 (= e!39340 lt!15448)))

(assert (= (and b!72789 res!35534) b!72791))

(assert (= (and b!72789 c!17555) b!72790))

(assert (= (and b!72789 (not c!17555)) b!72792))

(assert (= (and d!54683 c!17556) b!72788))

(assert (= (and d!54683 (not c!17556)) b!72789))

(declare-fun b_lambda!15767 () Bool)

(assert (=> (not b_lambda!15767) (not b!72791)))

(declare-fun m!72624 () Bool)

(assert (=> b!72789 m!72624))

(declare-fun m!72626 () Bool)

(assert (=> b!72791 m!72626))

(assert (=> b!72770 d!54683))

(declare-fun b_lambda!15769 () Bool)

(assert (= b_lambda!15767 (or b!72770 b_lambda!15769)))

(declare-fun bs!37777 () Bool)

(declare-fun d!54685 () Bool)

(assert (= bs!37777 (and d!54685 b!72770)))

(assert (=> bs!37777 (= (dynLambda!960 lambda!9187 (head!1007 l!1390)) (not (dynLambda!960 p!702 (head!1007 l!1390))))))

(declare-fun b_lambda!15773 () Bool)

(assert (=> (not b_lambda!15773) (not bs!37777)))

(assert (=> bs!37777 t!47517))

(declare-fun b_and!58743 () Bool)

(assert (= b_and!58741 (and (=> t!47517 result!46571) b_and!58743)))

(assert (=> bs!37777 m!72622))

(assert (=> b!72791 d!54685))

(declare-fun b_lambda!15771 () Bool)

(assert (= b_lambda!15765 (or (and start!10082 b_free!7315) b_lambda!15771)))

(push 1)

(assert b_and!58743)

(assert (not b!72784))

(assert (not b!72789))

(assert (not b_lambda!15771))

(assert (not b_lambda!15773))

(assert (not b_next!39091))

(assert (not b_lambda!15769))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58743)

(assert (not b_next!39091))

(check-sat)

(pop 1)

