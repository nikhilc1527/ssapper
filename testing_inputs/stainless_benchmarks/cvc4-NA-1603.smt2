; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11156 () Bool)

(assert start!11156)

(declare-fun b_free!7421 () Bool)

(declare-fun b_next!39605 () Bool)

(assert (=> start!11156 (= b_free!7421 (not b_next!39605))))

(declare-fun tp!17046 () Bool)

(declare-fun b_and!59091 () Bool)

(assert (=> start!11156 (= tp!17046 b_and!59091)))

(declare-fun b_free!7423 () Bool)

(declare-fun b_next!39607 () Bool)

(assert (=> start!11156 (= b_free!7423 (not b_next!39607))))

(declare-fun tp!17047 () Bool)

(declare-fun b_and!59093 () Bool)

(assert (=> start!11156 (= tp!17047 b_and!59093)))

(declare-fun res!44270 () Bool)

(declare-fun e!46259 () Bool)

(assert (=> start!11156 (=> (not res!44270) (not e!46259))))

(declare-datatypes () ((List!701 (Cons!658 (h!1031 Int) (t!48120 List!701)) (Nil!660))))

(declare-fun ls!42 () List!701)

(declare-fun p2!127 () Int)

(declare-fun forall!49 (List!701 Int) Bool)

(assert (=> start!11156 (= res!44270 (forall!49 ls!42 p2!127))))

(assert (=> start!11156 e!46259))

(assert (=> start!11156 true))

(assert (=> start!11156 tp!17046))

(assert (=> start!11156 tp!17047))

(declare-fun b!85329 () Bool)

(declare-fun res!44271 () Bool)

(assert (=> b!85329 (=> (not res!44271) (not e!46259))))

(assert (=> b!85329 (= res!44271 (not (is-Cons!658 ls!42)))))

(declare-fun p1!132 () Int)

(declare-fun b!85330 () Bool)

(declare-fun filter!44 (List!701 Int) List!701)

(assert (=> b!85330 (= e!46259 (not (forall!49 (filter!44 ls!42 p1!132) p2!127)))))

(assert (= (and start!11156 res!44270) b!85329))

(assert (= (and b!85329 res!44271) b!85330))

(declare-fun m!81198 () Bool)

(assert (=> start!11156 m!81198))

(declare-fun m!81200 () Bool)

(assert (=> b!85330 m!81200))

(assert (=> b!85330 m!81200))

(declare-fun m!81202 () Bool)

(assert (=> b!85330 m!81202))

(push 1)

(assert (not start!11156))

(assert b_and!59091)

(assert (not b!85330))

(assert (not b_next!39605))

(assert (not b_next!39607))

(assert b_and!59093)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59091)

(assert b_and!59093)

(assert (not b_next!39605))

(assert (not b_next!39607))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57321 () Bool)

(declare-fun res!44276 () Bool)

(declare-fun e!46264 () Bool)

(assert (=> d!57321 (=> res!44276 e!46264)))

(assert (=> d!57321 (= res!44276 (is-Nil!660 (filter!44 ls!42 p1!132)))))

(assert (=> d!57321 (= (forall!49 (filter!44 ls!42 p1!132) p2!127) e!46264)))

(declare-fun b!85335 () Bool)

(declare-fun e!46265 () Bool)

(assert (=> b!85335 (= e!46264 e!46265)))

(declare-fun res!44277 () Bool)

(assert (=> b!85335 (=> (not res!44277) (not e!46265))))

(declare-fun dynLambda!1012 (Int Int) Bool)

(assert (=> b!85335 (= res!44277 (dynLambda!1012 p2!127 (h!1031 (filter!44 ls!42 p1!132))))))

(declare-fun b!85336 () Bool)

(assert (=> b!85336 (= e!46265 (forall!49 (t!48120 (filter!44 ls!42 p1!132)) p2!127))))

(assert (= (and d!57321 (not res!44276)) b!85335))

(assert (= (and b!85335 res!44277) b!85336))

(declare-fun b_lambda!16787 () Bool)

(assert (=> (not b_lambda!16787) (not b!85335)))

(declare-fun t!48122 () Bool)

(declare-fun tb!46349 () Bool)

(assert (=> (and start!11156 (= p2!127 p2!127) t!48122) tb!46349))

(declare-fun result!46779 () Bool)

(assert (=> tb!46349 (= result!46779 true)))

(assert (=> b!85335 t!48122))

