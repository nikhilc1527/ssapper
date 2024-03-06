; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11148 () Bool)

(assert start!11148)

(declare-fun b_free!7417 () Bool)

(declare-fun b_next!39601 () Bool)

(assert (=> start!11148 (= b_free!7417 (not b_next!39601))))

(declare-fun tp!17040 () Bool)

(declare-fun b_and!59075 () Bool)

(assert (=> start!11148 (= tp!17040 b_and!59075)))

(declare-fun b_free!7419 () Bool)

(declare-fun b_next!39603 () Bool)

(assert (=> start!11148 (= b_free!7419 (not b_next!39603))))

(declare-fun tp!17041 () Bool)

(declare-fun b_and!59077 () Bool)

(assert (=> start!11148 (= tp!17041 b_and!59077)))

(declare-fun res!44243 () Bool)

(declare-fun e!46233 () Bool)

(assert (=> start!11148 (=> (not res!44243) (not e!46233))))

(declare-datatypes () ((List!700 (Cons!657 (h!1030 Int) (t!48107 List!700)) (Nil!659))))

(declare-fun ls!42 () List!700)

(declare-fun p2!127 () Int)

(declare-fun forall!48 (List!700 Int) Bool)

(assert (=> start!11148 (= res!44243 (forall!48 ls!42 p2!127))))

(assert (=> start!11148 e!46233))

(assert (=> start!11148 true))

(assert (=> start!11148 tp!17040))

(assert (=> start!11148 tp!17041))

(declare-fun b!85287 () Bool)

(declare-fun res!44244 () Bool)

(assert (=> b!85287 (=> (not res!44244) (not e!46233))))

(assert (=> b!85287 (= res!44244 (is-Cons!657 ls!42))))

(declare-fun b!85288 () Bool)

(declare-fun res!44242 () Bool)

(assert (=> b!85288 (=> (not res!44242) (not e!46233))))

(declare-fun p1!132 () Int)

(declare-fun inductVal!899 () Bool)

(declare-fun filter_preserves_forall!0 (List!700 Int Int) Bool)

(assert (=> b!85288 (= res!44242 (= inductVal!899 (filter_preserves_forall!0 (t!48107 ls!42) p1!132 p2!127)))))

(declare-fun b!85289 () Bool)

(declare-fun filter!43 (List!700 Int) List!700)

(assert (=> b!85289 (= e!46233 (not (forall!48 (filter!43 ls!42 p1!132) p2!127)))))

(assert (= (and start!11148 res!44243) b!85287))

(assert (= (and b!85287 res!44244) b!85288))

(assert (= (and b!85288 res!44242) b!85289))

(declare-fun m!81164 () Bool)

(assert (=> start!11148 m!81164))

(declare-fun m!81166 () Bool)

(assert (=> b!85288 m!81166))

(declare-fun m!81168 () Bool)

(assert (=> b!85289 m!81168))

(assert (=> b!85289 m!81168))

(declare-fun m!81170 () Bool)

(assert (=> b!85289 m!81170))

(push 1)

(assert (not b_next!39603))

(assert (not b!85288))

(assert b_and!59077)

(assert (not b!85289))

(assert b_and!59075)

(assert (not start!11148))

(assert (not b_next!39601))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59075)

(assert b_and!59077)

(assert (not b_next!39601))

(assert (not b_next!39603))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57313 () Bool)

(declare-fun res!44249 () Bool)

(declare-fun e!46238 () Bool)

(assert (=> d!57313 (=> res!44249 e!46238)))

(assert (=> d!57313 (= res!44249 (is-Nil!659 (filter!43 ls!42 p1!132)))))

(assert (=> d!57313 (= (forall!48 (filter!43 ls!42 p1!132) p2!127) e!46238)))

(declare-fun b!85294 () Bool)

(declare-fun e!46239 () Bool)

(assert (=> b!85294 (= e!46238 e!46239)))

