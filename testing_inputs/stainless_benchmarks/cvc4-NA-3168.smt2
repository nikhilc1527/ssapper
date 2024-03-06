; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15566 () Bool)

(assert start!15566)

(declare-fun b_free!7725 () Bool)

(declare-fun b_next!40131 () Bool)

(assert (=> start!15566 (= b_free!7725 (not b_next!40131))))

(declare-fun tp!18074 () Bool)

(declare-fun b_and!60925 () Bool)

(assert (=> start!15566 (= tp!18074 b_and!60925)))

(declare-fun b_free!7727 () Bool)

(declare-fun b_next!40133 () Bool)

(assert (=> start!15566 (= b_free!7727 (not b_next!40133))))

(declare-fun tp!18073 () Bool)

(declare-fun b_and!60927 () Bool)

(assert (=> start!15566 (= tp!18073 b_and!60927)))

(declare-fun b!96061 () Bool)

(declare-fun inst!515 () Bool)

(declare-fun f!7864 () Int)

(declare-fun x!35164 () Int)

(declare-fun dynLambda!1163 (Int Int) Int)

(assert (=> b!96061 (= inst!515 (=> true (> (dynLambda!1163 f!7864 x!35164) (- 2))))))

(declare-fun b_lambda!19749 () Bool)

(assert (=> (not b_lambda!19749) (not b!96061)))

(declare-fun tb!46871 () Bool)

(declare-fun f!7863 () Int)

(declare-fun t!56138 () Bool)

(assert (=> (and start!15566 (= f!7863 f!7864) t!56138) tb!46871))

(declare-fun result!47413 () Bool)

(assert (=> tb!46871 (= result!47413 true)))

(assert (=> b!96061 t!56138))

(declare-fun b_and!60929 () Bool)

(assert (= b_and!60925 (and (=> t!56138 result!47413) b_and!60929)))

(declare-fun t!56140 () Bool)

(declare-fun tb!46873 () Bool)

(assert (=> (and start!15566 (= f!7864 f!7864) t!56140) tb!46873))

(declare-fun result!47415 () Bool)

(assert (=> tb!46873 (= result!47415 true)))

(assert (=> b!96061 t!56140))

(declare-fun b_and!60931 () Bool)

(assert (= b_and!60927 (and (=> t!56140 result!47415) b_and!60931)))

(declare-fun m!91747 () Bool)

(assert (=> b!96061 m!91747))

(declare-fun bs!43676 () Bool)

(assert (= bs!43676 (and start!15566 b!96061)))

(assert (=> (and bs!43676 (= f!7863 f!7864)) (= true inst!515)))

(declare-fun b!96060 () Bool)

(declare-fun res!49896 () Bool)

(declare-fun e!52392 () Bool)

(assert (=> b!96060 (=> (not res!49896) (not e!52392))))

(declare-datatypes () ((List!910 (Nil!847) (ListExt!12 (__x!418 Int)) (Cons!845 (head!1203 Int) (tail!1198 List!910)))))

(declare-fun list!1129 () List!910)

(declare-fun list!1130 () List!910)

(assert (=> b!96060 (= res!49896 (and (= f!7864 f!7863) (= list!1130 (tail!1198 list!1129))))))

(assert (=> b!96061 (= e!52392 (not inst!515))))

(declare-fun res!49898 () Bool)

(assert (=> start!15566 (=> (not res!49898) (not e!52392))))

(assert (=> start!15566 (= res!49898 true)))

(assert (=> start!15566 e!52392))

(assert (=> start!15566 true))

(assert (=> start!15566 tp!18074))

(assert (=> start!15566 tp!18073))

(declare-fun b!96058 () Bool)

(declare-fun res!49897 () Bool)

(assert (=> b!96058 (=> (not res!49897) (not e!52392))))

(assert (=> b!96058 (= res!49897 (is-Cons!845 list!1129))))

(declare-fun b!96059 () Bool)

(declare-fun res!49895 () Bool)

(assert (=> b!96059 (=> (not res!49895) (not e!52392))))

(declare-fun head!1198 () Int)

(assert (=> b!96059 (= res!49895 (= head!1198 (dynLambda!1163 f!7863 (head!1203 list!1129))))))

(assert (= (and start!15566 res!49898) b!96058))

(assert (= (and b!96058 res!49897) b!96059))

(assert (= (and b!96059 res!49895) b!96060))

(assert (= (and b!96060 res!49896) b!96061))

(declare-fun b_lambda!19751 () Bool)

(assert (=> (not b_lambda!19751) (not b!96059)))

(declare-fun t!56142 () Bool)

(declare-fun tb!46875 () Bool)

(assert (=> (and start!15566 (= f!7863 f!7863) t!56142) tb!46875))

(declare-fun result!47417 () Bool)

(assert (=> tb!46875 (= result!47417 true)))

(assert (=> b!96059 t!56142))

(declare-fun b_and!60933 () Bool)

(assert (= b_and!60929 (and (=> t!56142 result!47417) b_and!60933)))

(declare-fun tb!46877 () Bool)

(declare-fun t!56144 () Bool)

(assert (=> (and start!15566 (= f!7864 f!7863) t!56144) tb!46877))

(declare-fun result!47419 () Bool)

(assert (=> tb!46877 (= result!47419 true)))

(assert (=> b!96059 t!56144))

(declare-fun b_and!60935 () Bool)

(assert (= b_and!60931 (and (=> t!56144 result!47419) b_and!60935)))

(declare-fun bs!43677 () Bool)

(declare-fun s!2913 () Bool)

(assert (= bs!43677 (and start!15566 s!2913)))

(assert (=> bs!43677 (=> true (> (dynLambda!1163 f!7863 (head!1203 list!1129)) (- 2)))))

(declare-fun b_lambda!19753 () Bool)

(assert (=> (not b_lambda!19753) (not bs!43677)))

(assert (=> bs!43677 t!56142))

(declare-fun b_and!60937 () Bool)

(assert (= b_and!60933 (and (=> t!56142 result!47417) b_and!60937)))

(assert (=> bs!43677 t!56144))

(declare-fun b_and!60939 () Bool)

(assert (= b_and!60935 (and (=> t!56144 result!47419) b_and!60939)))

(declare-fun bs!43678 () Bool)

(declare-fun m!91749 () Bool)

(assert (= bs!43678 m!91749))

(assert (=> bs!43678 s!2913))

(assert (=> b!96059 m!91749))

(push 1)

(assert b_and!60939)

(assert b_and!60937)

(assert (not b_next!40131))

(assert (not b_lambda!19753))

(assert (not b_lambda!19751))

(assert (not b_lambda!19749))

(assert (not b_next!40133))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60937)

(assert b_and!60939)

(assert (not b_next!40131))

(assert (not b_next!40133))

(check-sat)

(pop 1)

