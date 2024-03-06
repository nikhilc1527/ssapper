; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11442 () Bool)

(assert start!11442)

(declare-fun b_free!7441 () Bool)

(declare-fun b_next!39657 () Bool)

(assert (=> start!11442 (= b_free!7441 (not b_next!39657))))

(declare-fun tp!17081 () Bool)

(declare-fun b_and!59253 () Bool)

(assert (=> start!11442 (= tp!17081 b_and!59253)))

(declare-fun b_free!7443 () Bool)

(declare-fun b_next!39659 () Bool)

(assert (=> start!11442 (= b_free!7443 (not b_next!39659))))

(declare-fun tp!17080 () Bool)

(declare-fun b_and!59255 () Bool)

(assert (=> start!11442 (= tp!17080 b_and!59255)))

(declare-fun b_free!7445 () Bool)

(declare-fun b_next!39661 () Bool)

(assert (=> start!11442 (= b_free!7445 (not b_next!39661))))

(declare-fun tp!17083 () Bool)

(declare-fun b_and!59257 () Bool)

(assert (=> start!11442 (= tp!17083 b_and!59257)))

(declare-fun b_free!7447 () Bool)

(declare-fun b_next!39663 () Bool)

(assert (=> start!11442 (= b_free!7447 (not b_next!39663))))

(declare-fun tp!17082 () Bool)

(declare-fun b_and!59259 () Bool)

(assert (=> start!11442 (= tp!17082 b_and!59259)))

(declare-fun res!45750 () Bool)

(declare-fun e!47614 () Bool)

(assert (=> start!11442 (=> (not res!45750) (not e!47614))))

(declare-fun s1!93 () Int)

(declare-fun s2!92 () Int)

(declare-fun u1!5 () Int)

(declare-fun union!1 (Int Int) Int)

(assert (=> start!11442 (= res!45750 (= u1!5 (union!1 s1!93 s2!92)))))

(assert (=> start!11442 e!47614))

(assert (=> start!11442 tp!17081))

(assert (=> start!11442 tp!17080))

(assert (=> start!11442 tp!17083))

(assert (=> start!11442 true))

(assert (=> start!11442 tp!17082))

(declare-fun b!87700 () Bool)

(declare-fun res!45751 () Bool)

(assert (=> b!87700 (=> (not res!45751) (not e!47614))))

(declare-fun u2!5 () Int)

(declare-fun complement!1 (Int) Int)

(declare-fun intersection!1 (Int Int) Int)

(assert (=> b!87700 (= res!45751 (= u2!5 (complement!1 (intersection!1 (complement!1 s1!93) (complement!1 s2!92)))))))

(declare-fun b!87701 () Bool)

(declare-fun x!30524 () (_ BitVec 32))

(declare-fun dynLambda!1026 (Int (_ BitVec 32)) Bool)

(assert (=> b!87701 (= e!47614 (not (= (dynLambda!1026 u1!5 x!30524) (dynLambda!1026 u2!5 x!30524))))))

(assert (= (and start!11442 res!45750) b!87700))

(assert (= (and b!87700 res!45751) b!87701))

(declare-fun b_lambda!17079 () Bool)

(assert (=> (not b_lambda!17079) (not b!87701)))

(declare-fun t!48417 () Bool)

(declare-fun tb!46407 () Bool)

(assert (=> (and start!11442 (= s1!93 u1!5) t!48417) tb!46407))

(declare-fun result!46837 () Bool)

(assert (=> tb!46407 (= result!46837 true)))

(assert (=> b!87701 t!48417))

(declare-fun b_and!59261 () Bool)

(assert (= b_and!59253 (and (=> t!48417 result!46837) b_and!59261)))

(declare-fun tb!46409 () Bool)

(declare-fun t!48419 () Bool)

(assert (=> (and start!11442 (= s2!92 u1!5) t!48419) tb!46409))

(declare-fun result!46839 () Bool)

(assert (=> tb!46409 (= result!46839 true)))

(assert (=> b!87701 t!48419))

(declare-fun b_and!59263 () Bool)

(assert (= b_and!59255 (and (=> t!48419 result!46839) b_and!59263)))

(declare-fun tb!46411 () Bool)

(declare-fun t!48421 () Bool)

(assert (=> (and start!11442 (= u2!5 u1!5) t!48421) tb!46411))

(declare-fun result!46841 () Bool)

(assert (=> tb!46411 (= result!46841 true)))

(assert (=> b!87701 t!48421))

(declare-fun b_and!59265 () Bool)

(assert (= b_and!59257 (and (=> t!48421 result!46841) b_and!59265)))

(declare-fun t!48423 () Bool)

(declare-fun tb!46413 () Bool)

(assert (=> (and start!11442 (= u1!5 u1!5) t!48423) tb!46413))

(declare-fun result!46843 () Bool)

(assert (=> tb!46413 (= result!46843 true)))

(assert (=> b!87701 t!48423))

(declare-fun b_and!59267 () Bool)

(assert (= b_and!59259 (and (=> t!48423 result!46843) b_and!59267)))

(declare-fun b_lambda!17081 () Bool)

(assert (=> (not b_lambda!17081) (not b!87701)))

(declare-fun t!48425 () Bool)

(declare-fun tb!46415 () Bool)

(assert (=> (and start!11442 (= s1!93 u2!5) t!48425) tb!46415))

(declare-fun result!46845 () Bool)

(assert (=> tb!46415 (= result!46845 true)))

(assert (=> b!87701 t!48425))

(declare-fun b_and!59269 () Bool)

(assert (= b_and!59261 (and (=> t!48425 result!46845) b_and!59269)))

(declare-fun t!48427 () Bool)

(declare-fun tb!46417 () Bool)

(assert (=> (and start!11442 (= s2!92 u2!5) t!48427) tb!46417))

(declare-fun result!46847 () Bool)

(assert (=> tb!46417 (= result!46847 true)))

(assert (=> b!87701 t!48427))

(declare-fun b_and!59271 () Bool)

(assert (= b_and!59263 (and (=> t!48427 result!46847) b_and!59271)))

(declare-fun t!48429 () Bool)

(declare-fun tb!46419 () Bool)

(assert (=> (and start!11442 (= u2!5 u2!5) t!48429) tb!46419))

(declare-fun result!46849 () Bool)

(assert (=> tb!46419 (= result!46849 true)))

(assert (=> b!87701 t!48429))

(declare-fun b_and!59273 () Bool)

(assert (= b_and!59265 (and (=> t!48429 result!46849) b_and!59273)))

(declare-fun tb!46421 () Bool)

(declare-fun t!48431 () Bool)

(assert (=> (and start!11442 (= u1!5 u2!5) t!48431) tb!46421))

(declare-fun result!46851 () Bool)

(assert (=> tb!46421 (= result!46851 true)))

(assert (=> b!87701 t!48431))

(declare-fun b_and!59275 () Bool)

(assert (= b_and!59267 (and (=> t!48431 result!46851) b_and!59275)))

(declare-fun m!83992 () Bool)

(assert (=> start!11442 m!83992))

(declare-fun m!83994 () Bool)

(assert (=> b!87700 m!83994))

(declare-fun m!83996 () Bool)

(assert (=> b!87700 m!83996))

(assert (=> b!87700 m!83994))

(assert (=> b!87700 m!83996))

(declare-fun m!83998 () Bool)

(assert (=> b!87700 m!83998))

(assert (=> b!87700 m!83998))

(declare-fun m!84000 () Bool)

