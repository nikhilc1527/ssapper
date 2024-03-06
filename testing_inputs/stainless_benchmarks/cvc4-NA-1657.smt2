; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11482 () Bool)

(assert start!11482)

(declare-fun b_free!7483 () Bool)

(declare-fun b_next!39787 () Bool)

(assert (=> start!11482 (= b_free!7483 (not b_next!39787))))

(declare-fun tp!17139 () Bool)

(declare-fun b_and!59961 () Bool)

(assert (=> start!11482 (= tp!17139 b_and!59961)))

(declare-fun b_free!7485 () Bool)

(declare-fun b_next!39789 () Bool)

(assert (=> start!11482 (= b_free!7485 (not b_next!39789))))

(declare-fun tp!17140 () Bool)

(declare-fun b_and!59963 () Bool)

(assert (=> start!11482 (= tp!17140 b_and!59963)))

(declare-fun res!45886 () Bool)

(declare-fun e!47711 () Bool)

(assert (=> start!11482 (=> (not res!45886) (not e!47711))))

(assert (=> start!11482 (= res!45886 true)))

(assert (=> start!11482 e!47711))

(assert (=> start!11482 tp!17139))

(assert (=> start!11482 tp!17140))

(assert (=> start!11482 true))

(declare-fun b!87849 () Bool)

(declare-fun res!45887 () Bool)

(assert (=> b!87849 (=> (not res!45887) (not e!47711))))

(declare-fun g!152 () Int)

(declare-fun dynLambda!1038 (Int Int) Bool)

(assert (=> b!87849 (= res!45887 (not (dynLambda!1038 g!152 8)))))

(declare-fun b!87850 () Bool)

(declare-fun res!45825 () Int)

(assert (=> b!87850 (= e!47711 (and (= res!45825 1) (= res!45825 0)))))

(assert (= (and start!11482 res!45886) b!87849))

(assert (= (and b!87849 res!45887) b!87850))

(declare-fun b_lambda!17445 () Bool)

(assert (=> (not b_lambda!17445) (not b!87849)))

(declare-fun t!48566 () Bool)

(declare-fun tb!46553 () Bool)

(assert (=> (and start!11482 (= g!152 g!152) t!48566) tb!46553))

(declare-fun result!46983 () Bool)

(assert (=> tb!46553 (= result!46983 true)))

(assert (=> b!87849 t!48566))

(declare-fun b_and!59965 () Bool)

(assert (= b_and!59961 (and (=> t!48566 result!46983) b_and!59965)))

(declare-fun bs!41277 () Bool)

(declare-fun s!2569 () Bool)

(assert (= bs!41277 (and start!11482 s!2569)))

(declare-fun b!87851 () Bool)

(declare-fun e!47712 () Bool)

(declare-fun e!47713 () Bool)

(assert (=> b!87851 (= e!47712 e!47713)))

(declare-fun res!45888 () Bool)

(assert (=> b!87851 (=> res!45888 e!47713)))

(declare-fun f!4923 () Int)

(declare-fun dynLambda!1039 (Int Int) Int)

(assert (=> b!87851 (= res!45888 (> (dynLambda!1039 f!4923 8) 0))))

(declare-fun b!87853 () Bool)

(assert (=> b!87853 (= e!47713 (< (dynLambda!1039 f!4923 8) 0))))

(declare-fun c!21722 () Bool)

(assert (=> bs!41277 (= c!21722 (dynLambda!1038 g!152 8))))

(assert (=> bs!41277 (=> true e!47712)))

(declare-fun b!87852 () Bool)

(assert (=> b!87852 (= e!47712 (= (dynLambda!1039 f!4923 8) 0))))

(assert (= (and b!87851 (not res!45888)) b!87853))

(assert (= (and bs!41277 c!21722) b!87851))

(assert (= (and bs!41277 (not c!21722)) b!87852))

(declare-fun b_lambda!17447 () Bool)

(assert (=> (not b_lambda!17447) (not b!87851)))

(declare-fun t!48568 () Bool)

(declare-fun tb!46555 () Bool)

(assert (=> (and start!11482 (= f!4923 f!4923) t!48568) tb!46555))

(declare-fun result!46985 () Bool)

(assert (=> tb!46555 (= result!46985 true)))

(assert (=> b!87851 t!48568))

(declare-fun b_and!59967 () Bool)

(assert (= b_and!59963 (and (=> t!48568 result!46985) b_and!59967)))

(declare-fun b_lambda!17449 () Bool)

(assert (=> (not b_lambda!17449) (not b!87853)))

(assert (=> b!87853 t!48568))

(declare-fun b_and!59969 () Bool)

(assert (= b_and!59967 (and (=> t!48568 result!46985) b_and!59969)))

(declare-fun b_lambda!17451 () Bool)

(assert (=> (not b_lambda!17451) (not bs!41277)))

(assert (=> bs!41277 t!48566))

(declare-fun b_and!59971 () Bool)

(assert (= b_and!59965 (and (=> t!48566 result!46983) b_and!59971)))

(declare-fun b_lambda!17453 () Bool)

(assert (=> (not b_lambda!17453) (not b!87852)))

(assert (=> b!87852 t!48568))

(declare-fun b_and!59973 () Bool)

(assert (= b_and!59969 (and (=> t!48568 result!46985) b_and!59973)))

(declare-fun bs!41278 () Bool)

(declare-fun m!84076 () Bool)

(assert (= bs!41278 m!84076))

(assert (=> bs!41278 s!2569))

(assert (=> b!87849 m!84076))

(push 1)

(assert (not b_next!39789))

(assert (not b_next!39787))

(assert (not b_lambda!17451))

(assert b_and!59973)

(assert b_and!59971)

(assert (not b_lambda!17447))

(assert (not b_lambda!17453))

(assert (not b_lambda!17449))

(assert (not b_lambda!17445))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59971)

(assert b_and!59973)

(assert (not b_next!39787))

(assert (not b_next!39789))

(check-sat)

(pop 1)