(declare-fun b_and!59095 () Bool)

(assert (= b_and!59091 (and (=> t!48122 result!46779) b_and!59095)))

(declare-fun t!48124 () Bool)

(declare-fun tb!46351 () Bool)

(assert (=> (and start!11156 (= p1!132 p2!127) t!48124) tb!46351))

(declare-fun result!46781 () Bool)

(assert (=> tb!46351 (= result!46781 true)))

(assert (=> b!85335 t!48124))

(declare-fun b_and!59097 () Bool)

(assert (= b_and!59093 (and (=> t!48124 result!46781) b_and!59097)))

(declare-fun m!81204 () Bool)

(assert (=> b!85335 m!81204))

(declare-fun m!81206 () Bool)

(assert (=> b!85336 m!81206))

(assert (=> b!85330 d!57321))

(declare-fun b!85351 () Bool)

(declare-fun e!46275 () List!701)

(assert (=> b!85351 (= e!46275 Nil!660)))

(declare-fun b!85352 () Bool)

(declare-fun e!46276 () List!701)

(declare-fun lt!19896 () List!701)

(assert (=> b!85352 (= e!46276 lt!19896)))

(declare-fun d!57323 () Bool)

(declare-fun e!46274 () Bool)

(assert (=> d!57323 e!46274))

(declare-fun res!44290 () Bool)

(assert (=> d!57323 (=> (not res!44290) (not e!46274))))

(declare-fun lt!19895 () List!701)

(declare-fun size!681 (List!701) Int)

(assert (=> d!57323 (= res!44290 (<= (size!681 lt!19895) (size!681 ls!42)))))

(assert (=> d!57323 (= lt!19895 e!46275)))

(declare-fun c!21211 () Bool)

(assert (=> d!57323 (= c!21211 (is-Nil!660 ls!42))))

(assert (=> d!57323 (= (filter!44 ls!42 p1!132) lt!19895)))

(declare-fun b!85353 () Bool)

(declare-fun res!44289 () Bool)

(assert (=> b!85353 (=> (not res!44289) (not e!46274))))

(declare-fun content!152 (List!701) (Set Int))

(assert (=> b!85353 (= res!44289 (subset (content!152 lt!19895) (content!152 ls!42)))))

(declare-fun b!85354 () Bool)

(declare-fun e!46277 () Bool)

(assert (=> b!85354 (= e!46277 (dynLambda!1012 p1!132 (h!1031 ls!42)))))

(declare-fun b!85355 () Bool)

(assert (=> b!85355 (= e!46274 (forall!49 lt!19895 p1!132))))

(declare-fun b!85356 () Bool)

(assert (=> b!85356 (= e!46276 (Cons!658 (h!1031 ls!42) lt!19896))))

(declare-fun b!85357 () Bool)

(assert (=> b!85357 (= e!46275 e!46276)))

(declare-fun c!21212 () Bool)

(assert (=> b!85357 (= c!21212 e!46277)))

(declare-fun res!44288 () Bool)

(assert (=> b!85357 (=> (not res!44288) (not e!46277))))

(assert (=> b!85357 (= res!44288 (is-Cons!658 ls!42))))

(assert (=> b!85357 (= lt!19896 (filter!44 (t!48120 ls!42) p1!132))))

(assert (= (and b!85357 res!44288) b!85354))

(assert (= (and b!85357 c!21212) b!85356))

(assert (= (and b!85357 (not c!21212)) b!85352))

(assert (= (and d!57323 c!21211) b!85351))

(assert (= (and d!57323 (not c!21211)) b!85357))

(assert (= (and d!57323 res!44290) b!85353))

(assert (= (and b!85353 res!44289) b!85355))

(declare-fun b_lambda!16789 () Bool)

(assert (=> (not b_lambda!16789) (not b!85354)))

(declare-fun tb!46353 () Bool)

(declare-fun t!48126 () Bool)

(assert (=> (and start!11156 (= p2!127 p1!132) t!48126) tb!46353))

(declare-fun result!46783 () Bool)

(assert (=> tb!46353 (= result!46783 true)))

(assert (=> b!85354 t!48126))

(declare-fun b_and!59099 () Bool)

(assert (= b_and!59095 (and (=> t!48126 result!46783) b_and!59099)))

(declare-fun t!48128 () Bool)

(declare-fun tb!46355 () Bool)

(assert (=> (and start!11156 (= p1!132 p1!132) t!48128) tb!46355))