(assert (=> b!87700 m!84000))

(declare-fun m!84002 () Bool)

(assert (=> b!87701 m!84002))

(declare-fun m!84004 () Bool)

(assert (=> b!87701 m!84004))

(push 1)

(assert (not b_next!39659))

(assert (not b_next!39663))

(assert b_and!59273)

(assert (not b_next!39657))

(assert (not b_next!39661))

(assert (not b_lambda!17079))

(assert b_and!59269)

(assert (not b_lambda!17081))

(assert (not start!11442))

(assert b_and!59275)

(assert (not b!87700))

(assert b_and!59271)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39659))

(assert (not b_next!39663))

(assert b_and!59273)

(assert (not b_next!39657))

(assert (not b_next!39661))

(assert b_and!59269)

(assert b_and!59275)

(assert b_and!59271)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17083 () Bool)

(assert (= b_lambda!17081 (or (and start!11442 b_free!7441 (= s1!93 u2!5)) (and start!11442 b_free!7443 (= s2!92 u2!5)) (and start!11442 b_free!7445) (and start!11442 b_free!7447 (= u1!5 u2!5)) b_lambda!17083)))

(declare-fun b_lambda!17085 () Bool)

(assert (= b_lambda!17079 (or (and start!11442 b_free!7441 (= s1!93 u1!5)) (and start!11442 b_free!7443 (= s2!92 u1!5)) (and start!11442 b_free!7445 (= u2!5 u1!5)) (and start!11442 b_free!7447) b_lambda!17085)))

(push 1)

(assert (not b_next!39659))

(assert (not b_next!39663))

(assert b_and!59273)

(assert (not b_next!39657))

(assert (not b_next!39661))

(assert b_and!59269)

(assert (not b_lambda!17083))

(assert (not start!11442))

(assert b_and!59275)

(assert (not b_lambda!17085))

(assert (not b!87700))

(assert b_and!59271)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39659))

(assert (not b_next!39663))

(assert b_and!59273)

(assert (not b_next!39657))

(assert (not b_next!39661))

(assert b_and!59269)

(assert b_and!59275)

(assert b_and!59271)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58375 () Bool)

(assert (=> d!58375 true))

(declare-fun order!475 () Int)

(declare-fun lambda!10832 () Int)

(declare-fun dynLambda!1027 (Int Int) Int)

(assert (=> d!58375 (< (dynLambda!1027 order!475 s1!93) (dynLambda!1027 order!475 lambda!10832))))

(assert (=> d!58375 true))

(assert (=> d!58375 (< (dynLambda!1027 order!475 s2!92) (dynLambda!1027 order!475 lambda!10832))))

(declare-fun b_next!39665 () Bool)

(assert (=> start!11442 (= b_next!39661 (or (and d!58375 (= lambda!10832 u2!5)) b_next!39665))))

(declare-fun b_next!39667 () Bool)

(assert (=> start!11442 (= b_next!39663 (or (and d!58375 (= lambda!10832 u1!5)) b_next!39667))))

(assert (=> d!58375 (= (union!1 s1!93 s2!92) lambda!10832)))

(assert (=> start!11442 d!58375))

(declare-fun bs!41177 () Bool)

(declare-fun d!58377 () Bool)

(assert (= bs!41177 (and d!58377 d!58375)))

(declare-fun lambda!10835 () Int)

(assert (=> bs!41177 (not (= lambda!10835 lambda!10832))))

(assert (=> d!58377 true))

(assert (=> d!58377 (< (dynLambda!1027 order!475 (intersection!1 (complement!1 s1!93) (complement!1 s2!92))) (dynLambda!1027 order!475 lambda!10835))))

(declare-fun b_next!39669 () Bool)

(assert (=> start!11442 (= b_next!39657 (or (and d!58377 (= lambda!10835 s1!93)) b_next!39669))))

(declare-fun b_next!39671 () Bool)

(assert (=> start!11442 (= b_next!39659 (or (and d!58377 (= lambda!10835 s2!92)) b_next!39671))))

(declare-fun b_next!39673 () Bool)

(assert (=> start!11442 (= b_next!39665 (or (and d!58377 (= lambda!10835 u2!5)) b_next!39673))))

(declare-fun b_next!39675 () Bool)

(assert (=> start!11442 (= b_next!39667 (or (and d!58377 (= lambda!10835 u1!5)) b_next!39675))))

(assert (=> d!58377 (= (complement!1 (intersection!1 (complement!1 s1!93) (complement!1 s2!92))) lambda!10835)))

(assert (=> b!87700 d!58377))

(declare-fun bs!41178 () Bool)

(declare-fun d!58379 () Bool)

(assert (= bs!41178 (and d!58379 d!58375)))

(declare-fun lambda!10838 () Int)

(assert (=> bs!41178 (not (= lambda!10838 lambda!10832))))

(declare-fun bs!41179 () Bool)

(assert (= bs!41179 (and d!58379 d!58377)))

(assert (=> bs!41179 (not (= lambda!10838 lambda!10835))))

(assert (=> d!58379 true))

(assert (=> d!58379 (< (dynLambda!1027 order!475 (complement!1 s1!93)) (dynLambda!1027 order!475 lambda!10838))))

(assert (=> d!58379 true))

(assert (=> d!58379 (< (dynLambda!1027 order!475 (complement!1 s2!92)) (dynLambda!1027 order!475 lambda!10838))))

(declare-fun b_next!39677 () Bool)

(assert (=> start!11442 (= b_next!39669 (or (and d!58379 (= lambda!10838 s1!93)) b_next!39677))))

(declare-fun b_next!39679 () Bool)

(assert (=> start!11442 (= b_next!39671 (or (and d!58379 (= lambda!10838 s2!92)) b_next!39679))))

(declare-fun b_next!39681 () Bool)

(assert (=> start!11442 (= b_next!39673 (or (and d!58379 (= lambda!10838 u2!5)) b_next!39681))))

(declare-fun b_next!39683 () Bool)

(assert (=> start!11442 (= b_next!39675 (or (and d!58379 (= lambda!10838 u1!5)) b_next!39683))))

(assert (=> d!58379 (= (intersection!1 (complement!1 s1!93) (complement!1 s2!92)) lambda!10838)))

(assert (=> b!87700 d!58379))

(declare-fun bs!41180 () Bool)

(declare-fun d!58381 () Bool)

(assert (= bs!41180 (and d!58381 d!58375)))

(declare-fun lambda!10839 () Int)

(assert (=> bs!41180 (not (= lambda!10839 lambda!10832))))

(declare-fun bs!41181 () Bool)

(assert (= bs!41181 (and d!58381 d!58377)))

(assert (=> bs!41181 (= (= s1!93 (intersection!1 (complement!1 s1!93) (complement!1 s2!92))) (= lambda!10839 lambda!10835))))

(declare-fun bs!41182 () Bool)

(assert (= bs!41182 (and d!58381 d!58379)))

(assert (=> bs!41182 (not (= lambda!10839 lambda!10838))))

(assert (=> d!58381 true))

(assert (=> d!58381 (< (dynLambda!1027 order!475 s1!93) (dynLambda!1027 order!475 lambda!10839))))

(declare-fun b_next!39685 () Bool)

(assert (=> start!11442 (= b_next!39679 (or (and d!58381 (= lambda!10839 s2!92)) b_next!39685))))

(declare-fun b_next!39687 () Bool)

(assert (=> start!11442 (= b_next!39681 (or (and d!58381 (= lambda!10839 u2!5)) b_next!39687))))

