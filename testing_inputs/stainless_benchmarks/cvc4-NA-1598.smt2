; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11126 () Bool)

(assert start!11126)

(declare-fun b_free!7401 () Bool)

(declare-fun b_next!39585 () Bool)

(assert (=> start!11126 (= b_free!7401 (not b_next!39585))))

(declare-fun tp!17016 () Bool)

(declare-fun b_and!59015 () Bool)

(assert (=> start!11126 (= tp!17016 b_and!59015)))

(declare-fun b_free!7403 () Bool)

(declare-fun b_next!39587 () Bool)

(assert (=> start!11126 (= b_free!7403 (not b_next!39587))))

(declare-fun tp!17017 () Bool)

(declare-fun b_and!59017 () Bool)

(assert (=> start!11126 (= tp!17017 b_and!59017)))

(declare-fun b!85179 () Bool)

(declare-fun e!46163 () Bool)

(declare-fun e!46162 () Bool)

(assert (=> b!85179 (= e!46163 e!46162)))

(declare-fun res!44151 () Bool)

(assert (=> b!85179 (=> res!44151 e!46162)))

(declare-datatypes () ((List!696 (Cons!653 (h!1026 Int) (t!48059 List!696)) (Nil!655))))

(declare-fun l1!431 () List!696)

(declare-fun p!786 () Int)

(declare-fun forall!44 (List!696 Int) Bool)

(assert (=> b!85179 (= res!44151 (not (forall!44 l1!431 p!786)))))

(declare-fun b!85178 () Bool)

(declare-fun res!44150 () Bool)

(assert (=> b!85178 (=> (not res!44150) (not e!46163))))

(declare-fun p!781 () Int)

(declare-fun l2!423 () List!696)

(declare-fun l2!424 () List!696)

(declare-fun l1!430 () List!696)

(assert (=> b!85178 (= res!44150 (and (is-Cons!653 l1!430) (= l1!431 (t!48059 l1!430)) (= l2!424 l2!423) (= p!786 p!781)))))

(declare-fun b!85180 () Bool)

(assert (=> b!85180 (= e!46162 (not (forall!44 l2!424 p!786)))))

(declare-fun b!85177 () Bool)

(declare-fun res!44149 () Bool)

(assert (=> b!85177 (=> (not res!44149) (not e!46163))))

(assert (=> b!85177 (= res!44149 (forall!44 l2!423 p!781))))

(declare-fun res!44148 () Bool)

(assert (=> start!11126 (=> (not res!44148) (not e!46163))))

(assert (=> start!11126 (= res!44148 (forall!44 l1!430 p!781))))

(assert (=> start!11126 e!46163))

(assert (=> start!11126 true))

(assert (=> start!11126 tp!17016))

(assert (=> start!11126 tp!17017))

(assert (= (and start!11126 res!44148) b!85177))

(assert (= (and b!85177 res!44149) b!85178))

(assert (= (and b!85178 res!44150) b!85179))

(assert (= (and b!85179 (not res!44151)) b!85180))

(declare-fun m!81054 () Bool)

(assert (=> b!85179 m!81054))

(declare-fun m!81056 () Bool)

(assert (=> b!85180 m!81056))

(declare-fun m!81058 () Bool)

(assert (=> b!85177 m!81058))

(declare-fun m!81060 () Bool)

(assert (=> start!11126 m!81060))

(push 1)

(assert (not b!85179))

(assert b_and!59017)

(assert (not start!11126))

(assert (not b_next!39585))

(assert (not b!85177))

(assert (not b!85180))

(assert b_and!59015)

(assert (not b_next!39587))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59015)

(assert b_and!59017)

(assert (not b_next!39585))

(assert (not b_next!39587))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57283 () Bool)

(declare-fun res!44156 () Bool)

(declare-fun e!46168 () Bool)

(assert (=> d!57283 (=> res!44156 e!46168)))

(assert (=> d!57283 (= res!44156 (is-Nil!655 l2!424))))

(assert (=> d!57283 (= (forall!44 l2!424 p!786) e!46168)))

(declare-fun b!85185 () Bool)

(declare-fun e!46169 () Bool)

(assert (=> b!85185 (= e!46168 e!46169)))

(declare-fun res!44157 () Bool)

(assert (=> b!85185 (=> (not res!44157) (not e!46169))))

(declare-fun dynLambda!1007 (Int Int) Bool)

(assert (=> b!85185 (= res!44157 (dynLambda!1007 p!786 (h!1026 l2!424)))))

(declare-fun b!85186 () Bool)

(assert (=> b!85186 (= e!46169 (forall!44 (t!48059 l2!424) p!786))))

(assert (= (and d!57283 (not res!44156)) b!85185))

(assert (= (and b!85185 res!44157) b!85186))