(declare-fun res!44250 () Bool)

(assert (=> b!85294 (=> (not res!44250) (not e!46239))))

(declare-fun dynLambda!1011 (Int Int) Bool)

(assert (=> b!85294 (= res!44250 (dynLambda!1011 p2!127 (h!1030 (filter!43 ls!42 p1!132))))))

(declare-fun b!85295 () Bool)

(assert (=> b!85295 (= e!46239 (forall!48 (t!48107 (filter!43 ls!42 p1!132)) p2!127))))

(assert (= (and d!57313 (not res!44249)) b!85294))

(assert (= (and b!85294 res!44250) b!85295))

(declare-fun b_lambda!16775 () Bool)

(assert (=> (not b_lambda!16775) (not b!85294)))

(declare-fun t!48109 () Bool)

(declare-fun tb!46337 () Bool)

(assert (=> (and start!11148 (= p2!127 p2!127) t!48109) tb!46337))

(declare-fun result!46767 () Bool)

(assert (=> tb!46337 (= result!46767 true)))

(assert (=> b!85294 t!48109))

(declare-fun b_and!59079 () Bool)

(assert (= b_and!59075 (and (=> t!48109 result!46767) b_and!59079)))

(declare-fun t!48111 () Bool)

(declare-fun tb!46339 () Bool)

(assert (=> (and start!11148 (= p1!132 p2!127) t!48111) tb!46339))

(declare-fun result!46769 () Bool)

(assert (=> tb!46339 (= result!46769 true)))

(assert (=> b!85294 t!48111))

(declare-fun b_and!59081 () Bool)

(assert (= b_and!59077 (and (=> t!48111 result!46769) b_and!59081)))

(declare-fun m!81172 () Bool)

(assert (=> b!85294 m!81172))

(declare-fun m!81174 () Bool)

(assert (=> b!85295 m!81174))

(assert (=> b!85289 d!57313))

(declare-fun b!85310 () Bool)

(declare-fun e!46249 () List!700)

(assert (=> b!85310 (= e!46249 Nil!659)))

(declare-fun b!85311 () Bool)

(declare-fun res!44262 () Bool)

(declare-fun e!46251 () Bool)

(assert (=> b!85311 (=> (not res!44262) (not e!46251))))

(declare-fun lt!19887 () List!700)

(declare-fun content!151 (List!700) (Set Int))

(assert (=> b!85311 (= res!44262 (subset (content!151 lt!19887) (content!151 ls!42)))))

(declare-fun b!85312 () Bool)

(declare-fun e!46250 () List!700)

(assert (=> b!85312 (= e!46249 e!46250)))

(declare-fun c!21202 () Bool)

(declare-fun e!46248 () Bool)

(assert (=> b!85312 (= c!21202 e!46248)))

(declare-fun res!44263 () Bool)

(assert (=> b!85312 (=> (not res!44263) (not e!46248))))

(assert (=> b!85312 (= res!44263 (is-Cons!657 ls!42))))

(declare-fun lt!19886 () List!700)

(assert (=> b!85312 (= lt!19886 (filter!43 (t!48107 ls!42) p1!132))))

(declare-fun b!85313 () Bool)

(assert (=> b!85313 (= e!46248 (dynLambda!1011 p1!132 (h!1030 ls!42)))))

(declare-fun b!85314 () Bool)

(assert (=> b!85314 (= e!46250 (Cons!657 (h!1030 ls!42) lt!19886))))

(declare-fun b!85315 () Bool)

(assert (=> b!85315 (= e!46250 lt!19886)))

(declare-fun b!85316 () Bool)

(assert (=> b!85316 (= e!46251 (forall!48 lt!19887 p1!132))))

(declare-fun d!57315 () Bool)

(assert (=> d!57315 e!46251))

(declare-fun res!44261 () Bool)

(assert (=> d!57315 (=> (not res!44261) (not e!46251))))