(declare-fun b_next!39689 () Bool)

(assert (=> start!11442 (= b_next!39683 (or (and d!58381 (= lambda!10839 u1!5)) b_next!39689))))

(assert (=> d!58381 (= (complement!1 s1!93) lambda!10839)))

(assert (=> b!87700 d!58381))

(declare-fun bs!41183 () Bool)

(declare-fun d!58383 () Bool)

(assert (= bs!41183 (and d!58383 d!58375)))

(declare-fun lambda!10840 () Int)

(assert (=> bs!41183 (not (= lambda!10840 lambda!10832))))

(declare-fun bs!41184 () Bool)

(assert (= bs!41184 (and d!58383 d!58377)))

(assert (=> bs!41184 (= (= s2!92 (intersection!1 (complement!1 s1!93) (complement!1 s2!92))) (= lambda!10840 lambda!10835))))

(declare-fun bs!41185 () Bool)

(assert (= bs!41185 (and d!58383 d!58379)))

(assert (=> bs!41185 (not (= lambda!10840 lambda!10838))))

(declare-fun bs!41186 () Bool)

(assert (= bs!41186 (and d!58383 d!58381)))

(assert (=> bs!41186 (= (= s2!92 s1!93) (= lambda!10840 lambda!10839))))

(assert (=> d!58383 true))

(assert (=> d!58383 (< (dynLambda!1027 order!475 s2!92) (dynLambda!1027 order!475 lambda!10840))))

(declare-fun b_next!39691 () Bool)

(assert (=> start!11442 (= b_next!39677 (or (and d!58383 (= lambda!10840 s1!93)) b_next!39691))))

(declare-fun b_next!39693 () Bool)

(assert (=> start!11442 (= b_next!39687 (or (and d!58383 (= lambda!10840 u2!5)) b_next!39693))))

(declare-fun b_next!39695 () Bool)

(assert (=> start!11442 (= b_next!39689 (or (and d!58383 (= lambda!10840 u1!5)) b_next!39695))))

(assert (=> d!58383 (= (complement!1 s2!92) lambda!10840)))

(assert (=> b!87700 d!58383))

(push 1)

(assert (not b_next!39685))

(assert b_and!59273)

(assert (not b_next!39695))

(assert (not b_next!39693))

(assert (not b_next!39691))

(assert b_and!59269)

(assert (not b_lambda!17083))

(assert b_and!59275)

(assert (not b_lambda!17085))

(assert b_and!59271)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39685))

(assert b_and!59273)

(assert (not b_next!39695))

(assert (not b_next!39693))

(assert (not b_next!39691))

(assert b_and!59269)

(assert b_and!59275)

(assert b_and!59271)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17087 () Bool)

(assert (= b_lambda!17083 (or (and d!58379 (= lambda!10838 u2!5)) (and d!58375 (= lambda!10832 u2!5)) (and d!58377 (= lambda!10835 u2!5)) (and d!58383 (= lambda!10840 u2!5)) (and d!58381 (= lambda!10839 u2!5)) b_lambda!17087)))

(declare-fun bs!41187 () Bool)

(declare-fun d!58385 () Bool)

(assert (= bs!41187 (and d!58385 d!58375)))

(declare-fun res!45756 () Bool)

(declare-fun e!47619 () Bool)

(assert (=> bs!41187 (=> res!45756 e!47619)))

(assert (=> bs!41187 (= res!45756 (dynLambda!1026 s1!93 x!30524))))

(assert (=> bs!41187 (= (dynLambda!1026 lambda!10832 x!30524) e!47619)))

(declare-fun b!87708 () Bool)

(assert (=> b!87708 (= e!47619 (dynLambda!1026 s2!92 x!30524))))

(assert (= (and bs!41187 (not res!45756)) b!87708))

(declare-fun b_lambda!17091 () Bool)

(assert (=> (not b_lambda!17091) (not bs!41187)))

(declare-fun t!48433 () Bool)

(declare-fun tb!46423 () Bool)

(assert (=> (and start!11442 (= s1!93 s1!93) t!48433) tb!46423))

(declare-fun result!46853 () Bool)

(assert (=> tb!46423 (= result!46853 true)))

(assert (=> bs!41187 t!48433))

(declare-fun b_and!59277 () Bool)

(assert (= b_and!59269 (and (=> t!48433 result!46853) b_and!59277)))

(declare-fun tb!46425 () Bool)

(declare-fun t!48435 () Bool)

(assert (=> (and start!11442 (= s2!92 s1!93) t!48435) tb!46425))

(declare-fun result!46855 () Bool)

(assert (=> tb!46425 (= result!46855 true)))

(assert (=> bs!41187 t!48435))

(declare-fun b_and!59279 () Bool)

(assert (= b_and!59271 (and (=> t!48435 result!46855) b_and!59279)))

(declare-fun tb!46427 () Bool)

(declare-fun t!48437 () Bool)

(assert (=> (and start!11442 (= u2!5 s1!93) t!48437) tb!46427))

(declare-fun result!46857 () Bool)

(assert (=> tb!46427 (= result!46857 true)))

(assert (=> bs!41187 t!48437))

(declare-fun b_and!59281 () Bool)

(assert (= b_and!59273 (and (=> t!48437 result!46857) b_and!59281)))

(declare-fun t!48439 () Bool)

(declare-fun tb!46429 () Bool)

(assert (=> (and start!11442 (= u1!5 s1!93) t!48439) tb!46429))

(declare-fun result!46859 () Bool)

(assert (=> tb!46429 (= result!46859 true)))

(assert (=> bs!41187 t!48439))

(declare-fun b_and!59283 () Bool)

(assert (= b_and!59275 (and (=> t!48439 result!46859) b_and!59283)))

(declare-fun b_lambda!17093 () Bool)

(assert (=> (not b_lambda!17093) (not b!87708)))

(declare-fun tb!46431 () Bool)

(declare-fun t!48441 () Bool)

(assert (=> (and start!11442 (= s1!93 s2!92) t!48441) tb!46431))

(declare-fun result!46861 () Bool)

(assert (=> tb!46431 (= result!46861 true)))

(assert (=> b!87708 t!48441))

(declare-fun b_and!59285 () Bool)

(assert (= b_and!59277 (and (=> t!48441 result!46861) b_and!59285)))

(declare-fun t!48443 () Bool)

(declare-fun tb!46433 () Bool)

(assert (=> (and start!11442 (= s2!92 s2!92) t!48443) tb!46433))

(declare-fun result!46863 () Bool)

(assert (=> tb!46433 (= result!46863 true)))

(assert (=> b!87708 t!48443))

(declare-fun b_and!59287 () Bool)

(assert (= b_and!59279 (and (=> t!48443 result!46863) b_and!59287)))

(declare-fun tb!46435 () Bool)

(declare-fun t!48445 () Bool)

(assert (=> (and start!11442 (= u2!5 s2!92) t!48445) tb!46435))

(declare-fun result!46865 () Bool)

(assert (=> tb!46435 (= result!46865 true)))

(assert (=> b!87708 t!48445))

(declare-fun b_and!59289 () Bool)

(assert (= b_and!59281 (and (=> t!48445 result!46865) b_and!59289)))

(declare-fun t!48447 () Bool)

(declare-fun tb!46437 () Bool)

(assert (=> (and start!11442 (= u1!5 s2!92) t!48447) tb!46437))

(declare-fun result!46867 () Bool)

(assert (=> tb!46437 (= result!46867 true)))

