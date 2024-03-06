; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10470 () Bool)

(assert start!10470)

(declare-fun b!79606 () Bool)

(declare-fun res!40259 () Bool)

(declare-fun e!43131 () Bool)

(assert (=> b!79606 (=> res!40259 e!43131)))

(declare-datatypes () ((List!646 (Cons!604 (h!891 Int) (t!47633 List!646)) (Nil!606))))

(declare-fun l!1422 () List!646)

(declare-fun x!29157 () Int)

(declare-fun contains!48 (List!646 Int) Bool)

(assert (=> b!79606 (= res!40259 (not (contains!48 l!1422 x!29157)))))

(declare-fun inst!496 () Bool)

(assert (=> b!79606 (= inst!496 (=> true e!43131))))

(declare-fun b!79608 () Bool)

(declare-fun x!29083 () Int)

(assert (=> b!79608 (= e!43131 (<= x!29157 x!29083))))

(assert (= (and b!79606 (not res!40259)) b!79608))

(declare-fun m!74228 () Bool)

(assert (=> b!79606 m!74228))

(declare-fun b!79607 () Bool)

(declare-fun res!40260 () Bool)

(declare-fun e!43132 () Bool)

(assert (=> b!79607 (=> res!40260 e!43132)))

(declare-fun r!614 () List!646)

(declare-fun x!29158 () Int)

(assert (=> b!79607 (= res!40260 (not (contains!48 r!614 x!29158)))))

(declare-fun inst!497 () Bool)

(assert (=> b!79607 (= inst!497 (=> true e!43132))))

(declare-fun b!79609 () Bool)

(assert (=> b!79609 (= e!43132 (< x!29083 x!29158))))

(assert (= (and b!79607 (not res!40260)) b!79609))

(declare-fun m!74230 () Bool)

(assert (=> b!79607 m!74230))

(declare-fun m!74232 () Bool)

(assert (=> start!10470 m!74232))

(declare-fun bs!38114 () Bool)

(assert (= bs!38114 (and start!10470 b!79606)))

(declare-fun x!29075 () Int)

(declare-fun l!1419 () List!646)

(assert (=> (and bs!38114 (= l!1419 l!1422) (= x!29075 x!29083)) (= true inst!496)))

(declare-fun b!79604 () Bool)

(declare-fun m!74234 () Bool)

(assert (=> b!79604 m!74234))

(declare-fun bs!38115 () Bool)

(assert (= bs!38115 (and b!79604 start!10470)))

(declare-fun r!611 () List!646)

(declare-fun content!109 (List!646) (Set Int))

(assert (=> (and bs!38115 (= r!611 l!1419) (= (content!109 r!611) (content!109 l!1419))) (= true true)))

(declare-fun bs!38116 () Bool)

(assert (= bs!38116 (and b!79604 b!79607)))

(assert (=> (and bs!38116 (= r!611 r!614) (= x!29075 x!29083)) (= true inst!497)))

(declare-fun m!74236 () Bool)

(assert (=> b!79606 m!74236))

(declare-fun b!79605 () Bool)

(declare-fun bs!38117 () Bool)

(declare-fun s!2369 () Bool)

(assert (= bs!38117 (and b!79604 b!79605 s!2369 b!79606 start!10470)))

(assert (=> bs!38117 (=> true (= (contains!48 l!1422 x!29157) (member x!29157 (content!109 l!1422))))))

(declare-fun bs!38118 () Bool)

(declare-fun m!74238 () Bool)

(assert (= bs!38118 m!74238))

(assert (=> bs!38118 s!2369))

(assert (=> m!74228 m!74238))

(assert (=> m!74228 s!2369))

(assert (=> (and bs!38114 (= l!1422 l!1419) (= (content!109 l!1422) (content!109 l!1419))) (= true true)))

(declare-fun bs!38119 () Bool)

(assert (= bs!38119 (and b!79606 b!79604)))

(assert (=> (and bs!38119 (= l!1422 r!611) (= (content!109 l!1422) (content!109 r!611))) (= true true)))

(declare-fun bs!38120 () Bool)

(declare-fun neg-inst!443 () Bool)

(declare-fun s!2371 () Bool)

(assert (= bs!38120 (and neg-inst!443 s!2371)))

(declare-fun res!40261 () Bool)

(declare-fun e!43133 () Bool)

(assert (=> bs!38120 (=> res!40261 e!43133)))

(assert (=> bs!38120 (= res!40261 (not (contains!48 l!1422 x!29157)))))

