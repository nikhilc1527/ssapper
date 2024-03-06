; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11144 () Bool)

(assert start!11144)

(declare-fun b_free!7409 () Bool)

(declare-fun b_next!39593 () Bool)

(assert (=> start!11144 (= b_free!7409 (not b_next!39593))))

(declare-fun tp!17032 () Bool)

(declare-fun b_and!59051 () Bool)

(assert (=> start!11144 (= tp!17032 b_and!59051)))

(declare-fun b_free!7411 () Bool)

(declare-fun b_next!39595 () Bool)

(assert (=> start!11144 (= b_free!7411 (not b_next!39595))))

(declare-fun tp!17034 () Bool)

(declare-fun b_and!59053 () Bool)

(assert (=> start!11144 (= tp!17034 b_and!59053)))

(declare-fun b_free!7413 () Bool)

(declare-fun b_next!39597 () Bool)

(assert (=> start!11144 (= b_free!7413 (not b_next!39597))))

(declare-fun tp!17033 () Bool)

(declare-fun b_and!59055 () Bool)

(assert (=> start!11144 (= tp!17033 b_and!59055)))

(declare-fun b_free!7415 () Bool)

(declare-fun b_next!39599 () Bool)

(assert (=> start!11144 (= b_free!7415 (not b_next!39599))))

(declare-fun tp!17035 () Bool)

(declare-fun b_and!59057 () Bool)

(assert (=> start!11144 (= tp!17035 b_and!59057)))

(declare-fun res!44226 () Bool)

(declare-fun e!46222 () Bool)

(assert (=> start!11144 (=> (not res!44226) (not e!46222))))

(declare-datatypes () ((List!699 (Cons!656 (h!1029 Int) (t!48090 List!699)) (Nil!658))))

(declare-fun ls!42 () List!699)

(declare-fun p2!127 () Int)

(declare-fun forall!47 (List!699 Int) Bool)

(assert (=> start!11144 (= res!44226 (forall!47 ls!42 p2!127))))

(assert (=> start!11144 e!46222))

(assert (=> start!11144 tp!17032))

(assert (=> start!11144 tp!17034))

(assert (=> start!11144 tp!17033))

(assert (=> start!11144 true))

(assert (=> start!11144 tp!17035))

(declare-fun b!85271 () Bool)

(declare-fun res!44227 () Bool)

(assert (=> b!85271 (=> (not res!44227) (not e!46222))))

(declare-fun p1!133 () Int)

(declare-fun p1!132 () Int)

(declare-fun p2!128 () Int)

(declare-fun ls!43 () List!699)

(assert (=> b!85271 (= res!44227 (and (is-Cons!656 ls!42) (= ls!43 (t!48090 ls!42)) (= p1!133 p1!132) (= p2!128 p2!127)))))

(declare-fun b!85272 () Bool)

(assert (=> b!85272 (= e!46222 (not (forall!47 ls!43 p2!128)))))

(assert (= (and start!11144 res!44226) b!85271))

(assert (= (and b!85271 res!44227) b!85272))

(declare-fun m!81152 () Bool)

(assert (=> start!11144 m!81152))

(declare-fun m!81154 () Bool)

(assert (=> b!85272 m!81154))

(push 1)

(assert (not b_next!39599))

(assert b_and!59057)

(assert (not b_next!39597))

(assert b_and!59055)

(assert (not start!11144))

(assert (not b_next!39595))

(assert (not b_next!39593))

(assert b_and!59051)

(assert (not b!85272))

(assert b_and!59053)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39599))

(assert b_and!59057)

(assert (not b_next!39597))

(assert b_and!59055)

(assert (not b_next!39595))

(assert (not b_next!39593))

(assert b_and!59051)

(assert b_and!59053)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57309 () Bool)

(declare-fun res!44232 () Bool)

(declare-fun e!46227 () Bool)

(assert (=> d!57309 (=> res!44232 e!46227)))

(assert (=> d!57309 (= res!44232 (is-Nil!658 ls!43))))

(assert (=> d!57309 (= (forall!47 ls!43 p2!128) e!46227)))

(declare-fun b!85277 () Bool)

(declare-fun e!46228 () Bool)

(assert (=> b!85277 (= e!46227 e!46228)))

(declare-fun res!44233 () Bool)

(assert (=> b!85277 (=> (not res!44233) (not e!46228))))

(declare-fun dynLambda!1010 (Int Int) Bool)

(assert (=> b!85277 (= res!44233 (dynLambda!1010 p2!128 (h!1029 ls!43)))))

(declare-fun b!85278 () Bool)

(assert (=> b!85278 (= e!46228 (forall!47 (t!48090 ls!43) p2!128))))

(assert (= (and d!57309 (not res!44232)) b!85277))

(assert (= (and b!85277 res!44233) b!85278))

(declare-fun b_lambda!16767 () Bool)

(assert (=> (not b_lambda!16767) (not b!85277)))

(declare-fun t!48092 () Bool)

(declare-fun tb!46321 () Bool)

(assert (=> (and start!11144 (= p1!133 p2!128) t!48092) tb!46321))

(declare-fun result!46751 () Bool)

(assert (=> tb!46321 (= result!46751 true)))

(assert (=> b!85277 t!48092))

(declare-fun b_and!59059 () Bool)

(assert (= b_and!59051 (and (=> t!48092 result!46751) b_and!59059)))

(declare-fun tb!46323 () Bool)

(declare-fun t!48094 () Bool)

(assert (=> (and start!11144 (= p1!132 p2!128) t!48094) tb!46323))

(declare-fun result!46753 () Bool)

(assert (=> tb!46323 (= result!46753 true)))

(assert (=> b!85277 t!48094))

(declare-fun b_and!59061 () Bool)

