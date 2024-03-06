; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2740 () Bool)

(assert start!2740)

(declare-fun tp!3319 () Bool)

(declare-fun tp!3318 () Bool)

(declare-fun e!7381 () Bool)

(declare-fun b!13430 () Bool)

(declare-datatypes () ((Tree!96 (Leaf!178) (Node!27 (left!594 Tree!96) (value!1513 Int) (right!597 Tree!96)))))

(declare-fun res!5050 () Tree!96)

(declare-fun inv!443 (Tree!96) Bool)

(assert (=> b!13430 (= e!7381 (and (inv!443 (left!594 res!5050)) tp!3318 (inv!443 (right!597 res!5050)) tp!3319))))

(declare-fun res!5079 () Bool)

(declare-fun e!7382 () Bool)

(assert (=> start!2740 (=> (not res!5079) (not e!7382))))

(declare-fun tree!126 () Tree!96)

(declare-fun value!1495 () Int)

(assert (=> start!2740 (= res!5079 (and (not (is-Leaf!178 tree!126)) (< (value!1513 tree!126) value!1495)))))

(assert (=> start!2740 e!7382))

(declare-fun e!7383 () Bool)

(assert (=> start!2740 (and (inv!443 tree!126) e!7383)))

(assert (=> start!2740 true))

(assert (=> start!2740 (and (inv!443 res!5050) e!7381)))

(declare-fun b!13428 () Bool)

(declare-fun content!20 (Tree!96) (Set Int))

(assert (=> b!13428 (= e!7382 (not (= (content!20 res!5050) (union (content!20 tree!126) (insert value!1495 (as emptyset (Set Int)))))))))

(assert (=> b!13428 (is-Node!27 res!5050)))

(declare-fun b!13427 () Bool)

(declare-fun res!5078 () Bool)

(assert (=> b!13427 (=> (not res!5078) (not e!7382))))

(declare-fun insert!9 (Tree!96 Int) Tree!96)

(assert (=> b!13427 (= res!5078 (= res!5050 (Node!27 (left!594 tree!126) (value!1513 tree!126) (insert!9 (right!597 tree!126) value!1495))))))

(declare-fun tp!3320 () Bool)

(declare-fun tp!3321 () Bool)

(declare-fun b!13429 () Bool)

(assert (=> b!13429 (= e!7383 (and (inv!443 (left!594 tree!126)) tp!3321 (inv!443 (right!597 tree!126)) tp!3320))))

(assert (= (and start!2740 res!5079) b!13427))

(assert (= (and b!13427 res!5078) b!13428))

(assert (= (and start!2740 (is-Node!27 tree!126)) b!13429))

(assert (= (and start!2740 (is-Node!27 res!5050)) b!13430))

(declare-fun m!17067 () Bool)

(assert (=> b!13429 m!17067))

(declare-fun m!17069 () Bool)

(assert (=> b!13429 m!17069))

(declare-fun m!17071 () Bool)

(assert (=> b!13428 m!17071))

(declare-fun m!17073 () Bool)

(assert (=> b!13428 m!17073))

(declare-fun m!17075 () Bool)

(assert (=> b!13428 m!17075))

(declare-fun m!17077 () Bool)

(assert (=> start!2740 m!17077))

(declare-fun m!17079 () Bool)

(assert (=> start!2740 m!17079))

(declare-fun m!17081 () Bool)

(assert (=> b!13427 m!17081))

(declare-fun m!17083 () Bool)

(assert (=> b!13430 m!17083))

(declare-fun m!17085 () Bool)

(assert (=> b!13430 m!17085))

(push 1)

(assert (not b!13427))

(assert (not start!2740))

(assert (not b!13430))

(assert (not b!13428))

