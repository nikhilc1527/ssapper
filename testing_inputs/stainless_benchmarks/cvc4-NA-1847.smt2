; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12452 () Bool)

(assert start!12452)

(declare-fun b_free!7711 () Bool)

(declare-fun b_next!40099 () Bool)

(assert (=> start!12452 (= b_free!7711 (not b_next!40099))))

(declare-fun tp!18003 () Bool)

(declare-fun b_and!60895 () Bool)

(assert (=> start!12452 (= tp!18003 b_and!60895)))

(declare-fun inst!512 () Bool)

(declare-fun p!1095 () Int)

(declare-fun x!33598 () Int)

(declare-fun dynLambda!1133 (Int Int) Bool)

(assert (=> start!12452 (= inst!512 (=> true (not (dynLambda!1133 p!1095 x!33598))))))

(declare-fun b_lambda!18867 () Bool)

(assert (=> (not b_lambda!18867) (not start!12452)))

(declare-fun t!49154 () Bool)

(declare-fun tb!46859 () Bool)

(assert (=> (and start!12452 (= p!1095 p!1095) t!49154) tb!46859))

(declare-fun result!47397 () Bool)

(assert (=> tb!46859 (= result!47397 true)))

(assert (=> start!12452 t!49154))

(declare-fun b_and!60897 () Bool)

(assert (= b_and!60895 (and (=> t!49154 result!47397) b_and!60897)))

(declare-fun m!87736 () Bool)

(assert (=> start!12452 m!87736))

(declare-fun bs!41931 () Bool)

(declare-fun neg-inst!446 () Bool)

(declare-fun s!2845 () Bool)

(assert (= bs!41931 (and neg-inst!446 s!2845)))

(assert (=> bs!41931 (=> true (not (dynLambda!1133 p!1095 x!33598)))))

(declare-fun b_lambda!18869 () Bool)

(assert (=> (not b_lambda!18869) (not bs!41931)))

(assert (=> bs!41931 t!49154))

(declare-fun b_and!60899 () Bool)

(assert (= b_and!60897 (and (=> t!49154 result!47397) b_and!60899)))

(assert (=> m!87736 s!2845))

(declare-fun bs!41932 () Bool)

(assert (= bs!41932 (and neg-inst!446 start!12452)))

(assert (=> bs!41932 (= true inst!512)))

(declare-fun y!2389 () Int)

(assert (=> start!12452 (not (= (dynLambda!1133 p!1095 y!2389) (not inst!512)))))

(assert (=> start!12452 tp!18003))

(assert (=> start!12452 true))

(assert (= neg-inst!446 inst!512))

(declare-fun b_lambda!18871 () Bool)

(assert (=> (not b_lambda!18871) (not start!12452)))

(declare-fun t!49156 () Bool)

(declare-fun tb!46861 () Bool)

(assert (=> (and start!12452 (= p!1095 p!1095) t!49156) tb!46861))

(declare-fun result!47399 () Bool)

(assert (=> tb!46861 (= result!47399 true)))

(assert (=> start!12452 t!49156))

(declare-fun b_and!60901 () Bool)

(assert (= b_and!60899 (and (=> t!49156 result!47399) b_and!60901)))

(declare-fun bs!41933 () Bool)

(declare-fun s!2847 () Bool)

(assert (= bs!41933 (and neg-inst!446 s!2847)))

(assert (=> bs!41933 (=> true (not (dynLambda!1133 p!1095 y!2389)))))

(declare-fun b_lambda!18873 () Bool)

(assert (=> (not b_lambda!18873) (not bs!41933)))

(assert (=> bs!41933 t!49156))

(declare-fun b_and!60903 () Bool)

(assert (= b_and!60901 (and (=> t!49156 result!47399) b_and!60903)))

(declare-fun bs!41934 () Bool)

(declare-fun m!87738 () Bool)

(assert (= bs!41934 m!87738))

(assert (=> bs!41934 s!2847))

(assert (=> start!12452 m!87738))

(push 1)

(assert (not b_lambda!18869))

(assert (not b_next!40099))

(assert b_and!60903)

(assert (not b_lambda!18871))

(assert (not b_lambda!18873))

(assert (not b_lambda!18867))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60903)

(assert (not b_next!40099))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18875 () Bool)

(assert (= b_lambda!18873 (or (and start!12452 b_free!7711) b_lambda!18875)))

(declare-fun b_lambda!18877 () Bool)

(assert (= b_lambda!18867 (or (and start!12452 b_free!7711) b_lambda!18877)))

(declare-fun b_lambda!18879 () Bool)

(assert (= b_lambda!18869 (or (and start!12452 b_free!7711) b_lambda!18879)))

(declare-fun b_lambda!18881 () Bool)

(assert (= b_lambda!18871 (or (and start!12452 b_free!7711) b_lambda!18881)))

(push 1)

(assert (not b_next!40099))

(assert b_and!60903)

(assert (not b_lambda!18881))

(assert (not b_lambda!18875))

(assert (not b_lambda!18879))

(assert (not b_lambda!18877))

(check-sat)

(get-model)

(pop 1)

(push 1)

(assert (not b_lambda!18875))

(assert (not b_lambda!18877))

(assert (not b_lambda!18879))

(assert (not b_lambda!18881))

(assert b_and!60903)

(assert (not b_next!40099))

(check-sat)

(get-model)

(pop 1)