(declare-fun size!680 (List!700) Int)

(assert (=> d!57315 (= res!44261 (<= (size!680 lt!19887) (size!680 ls!42)))))

(assert (=> d!57315 (= lt!19887 e!46249)))

(declare-fun c!21203 () Bool)

(assert (=> d!57315 (= c!21203 (is-Nil!659 ls!42))))

(assert (=> d!57315 (= (filter!43 ls!42 p1!132) lt!19887)))

(assert (= (and b!85312 res!44263) b!85313))

(assert (= (and b!85312 c!21202) b!85314))

(assert (= (and b!85312 (not c!21202)) b!85315))

(assert (= (and d!57315 c!21203) b!85310))

(assert (= (and d!57315 (not c!21203)) b!85312))

(assert (= (and d!57315 res!44261) b!85311))

(assert (= (and b!85311 res!44262) b!85316))

(declare-fun b_lambda!16777 () Bool)

(assert (=> (not b_lambda!16777) (not b!85313)))

(declare-fun tb!46341 () Bool)

(declare-fun t!48113 () Bool)

(assert (=> (and start!11148 (= p2!127 p1!132) t!48113) tb!46341))

(declare-fun result!46771 () Bool)

(assert (=> tb!46341 (= result!46771 true)))

(assert (=> b!85313 t!48113))

(declare-fun b_and!59083 () Bool)

(assert (= b_and!59079 (and (=> t!48113 result!46771) b_and!59083)))

(declare-fun t!48115 () Bool)

(declare-fun tb!46343 () Bool)

(assert (=> (and start!11148 (= p1!132 p1!132) t!48115) tb!46343))

(declare-fun result!46773 () Bool)

(assert (=> tb!46343 (= result!46773 true)))

(assert (=> b!85313 t!48115))

(declare-fun b_and!59085 () Bool)

(assert (= b_and!59081 (and (=> t!48115 result!46773) b_and!59085)))

(declare-fun m!81176 () Bool)

(assert (=> b!85316 m!81176))

(declare-fun m!81178 () Bool)

(assert (=> b!85313 m!81178))

(declare-fun m!81180 () Bool)

(assert (=> b!85312 m!81180))

(declare-fun m!81182 () Bool)

(assert (=> d!57315 m!81182))

(declare-fun m!81184 () Bool)

(assert (=> d!57315 m!81184))

(declare-fun m!81186 () Bool)

(assert (=> b!85311 m!81186))

(declare-fun m!81188 () Bool)

(assert (=> b!85311 m!81188))

(assert (=> b!85289 d!57315))

(declare-fun d!57317 () Bool)

(declare-fun res!44264 () Bool)

(declare-fun e!46252 () Bool)

(assert (=> d!57317 (=> res!44264 e!46252)))

(assert (=> d!57317 (= res!44264 (is-Nil!659 ls!42))))

(assert (=> d!57317 (= (forall!48 ls!42 p2!127) e!46252)))

(declare-fun b!85317 () Bool)

(declare-fun e!46253 () Bool)

(assert (=> b!85317 (= e!46252 e!46253)))

(declare-fun res!44265 () Bool)

(assert (=> b!85317 (=> (not res!44265) (not e!46253))))

(assert (=> b!85317 (= res!44265 (dynLambda!1011 p2!127 (h!1030 ls!42)))))

(declare-fun b!85318 () Bool)

(assert (=> b!85318 (= e!46253 (forall!48 (t!48107 ls!42) p2!127))))

(assert (= (and d!57317 (not res!44264)) b!85317))

(assert (= (and b!85317 res!44265) b!85318))

(declare-fun b_lambda!16779 () Bool)

(assert (=> (not b_lambda!16779) (not b!85317)))

(declare-fun t!48117 () Bool)

(declare-fun tb!46345 () Bool)

(assert (=> (and start!11148 (= p2!127 p2!127) t!48117) tb!46345))