(declare-fun b_lambda!16727 () Bool)

(assert (=> (not b_lambda!16727) (not b!85185)))

(declare-fun tb!46293 () Bool)

(declare-fun t!48061 () Bool)

(assert (=> (and start!11126 (= p!781 p!786) t!48061) tb!46293))

(declare-fun result!46723 () Bool)

(assert (=> tb!46293 (= result!46723 true)))

(assert (=> b!85185 t!48061))

(declare-fun b_and!59019 () Bool)

(assert (= b_and!59015 (and (=> t!48061 result!46723) b_and!59019)))

(declare-fun t!48063 () Bool)

(declare-fun tb!46295 () Bool)

(assert (=> (and start!11126 (= p!786 p!786) t!48063) tb!46295))

(declare-fun result!46725 () Bool)

(assert (=> tb!46295 (= result!46725 true)))

(assert (=> b!85185 t!48063))

(declare-fun b_and!59021 () Bool)

(assert (= b_and!59017 (and (=> t!48063 result!46725) b_and!59021)))

(declare-fun m!81062 () Bool)

(assert (=> b!85185 m!81062))

(declare-fun m!81064 () Bool)

(assert (=> b!85186 m!81064))

(assert (=> b!85180 d!57283))

(declare-fun d!57285 () Bool)

(declare-fun res!44158 () Bool)

(declare-fun e!46170 () Bool)

(assert (=> d!57285 (=> res!44158 e!46170)))

(assert (=> d!57285 (= res!44158 (is-Nil!655 l2!423))))

(assert (=> d!57285 (= (forall!44 l2!423 p!781) e!46170)))

(declare-fun b!85187 () Bool)

(declare-fun e!46171 () Bool)

(assert (=> b!85187 (= e!46170 e!46171)))

(declare-fun res!44159 () Bool)

(assert (=> b!85187 (=> (not res!44159) (not e!46171))))

(assert (=> b!85187 (= res!44159 (dynLambda!1007 p!781 (h!1026 l2!423)))))

(declare-fun b!85188 () Bool)

(assert (=> b!85188 (= e!46171 (forall!44 (t!48059 l2!423) p!781))))

(assert (= (and d!57285 (not res!44158)) b!85187))

(assert (= (and b!85187 res!44159) b!85188))

(declare-fun b_lambda!16729 () Bool)

(assert (=> (not b_lambda!16729) (not b!85187)))

(declare-fun t!48065 () Bool)

(declare-fun tb!46297 () Bool)

(assert (=> (and start!11126 (= p!781 p!781) t!48065) tb!46297))

(declare-fun result!46727 () Bool)

(assert (=> tb!46297 (= result!46727 true)))

(assert (=> b!85187 t!48065))

(declare-fun b_and!59023 () Bool)

(assert (= b_and!59019 (and (=> t!48065 result!46727) b_and!59023)))

(declare-fun t!48067 () Bool)

(declare-fun tb!46299 () Bool)

(assert (=> (and start!11126 (= p!786 p!781) t!48067) tb!46299))

(declare-fun result!46729 () Bool)

(assert (=> tb!46299 (= result!46729 true)))

(assert (=> b!85187 t!48067))

(declare-fun b_and!59025 () Bool)

(assert (= b_and!59021 (and (=> t!48067 result!46729) b_and!59025)))

(declare-fun m!81066 () Bool)

(assert (=> b!85187 m!81066))

(declare-fun m!81068 () Bool)

(assert (=> b!85188 m!81068))

(assert (=> b!85177 d!57285))

(declare-fun d!57287 () Bool)

(declare-fun res!44160 () Bool)

(declare-fun e!46172 () Bool)

(assert (=> d!57287 (=> res!44160 e!46172)))

(assert (=> d!57287 (= res!44160 (is-Nil!655 l1!431))))

(assert (=> d!57287 (= (forall!44 l1!431 p!786) e!46172)))

(declare-fun b!85189 () Bool)

(declare-fun e!46173 () Bool)

(assert (=> b!85189 (= e!46172 e!46173)))

(declare-fun res!44161 () Bool)

(assert (=> b!85189 (=> (not res!44161) (not e!46173))))

(assert (=> b!85189 (= res!44161 (dynLambda!1007 p!786 (h!1026 l1!431)))))

(declare-fun b!85190 () Bool)

(assert (=> b!85190 (= e!46173 (forall!44 (t!48059 l1!431) p!786))))

(assert (= (and d!57287 (not res!44160)) b!85189))

(assert (= (and b!85189 res!44161) b!85190))

(declare-fun b_lambda!16731 () Bool)

(assert (=> (not b_lambda!16731) (not b!85189)))

(declare-fun t!48069 () Bool)

(declare-fun tb!46301 () Bool)