(assert (=> b!87708 t!48447))

(declare-fun b_and!59291 () Bool)

(assert (= b_and!59283 (and (=> t!48447 result!46867) b_and!59291)))

(declare-fun m!84006 () Bool)

(assert (=> bs!41187 m!84006))

(declare-fun m!84008 () Bool)

(assert (=> b!87708 m!84008))

(assert (=> (and d!58375 (= lambda!10832 u2!5) b!87701) d!58385))

(declare-fun bs!41188 () Bool)

(declare-fun d!58387 () Bool)

(assert (= bs!41188 (and d!58387 d!58383)))

(assert (=> bs!41188 (= (dynLambda!1026 lambda!10840 x!30524) (not (dynLambda!1026 s2!92 x!30524)))))

(declare-fun b_lambda!17095 () Bool)

(assert (=> (not b_lambda!17095) (not bs!41188)))

(assert (=> bs!41188 t!48441))

(declare-fun b_and!59293 () Bool)

(assert (= b_and!59285 (and (=> t!48441 result!46861) b_and!59293)))

(assert (=> bs!41188 t!48443))

(declare-fun b_and!59295 () Bool)

(assert (= b_and!59287 (and (=> t!48443 result!46863) b_and!59295)))

(assert (=> bs!41188 t!48445))

(declare-fun b_and!59297 () Bool)

(assert (= b_and!59289 (and (=> t!48445 result!46865) b_and!59297)))

(assert (=> bs!41188 t!48447))

(declare-fun b_and!59299 () Bool)

(assert (= b_and!59291 (and (=> t!48447 result!46867) b_and!59299)))

(assert (=> bs!41188 m!84008))

(assert (=> (and d!58383 (= lambda!10840 u2!5) b!87701) d!58387))

(declare-fun bs!41189 () Bool)

(declare-fun d!58389 () Bool)

(assert (= bs!41189 (and d!58389 d!58379)))

(declare-fun res!45757 () Bool)

(declare-fun e!47620 () Bool)

(assert (=> bs!41189 (=> (not res!45757) (not e!47620))))

(assert (=> bs!41189 (= res!45757 (dynLambda!1026 (complement!1 s1!93) x!30524))))

(assert (=> bs!41189 (= (dynLambda!1026 lambda!10838 x!30524) e!47620)))

(declare-fun b!87709 () Bool)

(assert (=> b!87709 (= e!47620 (dynLambda!1026 (complement!1 s2!92) x!30524))))

(assert (= (and bs!41189 res!45757) b!87709))

(declare-fun b_lambda!17097 () Bool)

(assert (=> (not b_lambda!17097) (not bs!41189)))

(declare-fun b_lambda!17099 () Bool)

(assert (=> (not b_lambda!17099) (not b!87709)))

(declare-fun m!84010 () Bool)

(assert (=> bs!41189 m!84010))

(declare-fun m!84012 () Bool)

(assert (=> b!87709 m!84012))

(assert (=> (and d!58379 (= lambda!10838 u2!5) b!87701) d!58389))

(declare-fun bs!41190 () Bool)

(declare-fun d!58391 () Bool)

(assert (= bs!41190 (and d!58391 d!58377)))

(assert (=> bs!41190 (= (dynLambda!1026 lambda!10835 x!30524) (not (dynLambda!1026 (intersection!1 (complement!1 s1!93) (complement!1 s2!92)) x!30524)))))

(declare-fun b_lambda!17101 () Bool)

(assert (=> (not b_lambda!17101) (not bs!41190)))

(declare-fun m!84014 () Bool)

(assert (=> bs!41190 m!84014))

(assert (=> (and d!58377 (= lambda!10835 u2!5) b!87701) d!58391))

(declare-fun bs!41191 () Bool)

(declare-fun d!58393 () Bool)

(assert (= bs!41191 (and d!58393 d!58381)))

(assert (=> bs!41191 (= (dynLambda!1026 lambda!10839 x!30524) (not (dynLambda!1026 s1!93 x!30524)))))

(declare-fun b_lambda!17103 () Bool)

(assert (=> (not b_lambda!17103) (not bs!41191)))

(assert (=> bs!41191 t!48433))

(declare-fun b_and!59301 () Bool)

(assert (= b_and!59293 (and (=> t!48433 result!46853) b_and!59301)))

(assert (=> bs!41191 t!48435))

(declare-fun b_and!59303 () Bool)

(assert (= b_and!59295 (and (=> t!48435 result!46855) b_and!59303)))

(assert (=> bs!41191 t!48437))

(declare-fun b_and!59305 () Bool)

(assert (= b_and!59297 (and (=> t!48437 result!46857) b_and!59305)))

(assert (=> bs!41191 t!48439))

(declare-fun b_and!59307 () Bool)

(assert (= b_and!59299 (and (=> t!48439 result!46859) b_and!59307)))

(assert (=> bs!41191 m!84006))

(assert (=> (and d!58381 (= lambda!10839 u2!5) b!87701) d!58393))

(declare-fun b_lambda!17089 () Bool)

(assert (= b_lambda!17085 (or (and d!58383 (= lambda!10840 u1!5)) (and d!58375 (= lambda!10832 u1!5)) (and d!58381 (= lambda!10839 u1!5)) (and d!58379 (= lambda!10838 u1!5)) (and d!58377 (= lambda!10835 u1!5)) b_lambda!17089)))

(declare-fun bs!41192 () Bool)

(declare-fun d!58395 () Bool)

(assert (= bs!41192 (and d!58395 d!58377)))

(assert (=> bs!41192 (= (dynLambda!1026 lambda!10835 x!30524) (not (dynLambda!1026 (intersection!1 (complement!1 s1!93) (complement!1 s2!92)) x!30524)))))

(declare-fun b_lambda!17105 () Bool)

(assert (=> (not b_lambda!17105) (not bs!41192)))

(assert (=> bs!41192 m!84014))

(assert (=> (and d!58377 (= lambda!10835 u1!5) b!87701) d!58395))

(declare-fun bs!41193 () Bool)

(declare-fun d!58397 () Bool)

(assert (= bs!41193 (and d!58397 d!58381)))

(assert (=> bs!41193 (= (dynLambda!1026 lambda!10839 x!30524) (not (dynLambda!1026 s1!93 x!30524)))))

(declare-fun b_lambda!17107 () Bool)

(assert (=> (not b_lambda!17107) (not bs!41193)))

(assert (=> bs!41193 t!48433))

(declare-fun b_and!59309 () Bool)

(assert (= b_and!59301 (and (=> t!48433 result!46853) b_and!59309)))

(assert (=> bs!41193 t!48435))

(declare-fun b_and!59311 () Bool)

(assert (= b_and!59303 (and (=> t!48435 result!46855) b_and!59311)))

(assert (=> bs!41193 t!48437))

(declare-fun b_and!59313 () Bool)

(assert (= b_and!59305 (and (=> t!48437 result!46857) b_and!59313)))

(assert (=> bs!41193 t!48439))

(declare-fun b_and!59315 () Bool)

(assert (= b_and!59307 (and (=> t!48439 result!46859) b_and!59315)))

(assert (=> bs!41193 m!84006))

(assert (=> (and d!58381 (= lambda!10839 u1!5) b!87701) d!58397))

(declare-fun bs!41194 () Bool)

(declare-fun d!58399 () Bool)

(assert (= bs!41194 (and d!58399 d!58383)))

(assert (=> bs!41194 (= (dynLambda!1026 lambda!10840 x!30524) (not (dynLambda!1026 s2!92 x!30524)))))