(assert (not b!13429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!7394 () Tree!96)

(declare-fun lt!1917 () Bool)

(declare-fun b!13443 () Bool)

(declare-fun lt!1916 () Tree!96)

(assert (=> b!13443 (= e!7394 (ite lt!1917 (Node!27 (left!594 (right!597 tree!126)) (value!1513 (right!597 tree!126)) lt!1916) (ite (> (value!1513 (right!597 tree!126)) value!1495) (Node!27 lt!1916 (value!1513 (right!597 tree!126)) (right!597 (right!597 tree!126))) (Node!27 (left!594 (right!597 tree!126)) (value!1513 (right!597 tree!126)) (right!597 (right!597 tree!126))))))))

(declare-fun e!7393 () Tree!96)

(assert (=> b!13443 (= lt!1916 e!7393)))

(declare-fun c!3750 () Bool)

(assert (=> b!13443 (= c!3750 (or lt!1917 (> (value!1513 (right!597 tree!126)) value!1495)))))

(assert (=> b!13443 (= lt!1917 (< (value!1513 (right!597 tree!126)) value!1495))))

(declare-fun d!10336 () Bool)

(declare-fun e!7392 () Bool)

(assert (=> d!10336 e!7392))

(declare-fun res!5088 () Bool)

(assert (=> d!10336 (=> (not res!5088) (not e!7392))))

(declare-fun lt!1915 () Tree!96)

(assert (=> d!10336 (= res!5088 (is-Node!27 lt!1915))))

(assert (=> d!10336 (= lt!1915 e!7394)))

(declare-fun c!3751 () Bool)

(assert (=> d!10336 (= c!3751 (is-Leaf!178 (right!597 tree!126)))))

(assert (=> d!10336 (= (insert!9 (right!597 tree!126) value!1495) lt!1915)))

(declare-fun b!13444 () Bool)

(assert (=> b!13444 (= e!7394 (Node!27 Leaf!178 value!1495 Leaf!178))))

(declare-fun b!13445 () Bool)

(assert (=> b!13445 (= e!7393 (insert!9 (ite lt!1917 (right!597 (right!597 tree!126)) (left!594 (right!597 tree!126))) value!1495))))

(declare-fun b!13446 () Bool)

(declare-fun e!7395 () Bool)

(declare-fun tp!3327 () Bool)

(declare-fun res!5089 () Tree!96)

(declare-fun tp!3326 () Bool)

(assert (=> b!13446 (= e!7395 (and (inv!443 (left!594 res!5089)) tp!3326 (inv!443 (right!597 res!5089)) tp!3327))))

(declare-fun b!13447 () Bool)

(assert (=> b!13447 (= e!7392 (= (content!20 lt!1915) (union (content!20 (right!597 tree!126)) (insert value!1495 (as emptyset (Set Int))))))))

(declare-fun b!13448 () Bool)

(assert (=> b!13448 (= e!7393 res!5089)))

(assert (=> b!13448 true))

(assert (=> b!13448 (and (inv!443 res!5089) e!7395)))

(assert (= (and b!13448 (is-Node!27 res!5089)) b!13446))

(assert (= (and b!13443 c!3750) b!13445))

(assert (= (and b!13443 (not c!3750)) b!13448))

(assert (= (and d!10336 c!3751) b!13444))

(assert (= (and d!10336 (not c!3751)) b!13443))

(assert (= (and d!10336 res!5088) b!13447))

(declare-fun m!17087 () Bool)

(assert (=> b!13445 m!17087))

(declare-fun m!17089 () Bool)

(assert (=> b!13446 m!17089))

(declare-fun m!17091 () Bool)

(assert (=> b!13446 m!17091))

(declare-fun m!17093 () Bool)

(assert (=> b!13447 m!17093))

(declare-fun m!17095 () Bool)

(assert (=> b!13447 m!17095))

(assert (=> b!13447 m!17075))

(declare-fun m!17097 () Bool)

(assert (=> b!13448 m!17097))

(assert (=> b!13427 d!10336))

(declare-fun b!13453 () Bool)

(declare-fun m!17099 () Bool)

(assert (=> b!13453 m!17099))

(declare-fun inst!122 () Bool)

(declare-fun x!7622 () Int)

(assert (=> b!13453 (= inst!122 (=> true (or (not (member x!7622 (content!20 (left!594 tree!126)))) (< x!7622 (value!1513 tree!126)))))))

(declare-fun m!17101 () Bool)

(assert (=> b!13453 m!17101))

(declare-fun b!13454 () Bool)

(assert (=> b!13454 m!17095))

(declare-fun inst!123 () Bool)

(declare-fun x!7623 () Int)

(assert (=> b!13454 (= inst!123 (=> true (or (not (member x!7623 (content!20 (right!597 tree!126)))) (< (value!1513 tree!126) x!7623))))))

(declare-fun m!17103 () Bool)

(assert (=> b!13454 m!17103))

(declare-fun bs!4300 () Bool)

(declare-fun neg-inst!110 () Bool)

(assert (= bs!4300 neg-inst!110))

(assert (=> bs!4300 m!17099))

(declare-fun bs!4301 () Bool)

(declare-fun s!611 () Bool)

(assert (= bs!4301 (and neg-inst!110 s!611)))

(assert (=> bs!4301 (=> true (or (not (member x!7622 (content!20 (left!594 tree!126)))) (< x!7622 (value!1513 tree!126))))))

(assert (=> m!17101 s!611))

(declare-fun bs!4302 () Bool)

(assert (= bs!4302 (and neg-inst!110 b!13453)))

(assert (=> bs!4302 (= true inst!122)))

(declare-fun bs!4303 () Bool)

(declare-fun neg-inst!111 () Bool)

(assert (= bs!4303 neg-inst!111))

(assert (=> bs!4303 m!17095))

(declare-fun bs!4304 () Bool)

(declare-fun s!613 () Bool)

(assert (= bs!4304 (and neg-inst!111 s!613)))

(assert (=> bs!4304 (=> true (or (not (member x!7623 (content!20 (right!597 tree!126)))) (< (value!1513 tree!126) x!7623)))))

(assert (=> m!17103 s!613))

(declare-fun bs!4305 () Bool)

(assert (= bs!4305 (and neg-inst!111 b!13454)))

(assert (=> bs!4305 (= true inst!123)))

(declare-fun d!10338 () Bool)

(declare-fun res!5094 () Bool)

(declare-fun e!7400 () Bool)

(assert (=> d!10338 (=> res!5094 e!7400)))

(assert (=> d!10338 (= res!5094 (not (is-Node!27 tree!126)))))

(assert (=> d!10338 (= (inv!443 tree!126) e!7400)))

(declare-fun e!7401 () Bool)

(assert (=> b!13453 (= e!7400 e!7401)))

(declare-fun res!5095 () Bool)

(assert (=> b!13453 (=> (not res!5095) (not e!7401))))

(assert (=> b!13453 (= res!5095 inst!122)))

(assert (=> b!13454 (= e!7401 inst!123)))

(assert (= (and d!10338 (not res!5094)) b!13453))

(assert (= neg-inst!110 inst!122))

(assert (= (and b!13453 res!5095) b!13454))

(assert (= neg-inst!111 inst!123))

(assert (=> start!2740 d!10338))

(declare-fun b!13455 () Bool)

(declare-fun m!17105 () Bool)

(assert (=> b!13455 m!17105))

(declare-fun inst!124 () Bool)

(declare-fun x!7624 () Int)

(assert (=> b!13455 (= inst!124 (=> true (or (not (member x!7624 (content!20 (left!594 res!5050)))) (< x!7624 (value!1513 res!5050)))))))

(declare-fun m!17107 () Bool)

(assert (=> b!13455 m!17107))

(declare-fun bs!4306 () Bool)

(assert (= bs!4306 (and b!13455 b!13453)))

(assert (=> (and bs!4306 (= (content!20 (left!594 res!5050)) (content!20 (left!594 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= inst!124 inst!122)))

(declare-fun bs!4307 () Bool)

(assert (= bs!4307 (and b!13455 neg-inst!110)))

(assert (=> (and bs!4307 (= (content!20 (left!594 res!5050)) (content!20 (left!594 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= inst!124 true)))

(declare-fun b!13456 () Bool)

(declare-fun m!17109 () Bool)

(assert (=> b!13456 m!17109))

(declare-fun inst!125 () Bool)

(declare-fun x!7625 () Int)

(assert (=> b!13456 (= inst!125 (=> true (or (not (member x!7625 (content!20 (right!597 res!5050)))) (< (value!1513 res!5050) x!7625))))))

(declare-fun m!17111 () Bool)

(assert (=> b!13456 m!17111))

(declare-fun bs!4308 () Bool)

(assert (= bs!4308 (and b!13456 b!13454)))

(assert (=> (and bs!4308 (= (content!20 (right!597 res!5050)) (content!20 (right!597 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= inst!125 inst!123)))

(declare-fun bs!4309 () Bool)

(assert (= bs!4309 (and b!13456 neg-inst!111)))

(assert (=> (and bs!4309 (= (content!20 (right!597 res!5050)) (content!20 (right!597 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= inst!125 true)))

(declare-fun bs!4310 () Bool)

(declare-fun neg-inst!112 () Bool)

(assert (= bs!4310 neg-inst!112))

(assert (=> bs!4310 m!17105))

(declare-fun bs!4311 () Bool)

(declare-fun s!615 () Bool)

(assert (= bs!4311 (and neg-inst!112 s!615)))

(assert (=> bs!4311 (=> true (or (not (member x!7624 (content!20 (left!594 res!5050)))) (< x!7624 (value!1513 res!5050))))))

(assert (=> m!17107 s!615))

(declare-fun bs!4312 () Bool)

(assert (= bs!4312 (and neg-inst!112 b!13455)))

(assert (=> bs!4312 (= true inst!124)))

(declare-fun bs!4313 () Bool)

(assert (= bs!4313 (and neg-inst!112 b!13453)))

(assert (=> (and bs!4313 (= (content!20 (left!594 res!5050)) (content!20 (left!594 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= true inst!122)))

(declare-fun bs!4314 () Bool)

(assert (= bs!4314 (and neg-inst!112 neg-inst!110)))

(assert (=> (and bs!4314 (= (content!20 (left!594 res!5050)) (content!20 (left!594 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4315 () Bool)

(declare-fun neg-inst!113 () Bool)

(assert (= bs!4315 neg-inst!113))

(assert (=> bs!4315 m!17109))

(declare-fun bs!4316 () Bool)

(declare-fun s!617 () Bool)

(assert (= bs!4316 (and neg-inst!113 s!617)))

(assert (=> bs!4316 (=> true (or (not (member x!7625 (content!20 (right!597 res!5050)))) (< (value!1513 res!5050) x!7625)))))

(assert (=> m!17111 s!617))

(declare-fun bs!4317 () Bool)

(assert (= bs!4317 (and neg-inst!113 b!13456)))

(assert (=> bs!4317 (= true inst!125)))

(declare-fun bs!4318 () Bool)

(assert (= bs!4318 (and neg-inst!113 b!13454)))

(assert (=> (and bs!4318 (= (content!20 (right!597 res!5050)) (content!20 (right!597 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= true inst!123)))

(declare-fun bs!4319 () Bool)

(assert (= bs!4319 (and neg-inst!113 neg-inst!111)))

(assert (=> (and bs!4319 (= (content!20 (right!597 res!5050)) (content!20 (right!597 tree!126))) (= (value!1513 res!5050) (value!1513 tree!126))) (= true true)))

(declare-fun d!10340 () Bool)

(declare-fun res!5096 () Bool)

(declare-fun e!7402 () Bool)

(assert (=> d!10340 (=> res!5096 e!7402)))

(assert (=> d!10340 (= res!5096 (not (is-Node!27 res!5050)))))

(assert (=> d!10340 (= (inv!443 res!5050) e!7402)))

(declare-fun e!7403 () Bool)

(assert (=> b!13455 (= e!7402 e!7403)))

(declare-fun res!5097 () Bool)

(assert (=> b!13455 (=> (not res!5097) (not e!7403))))

(assert (=> b!13455 (= res!5097 inst!124)))

(assert (=> b!13456 (= e!7403 inst!125)))

(assert (= (and d!10340 (not res!5096)) b!13455))

(assert (= neg-inst!112 inst!124))

(assert (= (and b!13455 res!5097) b!13456))

(assert (= neg-inst!113 inst!125))

(assert (=> start!2740 d!10340))

(declare-fun b!13457 () Bool)

(declare-fun m!17113 () Bool)

(assert (=> b!13457 m!17113))

(declare-fun inst!126 () Bool)

(declare-fun x!7626 () Int)

(assert (=> b!13457 (= inst!126 (=> true (or (not (member x!7626 (content!20 (left!594 (left!594 res!5050))))) (< x!7626 (value!1513 (left!594 res!5050))))))))

(declare-fun m!17115 () Bool)

(assert (=> b!13457 m!17115))

(declare-fun bs!4320 () Bool)

(assert (= bs!4320 (and b!13457 neg-inst!112)))

(assert (=> (and bs!4320 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= inst!126 true)))

(declare-fun bs!4321 () Bool)

(assert (= bs!4321 (and b!13457 b!13455)))

(assert (=> (and bs!4321 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= inst!126 inst!124)))

(declare-fun bs!4322 () Bool)

(assert (= bs!4322 (and b!13457 b!13453)))

(assert (=> (and bs!4322 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= inst!126 inst!122)))

(declare-fun bs!4323 () Bool)

(assert (= bs!4323 (and b!13457 neg-inst!110)))

(assert (=> (and bs!4323 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= inst!126 true)))

(declare-fun b!13458 () Bool)

(declare-fun m!17117 () Bool)

(assert (=> b!13458 m!17117))

(declare-fun inst!127 () Bool)

(declare-fun x!7627 () Int)

(assert (=> b!13458 (= inst!127 (=> true (or (not (member x!7627 (content!20 (right!597 (left!594 res!5050))))) (< (value!1513 (left!594 res!5050)) x!7627))))))

(declare-fun m!17119 () Bool)

(assert (=> b!13458 m!17119))

(declare-fun bs!4324 () Bool)

(assert (= bs!4324 (and b!13458 b!13456)))

(assert (=> (and bs!4324 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= inst!127 inst!125)))

(declare-fun bs!4325 () Bool)

(assert (= bs!4325 (and b!13458 b!13454)))

(assert (=> (and bs!4325 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= inst!127 inst!123)))

(declare-fun bs!4326 () Bool)

(assert (= bs!4326 (and b!13458 neg-inst!111)))

(assert (=> (and bs!4326 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= inst!127 true)))

(declare-fun bs!4327 () Bool)

(assert (= bs!4327 (and b!13458 neg-inst!113)))

(assert (=> (and bs!4327 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= inst!127 true)))

(declare-fun bs!4328 () Bool)

(declare-fun neg-inst!114 () Bool)

(assert (= bs!4328 neg-inst!114))

(assert (=> bs!4328 m!17113))

(declare-fun bs!4329 () Bool)

(declare-fun s!619 () Bool)

(assert (= bs!4329 (and neg-inst!114 s!619)))

(assert (=> bs!4329 (=> true (or (not (member x!7626 (content!20 (left!594 (left!594 res!5050))))) (< x!7626 (value!1513 (left!594 res!5050)))))))

(assert (=> m!17115 s!619))

(declare-fun bs!4330 () Bool)

(assert (= bs!4330 (and neg-inst!114 neg-inst!112)))

(assert (=> (and bs!4330 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= true true)))

(declare-fun bs!4331 () Bool)

(assert (= bs!4331 (and neg-inst!114 b!13457)))

(assert (=> bs!4331 (= true inst!126)))

(declare-fun bs!4332 () Bool)

(assert (= bs!4332 (and neg-inst!114 b!13455)))

(assert (=> (and bs!4332 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= true inst!124)))

(declare-fun bs!4333 () Bool)

(assert (= bs!4333 (and neg-inst!114 b!13453)))

(assert (=> (and bs!4333 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= true inst!122)))

(declare-fun bs!4334 () Bool)

(assert (= bs!4334 (and neg-inst!114 neg-inst!110)))

(assert (=> (and bs!4334 (= (content!20 (left!594 (left!594 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4335 () Bool)

(declare-fun neg-inst!115 () Bool)

(assert (= bs!4335 neg-inst!115))

(assert (=> bs!4335 m!17117))

(declare-fun bs!4336 () Bool)

(declare-fun s!621 () Bool)

(assert (= bs!4336 (and neg-inst!115 s!621)))

(assert (=> bs!4336 (=> true (or (not (member x!7627 (content!20 (right!597 (left!594 res!5050))))) (< (value!1513 (left!594 res!5050)) x!7627)))))

(assert (=> m!17119 s!621))

(declare-fun bs!4337 () Bool)

(assert (= bs!4337 (and neg-inst!115 b!13458)))

(assert (=> bs!4337 (= true inst!127)))

(declare-fun bs!4338 () Bool)

(assert (= bs!4338 (and neg-inst!115 b!13456)))

(assert (=> (and bs!4338 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= true inst!125)))

(declare-fun bs!4339 () Bool)

(assert (= bs!4339 (and neg-inst!115 b!13454)))

(assert (=> (and bs!4339 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= true inst!123)))

(declare-fun bs!4340 () Bool)

(assert (= bs!4340 (and neg-inst!115 neg-inst!111)))

(assert (=> (and bs!4340 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 res!5050)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4341 () Bool)

(assert (= bs!4341 (and neg-inst!115 neg-inst!113)))

(assert (=> (and bs!4341 (= (content!20 (right!597 (left!594 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 res!5050)) (value!1513 res!5050))) (= true true)))

(declare-fun d!10342 () Bool)

(declare-fun res!5098 () Bool)

(declare-fun e!7404 () Bool)

(assert (=> d!10342 (=> res!5098 e!7404)))

(assert (=> d!10342 (= res!5098 (not (is-Node!27 (left!594 res!5050))))))

(assert (=> d!10342 (= (inv!443 (left!594 res!5050)) e!7404)))

(declare-fun e!7405 () Bool)

(assert (=> b!13457 (= e!7404 e!7405)))

(declare-fun res!5099 () Bool)

(assert (=> b!13457 (=> (not res!5099) (not e!7405))))

(assert (=> b!13457 (= res!5099 inst!126)))

(assert (=> b!13458 (= e!7405 inst!127)))

(assert (= (and d!10342 (not res!5098)) b!13457))

(assert (= neg-inst!114 inst!126))

(assert (= (and b!13457 res!5099) b!13458))

(assert (= neg-inst!115 inst!127))

(assert (=> b!13430 d!10342))

(declare-fun b!13459 () Bool)

(declare-fun m!17121 () Bool)

(assert (=> b!13459 m!17121))

(declare-fun inst!128 () Bool)

(declare-fun x!7628 () Int)

(assert (=> b!13459 (= inst!128 (=> true (or (not (member x!7628 (content!20 (left!594 (right!597 res!5050))))) (< x!7628 (value!1513 (right!597 res!5050))))))))

(declare-fun m!17123 () Bool)

(assert (=> b!13459 m!17123))

(declare-fun bs!4342 () Bool)

(assert (= bs!4342 (and b!13459 neg-inst!112)))

(assert (=> (and bs!4342 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= inst!128 true)))

(declare-fun bs!4343 () Bool)

(assert (= bs!4343 (and b!13459 b!13457)))

(assert (=> (and bs!4343 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= inst!128 inst!126)))

(declare-fun bs!4344 () Bool)

(assert (= bs!4344 (and b!13459 neg-inst!114)))

(assert (=> (and bs!4344 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= inst!128 true)))

(declare-fun bs!4345 () Bool)

(assert (= bs!4345 (and b!13459 b!13455)))

(assert (=> (and bs!4345 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= inst!128 inst!124)))

(declare-fun bs!4346 () Bool)

(assert (= bs!4346 (and b!13459 b!13453)))

(assert (=> (and bs!4346 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= inst!128 inst!122)))

(declare-fun bs!4347 () Bool)

(assert (= bs!4347 (and b!13459 neg-inst!110)))

(assert (=> (and bs!4347 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= inst!128 true)))

(declare-fun b!13460 () Bool)

(declare-fun m!17125 () Bool)

(assert (=> b!13460 m!17125))

(declare-fun inst!129 () Bool)

(declare-fun x!7629 () Int)

(assert (=> b!13460 (= inst!129 (=> true (or (not (member x!7629 (content!20 (right!597 (right!597 res!5050))))) (< (value!1513 (right!597 res!5050)) x!7629))))))

(declare-fun m!17127 () Bool)

(assert (=> b!13460 m!17127))

(declare-fun bs!4348 () Bool)

(assert (= bs!4348 (and b!13460 b!13458)))

(assert (=> (and bs!4348 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= inst!129 inst!127)))

(declare-fun bs!4349 () Bool)

(assert (= bs!4349 (and b!13460 b!13456)))

(assert (=> (and bs!4349 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= inst!129 inst!125)))

(declare-fun bs!4350 () Bool)

(assert (= bs!4350 (and b!13460 neg-inst!115)))

(assert (=> (and bs!4350 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= inst!129 true)))

(declare-fun bs!4351 () Bool)

(assert (= bs!4351 (and b!13460 b!13454)))

(assert (=> (and bs!4351 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= inst!129 inst!123)))

(declare-fun bs!4352 () Bool)

(assert (= bs!4352 (and b!13460 neg-inst!111)))

(assert (=> (and bs!4352 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= inst!129 true)))

(declare-fun bs!4353 () Bool)

(assert (= bs!4353 (and b!13460 neg-inst!113)))

(assert (=> (and bs!4353 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= inst!129 true)))

(declare-fun bs!4354 () Bool)

(declare-fun neg-inst!116 () Bool)

(assert (= bs!4354 neg-inst!116))

(assert (=> bs!4354 m!17121))

(declare-fun bs!4355 () Bool)

(declare-fun s!623 () Bool)

(assert (= bs!4355 (and neg-inst!116 s!623)))

(assert (=> bs!4355 (=> true (or (not (member x!7628 (content!20 (left!594 (right!597 res!5050))))) (< x!7628 (value!1513 (right!597 res!5050)))))))

(assert (=> m!17123 s!623))

(declare-fun bs!4356 () Bool)

(assert (= bs!4356 (and neg-inst!116 b!13459)))

(assert (=> bs!4356 (= true inst!128)))

(declare-fun bs!4357 () Bool)

(assert (= bs!4357 (and neg-inst!116 neg-inst!112)))

(assert (=> (and bs!4357 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= true true)))

(declare-fun bs!4358 () Bool)

(assert (= bs!4358 (and neg-inst!116 b!13457)))

(assert (=> (and bs!4358 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= true inst!126)))

(declare-fun bs!4359 () Bool)

(assert (= bs!4359 (and neg-inst!116 b!13455)))

(assert (=> (and bs!4359 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= true inst!124)))

(declare-fun bs!4360 () Bool)

(assert (= bs!4360 (and neg-inst!116 neg-inst!114)))

(assert (=> (and bs!4360 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= true true)))

(declare-fun bs!4361 () Bool)

(assert (= bs!4361 (and neg-inst!116 b!13453)))

(assert (=> (and bs!4361 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= true inst!122)))

(declare-fun bs!4362 () Bool)

(assert (= bs!4362 (and neg-inst!116 neg-inst!110)))

(assert (=> (and bs!4362 (= (content!20 (left!594 (right!597 res!5050))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4363 () Bool)

(declare-fun neg-inst!117 () Bool)

(assert (= bs!4363 neg-inst!117))

(assert (=> bs!4363 m!17125))

(declare-fun bs!4364 () Bool)

(declare-fun s!625 () Bool)

(assert (= bs!4364 (and neg-inst!117 s!625)))

(assert (=> bs!4364 (=> true (or (not (member x!7629 (content!20 (right!597 (right!597 res!5050))))) (< (value!1513 (right!597 res!5050)) x!7629)))))

(assert (=> m!17127 s!625))

(declare-fun bs!4365 () Bool)

(assert (= bs!4365 (and neg-inst!117 b!13458)))

(assert (=> (and bs!4365 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= true inst!127)))

(declare-fun bs!4366 () Bool)

(assert (= bs!4366 (and neg-inst!117 b!13456)))

(assert (=> (and bs!4366 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= true inst!125)))

(declare-fun bs!4367 () Bool)

(assert (= bs!4367 (and neg-inst!117 neg-inst!115)))

(assert (=> (and bs!4367 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 res!5050)) (value!1513 (left!594 res!5050)))) (= true true)))

(declare-fun bs!4368 () Bool)

(assert (= bs!4368 (and neg-inst!117 b!13454)))

(assert (=> (and bs!4368 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= true inst!123)))

(declare-fun bs!4369 () Bool)

(assert (= bs!4369 (and neg-inst!117 b!13460)))

(assert (=> bs!4369 (= true inst!129)))

(declare-fun bs!4370 () Bool)

(assert (= bs!4370 (and neg-inst!117 neg-inst!111)))

(assert (=> (and bs!4370 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 res!5050)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4371 () Bool)

(assert (= bs!4371 (and neg-inst!117 neg-inst!113)))

(assert (=> (and bs!4371 (= (content!20 (right!597 (right!597 res!5050))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 res!5050)) (value!1513 res!5050))) (= true true)))

(declare-fun d!10344 () Bool)

(declare-fun res!5100 () Bool)

(declare-fun e!7406 () Bool)

(assert (=> d!10344 (=> res!5100 e!7406)))

(assert (=> d!10344 (= res!5100 (not (is-Node!27 (right!597 res!5050))))))

(assert (=> d!10344 (= (inv!443 (right!597 res!5050)) e!7406)))

(declare-fun e!7407 () Bool)

(assert (=> b!13459 (= e!7406 e!7407)))

(declare-fun res!5101 () Bool)

(assert (=> b!13459 (=> (not res!5101) (not e!7407))))

(assert (=> b!13459 (= res!5101 inst!128)))

(assert (=> b!13460 (= e!7407 inst!129)))

(assert (= (and d!10344 (not res!5100)) b!13459))

(assert (= neg-inst!116 inst!128))

(assert (= (and b!13459 res!5101) b!13460))

(assert (= neg-inst!117 inst!129))

(assert (=> b!13430 d!10344))

(declare-fun d!10346 () Bool)

(declare-fun c!3754 () Bool)

(assert (=> d!10346 (= c!3754 (is-Leaf!178 res!5050))))

(declare-fun e!7410 () (Set Int))

(assert (=> d!10346 (= (content!20 res!5050) e!7410)))

(declare-fun b!13465 () Bool)

(assert (=> b!13465 (= e!7410 (as emptyset (Set Int)))))

(declare-fun b!13466 () Bool)

(assert (=> b!13466 (= e!7410 (union (union (content!20 (left!594 res!5050)) (insert (value!1513 res!5050) (as emptyset (Set Int)))) (content!20 (right!597 res!5050))))))

(assert (= (and d!10346 c!3754) b!13465))

(assert (= (and d!10346 (not c!3754)) b!13466))

(assert (=> b!13466 m!17105))

(declare-fun m!17129 () Bool)

(assert (=> b!13466 m!17129))

(assert (=> b!13466 m!17109))

(assert (=> b!13428 d!10346))

(declare-fun d!10348 () Bool)

(declare-fun c!3755 () Bool)

(assert (=> d!10348 (= c!3755 (is-Leaf!178 tree!126))))

(declare-fun e!7411 () (Set Int))

(assert (=> d!10348 (= (content!20 tree!126) e!7411)))

(declare-fun b!13467 () Bool)

(assert (=> b!13467 (= e!7411 (as emptyset (Set Int)))))

(declare-fun b!13468 () Bool)

(assert (=> b!13468 (= e!7411 (union (union (content!20 (left!594 tree!126)) (insert (value!1513 tree!126) (as emptyset (Set Int)))) (content!20 (right!597 tree!126))))))

(assert (= (and d!10348 c!3755) b!13467))

(assert (= (and d!10348 (not c!3755)) b!13468))

(assert (=> b!13468 m!17099))

(declare-fun m!17131 () Bool)

(assert (=> b!13468 m!17131))

(assert (=> b!13468 m!17095))

(assert (=> b!13428 d!10348))

(declare-fun b!13469 () Bool)

(declare-fun m!17133 () Bool)

(assert (=> b!13469 m!17133))

(declare-fun inst!130 () Bool)

(declare-fun x!7630 () Int)

(assert (=> b!13469 (= inst!130 (=> true (or (not (member x!7630 (content!20 (left!594 (left!594 tree!126))))) (< x!7630 (value!1513 (left!594 tree!126))))))))

(declare-fun m!17135 () Bool)

(assert (=> b!13469 m!17135))

(declare-fun bs!4372 () Bool)

(assert (= bs!4372 (and b!13469 neg-inst!116)))

(assert (=> (and bs!4372 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!130 true)))

(declare-fun bs!4373 () Bool)

(assert (= bs!4373 (and b!13469 b!13459)))

(assert (=> (and bs!4373 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!130 inst!128)))

(declare-fun bs!4374 () Bool)

(assert (= bs!4374 (and b!13469 neg-inst!112)))

(assert (=> (and bs!4374 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= inst!130 true)))

(declare-fun bs!4375 () Bool)

(assert (= bs!4375 (and b!13469 b!13457)))

(assert (=> (and bs!4375 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!130 inst!126)))

(declare-fun bs!4376 () Bool)

(assert (= bs!4376 (and b!13469 b!13455)))

(assert (=> (and bs!4376 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= inst!130 inst!124)))

(declare-fun bs!4377 () Bool)

(assert (= bs!4377 (and b!13469 neg-inst!114)))

(assert (=> (and bs!4377 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!130 true)))

(declare-fun bs!4378 () Bool)

(assert (= bs!4378 (and b!13469 b!13453)))

(assert (=> (and bs!4378 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= inst!130 inst!122)))

(declare-fun bs!4379 () Bool)

(assert (= bs!4379 (and b!13469 neg-inst!110)))

(assert (=> (and bs!4379 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= inst!130 true)))

(declare-fun b!13470 () Bool)

(declare-fun m!17137 () Bool)

(assert (=> b!13470 m!17137))

(declare-fun inst!131 () Bool)

(declare-fun x!7631 () Int)

(assert (=> b!13470 (= inst!131 (=> true (or (not (member x!7631 (content!20 (right!597 (left!594 tree!126))))) (< (value!1513 (left!594 tree!126)) x!7631))))))

(declare-fun m!17139 () Bool)

(assert (=> b!13470 m!17139))

(declare-fun bs!4380 () Bool)

(assert (= bs!4380 (and b!13470 b!13458)))

(assert (=> (and bs!4380 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!131 inst!127)))

(declare-fun bs!4381 () Bool)

(assert (= bs!4381 (and b!13470 b!13456)))

(assert (=> (and bs!4381 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= inst!131 inst!125)))

(declare-fun bs!4382 () Bool)

(assert (= bs!4382 (and b!13470 neg-inst!115)))

(assert (=> (and bs!4382 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!131 true)))

(declare-fun bs!4383 () Bool)

(assert (= bs!4383 (and b!13470 b!13454)))

(assert (=> (and bs!4383 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= inst!131 inst!123)))

(declare-fun bs!4384 () Bool)

(assert (= bs!4384 (and b!13470 b!13460)))

(assert (=> (and bs!4384 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!131 inst!129)))

(declare-fun bs!4385 () Bool)

(assert (= bs!4385 (and b!13470 neg-inst!117)))

(assert (=> (and bs!4385 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!131 true)))

(declare-fun bs!4386 () Bool)

(assert (= bs!4386 (and b!13470 neg-inst!111)))

(assert (=> (and bs!4386 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= inst!131 true)))

(declare-fun bs!4387 () Bool)

(assert (= bs!4387 (and b!13470 neg-inst!113)))

(assert (=> (and bs!4387 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= inst!131 true)))

(declare-fun bs!4388 () Bool)

(declare-fun neg-inst!118 () Bool)

(assert (= bs!4388 neg-inst!118))

(assert (=> bs!4388 m!17133))

(declare-fun bs!4389 () Bool)

(declare-fun s!627 () Bool)

(assert (= bs!4389 (and neg-inst!118 s!627)))

(assert (=> bs!4389 (=> true (or (not (member x!7630 (content!20 (left!594 (left!594 tree!126))))) (< x!7630 (value!1513 (left!594 tree!126)))))))

(assert (=> m!17135 s!627))

(declare-fun bs!4390 () Bool)

(assert (= bs!4390 (and neg-inst!118 b!13469)))

(assert (=> bs!4390 (= true inst!130)))

(declare-fun bs!4391 () Bool)

(assert (= bs!4391 (and neg-inst!118 neg-inst!116)))

(assert (=> (and bs!4391 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= true true)))

(declare-fun bs!4392 () Bool)

(assert (= bs!4392 (and neg-inst!118 b!13459)))

(assert (=> (and bs!4392 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= true inst!128)))

(declare-fun bs!4393 () Bool)

(assert (= bs!4393 (and neg-inst!118 neg-inst!112)))

(assert (=> (and bs!4393 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= true true)))

(declare-fun bs!4394 () Bool)

(assert (= bs!4394 (and neg-inst!118 b!13457)))

(assert (=> (and bs!4394 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= true inst!126)))

(declare-fun bs!4395 () Bool)

(assert (= bs!4395 (and neg-inst!118 b!13455)))

(assert (=> (and bs!4395 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= true inst!124)))

(declare-fun bs!4396 () Bool)

(assert (= bs!4396 (and neg-inst!118 neg-inst!114)))

(assert (=> (and bs!4396 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= true true)))

(declare-fun bs!4397 () Bool)

(assert (= bs!4397 (and neg-inst!118 b!13453)))

(assert (=> (and bs!4397 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= true inst!122)))

(declare-fun bs!4398 () Bool)

(assert (= bs!4398 (and neg-inst!118 neg-inst!110)))

(assert (=> (and bs!4398 (= (content!20 (left!594 (left!594 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4399 () Bool)

(declare-fun neg-inst!119 () Bool)

(assert (= bs!4399 neg-inst!119))

(assert (=> bs!4399 m!17137))

(declare-fun bs!4400 () Bool)

(declare-fun s!629 () Bool)

(assert (= bs!4400 (and neg-inst!119 s!629)))

(assert (=> bs!4400 (=> true (or (not (member x!7631 (content!20 (right!597 (left!594 tree!126))))) (< (value!1513 (left!594 tree!126)) x!7631)))))

(assert (=> m!17139 s!629))

(declare-fun bs!4401 () Bool)

(assert (= bs!4401 (and neg-inst!119 b!13458)))

(assert (=> (and bs!4401 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= true inst!127)))

(declare-fun bs!4402 () Bool)

(assert (= bs!4402 (and neg-inst!119 b!13456)))

(assert (=> (and bs!4402 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= true inst!125)))

(declare-fun bs!4403 () Bool)

(assert (= bs!4403 (and neg-inst!119 neg-inst!115)))

(assert (=> (and bs!4403 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (left!594 res!5050)))) (= true true)))

(declare-fun bs!4404 () Bool)

(assert (= bs!4404 (and neg-inst!119 b!13454)))

(assert (=> (and bs!4404 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= true inst!123)))

(declare-fun bs!4405 () Bool)

(assert (= bs!4405 (and neg-inst!119 b!13460)))

(assert (=> (and bs!4405 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= true inst!129)))

(declare-fun bs!4406 () Bool)

(assert (= bs!4406 (and neg-inst!119 b!13470)))

(assert (=> bs!4406 (= true inst!131)))

(declare-fun bs!4407 () Bool)

(assert (= bs!4407 (and neg-inst!119 neg-inst!117)))

(assert (=> (and bs!4407 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (left!594 tree!126)) (value!1513 (right!597 res!5050)))) (= true true)))

(declare-fun bs!4408 () Bool)

(assert (= bs!4408 (and neg-inst!119 neg-inst!111)))

(assert (=> (and bs!4408 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (left!594 tree!126)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4409 () Bool)

(assert (= bs!4409 (and neg-inst!119 neg-inst!113)))

(assert (=> (and bs!4409 (= (content!20 (right!597 (left!594 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (left!594 tree!126)) (value!1513 res!5050))) (= true true)))

(declare-fun d!10350 () Bool)

(declare-fun res!5102 () Bool)

(declare-fun e!7412 () Bool)

(assert (=> d!10350 (=> res!5102 e!7412)))

(assert (=> d!10350 (= res!5102 (not (is-Node!27 (left!594 tree!126))))))

(assert (=> d!10350 (= (inv!443 (left!594 tree!126)) e!7412)))

(declare-fun e!7413 () Bool)

(assert (=> b!13469 (= e!7412 e!7413)))

(declare-fun res!5103 () Bool)

(assert (=> b!13469 (=> (not res!5103) (not e!7413))))

(assert (=> b!13469 (= res!5103 inst!130)))

(assert (=> b!13470 (= e!7413 inst!131)))

(assert (= (and d!10350 (not res!5102)) b!13469))

(assert (= neg-inst!118 inst!130))

(assert (= (and b!13469 res!5103) b!13470))

(assert (= neg-inst!119 inst!131))

(assert (=> b!13429 d!10350))

(declare-fun b!13471 () Bool)

(declare-fun m!17141 () Bool)

(assert (=> b!13471 m!17141))

(declare-fun inst!132 () Bool)

(declare-fun x!7632 () Int)

(assert (=> b!13471 (= inst!132 (=> true (or (not (member x!7632 (content!20 (left!594 (right!597 tree!126))))) (< x!7632 (value!1513 (right!597 tree!126))))))))

(declare-fun m!17143 () Bool)

(assert (=> b!13471 m!17143))

(declare-fun bs!4410 () Bool)

(assert (= bs!4410 (and b!13471 b!13469)))

(assert (=> (and bs!4410 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= inst!132 inst!130)))

(declare-fun bs!4411 () Bool)

(assert (= bs!4411 (and b!13471 neg-inst!116)))

(assert (=> (and bs!4411 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!132 true)))

(declare-fun bs!4412 () Bool)

(assert (= bs!4412 (and b!13471 neg-inst!118)))

(assert (=> (and bs!4412 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= inst!132 true)))

(declare-fun bs!4413 () Bool)

(assert (= bs!4413 (and b!13471 b!13459)))

(assert (=> (and bs!4413 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!132 inst!128)))

(declare-fun bs!4414 () Bool)

(assert (= bs!4414 (and b!13471 neg-inst!112)))

(assert (=> (and bs!4414 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= inst!132 true)))

(declare-fun bs!4415 () Bool)

(assert (= bs!4415 (and b!13471 b!13457)))

(assert (=> (and bs!4415 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!132 inst!126)))

(declare-fun bs!4416 () Bool)

(assert (= bs!4416 (and b!13471 b!13455)))

(assert (=> (and bs!4416 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= inst!132 inst!124)))

(declare-fun bs!4417 () Bool)

(assert (= bs!4417 (and b!13471 neg-inst!114)))

(assert (=> (and bs!4417 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!132 true)))

(declare-fun bs!4418 () Bool)

(assert (= bs!4418 (and b!13471 b!13453)))

(assert (=> (and bs!4418 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= inst!132 inst!122)))

(declare-fun bs!4419 () Bool)

(assert (= bs!4419 (and b!13471 neg-inst!110)))

(assert (=> (and bs!4419 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= inst!132 true)))

(declare-fun b!13472 () Bool)

(declare-fun m!17145 () Bool)

(assert (=> b!13472 m!17145))

(declare-fun inst!133 () Bool)

(declare-fun x!7633 () Int)

(assert (=> b!13472 (= inst!133 (=> true (or (not (member x!7633 (content!20 (right!597 (right!597 tree!126))))) (< (value!1513 (right!597 tree!126)) x!7633))))))

(declare-fun m!17147 () Bool)

(assert (=> b!13472 m!17147))

(declare-fun bs!4420 () Bool)

(assert (= bs!4420 (and b!13472 b!13458)))

(assert (=> (and bs!4420 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!133 inst!127)))

(declare-fun bs!4421 () Bool)

(assert (= bs!4421 (and b!13472 b!13456)))

(assert (=> (and bs!4421 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= inst!133 inst!125)))

(declare-fun bs!4422 () Bool)

(assert (= bs!4422 (and b!13472 neg-inst!115)))

(assert (=> (and bs!4422 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= inst!133 true)))

(declare-fun bs!4423 () Bool)

(assert (= bs!4423 (and b!13472 b!13454)))

(assert (=> (and bs!4423 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= inst!133 inst!123)))

(declare-fun bs!4424 () Bool)

(assert (= bs!4424 (and b!13472 b!13460)))

(assert (=> (and bs!4424 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!133 inst!129)))

(declare-fun bs!4425 () Bool)

(assert (= bs!4425 (and b!13472 b!13470)))

(assert (=> (and bs!4425 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= inst!133 inst!131)))

(declare-fun bs!4426 () Bool)

(assert (= bs!4426 (and b!13472 neg-inst!117)))

(assert (=> (and bs!4426 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= inst!133 true)))

(declare-fun bs!4427 () Bool)

(assert (= bs!4427 (and b!13472 neg-inst!111)))

(assert (=> (and bs!4427 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= inst!133 true)))

(declare-fun bs!4428 () Bool)

(assert (= bs!4428 (and b!13472 neg-inst!119)))

(assert (=> (and bs!4428 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= inst!133 true)))

(declare-fun bs!4429 () Bool)

(assert (= bs!4429 (and b!13472 neg-inst!113)))

(assert (=> (and bs!4429 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= inst!133 true)))

(declare-fun bs!4430 () Bool)

(declare-fun neg-inst!120 () Bool)

(assert (= bs!4430 neg-inst!120))

(assert (=> bs!4430 m!17141))

(declare-fun bs!4431 () Bool)

(declare-fun s!631 () Bool)

(assert (= bs!4431 (and neg-inst!120 s!631)))

(assert (=> bs!4431 (=> true (or (not (member x!7632 (content!20 (left!594 (right!597 tree!126))))) (< x!7632 (value!1513 (right!597 tree!126)))))))

(assert (=> m!17143 s!631))

(declare-fun bs!4432 () Bool)

(assert (= bs!4432 (and neg-inst!120 b!13469)))

(assert (=> (and bs!4432 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= true inst!130)))

(declare-fun bs!4433 () Bool)

(assert (= bs!4433 (and neg-inst!120 neg-inst!116)))

(assert (=> (and bs!4433 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= true true)))

(declare-fun bs!4434 () Bool)

(assert (= bs!4434 (and neg-inst!120 neg-inst!118)))

(assert (=> (and bs!4434 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= true true)))

(declare-fun bs!4435 () Bool)

(assert (= bs!4435 (and neg-inst!120 b!13459)))

(assert (=> (and bs!4435 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= true inst!128)))

(declare-fun bs!4436 () Bool)

(assert (= bs!4436 (and neg-inst!120 neg-inst!112)))

(assert (=> (and bs!4436 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= true true)))

(declare-fun bs!4437 () Bool)

(assert (= bs!4437 (and neg-inst!120 b!13457)))

(assert (=> (and bs!4437 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= true inst!126)))

(declare-fun bs!4438 () Bool)

(assert (= bs!4438 (and neg-inst!120 b!13455)))

(assert (=> (and bs!4438 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= true inst!124)))

(declare-fun bs!4439 () Bool)

(assert (= bs!4439 (and neg-inst!120 neg-inst!114)))

(assert (=> (and bs!4439 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= true true)))

(declare-fun bs!4440 () Bool)

(assert (= bs!4440 (and neg-inst!120 b!13453)))

(assert (=> (and bs!4440 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= true inst!122)))

(declare-fun bs!4441 () Bool)

(assert (= bs!4441 (and neg-inst!120 b!13471)))

(assert (=> bs!4441 (= true inst!132)))

(declare-fun bs!4442 () Bool)

(assert (= bs!4442 (and neg-inst!120 neg-inst!110)))

(assert (=> (and bs!4442 (= (content!20 (left!594 (right!597 tree!126))) (content!20 (left!594 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4443 () Bool)

(declare-fun neg-inst!121 () Bool)

(assert (= bs!4443 neg-inst!121))

(assert (=> bs!4443 m!17145))

(declare-fun bs!4444 () Bool)

(declare-fun s!633 () Bool)

(assert (= bs!4444 (and neg-inst!121 s!633)))

(assert (=> bs!4444 (=> true (or (not (member x!7633 (content!20 (right!597 (right!597 tree!126))))) (< (value!1513 (right!597 tree!126)) x!7633)))))

(assert (=> m!17147 s!633))

(declare-fun bs!4445 () Bool)

(assert (= bs!4445 (and neg-inst!121 b!13458)))

(assert (=> (and bs!4445 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= true inst!127)))

(declare-fun bs!4446 () Bool)

(assert (= bs!4446 (and neg-inst!121 b!13456)))

(assert (=> (and bs!4446 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= true inst!125)))

(declare-fun bs!4447 () Bool)

(assert (= bs!4447 (and neg-inst!121 neg-inst!115)))

(assert (=> (and bs!4447 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 res!5050)))) (= true true)))

(declare-fun bs!4448 () Bool)

(assert (= bs!4448 (and neg-inst!121 b!13454)))

(assert (=> (and bs!4448 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= true inst!123)))

(declare-fun bs!4449 () Bool)

(assert (= bs!4449 (and neg-inst!121 b!13472)))

(assert (=> bs!4449 (= true inst!133)))

(declare-fun bs!4450 () Bool)

(assert (= bs!4450 (and neg-inst!121 b!13460)))

(assert (=> (and bs!4450 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= true inst!129)))

(declare-fun bs!4451 () Bool)

(assert (= bs!4451 (and neg-inst!121 b!13470)))

(assert (=> (and bs!4451 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= true inst!131)))

(declare-fun bs!4452 () Bool)

(assert (= bs!4452 (and neg-inst!121 neg-inst!117)))

(assert (=> (and bs!4452 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (right!597 res!5050)))) (= (value!1513 (right!597 tree!126)) (value!1513 (right!597 res!5050)))) (= true true)))

(declare-fun bs!4453 () Bool)

(assert (= bs!4453 (and neg-inst!121 neg-inst!111)))

(assert (=> (and bs!4453 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 tree!126))) (= (value!1513 (right!597 tree!126)) (value!1513 tree!126))) (= true true)))

(declare-fun bs!4454 () Bool)

(assert (= bs!4454 (and neg-inst!121 neg-inst!119)))

(assert (=> (and bs!4454 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 (left!594 tree!126)))) (= (value!1513 (right!597 tree!126)) (value!1513 (left!594 tree!126)))) (= true true)))

(declare-fun bs!4455 () Bool)

(assert (= bs!4455 (and neg-inst!121 neg-inst!113)))

(assert (=> (and bs!4455 (= (content!20 (right!597 (right!597 tree!126))) (content!20 (right!597 res!5050))) (= (value!1513 (right!597 tree!126)) (value!1513 res!5050))) (= true true)))

(declare-fun d!10352 () Bool)

(declare-fun res!5104 () Bool)

(declare-fun e!7414 () Bool)

(assert (=> d!10352 (=> res!5104 e!7414)))

(assert (=> d!10352 (= res!5104 (not (is-Node!27 (right!597 tree!126))))))

(assert (=> d!10352 (= (inv!443 (right!597 tree!126)) e!7414)))

(declare-fun e!7415 () Bool)

(assert (=> b!13471 (= e!7414 e!7415)))

(declare-fun res!5105 () Bool)

(assert (=> b!13471 (=> (not res!5105) (not e!7415))))

(assert (=> b!13471 (= res!5105 inst!132)))

(assert (=> b!13472 (= e!7415 inst!133)))

(assert (= (and d!10352 (not res!5104)) b!13471))

(assert (= neg-inst!120 inst!132))

(assert (= (and b!13471 res!5105) b!13472))

(assert (= neg-inst!121 inst!133))

(assert (=> b!13429 d!10352))

(declare-fun e!7418 () Bool)

(declare-fun tp!3333 () Bool)

(declare-fun b!13477 () Bool)

(declare-fun tp!3332 () Bool)

(assert (=> b!13477 (= e!7418 (and (inv!443 (left!594 (left!594 res!5050))) tp!3332 (inv!443 (right!597 (left!594 res!5050))) tp!3333))))

(assert (=> b!13430 (= tp!3318 (and (inv!443 (left!594 res!5050)) e!7418))))

(assert (= (and b!13430 (is-Node!27 (left!594 res!5050))) b!13477))

(declare-fun m!17149 () Bool)

(assert (=> b!13477 m!17149))

(declare-fun m!17151 () Bool)

(assert (=> b!13477 m!17151))

(assert (=> b!13430 m!17083))

(declare-fun b!13478 () Bool)

(declare-fun tp!3334 () Bool)

(declare-fun e!7419 () Bool)

(declare-fun tp!3335 () Bool)

(assert (=> b!13478 (= e!7419 (and (inv!443 (left!594 (right!597 res!5050))) tp!3334 (inv!443 (right!597 (right!597 res!5050))) tp!3335))))

(assert (=> b!13430 (= tp!3319 (and (inv!443 (right!597 res!5050)) e!7419))))

(assert (= (and b!13430 (is-Node!27 (right!597 res!5050))) b!13478))

(declare-fun m!17153 () Bool)

(assert (=> b!13478 m!17153))

(declare-fun m!17155 () Bool)

(assert (=> b!13478 m!17155))

(assert (=> b!13430 m!17085))

(declare-fun b!13479 () Bool)

(declare-fun tp!3337 () Bool)

(declare-fun tp!3336 () Bool)

(declare-fun e!7420 () Bool)

(assert (=> b!13479 (= e!7420 (and (inv!443 (left!594 (left!594 tree!126))) tp!3336 (inv!443 (right!597 (left!594 tree!126))) tp!3337))))

(assert (=> b!13429 (= tp!3321 (and (inv!443 (left!594 tree!126)) e!7420))))

(assert (= (and b!13429 (is-Node!27 (left!594 tree!126))) b!13479))

(declare-fun m!17157 () Bool)

(assert (=> b!13479 m!17157))

(declare-fun m!17159 () Bool)

(assert (=> b!13479 m!17159))

(assert (=> b!13429 m!17067))

(declare-fun b!13480 () Bool)

(declare-fun e!7421 () Bool)

(declare-fun tp!3338 () Bool)

(declare-fun tp!3339 () Bool)

(assert (=> b!13480 (= e!7421 (and (inv!443 (left!594 (right!597 tree!126))) tp!3338 (inv!443 (right!597 (right!597 tree!126))) tp!3339))))

(assert (=> b!13429 (= tp!3320 (and (inv!443 (right!597 tree!126)) e!7421))))

(assert (= (and b!13429 (is-Node!27 (right!597 tree!126))) b!13480))

(declare-fun m!17161 () Bool)

(assert (=> b!13480 m!17161))

(declare-fun m!17163 () Bool)

(assert (=> b!13480 m!17163))

(assert (=> b!13429 m!17069))

(push 1)

(assert (not b!13469))

(assert (not neg-inst!110))

(assert (not b!13471))

(assert (not neg-inst!114))

(assert (not b!13468))

(assert (not b!13455))

(assert (not neg-inst!111))

(assert (not b!13477))

(assert (not b!13478))

(assert (not b!13453))

(assert (not b!13480))

(assert (not b!13446))

(assert (not neg-inst!113))

(assert (not neg-inst!116))

(assert (not b!13454))

(assert (not b!13447))

(assert (not b!13470))

(assert (not neg-inst!112))

(assert (not b!13466))

(assert (not neg-inst!120))

(assert (not neg-inst!117))

(assert (not b!13459))

(assert (not neg-inst!118))

(assert (not b!13460))

(assert (not b!13448))

(assert (not b!13430))

(assert (not b!13479))

(assert (not b!13429))

(assert (not neg-inst!119))

(assert (not neg-inst!121))

(assert (not b!13458))

(assert (not neg-inst!115))

(assert (not b!13456))

(assert (not b!13457))

(assert (not b!13472))

(assert (not b!13445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