(assert (= b_and!59053 (and (=> t!48094 result!46753) b_and!59061)))

(declare-fun t!48096 () Bool)

(declare-fun tb!46325 () Bool)

(assert (=> (and start!11144 (= p2!128 p2!128) t!48096) tb!46325))

(declare-fun result!46755 () Bool)

(assert (=> tb!46325 (= result!46755 true)))

(assert (=> b!85277 t!48096))

(declare-fun b_and!59063 () Bool)

(assert (= b_and!59055 (and (=> t!48096 result!46755) b_and!59063)))

(declare-fun tb!46327 () Bool)

(declare-fun t!48098 () Bool)

(assert (=> (and start!11144 (= p2!127 p2!128) t!48098) tb!46327))

(declare-fun result!46757 () Bool)

(assert (=> tb!46327 (= result!46757 true)))

(assert (=> b!85277 t!48098))

(declare-fun b_and!59065 () Bool)

(assert (= b_and!59057 (and (=> t!48098 result!46757) b_and!59065)))

(declare-fun m!81156 () Bool)

(assert (=> b!85277 m!81156))

(declare-fun m!81158 () Bool)

(assert (=> b!85278 m!81158))

(assert (=> b!85272 d!57309))

(declare-fun d!57311 () Bool)

(declare-fun res!44234 () Bool)

(declare-fun e!46229 () Bool)

(assert (=> d!57311 (=> res!44234 e!46229)))

(assert (=> d!57311 (= res!44234 (is-Nil!658 ls!42))))

(assert (=> d!57311 (= (forall!47 ls!42 p2!127) e!46229)))

(declare-fun b!85279 () Bool)

(declare-fun e!46230 () Bool)

(assert (=> b!85279 (= e!46229 e!46230)))

(declare-fun res!44235 () Bool)

(assert (=> b!85279 (=> (not res!44235) (not e!46230))))

(assert (=> b!85279 (= res!44235 (dynLambda!1010 p2!127 (h!1029 ls!42)))))

(declare-fun b!85280 () Bool)

(assert (=> b!85280 (= e!46230 (forall!47 (t!48090 ls!42) p2!127))))

(assert (= (and d!57311 (not res!44234)) b!85279))

(assert (= (and b!85279 res!44235) b!85280))

(declare-fun b_lambda!16769 () Bool)

(assert (=> (not b_lambda!16769) (not b!85279)))

(declare-fun t!48100 () Bool)

(declare-fun tb!46329 () Bool)

(assert (=> (and start!11144 (= p1!133 p2!127) t!48100) tb!46329))

(declare-fun result!46759 () Bool)

(assert (=> tb!46329 (= result!46759 true)))

(assert (=> b!85279 t!48100))

(declare-fun b_and!59067 () Bool)

(assert (= b_and!59059 (and (=> t!48100 result!46759) b_and!59067)))

(declare-fun t!48102 () Bool)

(declare-fun tb!46331 () Bool)

(assert (=> (and start!11144 (= p1!132 p2!127) t!48102) tb!46331))

(declare-fun result!46761 () Bool)

(assert (=> tb!46331 (= result!46761 true)))

(assert (=> b!85279 t!48102))

(declare-fun b_and!59069 () Bool)

(assert (= b_and!59061 (and (=> t!48102 result!46761) b_and!59069)))

(declare-fun t!48104 () Bool)

(declare-fun tb!46333 () Bool)

(assert (=> (and start!11144 (= p2!128 p2!127) t!48104) tb!46333))

(declare-fun result!46763 () Bool)

(assert (=> tb!46333 (= result!46763 true)))

(assert (=> b!85279 t!48104))

(declare-fun b_and!59071 () Bool)

(assert (= b_and!59063 (and (=> t!48104 result!46763) b_and!59071)))

(declare-fun t!48106 () Bool)

(declare-fun tb!46335 () Bool)

(assert (=> (and start!11144 (= p2!127 p2!127) t!48106) tb!46335))

(declare-fun result!46765 () Bool)

(assert (=> tb!46335 (= result!46765 true)))

(assert (=> b!85279 t!48106))

(declare-fun b_and!59073 () Bool)

(assert (= b_and!59065 (and (=> t!48106 result!46765) b_and!59073)))

(declare-fun m!81160 () Bool)

(assert (=> b!85279 m!81160))

(declare-fun m!81162 () Bool)

(assert (=> b!85280 m!81162))

(assert (=> start!11144 d!57311))

(declare-fun b_lambda!16771 () Bool)

(assert (= b_lambda!16767 (or (and start!11144 b_free!7409 (= p1!133 p2!128)) (and start!11144 b_free!7411 (= p1!132 p2!128)) (and start!11144 b_free!7413) (and start!11144 b_free!7415 (= p2!127 p2!128)) b_lambda!16771)))

(declare-fun b_lambda!16773 () Bool)

(assert (= b_lambda!16769 (or (and start!11144 b_free!7409 (= p1!133 p2!127)) (and start!11144 b_free!7411 (= p1!132 p2!127)) (and start!11144 b_free!7413 (= p2!128 p2!127)) (and start!11144 b_free!7415) b_lambda!16773)))

(push 1)

(assert b_and!59073)

(assert (not b_lambda!16773))

(assert b_and!59069)

(assert (not b_next!39599))

(assert b_and!59067)

(assert (not b_lambda!16771))

(assert (not b!85280))

(assert (not b_next!39597))

(assert b_and!59071)

(assert (not b_next!39595))

(assert (not b!85278))

(assert (not b_next!39593))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59073)

(assert b_and!59069)

(assert (not b_next!39599))

(assert b_and!59067)

(assert (not b_next!39597))

(assert b_and!59071)

(assert (not b_next!39595))

(assert (not b_next!39593))

(check-sat)

(pop 1)