(assert (=> bs!38120 (=> true e!43133)))

(declare-fun b!79610 () Bool)

(assert (=> b!79610 (= e!43133 (<= x!29157 x!29083))))

(assert (= (and bs!38120 (not res!40261)) b!79610))

(assert (=> m!74228 s!2371))

(declare-fun bs!38121 () Bool)

(assert (= bs!38121 (and neg-inst!443 b!79606)))

(assert (=> bs!38121 (= true inst!496)))

(declare-fun bs!38122 () Bool)

(assert (= bs!38122 (and neg-inst!443 start!10470)))

(assert (=> (and bs!38122 (= l!1422 l!1419) (= x!29083 x!29075)) (= true true)))

(declare-fun m!74240 () Bool)

(assert (=> b!79607 m!74240))

(declare-fun s!2373 () Bool)

(declare-fun bs!38123 () Bool)

(assert (= bs!38123 (and b!79604 b!79605 s!2373 b!79607 b!79606 start!10470)))

(assert (=> bs!38123 (=> true (= (contains!48 r!614 x!29158) (member x!29158 (content!109 r!614))))))

(declare-fun bs!38124 () Bool)

(declare-fun m!74242 () Bool)

(assert (= bs!38124 m!74242))

(assert (=> bs!38124 s!2373))

(assert (=> m!74230 m!74242))

(assert (=> m!74230 s!2373))

(declare-fun bs!38125 () Bool)

(assert (= bs!38125 (and b!79607 start!10470)))

(assert (=> (and bs!38125 (= r!614 l!1419) (= (content!109 r!614) (content!109 l!1419))) (= true true)))

(declare-fun bs!38126 () Bool)

(assert (= bs!38126 (and b!79607 b!79606)))

(assert (=> (and bs!38126 (= r!614 l!1422) (= (content!109 r!614) (content!109 l!1422))) (= true true)))

(assert (=> (and bs!38116 (= r!614 r!611) (= (content!109 r!614) (content!109 r!611))) (= true true)))

(declare-fun e!43130 () Bool)

(assert (=> b!79607 (= e!43130 (not inst!497))))

(assert (=> b!79607 true))

(declare-fun res!40256 () Bool)

(declare-fun e!43129 () Bool)

(assert (=> start!10470 (=> (not res!40256) (not e!43129))))

(assert (=> start!10470 (= res!40256 true)))

(assert (=> start!10470 true))

(assert (=> start!10470 e!43129))

(assert (=> b!79606 (= e!43129 e!43130)))

(declare-fun res!40258 () Bool)

(assert (=> b!79606 (=> res!40258 e!43130)))

(assert (=> b!79606 (= res!40258 (not inst!496))))

(assert (=> b!79606 true))

(declare-fun res!40255 () Bool)

(assert (=> b!79604 (=> (not res!40255) (not e!43129))))

(assert (=> b!79604 (= res!40255 true)))

(assert (=> b!79604 true))

(declare-fun res!40257 () Bool)

(assert (=> b!79605 (=> (not res!40257) (not e!43129))))

(declare-fun ls!27 () List!646)

(declare-fun ls!30 () List!646)

(assert (=> b!79605 (= res!40257 (and (not (is-Nil!606 ls!27)) (> (h!891 ls!27) x!29075) (= x!29083 x!29075) (= l!1422 l!1419) (= r!614 (Cons!604 (h!891 ls!27) r!611)) (= ls!30 (t!47633 ls!27))))))

(assert (= (and start!10470 res!40256) b!79604))

(assert (= (and b!79604 res!40255) b!79605))

(assert (= (and b!79605 res!40257) b!79606))

(assert (= neg-inst!443 inst!496))

(assert (= (and b!79606 (not res!40258)) b!79607))

(push 1)

(assert (not bs!38123))

(assert (not b!79606))

(assert (not bs!38120))

(assert (not start!10470))

(assert (not b!79604))

(assert (not bs!38117))