(declare-fun result!46775 () Bool)

(assert (=> tb!46345 (= result!46775 true)))

(assert (=> b!85317 t!48117))

(declare-fun b_and!59087 () Bool)

(assert (= b_and!59083 (and (=> t!48117 result!46775) b_and!59087)))

(declare-fun tb!46347 () Bool)

(declare-fun t!48119 () Bool)

(assert (=> (and start!11148 (= p1!132 p2!127) t!48119) tb!46347))

(declare-fun result!46777 () Bool)

(assert (=> tb!46347 (= result!46777 true)))

(assert (=> b!85317 t!48119))

(declare-fun b_and!59089 () Bool)

(assert (= b_and!59085 (and (=> t!48119 result!46777) b_and!59089)))

(declare-fun m!81190 () Bool)

(assert (=> b!85317 m!81190))

(declare-fun m!81192 () Bool)

(assert (=> b!85318 m!81192))

(assert (=> start!11148 d!57317))

(declare-fun d!57319 () Bool)

(declare-fun e!46256 () Bool)

(assert (=> d!57319 e!46256))

(declare-fun c!21206 () Bool)

(assert (=> d!57319 (= c!21206 (is-Cons!657 (t!48107 ls!42)))))

(assert (=> d!57319 (forall!48 (t!48107 ls!42) p2!127)))

(assert (=> d!57319 (= (filter_preserves_forall!0 (t!48107 ls!42) p1!132 p2!127) true)))

(declare-fun b!85323 () Bool)

(assert (=> b!85323 (= e!46256 (forall!48 (filter!43 (t!48107 ls!42) p1!132) p2!127))))

(declare-fun lt!19890 () Bool)

(assert (=> b!85323 (= lt!19890 (filter_preserves_forall!0 (t!48107 (t!48107 ls!42)) p1!132 p2!127))))

(declare-fun b!85324 () Bool)

(assert (=> b!85324 (= e!46256 (forall!48 (filter!43 (t!48107 ls!42) p1!132) p2!127))))

(assert (= (and d!57319 c!21206) b!85323))

(assert (= (and d!57319 (not c!21206)) b!85324))

(assert (=> d!57319 m!81192))

(assert (=> b!85323 m!81180))

(assert (=> b!85323 m!81180))

(declare-fun m!81194 () Bool)

(assert (=> b!85323 m!81194))

(declare-fun m!81196 () Bool)

(assert (=> b!85323 m!81196))

(assert (=> b!85324 m!81180))

(assert (=> b!85324 m!81180))

(assert (=> b!85324 m!81194))

(assert (=> b!85288 d!57319))

(declare-fun b_lambda!16781 () Bool)

(assert (= b_lambda!16777 (or (and start!11148 b_free!7417 (= p2!127 p1!132)) (and start!11148 b_free!7419) b_lambda!16781)))

(declare-fun b_lambda!16783 () Bool)

(assert (= b_lambda!16775 (or (and start!11148 b_free!7417) (and start!11148 b_free!7419 (= p1!132 p2!127)) b_lambda!16783)))

(declare-fun b_lambda!16785 () Bool)

(assert (= b_lambda!16779 (or (and start!11148 b_free!7417) (and start!11148 b_free!7419 (= p1!132 p2!127)) b_lambda!16785)))

(push 1)

(assert (not d!57319))

(assert (not b!85316))

(assert (not b_next!39603))

(assert (not b!85295))

(assert (not b!85324))

(assert (not b!85323))

(assert (not b!85312))

(assert (not b!85311))

(assert (not b_lambda!16783))

(assert b_and!59089)

(assert b_and!59087)

(assert (not b_lambda!16781))

(assert (not d!57315))

(assert (not b_lambda!16785))

(assert (not b_next!39601))

(assert (not b!85318))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59087)

(assert b_and!59089)

(assert (not b_next!39601))

(assert (not b_next!39603))

(check-sat)

(pop 1)