(declare-fun b_lambda!17109 () Bool)

(assert (=> (not b_lambda!17109) (not bs!41194)))

(assert (=> bs!41194 t!48441))

(declare-fun b_and!59317 () Bool)

(assert (= b_and!59309 (and (=> t!48441 result!46861) b_and!59317)))

(assert (=> bs!41194 t!48443))

(declare-fun b_and!59319 () Bool)

(assert (= b_and!59311 (and (=> t!48443 result!46863) b_and!59319)))

(assert (=> bs!41194 t!48445))

(declare-fun b_and!59321 () Bool)

(assert (= b_and!59313 (and (=> t!48445 result!46865) b_and!59321)))

(assert (=> bs!41194 t!48447))

(declare-fun b_and!59323 () Bool)

(assert (= b_and!59315 (and (=> t!48447 result!46867) b_and!59323)))

(assert (=> bs!41194 m!84008))

(assert (=> (and d!58383 (= lambda!10840 u1!5) b!87701) d!58399))

(declare-fun bs!41195 () Bool)

(declare-fun d!58401 () Bool)

(assert (= bs!41195 (and d!58401 d!58379)))

(declare-fun res!45758 () Bool)

(declare-fun e!47621 () Bool)

(assert (=> bs!41195 (=> (not res!45758) (not e!47621))))

(assert (=> bs!41195 (= res!45758 (dynLambda!1026 (complement!1 s1!93) x!30524))))

(assert (=> bs!41195 (= (dynLambda!1026 lambda!10838 x!30524) e!47621)))

(declare-fun b!87710 () Bool)

(assert (=> b!87710 (= e!47621 (dynLambda!1026 (complement!1 s2!92) x!30524))))

(assert (= (and bs!41195 res!45758) b!87710))

(declare-fun b_lambda!17111 () Bool)

(assert (=> (not b_lambda!17111) (not bs!41195)))

(declare-fun b_lambda!17113 () Bool)

(assert (=> (not b_lambda!17113) (not b!87710)))

(assert (=> bs!41195 m!84010))

(assert (=> b!87710 m!84012))

(assert (=> (and d!58379 (= lambda!10838 u1!5) b!87701) d!58401))

(declare-fun bs!41196 () Bool)

(declare-fun d!58403 () Bool)

(assert (= bs!41196 (and d!58403 d!58375)))

(declare-fun res!45759 () Bool)

(declare-fun e!47622 () Bool)

(assert (=> bs!41196 (=> res!45759 e!47622)))

(assert (=> bs!41196 (= res!45759 (dynLambda!1026 s1!93 x!30524))))

(assert (=> bs!41196 (= (dynLambda!1026 lambda!10832 x!30524) e!47622)))

(declare-fun b!87711 () Bool)

(assert (=> b!87711 (= e!47622 (dynLambda!1026 s2!92 x!30524))))

(assert (= (and bs!41196 (not res!45759)) b!87711))

(declare-fun b_lambda!17115 () Bool)

(assert (=> (not b_lambda!17115) (not bs!41196)))

(assert (=> bs!41196 t!48433))

(declare-fun b_and!59325 () Bool)

(assert (= b_and!59317 (and (=> t!48433 result!46853) b_and!59325)))

(assert (=> bs!41196 t!48435))

(declare-fun b_and!59327 () Bool)

(assert (= b_and!59319 (and (=> t!48435 result!46855) b_and!59327)))

(assert (=> bs!41196 t!48437))

(declare-fun b_and!59329 () Bool)

(assert (= b_and!59321 (and (=> t!48437 result!46857) b_and!59329)))

(assert (=> bs!41196 t!48439))

(declare-fun b_and!59331 () Bool)

(assert (= b_and!59323 (and (=> t!48439 result!46859) b_and!59331)))

(declare-fun b_lambda!17117 () Bool)

(assert (=> (not b_lambda!17117) (not b!87711)))

(assert (=> b!87711 t!48441))

(declare-fun b_and!59333 () Bool)

(assert (= b_and!59325 (and (=> t!48441 result!46861) b_and!59333)))

(assert (=> b!87711 t!48443))

(declare-fun b_and!59335 () Bool)

(assert (= b_and!59327 (and (=> t!48443 result!46863) b_and!59335)))

(assert (=> b!87711 t!48445))

(declare-fun b_and!59337 () Bool)

(assert (= b_and!59329 (and (=> t!48445 result!46865) b_and!59337)))

(assert (=> b!87711 t!48447))

(declare-fun b_and!59339 () Bool)

(assert (= b_and!59331 (and (=> t!48447 result!46867) b_and!59339)))

(assert (=> bs!41196 m!84006))

(assert (=> b!87711 m!84008))

(assert (=> (and d!58375 (= lambda!10832 u1!5) b!87701) d!58403))

(push 1)

(assert (not b_lambda!17115))

(assert (not b_lambda!17107))

(assert b_and!59335)

(assert (not b_lambda!17095))

(assert b_and!59333)

(assert (not b_lambda!17101))

(assert (not b_lambda!17105))

(assert (not b_next!39685))

(assert (not b_lambda!17111))

(assert (not b_lambda!17103))

(assert (not b_lambda!17099))

(assert (not b_lambda!17113))

(assert (not b_next!39695))

(assert (not b_lambda!17091))

(assert (not b_next!39693))

(assert (not b_lambda!17097))

(assert (not b_lambda!17089))

(assert (not b_next!39691))

(assert b_and!59337)

(assert (not b_lambda!17109))

(assert b_and!59339)

(assert (not b_lambda!17093))

(assert (not b_lambda!17117))

(assert (not b_lambda!17087))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59335)

(assert b_and!59333)

(assert (not b_next!39685))

(assert (not b_next!39695))

(assert (not b_next!39693))

(assert (not b_next!39691))

(assert b_and!59337)

(assert b_and!59339)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17119 () Bool)

(assert (= b_lambda!17105 (or d!58379 b_lambda!17119)))

(declare-fun bs!41197 () Bool)

(declare-fun d!58405 () Bool)

(assert (= bs!41197 (and d!58405 d!58379)))

(declare-fun res!45760 () Bool)

(declare-fun e!47623 () Bool)

(assert (=> bs!41197 (=> (not res!45760) (not e!47623))))

(assert (=> bs!41197 (= res!45760 (dynLambda!1026 (complement!1 s1!93) x!30524))))

(assert (=> bs!41197 (= (dynLambda!1026 lambda!10838 x!30524) e!47623)))

(declare-fun b!87712 () Bool)

(assert (=> b!87712 (= e!47623 (dynLambda!1026 (complement!1 s2!92) x!30524))))

(assert (= (and bs!41197 res!45760) b!87712))

(declare-fun b_lambda!17147 () Bool)

(assert (=> (not b_lambda!17147) (not bs!41197)))

(declare-fun b_lambda!17149 () Bool)

(assert (=> (not b_lambda!17149) (not b!87712)))

(assert (=> bs!41197 m!84010))

(assert (=> b!87712 m!84012))

(assert (=> bs!41192 d!58405))

(declare-fun b_lambda!17121 () Bool)

(assert (= b_lambda!17113 (or d!58383 b_lambda!17121)))

(declare-fun bs!41198 () Bool)

(declare-fun d!58407 () Bool)

(assert (= bs!41198 (and d!58407 d!58383)))

(assert (=> bs!41198 (= (dynLambda!1026 lambda!10840 x!30524) (not (dynLambda!1026 s2!92 x!30524)))))