(assert (not b!79607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55177 () Bool)

(declare-fun c!20209 () Bool)

(assert (=> d!55177 (= c!20209 (is-Nil!606 r!611))))

(declare-fun e!43136 () (Set Int))

(assert (=> d!55177 (= (content!109 r!611) e!43136)))

(declare-fun b!79615 () Bool)

(assert (=> b!79615 (= e!43136 (as emptyset (Set Int)))))

(declare-fun b!79616 () Bool)

(assert (=> b!79616 (= e!43136 (union (insert (h!891 r!611) (as emptyset (Set Int))) (content!109 (t!47633 r!611))))))

(assert (= (and d!55177 c!20209) b!79615))

(assert (= (and d!55177 (not c!20209)) b!79616))

(declare-fun m!74244 () Bool)

(assert (=> b!79616 m!74244))

(declare-fun m!74246 () Bool)

(assert (=> b!79616 m!74246))

(assert (=> b!79604 d!55177))

(declare-fun d!55179 () Bool)

(declare-fun lt!18254 () Bool)

(assert (=> d!55179 (= lt!18254 (member x!29157 (content!109 l!1422)))))

(declare-fun e!43142 () Bool)

(assert (=> d!55179 (= lt!18254 e!43142)))

(declare-fun res!40266 () Bool)

(assert (=> d!55179 (=> (not res!40266) (not e!43142))))

(assert (=> d!55179 (= res!40266 (is-Cons!604 l!1422))))

(assert (=> d!55179 (= (contains!48 l!1422 x!29157) lt!18254)))

(declare-fun b!79621 () Bool)

(declare-fun e!43141 () Bool)

(assert (=> b!79621 (= e!43142 e!43141)))

(declare-fun res!40267 () Bool)

(assert (=> b!79621 (=> res!40267 e!43141)))

(assert (=> b!79621 (= res!40267 (= (h!891 l!1422) x!29157))))

(declare-fun b!79622 () Bool)

(assert (=> b!79622 (= e!43141 (contains!48 (t!47633 l!1422) x!29157))))

(assert (= (and d!55179 res!40266) b!79621))

(assert (= (and b!79621 (not res!40267)) b!79622))

(assert (=> d!55179 m!74236))

(assert (=> d!55179 m!74238))

(declare-fun bs!38127 () Bool)

(declare-fun m!74248 () Bool)

(assert (= bs!38127 m!74248))

(assert (=> bs!38127 s!2369))

(assert (=> bs!38127 s!2371))

(assert (=> b!79622 m!74248))

(assert (=> bs!38120 d!55179))

(assert (=> bs!38117 d!55179))

(declare-fun d!55181 () Bool)

(declare-fun lt!18255 () Bool)

(assert (=> d!55181 (= lt!18255 (member x!29158 (content!109 r!614)))))

(declare-fun e!43144 () Bool)

(assert (=> d!55181 (= lt!18255 e!43144)))

(declare-fun res!40268 () Bool)

(assert (=> d!55181 (=> (not res!40268) (not e!43144))))

(assert (=> d!55181 (= res!40268 (is-Cons!604 r!614))))

(assert (=> d!55181 (= (contains!48 r!614 x!29158) lt!18255)))

(declare-fun b!79623 () Bool)

(declare-fun e!43143 () Bool)

(assert (=> b!79623 (= e!43144 e!43143)))

(declare-fun res!40269 () Bool)

(assert (=> b!79623 (=> res!40269 e!43143)))

(assert (=> b!79623 (= res!40269 (= (h!891 r!614) x!29158))))

(declare-fun b!79624 () Bool)

(assert (=> b!79624 (= e!43143 (contains!48 (t!47633 r!614) x!29158))))

(assert (= (and d!55181 res!40268) b!79623))

(assert (= (and b!79623 (not res!40269)) b!79624))

(assert (=> d!55181 m!74240))

(assert (=> d!55181 m!74242))

(declare-fun bs!38128 () Bool)

(declare-fun m!74250 () Bool)

(assert (= bs!38128 m!74250))

(assert (=> bs!38128 s!2373))

(assert (=> b!79624 m!74250))

(assert (=> b!79607 d!55181))

(declare-fun d!55183 () Bool)

(declare-fun c!20210 () Bool)

(assert (=> d!55183 (= c!20210 (is-Nil!606 r!614))))

(declare-fun e!43145 () (Set Int))

(assert (=> d!55183 (= (content!109 r!614) e!43145)))

(declare-fun b!79625 () Bool)

(assert (=> b!79625 (= e!43145 (as emptyset (Set Int)))))

(declare-fun b!79626 () Bool)

(assert (=> b!79626 (= e!43145 (union (insert (h!891 r!614) (as emptyset (Set Int))) (content!109 (t!47633 r!614))))))

(assert (= (and d!55183 c!20210) b!79625))

(assert (= (and d!55183 (not c!20210)) b!79626))

(declare-fun m!74252 () Bool)

(assert (=> b!79626 m!74252))

(declare-fun m!74254 () Bool)

(assert (=> b!79626 m!74254))

(assert (=> b!79607 d!55183))

(assert (=> bs!38123 d!55181))

(assert (=> b!79606 d!55179))

(declare-fun d!55185 () Bool)

(declare-fun c!20211 () Bool)

(assert (=> d!55185 (= c!20211 (is-Nil!606 l!1422))))

(declare-fun e!43146 () (Set Int))

(assert (=> d!55185 (= (content!109 l!1422) e!43146)))

(declare-fun b!79627 () Bool)

(assert (=> b!79627 (= e!43146 (as emptyset (Set Int)))))

(declare-fun b!79628 () Bool)

(assert (=> b!79628 (= e!43146 (union (insert (h!891 l!1422) (as emptyset (Set Int))) (content!109 (t!47633 l!1422))))))

(assert (= (and d!55185 c!20211) b!79627))

(assert (= (and d!55185 (not c!20211)) b!79628))

(declare-fun m!74256 () Bool)

(assert (=> b!79628 m!74256))

(declare-fun m!74258 () Bool)

(assert (=> b!79628 m!74258))

(assert (=> b!79606 d!55185))

(declare-fun d!55187 () Bool)

(declare-fun c!20212 () Bool)

(assert (=> d!55187 (= c!20212 (is-Nil!606 l!1419))))

(declare-fun e!43147 () (Set Int))

(assert (=> d!55187 (= (content!109 l!1419) e!43147)))

(declare-fun b!79629 () Bool)

(assert (=> b!79629 (= e!43147 (as emptyset (Set Int)))))

(declare-fun b!79630 () Bool)

(assert (=> b!79630 (= e!43147 (union (insert (h!891 l!1419) (as emptyset (Set Int))) (content!109 (t!47633 l!1419))))))

(assert (= (and d!55187 c!20212) b!79629))

(assert (= (and d!55187 (not c!20212)) b!79630))

(declare-fun m!74260 () Bool)

(assert (=> b!79630 m!74260))

(declare-fun m!74262 () Bool)

(assert (=> b!79630 m!74262))

(assert (=> start!10470 d!55187))

(declare-fun bs!38129 () Bool)

(declare-fun s!2375 () Bool)

(assert (= bs!38129 (and start!10470 s!2375)))

(assert (=> bs!38129 (=> true (= (contains!48 l!1419 x!29158) (member x!29158 (content!109 l!1419))))))

(declare-fun m!74264 () Bool)

(assert (=> m!74230 m!74264))

(declare-fun m!74266 () Bool)

(assert (=> m!74230 m!74266))

(assert (=> m!74230 s!2375))

(declare-fun bs!38130 () Bool)

(declare-fun s!2377 () Bool)

(assert (= bs!38130 (and start!10470 s!2377)))

(assert (=> bs!38130 (=> true (= (contains!48 l!1419 x!29157) (member x!29157 (content!109 l!1419))))))

(declare-fun m!74268 () Bool)

(assert (=> m!74228 m!74268))

(declare-fun m!74270 () Bool)

(assert (=> m!74228 m!74270))

(assert (=> m!74228 s!2377))

(assert (=> m!74242 s!2375))

(assert (=> m!74238 s!2377))

(declare-fun bs!38131 () Bool)

(declare-fun s!2379 () Bool)

(assert (= bs!38131 (and start!10470 s!2379)))

(declare-fun res!40270 () Bool)

(declare-fun e!43148 () Bool)

(assert (=> bs!38131 (=> res!40270 e!43148)))

(assert (=> bs!38131 (= res!40270 (not (contains!48 l!1419 x!29157)))))

(assert (=> bs!38131 (=> true e!43148)))

(declare-fun b!79631 () Bool)

(assert (=> b!79631 (= e!43148 (<= x!29157 x!29075))))

(assert (= (and bs!38131 (not res!40270)) b!79631))

(assert (=> m!74228 m!74268))

(assert (=> m!74228 s!2379))

(declare-fun bs!38132 () Bool)

(declare-fun s!2381 () Bool)

(assert (= bs!38132 (and start!10470 s!2381)))

(declare-fun res!40271 () Bool)

(declare-fun e!43149 () Bool)

(assert (=> bs!38132 (=> res!40271 e!43149)))

(assert (=> bs!38132 (= res!40271 (not (contains!48 l!1419 x!29158)))))

(assert (=> bs!38132 (=> true e!43149)))

(declare-fun b!79632 () Bool)

(assert (=> b!79632 (= e!43149 (<= x!29158 x!29075))))

(assert (= (and bs!38132 (not res!40271)) b!79632))

(assert (=> m!74230 m!74264))

(assert (=> m!74230 s!2381))

(declare-fun bs!38133 () Bool)

(declare-fun s!2383 () Bool)

(assert (= bs!38133 (and start!10470 b!79604 s!2383)))

(assert (=> bs!38133 (=> true (= (contains!48 r!611 x!29158) (member x!29158 (content!109 r!611))))))

(declare-fun m!74272 () Bool)

(assert (=> m!74242 m!74272))

(declare-fun m!74274 () Bool)

(assert (=> m!74242 m!74274))

(assert (=> m!74242 s!2383))

(declare-fun bs!38134 () Bool)

(declare-fun s!2385 () Bool)

(assert (= bs!38134 (and start!10470 b!79604 s!2385)))

(assert (=> bs!38134 (=> true (= (contains!48 r!611 x!29157) (member x!29157 (content!109 r!611))))))

(declare-fun m!74276 () Bool)

(assert (=> m!74238 m!74276))

(declare-fun m!74278 () Bool)

(assert (=> m!74238 m!74278))

(assert (=> m!74238 s!2385))

(assert (=> m!74228 s!2385))

(assert (=> m!74230 s!2383))

(declare-fun bs!38135 () Bool)

(declare-fun s!2387 () Bool)

(assert (= bs!38135 (and start!10470 b!79604 s!2387)))

(declare-fun res!40272 () Bool)

(declare-fun e!43150 () Bool)

(assert (=> bs!38135 (=> res!40272 e!43150)))

(assert (=> bs!38135 (= res!40272 (not (contains!48 r!611 x!29158)))))

(assert (=> bs!38135 (=> true e!43150)))

(declare-fun b!79633 () Bool)

(assert (=> b!79633 (= e!43150 (< x!29075 x!29158))))

(assert (= (and bs!38135 (not res!40272)) b!79633))

(assert (=> m!74230 m!74272))

(assert (=> m!74230 s!2387))

(declare-fun bs!38136 () Bool)

(declare-fun s!2389 () Bool)

(assert (= bs!38136 (and start!10470 b!79604 s!2389)))

(declare-fun res!40273 () Bool)

(declare-fun e!43151 () Bool)

(assert (=> bs!38136 (=> res!40273 e!43151)))

(assert (=> bs!38136 (= res!40273 (not (contains!48 r!611 x!29157)))))

(assert (=> bs!38136 (=> true e!43151)))

(declare-fun b!79634 () Bool)

(assert (=> b!79634 (= e!43151 (< x!29075 x!29157))))

(assert (= (and bs!38136 (not res!40273)) b!79634))

(assert (=> m!74228 m!74276))

(assert (=> m!74228 s!2389))

(declare-fun s!2391 () Bool)

(declare-fun bs!38137 () Bool)

(assert (= bs!38137 (and b!79604 s!2391 b!79605 b!79606 start!10470)))

(assert (=> bs!38137 (=> true (= (contains!48 l!1422 x!29158) (member x!29158 (content!109 l!1422))))))

(declare-fun m!74280 () Bool)

(assert (=> m!74242 m!74280))

(declare-fun m!74282 () Bool)

(assert (=> m!74242 m!74282))

(assert (=> m!74242 s!2391))

(assert (=> m!74230 s!2391))

(declare-fun s!2393 () Bool)

(declare-fun bs!38138 () Bool)

(assert (= bs!38138 (and b!79604 b!79605 s!2393 b!79607 b!79606 start!10470)))

(assert (=> bs!38138 (=> true (= (contains!48 r!614 x!29157) (member x!29157 (content!109 r!614))))))

(declare-fun m!74284 () Bool)

(assert (=> m!74238 m!74284))

(declare-fun m!74286 () Bool)

(assert (=> m!74238 m!74286))

(assert (=> m!74238 s!2393))

(assert (=> m!74228 s!2393))

(push 1)

(assert (not b!79626))

(assert (not bs!38135))

(assert (not d!55179))

(assert (not bs!38131))

(assert (not bs!38130))

(assert (not bs!38137))

(assert (not bs!38138))

(assert (not d!55181))

(assert (not bs!38129))

(assert (not b!79624))

(assert (not b!79616))

(assert (not bs!38133))

(assert (not b!79628))

(assert (not b!79622))

(assert (not bs!38136))

(assert (not bs!38134))

(assert (not bs!38132))

(assert (not b!79630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