(assert (=> (and start!11126 (= p!781 p!786) t!48069) tb!46301))

(declare-fun result!46731 () Bool)

(assert (=> tb!46301 (= result!46731 true)))

(assert (=> b!85189 t!48069))

(declare-fun b_and!59027 () Bool)

(assert (= b_and!59023 (and (=> t!48069 result!46731) b_and!59027)))

(declare-fun t!48071 () Bool)

(declare-fun tb!46303 () Bool)

(assert (=> (and start!11126 (= p!786 p!786) t!48071) tb!46303))

(declare-fun result!46733 () Bool)

(assert (=> tb!46303 (= result!46733 true)))

(assert (=> b!85189 t!48071))

(declare-fun b_and!59029 () Bool)

(assert (= b_and!59025 (and (=> t!48071 result!46733) b_and!59029)))

(declare-fun m!81070 () Bool)

(assert (=> b!85189 m!81070))

(declare-fun m!81072 () Bool)

(assert (=> b!85190 m!81072))

(assert (=> b!85179 d!57287))

(declare-fun d!57289 () Bool)

(declare-fun res!44162 () Bool)

(declare-fun e!46174 () Bool)

(assert (=> d!57289 (=> res!44162 e!46174)))

(assert (=> d!57289 (= res!44162 (is-Nil!655 l1!430))))

(assert (=> d!57289 (= (forall!44 l1!430 p!781) e!46174)))

(declare-fun b!85191 () Bool)

(declare-fun e!46175 () Bool)

(assert (=> b!85191 (= e!46174 e!46175)))

(declare-fun res!44163 () Bool)

(assert (=> b!85191 (=> (not res!44163) (not e!46175))))

(assert (=> b!85191 (= res!44163 (dynLambda!1007 p!781 (h!1026 l1!430)))))

(declare-fun b!85192 () Bool)

(assert (=> b!85192 (= e!46175 (forall!44 (t!48059 l1!430) p!781))))

(assert (= (and d!57289 (not res!44162)) b!85191))

(assert (= (and b!85191 res!44163) b!85192))

(declare-fun b_lambda!16733 () Bool)

(assert (=> (not b_lambda!16733) (not b!85191)))

(declare-fun t!48073 () Bool)

(declare-fun tb!46305 () Bool)

(assert (=> (and start!11126 (= p!781 p!781) t!48073) tb!46305))

(declare-fun result!46735 () Bool)

(assert (=> tb!46305 (= result!46735 true)))

(assert (=> b!85191 t!48073))

(declare-fun b_and!59031 () Bool)

(assert (= b_and!59027 (and (=> t!48073 result!46735) b_and!59031)))

(declare-fun t!48075 () Bool)

(declare-fun tb!46307 () Bool)

(assert (=> (and start!11126 (= p!786 p!781) t!48075) tb!46307))

(declare-fun result!46737 () Bool)

(assert (=> tb!46307 (= result!46737 true)))

(assert (=> b!85191 t!48075))

(declare-fun b_and!59033 () Bool)

(assert (= b_and!59029 (and (=> t!48075 result!46737) b_and!59033)))

(declare-fun m!81074 () Bool)

(assert (=> b!85191 m!81074))

(declare-fun m!81076 () Bool)

(assert (=> b!85192 m!81076))

(assert (=> start!11126 d!57289))

(declare-fun b_lambda!16735 () Bool)

(assert (= b_lambda!16733 (or (and start!11126 b_free!7401) (and start!11126 b_free!7403 (= p!786 p!781)) b_lambda!16735)))

(declare-fun b_lambda!16737 () Bool)

(assert (= b_lambda!16727 (or (and start!11126 b_free!7401 (= p!781 p!786)) (and start!11126 b_free!7403) b_lambda!16737)))

(declare-fun b_lambda!16739 () Bool)

(assert (= b_lambda!16731 (or (and start!11126 b_free!7401 (= p!781 p!786)) (and start!11126 b_free!7403) b_lambda!16739)))

(declare-fun b_lambda!16741 () Bool)

(assert (= b_lambda!16729 (or (and start!11126 b_free!7401) (and start!11126 b_free!7403 (= p!786 p!781)) b_lambda!16741)))

(push 1)

(assert (not b_lambda!16739))

(assert (not b_next!39585))

(assert b_and!59033)

(assert (not b!85186))

(assert (not b!85192))

(assert (not b!85190))

(assert (not b_lambda!16737))

(assert (not b!85188))

(assert (not b_lambda!16735))

(assert b_and!59031)

(assert (not b_lambda!16741))

(assert (not b_next!39587))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59031)

(assert b_and!59033)

(assert (not b_next!39585))

(assert (not b_next!39587))

(check-sat)

(pop 1)

