; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15604 () Bool)

(assert start!15604)

(declare-fun b_free!7731 () Bool)

(declare-fun b_next!40137 () Bool)

(assert (=> start!15604 (= b_free!7731 (not b_next!40137))))

(declare-fun tp!18080 () Bool)

(declare-fun b_and!60955 () Bool)

(assert (=> start!15604 (= tp!18080 b_and!60955)))

(declare-fun res!51112 () Bool)

(declare-fun e!53856 () Bool)

(assert (=> start!15604 (=> (not res!51112) (not e!53856))))

(assert (=> start!15604 (= res!51112 true)))

(assert (=> start!15604 e!53856))

(assert (=> start!15604 tp!18080))

(assert (=> start!15604 true))

(declare-fun b!98550 () Bool)

(declare-fun res!51113 () Bool)

(assert (=> b!98550 (=> (not res!51113) (not e!53856))))

(declare-fun res!51105 () Int)

(declare-fun f!7957 () Int)

(declare-fun dynLambda!1165 (Int Int) Int)

(assert (=> b!98550 (= res!51113 (= res!51105 (+ (dynLambda!1165 f!7957 1) (dynLambda!1165 f!7957 2))))))

(declare-fun b!98551 () Bool)

(assert (=> b!98551 (= e!53856 (<= res!51105 4))))

(assert (= (and start!15604 res!51112) b!98550))

(assert (= (and b!98550 res!51113) b!98551))

(declare-fun b_lambda!19779 () Bool)

(assert (=> (not b_lambda!19779) (not b!98550)))

(declare-fun t!56318 () Bool)

(declare-fun tb!46883 () Bool)

(assert (=> (and start!15604 (= f!7957 f!7957) t!56318) tb!46883))

(declare-fun result!47425 () Bool)

(assert (=> tb!46883 (= result!47425 true)))

(assert (=> b!98550 t!56318))

(declare-fun b_and!60957 () Bool)

(assert (= b_and!60955 (and (=> t!56318 result!47425) b_and!60957)))

(declare-fun b_lambda!19781 () Bool)

(assert (=> (not b_lambda!19781) (not b!98550)))

(declare-fun t!56320 () Bool)

(declare-fun tb!46885 () Bool)

(assert (=> (and start!15604 (= f!7957 f!7957) t!56320) tb!46885))

(declare-fun result!47427 () Bool)

(assert (=> tb!46885 (= result!47427 true)))

(assert (=> b!98550 t!56320))

(declare-fun b_and!60959 () Bool)

(assert (= b_and!60957 (and (=> t!56320 result!47427) b_and!60959)))

(declare-fun bs!43696 () Bool)

(declare-fun s!2940 () Bool)

(assert (= bs!43696 (and start!15604 s!2940)))

(declare-fun res!51114 () Bool)

(declare-fun e!53857 () Bool)

(assert (=> bs!43696 (=> res!51114 e!53857)))

(assert (=> bs!43696 (= res!51114 (<= 1 0))))

(assert (=> bs!43696 (=> true e!53857)))

(declare-fun b!98552 () Bool)

(assert (=> b!98552 (= e!53857 (> (dynLambda!1165 f!7957 1) 1))))

(assert (= (and bs!43696 (not res!51114)) b!98552))

(declare-fun b_lambda!19783 () Bool)

(assert (=> (not b_lambda!19783) (not b!98552)))

(assert (=> b!98552 t!56318))

(declare-fun b_and!60961 () Bool)

(assert (= b_and!60959 (and (=> t!56318 result!47425) b_and!60961)))

(declare-fun bs!43697 () Bool)

(declare-fun m!92579 () Bool)

(assert (= bs!43697 m!92579))

(assert (=> bs!43697 s!2940))

(assert (=> b!98550 m!92579))

(declare-fun bs!43698 () Bool)

(declare-fun s!2942 () Bool)

(assert (= bs!43698 (and start!15604 s!2942)))

(declare-fun res!51115 () Bool)

(declare-fun e!53858 () Bool)

(assert (=> bs!43698 (=> res!51115 e!53858)))

(assert (=> bs!43698 (= res!51115 (<= 2 0))))

(assert (=> bs!43698 (=> true e!53858)))

(declare-fun b!98553 () Bool)

(assert (=> b!98553 (= e!53858 (> (dynLambda!1165 f!7957 2) 1))))

(assert (= (and bs!43698 (not res!51115)) b!98553))

(declare-fun b_lambda!19785 () Bool)

(assert (=> (not b_lambda!19785) (not b!98553)))

(assert (=> b!98553 t!56320))

(declare-fun b_and!60963 () Bool)

(assert (= b_and!60961 (and (=> t!56320 result!47427) b_and!60963)))

(declare-fun bs!43699 () Bool)

(declare-fun m!92581 () Bool)

(assert (= bs!43699 m!92581))

(assert (=> bs!43699 s!2942))

(assert (=> b!98550 m!92581))

(push 1)

(assert (not b_next!40137))

(assert (not b_lambda!19779))

(assert (not b_lambda!19781))

(assert (not b_lambda!19785))

(assert b_and!60963)

(assert (not b_lambda!19783))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60963)

(assert (not b_next!40137))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19787 () Bool)

(assert (= b_lambda!19785 (or (and start!15604 b_free!7731) b_lambda!19787)))

(declare-fun b_lambda!19789 () Bool)

(assert (= b_lambda!19783 (or (and start!15604 b_free!7731) b_lambda!19789)))

(declare-fun b_lambda!19791 () Bool)

(assert (= b_lambda!19779 (or (and start!15604 b_free!7731) b_lambda!19791)))

(declare-fun b_lambda!19793 () Bool)

(assert (= b_lambda!19781 (or (and start!15604 b_free!7731) b_lambda!19793)))

(declare-fun bs!43700 () Bool)

(assert (= bs!43700 (and m!92579 b!98552)))

(assert (=> bs!43700 m!92579))

(declare-fun bs!43701 () Bool)

(assert (= bs!43701 (and m!92581 b!98553)))

(assert (=> bs!43701 m!92581))

(push 1)

(assert (not b_lambda!19789))

(assert (not b_lambda!19793))

(assert (not b_lambda!19787))

(assert (not b_next!40137))

(assert (not b_lambda!19791))

(assert b_and!60963)

(check-sat)

(get-model)

(pop 1)

(push 1)

(assert (not b_lambda!19787))

(assert (not b_lambda!19789))

(assert (not b_lambda!19791))

(assert (not b_lambda!19793))

(assert b_and!60963)

(assert (not b_next!40137))

(check-sat)

(get-model)

(pop 1)