(declare-fun b_lambda!17151 () Bool)

(assert (=> (not b_lambda!17151) (not bs!41198)))

(assert (=> bs!41198 t!48441))

(declare-fun b_and!59341 () Bool)

(assert (= b_and!59333 (and (=> t!48441 result!46861) b_and!59341)))

(assert (=> bs!41198 t!48443))

(declare-fun b_and!59343 () Bool)

(assert (= b_and!59335 (and (=> t!48443 result!46863) b_and!59343)))

(assert (=> bs!41198 t!48445))

(declare-fun b_and!59345 () Bool)

(assert (= b_and!59337 (and (=> t!48445 result!46865) b_and!59345)))

(assert (=> bs!41198 t!48447))

(declare-fun b_and!59347 () Bool)

(assert (= b_and!59339 (and (=> t!48447 result!46867) b_and!59347)))

(assert (=> bs!41198 m!84008))

(assert (=> b!87710 d!58407))

(declare-fun b_lambda!17123 () Bool)

(assert (= b_lambda!17117 (or (and start!11442 b_free!7443) (and d!58381 (= lambda!10839 s2!92)) (and start!11442 b_free!7447 (= u1!5 s2!92)) (and start!11442 b_free!7441 (= s1!93 s2!92)) (and start!11442 b_free!7445 (= u2!5 s2!92)) (and d!58377 (= lambda!10835 s2!92)) (and d!58379 (= lambda!10838 s2!92)) b_lambda!17123)))

(declare-fun bs!41199 () Bool)

(declare-fun d!58409 () Bool)

(assert (= bs!41199 (and d!58409 d!58381)))

(assert (=> bs!41199 (= (dynLambda!1026 lambda!10839 x!30524) (not (dynLambda!1026 s1!93 x!30524)))))

(declare-fun b_lambda!17153 () Bool)

(assert (=> (not b_lambda!17153) (not bs!41199)))

(assert (=> bs!41199 t!48433))

(declare-fun b_and!59349 () Bool)

(assert (= b_and!59341 (and (=> t!48433 result!46853) b_and!59349)))

(assert (=> bs!41199 t!48435))

(declare-fun b_and!59351 () Bool)

(assert (= b_and!59343 (and (=> t!48435 result!46855) b_and!59351)))

(assert (=> bs!41199 t!48437))

(declare-fun b_and!59353 () Bool)

(assert (= b_and!59345 (and (=> t!48437 result!46857) b_and!59353)))

(assert (=> bs!41199 t!48439))

(declare-fun b_and!59355 () Bool)

(assert (= b_and!59347 (and (=> t!48439 result!46859) b_and!59355)))

(assert (=> bs!41199 m!84006))

(assert (=> (and d!58381 (= lambda!10839 s2!92) b!87711) d!58409))

(declare-fun bs!41200 () Bool)

(declare-fun d!58411 () Bool)

(assert (= bs!41200 (and d!58411 d!58379)))

(declare-fun res!45761 () Bool)

(declare-fun e!47624 () Bool)

(assert (=> bs!41200 (=> (not res!45761) (not e!47624))))

(assert (=> bs!41200 (= res!45761 (dynLambda!1026 (complement!1 s1!93) x!30524))))

(assert (=> bs!41200 (= (dynLambda!1026 lambda!10838 x!30524) e!47624)))

(declare-fun b!87713 () Bool)

(assert (=> b!87713 (= e!47624 (dynLambda!1026 (complement!1 s2!92) x!30524))))

(assert (= (and bs!41200 res!45761) b!87713))

(declare-fun b_lambda!17155 () Bool)

(assert (=> (not b_lambda!17155) (not bs!41200)))

(declare-fun b_lambda!17157 () Bool)

(assert (=> (not b_lambda!17157) (not b!87713)))

(assert (=> bs!41200 m!84010))

(assert (=> b!87713 m!84012))

(assert (=> (and d!58379 (= lambda!10838 s2!92) b!87711) d!58411))

(declare-fun bs!41201 () Bool)

(declare-fun d!58413 () Bool)

(assert (= bs!41201 (and d!58413 d!58377)))

(assert (=> bs!41201 (= (dynLambda!1026 lambda!10835 x!30524) (not (dynLambda!1026 (intersection!1 (complement!1 s1!93) (complement!1 s2!92)) x!30524)))))

(declare-fun b_lambda!17159 () Bool)

(assert (=> (not b_lambda!17159) (not bs!41201)))

(assert (=> bs!41201 m!84014))

(assert (=> (and d!58377 (= lambda!10835 s2!92) b!87711) d!58413))

(declare-fun b_lambda!17125 () Bool)

(assert (= b_lambda!17115 (or (and start!11442 b_free!7445 (= u2!5 s1!93)) (and start!11442 b_free!7441) (and d!58383 (= lambda!10840 s1!93)) (and start!11442 b_free!7443 (= s2!92 s1!93)) (and start!11442 b_free!7447 (= u1!5 s1!93)) (and d!58377 (= lambda!10835 s1!93)) (and d!58379 (= lambda!10838 s1!93)) b_lambda!17125)))

(declare-fun bs!41202 () Bool)

(declare-fun d!58415 () Bool)

(assert (= bs!41202 (and d!58415 d!58377)))

(assert (=> bs!41202 (= (dynLambda!1026 lambda!10835 x!30524) (not (dynLambda!1026 (intersection!1 (complement!1 s1!93) (complement!1 s2!92)) x!30524)))))

(declare-fun b_lambda!17161 () Bool)

(assert (=> (not b_lambda!17161) (not bs!41202)))

(assert (=> bs!41202 m!84014))

(assert (=> (and d!58377 (= lambda!10835 s1!93) bs!41196) d!58415))

(declare-fun bs!41203 () Bool)

(declare-fun d!58417 () Bool)

(assert (= bs!41203 (and d!58417 d!58379)))

(declare-fun res!45762 () Bool)

(declare-fun e!47625 () Bool)

(assert (=> bs!41203 (=> (not res!45762) (not e!47625))))

(assert (=> bs!41203 (= res!45762 (dynLambda!1026 (complement!1 s1!93) x!30524))))

(assert (=> bs!41203 (= (dynLambda!1026 lambda!10838 x!30524) e!47625)))

(declare-fun b!87714 () Bool)

(assert (=> b!87714 (= e!47625 (dynLambda!1026 (complement!1 s2!92) x!30524))))

(assert (= (and bs!41203 res!45762) b!87714))

(declare-fun b_lambda!17163 () Bool)

(assert (=> (not b_lambda!17163) (not bs!41203)))

(declare-fun b_lambda!17165 () Bool)

(assert (=> (not b_lambda!17165) (not b!87714)))

(assert (=> bs!41203 m!84010))

(assert (=> b!87714 m!84012))

(assert (=> (and d!58379 (= lambda!10838 s1!93) bs!41196) d!58417))

(declare-fun bs!41204 () Bool)

(declare-fun d!58419 () Bool)

(assert (= bs!41204 (and d!58419 d!58383)))

(assert (=> bs!41204 (= (dynLambda!1026 lambda!10840 x!30524) (not (dynLambda!1026 s2!92 x!30524)))))

(declare-fun b_lambda!17167 () Bool)

(assert (=> (not b_lambda!17167) (not bs!41204)))

(assert (=> bs!41204 t!48441))

(declare-fun b_and!59357 () Bool)

(assert (= b_and!59349 (and (=> t!48441 result!46861) b_and!59357)))