(declare-fun result!46785 () Bool)

(assert (=> tb!46355 (= result!46785 true)))

(assert (=> b!85354 t!48128))

(declare-fun b_and!59101 () Bool)

(assert (= b_and!59097 (and (=> t!48128 result!46785) b_and!59101)))

(declare-fun m!81208 () Bool)

(assert (=> b!85354 m!81208))

(declare-fun m!81210 () Bool)

(assert (=> b!85357 m!81210))

(declare-fun m!81212 () Bool)

(assert (=> b!85353 m!81212))

(declare-fun m!81214 () Bool)

(assert (=> b!85353 m!81214))

(declare-fun m!81216 () Bool)

(assert (=> d!57323 m!81216))

(declare-fun m!81218 () Bool)

(assert (=> d!57323 m!81218))

(declare-fun m!81220 () Bool)

(assert (=> b!85355 m!81220))

(assert (=> b!85330 d!57323))

(declare-fun d!57325 () Bool)

(declare-fun res!44291 () Bool)

(declare-fun e!46278 () Bool)

(assert (=> d!57325 (=> res!44291 e!46278)))

(assert (=> d!57325 (= res!44291 (is-Nil!660 ls!42))))

(assert (=> d!57325 (= (forall!49 ls!42 p2!127) e!46278)))

(declare-fun b!85358 () Bool)

(declare-fun e!46279 () Bool)

(assert (=> b!85358 (= e!46278 e!46279)))

(declare-fun res!44292 () Bool)

(assert (=> b!85358 (=> (not res!44292) (not e!46279))))

(assert (=> b!85358 (= res!44292 (dynLambda!1012 p2!127 (h!1031 ls!42)))))

(declare-fun b!85359 () Bool)

(assert (=> b!85359 (= e!46279 (forall!49 (t!48120 ls!42) p2!127))))

(assert (= (and d!57325 (not res!44291)) b!85358))

(assert (= (and b!85358 res!44292) b!85359))

(declare-fun b_lambda!16791 () Bool)

(assert (=> (not b_lambda!16791) (not b!85358)))

(declare-fun t!48130 () Bool)

(declare-fun tb!46357 () Bool)

(assert (=> (and start!11156 (= p2!127 p2!127) t!48130) tb!46357))

(declare-fun result!46787 () Bool)

(assert (=> tb!46357 (= result!46787 true)))

(assert (=> b!85358 t!48130))

(declare-fun b_and!59103 () Bool)

(assert (= b_and!59099 (and (=> t!48130 result!46787) b_and!59103)))

(declare-fun t!48132 () Bool)

(declare-fun tb!46359 () Bool)

(assert (=> (and start!11156 (= p1!132 p2!127) t!48132) tb!46359))

(declare-fun result!46789 () Bool)

(assert (=> tb!46359 (= result!46789 true)))

(assert (=> b!85358 t!48132))

(declare-fun b_and!59105 () Bool)

(assert (= b_and!59101 (and (=> t!48132 result!46789) b_and!59105)))

(declare-fun m!81222 () Bool)

(assert (=> b!85358 m!81222))

(declare-fun m!81224 () Bool)

(assert (=> b!85359 m!81224))

(assert (=> start!11156 d!57325))

(declare-fun b_lambda!16793 () Bool)

(assert (= b_lambda!16791 (or (and start!11156 b_free!7421) (and start!11156 b_free!7423 (= p1!132 p2!127)) b_lambda!16793)))

(declare-fun b_lambda!16795 () Bool)

(assert (= b_lambda!16787 (or (and start!11156 b_free!7421) (and start!11156 b_free!7423 (= p1!132 p2!127)) b_lambda!16795)))

(declare-fun b_lambda!16797 () Bool)

(assert (= b_lambda!16789 (or (and start!11156 b_free!7421 (= p2!127 p1!132)) (and start!11156 b_free!7423) b_lambda!16797)))

(push 1)

(assert (not b!85359))

(assert b_and!59105)

(assert (not b!85336))

(assert (not b!85353))

(assert (not b_next!39605))

(assert (not b!85357))

(assert (not b_lambda!16797))

(assert (not b_next!39607))

(assert b_and!59103)

(assert (not d!57323))

(assert (not b!85355))

(assert (not b_lambda!16793))

(assert (not b_lambda!16795))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59103)

(assert b_and!59105)

(assert (not b_next!39605))

(assert (not b_next!39607))

(check-sat)

(pop 1)