(assert (=> bs!41204 t!48443))

(declare-fun b_and!59359 () Bool)

(assert (= b_and!59351 (and (=> t!48443 result!46863) b_and!59359)))

(assert (=> bs!41204 t!48445))

(declare-fun b_and!59361 () Bool)

(assert (= b_and!59353 (and (=> t!48445 result!46865) b_and!59361)))

(assert (=> bs!41204 t!48447))

(declare-fun b_and!59363 () Bool)

(assert (= b_and!59355 (and (=> t!48447 result!46867) b_and!59363)))

(assert (=> bs!41204 m!84008))

(assert (=> (and d!58383 (= lambda!10840 s1!93) bs!41196) d!58419))

(declare-fun b_lambda!17127 () Bool)

(assert (= b_lambda!17109 (or (and start!11442 b_free!7443) (and d!58381 (= lambda!10839 s2!92)) (and start!11442 b_free!7447 (= u1!5 s2!92)) (and start!11442 b_free!7441 (= s1!93 s2!92)) (and start!11442 b_free!7445 (= u2!5 s2!92)) (and d!58377 (= lambda!10835 s2!92)) (and d!58379 (= lambda!10838 s2!92)) b_lambda!17127)))

(assert (=> (and d!58381 (= lambda!10839 s2!92) bs!41194) d!58409))

(assert (=> (and d!58379 (= lambda!10838 s2!92) bs!41194) d!58411))

(assert (=> (and d!58377 (= lambda!10835 s2!92) bs!41194) d!58413))

(declare-fun b_lambda!17129 () Bool)

(assert (= b_lambda!17093 (or (and start!11442 b_free!7443) (and d!58381 (= lambda!10839 s2!92)) (and start!11442 b_free!7447 (= u1!5 s2!92)) (and start!11442 b_free!7441 (= s1!93 s2!92)) (and start!11442 b_free!7445 (= u2!5 s2!92)) (and d!58377 (= lambda!10835 s2!92)) (and d!58379 (= lambda!10838 s2!92)) b_lambda!17129)))

(assert (=> (and d!58381 (= lambda!10839 s2!92) b!87708) d!58409))

(assert (=> (and d!58379 (= lambda!10838 s2!92) b!87708) d!58411))

(assert (=> (and d!58377 (= lambda!10835 s2!92) b!87708) d!58413))

(declare-fun b_lambda!17131 () Bool)

(assert (= b_lambda!17095 (or (and start!11442 b_free!7443) (and d!58381 (= lambda!10839 s2!92)) (and start!11442 b_free!7447 (= u1!5 s2!92)) (and start!11442 b_free!7441 (= s1!93 s2!92)) (and start!11442 b_free!7445 (= u2!5 s2!92)) (and d!58377 (= lambda!10835 s2!92)) (and d!58379 (= lambda!10838 s2!92)) b_lambda!17131)))

(assert (=> (and d!58381 (= lambda!10839 s2!92) bs!41188) d!58409))

(assert (=> (and d!58379 (= lambda!10838 s2!92) bs!41188) d!58411))

(assert (=> (and d!58377 (= lambda!10835 s2!92) bs!41188) d!58413))

(declare-fun b_lambda!17133 () Bool)

(assert (= b_lambda!17111 (or d!58381 b_lambda!17133)))

(declare-fun bs!41205 () Bool)

(declare-fun d!58421 () Bool)

(assert (= bs!41205 (and d!58421 d!58381)))

(assert (=> bs!41205 (= (dynLambda!1026 lambda!10839 x!30524) (not (dynLambda!1026 s1!93 x!30524)))))

(declare-fun b_lambda!17169 () Bool)

(assert (=> (not b_lambda!17169) (not bs!41205)))

(assert (=> bs!41205 t!48433))

(declare-fun b_and!59365 () Bool)

(assert (= b_and!59357 (and (=> t!48433 result!46853) b_and!59365)))

(assert (=> bs!41205 t!48435))

(declare-fun b_and!59367 () Bool)

(assert (= b_and!59359 (and (=> t!48435 result!46855) b_and!59367)))

(assert (=> bs!41205 t!48437))

(declare-fun b_and!59369 () Bool)

(assert (= b_and!59361 (and (=> t!48437 result!46857) b_and!59369)))

(assert (=> bs!41205 t!48439))

(declare-fun b_and!59371 () Bool)

(assert (= b_and!59363 (and (=> t!48439 result!46859) b_and!59371)))

(assert (=> bs!41205 m!84006))

(assert (=> bs!41195 d!58421))

(declare-fun b_lambda!17135 () Bool)

(assert (= b_lambda!17103 (or (and start!11442 b_free!7445 (= u2!5 s1!93)) (and start!11442 b_free!7441) (and d!58383 (= lambda!10840 s1!93)) (and start!11442 b_free!7443 (= s2!92 s1!93)) (and start!11442 b_free!7447 (= u1!5 s1!93)) (and d!58377 (= lambda!10835 s1!93)) (and d!58379 (= lambda!10838 s1!93)) b_lambda!17135)))

(assert (=> (and d!58377 (= lambda!10835 s1!93) bs!41191) d!58415))

(assert (=> (and d!58379 (= lambda!10838 s1!93) bs!41191) d!58417))

(assert (=> (and d!58383 (= lambda!10840 s1!93) bs!41191) d!58419))

(declare-fun b_lambda!17137 () Bool)

(assert (= b_lambda!17099 (or d!58383 b_lambda!17137)))

(assert (=> b!87709 d!58407))

(declare-fun b_lambda!17139 () Bool)

(assert (= b_lambda!17091 (or (and start!11442 b_free!7445 (= u2!5 s1!93)) (and start!11442 b_free!7441) (and d!58383 (= lambda!10840 s1!93)) (and start!11442 b_free!7443 (= s2!92 s1!93)) (and start!11442 b_free!7447 (= u1!5 s1!93)) (and d!58377 (= lambda!10835 s1!93)) (and d!58379 (= lambda!10838 s1!93)) b_lambda!17139)))

(assert (=> (and d!58377 (= lambda!10835 s1!93) bs!41187) d!58415))

(assert (=> (and d!58379 (= lambda!10838 s1!93) bs!41187) d!58417))

(assert (=> (and d!58383 (= lambda!10840 s1!93) bs!41187) d!58419))

(declare-fun b_lambda!17141 () Bool)

(assert (= b_lambda!17101 (or d!58379 b_lambda!17141)))

(assert (=> bs!41190 d!58405))

(declare-fun b_lambda!17143 () Bool)

(assert (= b_lambda!17097 (or d!58381 b_lambda!17143)))

(assert (=> bs!41189 d!58421))

(declare-fun b_lambda!17145 () Bool)

(assert (= b_lambda!17107 (or (and start!11442 b_free!7445 (= u2!5 s1!93)) (and start!11442 b_free!7441) (and d!58383 (= lambda!10840 s1!93)) (and start!11442 b_free!7443 (= s2!92 s1!93)) (and start!11442 b_free!7447 (= u1!5 s1!93)) (and d!58377 (= lambda!10835 s1!93)) (and d!58379 (= lambda!10838 s1!93)) b_lambda!17145)))

(assert (=> (and d!58377 (= lambda!10835 s1!93) bs!41193) d!58415))

(assert (=> (and d!58379 (= lambda!10838 s1!93) bs!41193) d!58417))

(assert (=> (and d!58383 (= lambda!10840 s1!93) bs!41193) d!58419))

(push 1)

(assert (not b_lambda!17129))

(assert (not b_lambda!17139))

(assert (not b_lambda!17151))

(assert (not b_lambda!17131))

(assert (not b_lambda!17165))

(assert (not b_lambda!17143))

(assert (not b_next!39685))

(assert (not b_lambda!17119))

(assert (not b_lambda!17127))

(assert (not b_lambda!17123))

(assert b_and!59367)

(assert (not b_next!39695))

(assert b_and!59365)

(assert b_and!59371)

(assert (not b_next!39693))

(assert (not b_lambda!17145))

(assert (not b_lambda!17155))

(assert (not b_lambda!17147))

(assert (not b_lambda!17089))

(assert (not b_next!39691))

(assert (not b_lambda!17159))

(assert (not b_lambda!17133))

(assert (not b_lambda!17137))

(assert (not b_lambda!17153))

(assert (not b_lambda!17157))

(assert (not b_lambda!17141))

(assert (not b_lambda!17121))

(assert (not b_lambda!17169))

(assert (not b_lambda!17167))

(assert (not b_lambda!17125))

(assert (not b_lambda!17087))

(assert (not b_lambda!17163))

(assert (not b_lambda!17149))

(assert b_and!59369)

(assert (not b_lambda!17135))

(assert (not b_lambda!17161))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39685))

(assert b_and!59367)

(assert (not b_next!39695))

(assert b_and!59365)

(assert b_and!59371)

(assert (not b_next!39693))

(assert (not b_next!39691))

(assert b_and!59369)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17171 () Bool)

(assert (= b_lambda!17161 (or d!58379 b_lambda!17171)))

(assert (=> bs!41202 d!58405))

(declare-fun b_lambda!17173 () Bool)

(assert (= b_lambda!17157 (or d!58383 b_lambda!17173)))

(assert (=> b!87713 d!58407))

(declare-fun b_lambda!17175 () Bool)

(assert (= b_lambda!17149 (or d!58383 b_lambda!17175)))

(assert (=> b!87712 d!58407))

(declare-fun b_lambda!17177 () Bool)

(assert (= b_lambda!17163 (or d!58381 b_lambda!17177)))

(assert (=> bs!41203 d!58421))

(declare-fun b_lambda!17179 () Bool)

(assert (= b_lambda!17159 (or d!58379 b_lambda!17179)))

(assert (=> bs!41201 d!58405))

(declare-fun b_lambda!17181 () Bool)

(assert (= b_lambda!17165 (or d!58383 b_lambda!17181)))

(assert (=> b!87714 d!58407))

(declare-fun b_lambda!17183 () Bool)

(assert (= b_lambda!17151 (or (and start!11442 b_free!7443) (and d!58381 (= lambda!10839 s2!92)) (and start!11442 b_free!7447 (= u1!5 s2!92)) (and start!11442 b_free!7441 (= s1!93 s2!92)) (and start!11442 b_free!7445 (= u2!5 s2!92)) (and d!58377 (= lambda!10835 s2!92)) (and d!58379 (= lambda!10838 s2!92)) b_lambda!17183)))

(assert (=> (and d!58381 (= lambda!10839 s2!92) bs!41198) d!58409))

(assert (=> (and d!58379 (= lambda!10838 s2!92) bs!41198) d!58411))

(assert (=> (and d!58377 (= lambda!10835 s2!92) bs!41198) d!58413))

(declare-fun b_lambda!17185 () Bool)

(assert (= b_lambda!17147 (or d!58381 b_lambda!17185)))

(assert (=> bs!41197 d!58421))

(declare-fun b_lambda!17187 () Bool)

(assert (= b_lambda!17169 (or (and start!11442 b_free!7445 (= u2!5 s1!93)) (and start!11442 b_free!7441) (and d!58383 (= lambda!10840 s1!93)) (and start!11442 b_free!7443 (= s2!92 s1!93)) (and start!11442 b_free!7447 (= u1!5 s1!93)) (and d!58377 (= lambda!10835 s1!93)) (and d!58379 (= lambda!10838 s1!93)) b_lambda!17187)))

(assert (=> (and d!58377 (= lambda!10835 s1!93) bs!41205) d!58415))

(assert (=> (and d!58379 (= lambda!10838 s1!93) bs!41205) d!58417))

(assert (=> (and d!58383 (= lambda!10840 s1!93) bs!41205) d!58419))

(declare-fun b_lambda!17189 () Bool)

(assert (= b_lambda!17153 (or (and start!11442 b_free!7445 (= u2!5 s1!93)) (and start!11442 b_free!7441) (and d!58383 (= lambda!10840 s1!93)) (and start!11442 b_free!7443 (= s2!92 s1!93)) (and start!11442 b_free!7447 (= u1!5 s1!93)) (and d!58377 (= lambda!10835 s1!93)) (and d!58379 (= lambda!10838 s1!93)) b_lambda!17189)))

(assert (=> (and d!58377 (= lambda!10835 s1!93) bs!41199) d!58415))

(assert (=> (and d!58379 (= lambda!10838 s1!93) bs!41199) d!58417))

(assert (=> (and d!58383 (= lambda!10840 s1!93) bs!41199) d!58419))

(declare-fun b_lambda!17191 () Bool)

(assert (= b_lambda!17155 (or d!58381 b_lambda!17191)))

(assert (=> bs!41200 d!58421))

(declare-fun b_lambda!17193 () Bool)

(assert (= b_lambda!17167 (or (and start!11442 b_free!7443) (and d!58381 (= lambda!10839 s2!92)) (and start!11442 b_free!7447 (= u1!5 s2!92)) (and start!11442 b_free!7441 (= s1!93 s2!92)) (and start!11442 b_free!7445 (= u2!5 s2!92)) (and d!58377 (= lambda!10835 s2!92)) (and d!58379 (= lambda!10838 s2!92)) b_lambda!17193)))

(assert (=> (and d!58381 (= lambda!10839 s2!92) bs!41204) d!58409))

(assert (=> (and d!58379 (= lambda!10838 s2!92) bs!41204) d!58411))

(assert (=> (and d!58377 (= lambda!10835 s2!92) bs!41204) d!58413))

(push 1)

(assert (not b_lambda!17129))

(assert (not b_lambda!17139))

(assert (not b_lambda!17131))

(assert (not b_lambda!17181))

(assert (not b_lambda!17143))

(assert (not b_lambda!17173))

(assert (not b_lambda!17171))

(assert (not b_next!39685))

(assert (not b_lambda!17119))

(assert (not b_lambda!17127))

(assert (not b_lambda!17123))

(assert b_and!59367)

(assert (not b_next!39695))

(assert b_and!59365)

(assert (not b_lambda!17177))

(assert b_and!59371)

(assert (not b_next!39693))

(assert (not b_lambda!17185))

(assert (not b_lambda!17145))

(assert (not b_lambda!17191))

(assert (not b_lambda!17089))

(assert (not b_next!39691))

(assert (not b_lambda!17133))

(assert (not b_lambda!17137))

(assert (not b_lambda!17189))

(assert (not b_lambda!17141))

(assert (not b_lambda!17121))

(assert (not b_lambda!17175))

(assert (not b_lambda!17125))

(assert (not b_lambda!17087))

(assert (not b_lambda!17179))

(assert b_and!59369)

(assert (not b_lambda!17193))

(assert (not b_lambda!17187))

(assert (not b_lambda!17135))

(assert (not b_lambda!17183))

(check-sat)

(pop 1)

