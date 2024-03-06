; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10908 () Bool)

(assert start!10908)

(declare-fun b!83326 () Bool)

(assert (=> b!83326 true))

(declare-fun bs!40438 () Bool)

(declare-fun b!83331 () Bool)

(assert (= bs!40438 (and b!83331 b!83326)))

(declare-fun lambda!10281 () Int)

(declare-fun lambda!10280 () Int)

(assert (=> bs!40438 (not (= lambda!10281 lambda!10280))))

(assert (=> b!83331 true))

(declare-fun bs!40439 () Bool)

(declare-fun b!83332 () Bool)

(assert (= bs!40439 (and b!83332 b!83326)))

(declare-fun lambda!10282 () Int)

(assert (=> bs!40439 (not (= lambda!10282 lambda!10280))))

(declare-fun bs!40440 () Bool)

(assert (= bs!40440 (and b!83332 b!83331)))

(assert (=> bs!40440 (not (= lambda!10282 lambda!10281))))

(assert (=> b!83332 true))

(declare-fun bs!40441 () Bool)

(declare-fun b!83329 () Bool)

(assert (= bs!40441 (and b!83329 b!83326)))

(declare-fun lambda!10283 () Int)

(assert (=> bs!40441 (not (= lambda!10283 lambda!10280))))

(declare-fun bs!40442 () Bool)

(assert (= bs!40442 (and b!83329 b!83331)))

(assert (=> bs!40442 (not (= lambda!10283 lambda!10281))))

(declare-fun bs!40443 () Bool)

(assert (= bs!40443 (and b!83329 b!83332)))

(assert (=> bs!40443 (not (= lambda!10283 lambda!10282))))

(assert (=> b!83329 true))

(declare-fun res!42857 () Bool)

(declare-fun e!45187 () Bool)

(assert (=> b!83326 (=> (not res!42857) (not e!45187))))

(declare-datatypes () ((List!675 (Cons!632 (h!1002 Int) (t!47913 List!675)) (Nil!634))))

(declare-fun ls!96 () List!675)

(declare-fun less!5 () List!675)

(declare-fun filter!28 (List!675 Int) List!675)

(assert (=> b!83326 (= res!42857 (= less!5 (filter!28 (t!47913 ls!96) lambda!10280)))))

(declare-fun b!83327 () Bool)

(declare-fun res!42851 () Bool)

(assert (=> b!83327 (=> (not res!42851) (not e!45187))))

(declare-fun equal!10 () List!675)

(declare-fun append_sorted!0 (List!675 List!675) Bool)

(declare-fun quickSort!0 (List!675) List!675)

(assert (=> b!83327 (= res!42851 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun b!83328 () Bool)

(declare-fun res!42852 () Bool)

(assert (=> b!83328 (=> (not res!42852) (not e!45187))))

(declare-fun forall_eq_implies_le!0 (List!675 Int) Bool)

(assert (=> b!83328 (= res!42852 (forall_eq_implies_le!0 equal!10 (h!1002 ls!96)))))

(declare-fun res!42858 () Bool)

(assert (=> b!83329 (=> (not res!42858) (not e!45187))))

(declare-fun sort_preserves_forall!0 (List!675 Int) Bool)

(assert (=> b!83329 (= res!42858 (sort_preserves_forall!0 less!5 lambda!10283))))

(declare-fun b!83330 () Bool)

(declare-fun res!42856 () Bool)

(assert (=> b!83330 (=> (not res!42856) (not e!45187))))

(declare-fun cons_filter_equal_sorted!0 (List!675 Int) Bool)

(assert (=> b!83330 (= res!42856 (cons_filter_equal_sorted!0 (t!47913 ls!96) (h!1002 ls!96)))))

(declare-fun res!42862 () Bool)

(assert (=> b!83331 (=> (not res!42862) (not e!45187))))

(assert (=> b!83331 (= res!42862 (= equal!10 (Cons!632 (h!1002 ls!96) (filter!28 (t!47913 ls!96) lambda!10281))))))

(declare-fun res!42855 () Bool)

(assert (=> b!83332 (=> (not res!42855) (not e!45187))))

(declare-fun more!5 () List!675)

(assert (=> b!83332 (= res!42855 (= more!5 (filter!28 (t!47913 ls!96) lambda!10282)))))

(declare-fun b!83333 () Bool)

(declare-fun res!42853 () Bool)

(assert (=> b!83333 (=> (not res!42853) (not e!45187))))

(declare-fun forall_last!0 (List!675 Int) Bool)

(assert (=> b!83333 (= res!42853 (forall_last!0 (quickSort!0 less!5) lambda!10280))))

(declare-fun res!42860 () Bool)

(assert (=> start!10908 (=> (not res!42860) (not e!45187))))

(assert (=> start!10908 (= res!42860 (and (not (is-Nil!634 ls!96)) (not (is-Nil!634 (t!47913 ls!96)))))))

(assert (=> start!10908 e!45187))

(assert (=> start!10908 true))

(declare-fun b!83334 () Bool)

(declare-fun res!42861 () Bool)

(assert (=> b!83334 (=> (not res!42861) (not e!45187))))

(declare-fun forall_lt_implies_le!0 (List!675 Int) Bool)

(assert (=> b!83334 (= res!42861 (forall_lt_implies_le!0 less!5 (h!1002 ls!96)))))

(declare-fun b!83335 () Bool)

(declare-fun res!42854 () Bool)

(assert (=> b!83335 (=> (not res!42854) (not e!45187))))

(assert (=> b!83335 (= res!42854 (sort_preserves_forall!0 less!5 lambda!10280))))

(declare-fun b!83336 () Bool)

(declare-fun sorted_lemma!0 (List!675) Bool)

(assert (=> b!83336 (= e!45187 (not (sorted_lemma!0 more!5)))))

(declare-fun b!83337 () Bool)

(declare-fun res!42850 () Bool)

(assert (=> b!83337 (=> (not res!42850) (not e!45187))))

(declare-fun ++!83 (List!675 List!675) List!675)

(assert (=> b!83337 (= res!42850 (forall_last!0 (++!83 (quickSort!0 less!5) equal!10) lambda!10283))))

(declare-fun b!83338 () Bool)

(declare-fun res!42859 () Bool)

(assert (=> b!83338 (=> (not res!42859) (not e!45187))))

(assert (=> b!83338 (= res!42859 (sorted_lemma!0 less!5))))

(declare-fun b!83339 () Bool)

(declare-fun res!42849 () Bool)

(assert (=> b!83339 (=> (not res!42849) (not e!45187))))

(declare-fun append_preserves_forall!0 (List!675 List!675 Int) Bool)

(assert (=> b!83339 (= res!42849 (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10283))))

(assert (= (and start!10908 res!42860) b!83326))

(assert (= (and b!83326 res!42857) b!83331))

(assert (= (and b!83331 res!42862) b!83332))

(assert (= (and b!83332 res!42855) b!83338))

(assert (= (and b!83338 res!42859) b!83335))

(assert (= (and b!83335 res!42854) b!83333))

(assert (= (and b!83333 res!42853) b!83330))

(assert (= (and b!83330 res!42856) b!83327))

(assert (= (and b!83327 res!42851) b!83334))

(assert (= (and b!83334 res!42861) b!83329))

(assert (= (and b!83329 res!42858) b!83328))

(assert (= (and b!83328 res!42852) b!83339))

(assert (= (and b!83339 res!42849) b!83337))

(assert (= (and b!83337 res!42850) b!83336))

(declare-fun m!79056 () Bool)

(assert (=> b!83328 m!79056))

(declare-fun m!79058 () Bool)

(assert (=> b!83327 m!79058))

(assert (=> b!83327 m!79058))

(declare-fun m!79060 () Bool)

(assert (=> b!83327 m!79060))

(declare-fun m!79062 () Bool)

(assert (=> b!83336 m!79062))

(declare-fun m!79064 () Bool)

(assert (=> b!83326 m!79064))

(declare-fun m!79066 () Bool)

(assert (=> b!83329 m!79066))

(declare-fun m!79068 () Bool)

(assert (=> b!83338 m!79068))

(declare-fun m!79070 () Bool)

(assert (=> b!83335 m!79070))

(declare-fun m!79072 () Bool)

(assert (=> b!83331 m!79072))

(declare-fun m!79074 () Bool)

(assert (=> b!83334 m!79074))

(assert (=> b!83339 m!79058))

(assert (=> b!83339 m!79058))

(declare-fun m!79076 () Bool)

(assert (=> b!83339 m!79076))

(assert (=> b!83337 m!79058))

(assert (=> b!83337 m!79058))

(declare-fun m!79078 () Bool)

(assert (=> b!83337 m!79078))

(assert (=> b!83337 m!79078))

(declare-fun m!79080 () Bool)

(assert (=> b!83337 m!79080))

(declare-fun m!79082 () Bool)

(assert (=> b!83332 m!79082))

(assert (=> b!83333 m!79058))

(assert (=> b!83333 m!79058))

(declare-fun m!79084 () Bool)

(assert (=> b!83333 m!79084))

(declare-fun m!79086 () Bool)

(assert (=> b!83330 m!79086))

(push 1)

(assert (not b!83339))

(assert (not b!83326))

(assert (not b!83330))

(assert (not b!83338))

(assert (not b!83332))

(assert (not b!83328))

(assert (not b!83329))

(assert (not b!83336))

(assert (not b!83334))

(assert (not b!83327))

(assert (not b!83333))

(assert (not b!83335))

(assert (not b!83331))

(assert (not b!83337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!83354 () Bool)

(declare-fun res!42874 () Bool)

(declare-fun e!45196 () Bool)

(assert (=> b!83354 (=> res!42874 e!45196)))

(declare-fun isEmpty!685 (List!675) Bool)

(assert (=> b!83354 (= res!42874 (isEmpty!685 (++!83 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83355 () Bool)

(declare-fun res!42871 () Bool)

(declare-fun e!45195 () Bool)

(assert (=> b!83355 (=> res!42871 e!45195)))

(assert (=> b!83355 (= res!42871 (isEmpty!685 (++!83 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83356 () Bool)

(declare-fun dynLambda!994 (Int Int) Bool)

(declare-fun last!25 (List!675) Int)

(assert (=> b!83356 (= e!45196 (dynLambda!994 lambda!10283 (last!25 (++!83 (quickSort!0 less!5) equal!10))))))

(declare-fun d!56497 () Bool)

(declare-fun e!45194 () Bool)

(assert (=> d!56497 e!45194))

(declare-fun c!20883 () Bool)

(assert (=> d!56497 (= c!20883 (is-Cons!632 (++!83 (quickSort!0 less!5) equal!10)))))

(assert (=> d!56497 (= (forall_last!0 (++!83 (quickSort!0 less!5) equal!10) lambda!10283) true)))

(declare-fun b!83357 () Bool)

(assert (=> b!83357 (= e!45195 (dynLambda!994 lambda!10283 (last!25 (++!83 (quickSort!0 less!5) equal!10))))))

(declare-fun b!83358 () Bool)

(assert (=> b!83358 (= e!45194 e!45195)))

(declare-fun res!42872 () Bool)

(assert (=> b!83358 (=> res!42872 e!45195)))

(declare-fun forall!30 (List!675 Int) Bool)

(assert (=> b!83358 (= res!42872 (not (forall!30 (++!83 (quickSort!0 less!5) equal!10) lambda!10283)))))

(declare-fun lt!19385 () Bool)

(assert (=> b!83358 (= lt!19385 (forall_last!0 (t!47913 (++!83 (quickSort!0 less!5) equal!10)) lambda!10283))))

(declare-fun b!83359 () Bool)

(assert (=> b!83359 (= e!45194 e!45196)))

(declare-fun res!42873 () Bool)

(assert (=> b!83359 (=> res!42873 e!45196)))

(assert (=> b!83359 (= res!42873 (not (forall!30 (++!83 (quickSort!0 less!5) equal!10) lambda!10283)))))

(assert (= (and b!83358 (not res!42872)) b!83355))

(assert (= (and b!83355 (not res!42871)) b!83357))

(assert (= (and b!83359 (not res!42873)) b!83354))

(assert (= (and b!83354 (not res!42874)) b!83356))

(assert (= (and d!56497 c!20883) b!83358))

(assert (= (and d!56497 (not c!20883)) b!83359))

(declare-fun b_lambda!16459 () Bool)

(assert (=> (not b_lambda!16459) (not b!83356)))

(declare-fun b_lambda!16461 () Bool)

(assert (=> (not b_lambda!16461) (not b!83357)))

(assert (=> b!83357 m!79078))

(declare-fun m!79088 () Bool)

(assert (=> b!83357 m!79088))

(assert (=> b!83357 m!79088))

(declare-fun m!79090 () Bool)

(assert (=> b!83357 m!79090))

(assert (=> b!83358 m!79078))

(declare-fun m!79092 () Bool)

(assert (=> b!83358 m!79092))

(declare-fun m!79094 () Bool)

(assert (=> b!83358 m!79094))

(assert (=> b!83359 m!79078))

(assert (=> b!83359 m!79092))

(assert (=> b!83355 m!79078))

(declare-fun m!79096 () Bool)

(assert (=> b!83355 m!79096))

(assert (=> b!83354 m!79078))

(assert (=> b!83354 m!79096))

(assert (=> b!83356 m!79078))

(assert (=> b!83356 m!79088))

(assert (=> b!83356 m!79088))

(assert (=> b!83356 m!79090))

(assert (=> b!83337 d!56497))

(declare-fun e!45202 () Bool)

(declare-fun lt!19388 () List!675)

(declare-fun b!83371 () Bool)

(assert (=> b!83371 (= e!45202 (or (not (= equal!10 Nil!634)) (= lt!19388 (quickSort!0 less!5))))))

(declare-fun b!83368 () Bool)

(declare-fun e!45201 () List!675)

(assert (=> b!83368 (= e!45201 equal!10)))

(declare-fun b!83370 () Bool)

(declare-fun res!42881 () Bool)

(assert (=> b!83370 (=> (not res!42881) (not e!45202))))

(declare-fun size!663 (List!675) Int)

(assert (=> b!83370 (= res!42881 (= (size!663 lt!19388) (+ (size!663 (quickSort!0 less!5)) (size!663 equal!10))))))

(declare-fun b!83369 () Bool)

(assert (=> b!83369 (= e!45201 (Cons!632 (h!1002 (quickSort!0 less!5)) (++!83 (t!47913 (quickSort!0 less!5)) equal!10)))))

(declare-fun d!56499 () Bool)

(assert (=> d!56499 e!45202))

(declare-fun res!42880 () Bool)

(assert (=> d!56499 (=> (not res!42880) (not e!45202))))

(declare-fun content!134 (List!675) (Set Int))

(assert (=> d!56499 (= res!42880 (= (content!134 lt!19388) (union (content!134 (quickSort!0 less!5)) (content!134 equal!10))))))

(assert (=> d!56499 (= lt!19388 e!45201)))

(declare-fun c!20886 () Bool)

(assert (=> d!56499 (= c!20886 (is-Nil!634 (quickSort!0 less!5)))))

(assert (=> d!56499 (= (++!83 (quickSort!0 less!5) equal!10) lt!19388)))

(assert (= (and d!56499 c!20886) b!83368))

(assert (= (and d!56499 (not c!20886)) b!83369))

(assert (= (and d!56499 res!42880) b!83370))

(assert (= (and b!83370 res!42881) b!83371))

(declare-fun m!79098 () Bool)

(assert (=> b!83370 m!79098))

(assert (=> b!83370 m!79058))

(declare-fun m!79100 () Bool)

(assert (=> b!83370 m!79100))

(declare-fun m!79102 () Bool)

(assert (=> b!83370 m!79102))

(declare-fun m!79104 () Bool)

(assert (=> b!83369 m!79104))

(declare-fun m!79106 () Bool)

(assert (=> d!56499 m!79106))

(assert (=> d!56499 m!79058))

(declare-fun m!79108 () Bool)

(assert (=> d!56499 m!79108))

(declare-fun m!79110 () Bool)

(assert (=> d!56499 m!79110))

(assert (=> b!83337 d!56499))

(declare-fun bs!40444 () Bool)

(declare-fun b!83383 () Bool)

(assert (= bs!40444 (and b!83383 b!83326)))

(declare-fun lambda!10290 () Int)

(assert (=> bs!40444 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10290 lambda!10280))))

(declare-fun bs!40445 () Bool)

(assert (= bs!40445 (and b!83383 b!83331)))

(assert (=> bs!40445 (not (= lambda!10290 lambda!10281))))

(declare-fun bs!40446 () Bool)

(assert (= bs!40446 (and b!83383 b!83332)))

(assert (=> bs!40446 (not (= lambda!10290 lambda!10282))))

(declare-fun bs!40447 () Bool)

(assert (= bs!40447 (and b!83383 b!83329)))

(assert (=> bs!40447 (not (= lambda!10290 lambda!10283))))

(assert (=> b!83383 true))

(declare-fun lambda!10291 () Int)

(assert (=> bs!40447 (not (= lambda!10291 lambda!10283))))

(assert (=> bs!40446 (not (= lambda!10291 lambda!10282))))

(assert (=> bs!40445 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10291 lambda!10281))))

(assert (=> b!83383 (not (= lambda!10291 lambda!10290))))

(assert (=> bs!40444 (not (= lambda!10291 lambda!10280))))

(assert (=> b!83383 true))

(declare-fun lambda!10292 () Int)

(assert (=> bs!40447 (not (= lambda!10292 lambda!10283))))

(assert (=> bs!40446 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10292 lambda!10282))))

(assert (=> bs!40445 (not (= lambda!10292 lambda!10281))))

(assert (=> b!83383 (not (= lambda!10292 lambda!10291))))

(assert (=> b!83383 (not (= lambda!10292 lambda!10290))))

(assert (=> bs!40444 (not (= lambda!10292 lambda!10280))))

(assert (=> b!83383 true))

(declare-fun e!45208 () List!675)

(assert (=> b!83383 (= e!45208 (++!83 (++!83 (quickSort!0 (filter!28 (t!47913 less!5) lambda!10290)) (Cons!632 (h!1002 less!5) (filter!28 (t!47913 less!5) lambda!10291))) (quickSort!0 (filter!28 (t!47913 less!5) lambda!10292))))))

(declare-fun b!83380 () Bool)

(declare-fun e!45207 () List!675)

(assert (=> b!83380 (= e!45207 Nil!634)))

(declare-fun b!83382 () Bool)

(assert (=> b!83382 (= e!45208 less!5)))

(declare-fun d!56501 () Bool)

(declare-fun c!20891 () Bool)

(assert (=> d!56501 (= c!20891 (is-Nil!634 less!5))))

(assert (=> d!56501 (= (quickSort!0 less!5) e!45207)))

(declare-fun b!83381 () Bool)

(assert (=> b!83381 (= e!45207 e!45208)))

(declare-fun c!20892 () Bool)

(assert (=> b!83381 (= c!20892 (and (is-Cons!632 less!5) (is-Nil!634 (t!47913 less!5))))))

(assert (= (and b!83381 c!20892) b!83382))

(assert (= (and b!83381 (not c!20892)) b!83383))

(assert (= (and d!56501 c!20891) b!83380))

(assert (= (and d!56501 (not c!20891)) b!83381))

(declare-fun m!79112 () Bool)

(assert (=> b!83383 m!79112))

(declare-fun m!79114 () Bool)

(assert (=> b!83383 m!79114))

(declare-fun m!79116 () Bool)

(assert (=> b!83383 m!79116))

(declare-fun m!79118 () Bool)

(assert (=> b!83383 m!79118))

(assert (=> b!83383 m!79114))

(declare-fun m!79120 () Bool)

(assert (=> b!83383 m!79120))

(assert (=> b!83383 m!79112))

(assert (=> b!83383 m!79120))

(assert (=> b!83383 m!79118))

(declare-fun m!79122 () Bool)

(assert (=> b!83383 m!79122))

(declare-fun m!79124 () Bool)

(assert (=> b!83383 m!79124))

(assert (=> b!83383 m!79116))

(assert (=> b!83337 d!56501))

(declare-fun bs!40448 () Bool)

(declare-fun b!83388 () Bool)

(assert (= bs!40448 (and b!83388 b!83329)))

(declare-fun lambda!10299 () Int)

(assert (=> bs!40448 (not (= lambda!10299 lambda!10283))))

(declare-fun bs!40449 () Bool)

(assert (= bs!40449 (and b!83388 b!83332)))

(assert (=> bs!40449 (not (= lambda!10299 lambda!10282))))

(declare-fun bs!40450 () Bool)

(assert (= bs!40450 (and b!83388 b!83331)))

(assert (=> bs!40450 (not (= lambda!10299 lambda!10281))))

(declare-fun bs!40451 () Bool)

(assert (= bs!40451 (and b!83388 b!83383)))

(assert (=> bs!40451 (not (= lambda!10299 lambda!10292))))

(assert (=> bs!40451 (not (= lambda!10299 lambda!10291))))

(assert (=> bs!40451 (= (= (h!1002 more!5) (h!1002 less!5)) (= lambda!10299 lambda!10290))))

(declare-fun bs!40452 () Bool)

(assert (= bs!40452 (and b!83388 b!83326)))

(assert (=> bs!40452 (= (= (h!1002 more!5) (h!1002 ls!96)) (= lambda!10299 lambda!10280))))

(assert (=> b!83388 true))

(declare-fun lambda!10300 () Int)

(assert (=> bs!40448 (not (= lambda!10300 lambda!10283))))

(assert (=> bs!40449 (not (= lambda!10300 lambda!10282))))

(assert (=> bs!40450 (= (= (h!1002 more!5) (h!1002 ls!96)) (= lambda!10300 lambda!10281))))

(assert (=> b!83388 (not (= lambda!10300 lambda!10299))))

(assert (=> bs!40451 (not (= lambda!10300 lambda!10292))))

(assert (=> bs!40451 (= (= (h!1002 more!5) (h!1002 less!5)) (= lambda!10300 lambda!10291))))

(assert (=> bs!40451 (not (= lambda!10300 lambda!10290))))

(assert (=> bs!40452 (not (= lambda!10300 lambda!10280))))

(assert (=> b!83388 true))

(declare-fun lambda!10301 () Int)

(assert (=> bs!40448 (not (= lambda!10301 lambda!10283))))

(assert (=> bs!40449 (= (= (h!1002 more!5) (h!1002 ls!96)) (= lambda!10301 lambda!10282))))

(assert (=> bs!40450 (not (= lambda!10301 lambda!10281))))

(assert (=> b!83388 (not (= lambda!10301 lambda!10300))))

(assert (=> b!83388 (not (= lambda!10301 lambda!10299))))

(assert (=> bs!40451 (= (= (h!1002 more!5) (h!1002 less!5)) (= lambda!10301 lambda!10292))))

(assert (=> bs!40451 (not (= lambda!10301 lambda!10291))))

(assert (=> bs!40451 (not (= lambda!10301 lambda!10290))))

(assert (=> bs!40452 (not (= lambda!10301 lambda!10280))))

(assert (=> b!83388 true))

(declare-fun d!56503 () Bool)

(declare-fun isSorted!1 (List!675) Bool)

(assert (=> d!56503 (isSorted!1 (quickSort!0 more!5))))

(declare-fun lt!19400 () Bool)

(declare-fun e!45213 () Bool)

(assert (=> d!56503 (= lt!19400 e!45213)))

(declare-fun res!42888 () Bool)

(assert (=> d!56503 (=> res!42888 e!45213)))

(assert (=> d!56503 (= res!42888 (or (is-Nil!634 more!5) (and (is-Cons!632 more!5) (is-Nil!634 (t!47913 more!5)))))))

(assert (=> d!56503 (= (sorted_lemma!0 more!5) true)))

(declare-fun e!45214 () Bool)

(assert (=> b!83388 (= e!45213 e!45214)))

(declare-fun res!42889 () Bool)

(assert (=> b!83388 (=> (not res!42889) (not e!45214))))

(declare-fun lt!19398 () List!675)

(declare-fun lt!19397 () List!675)

(assert (=> b!83388 (= res!42889 (append_sorted!0 (quickSort!0 lt!19398) lt!19397))))

(declare-fun lt!19399 () List!675)

(assert (=> b!83388 (= lt!19399 (filter!28 (t!47913 more!5) lambda!10301))))

(assert (=> b!83388 (= lt!19397 (Cons!632 (h!1002 more!5) (filter!28 (t!47913 more!5) lambda!10300)))))

(assert (=> b!83388 (= lt!19398 (filter!28 (t!47913 more!5) lambda!10299))))

(declare-fun b!83389 () Bool)

(assert (=> b!83389 (= e!45214 (append_sorted!0 (++!83 (quickSort!0 lt!19398) lt!19397) (quickSort!0 lt!19399)))))

(assert (= (and d!56503 (not res!42888)) b!83388))

(assert (= (and b!83388 res!42889) b!83389))

(declare-fun m!79126 () Bool)

(assert (=> d!56503 m!79126))

(assert (=> d!56503 m!79126))

(declare-fun m!79128 () Bool)

(assert (=> d!56503 m!79128))

(declare-fun m!79130 () Bool)

(assert (=> b!83388 m!79130))

(declare-fun m!79132 () Bool)

(assert (=> b!83388 m!79132))

(declare-fun m!79134 () Bool)

(assert (=> b!83388 m!79134))

(declare-fun m!79136 () Bool)

(assert (=> b!83388 m!79136))

(assert (=> b!83388 m!79134))

(declare-fun m!79138 () Bool)

(assert (=> b!83388 m!79138))

(assert (=> b!83389 m!79134))

(assert (=> b!83389 m!79134))

(declare-fun m!79140 () Bool)

(assert (=> b!83389 m!79140))

(declare-fun m!79142 () Bool)

(assert (=> b!83389 m!79142))

(assert (=> b!83389 m!79140))

(assert (=> b!83389 m!79142))

(declare-fun m!79144 () Bool)

(assert (=> b!83389 m!79144))

(assert (=> b!83336 d!56503))

(declare-fun bs!40453 () Bool)

(declare-fun b!83400 () Bool)

(assert (= bs!40453 (and b!83400 b!83329)))

(declare-fun lambda!10314 () Int)

(assert (=> bs!40453 (not (= lambda!10314 lambda!10283))))

(declare-fun bs!40454 () Bool)

(assert (= bs!40454 (and b!83400 b!83332)))

(assert (=> bs!40454 (not (= lambda!10314 lambda!10282))))

(declare-fun bs!40455 () Bool)

(assert (= bs!40455 (and b!83400 b!83331)))

(assert (=> bs!40455 (not (= lambda!10314 lambda!10281))))

(declare-fun bs!40456 () Bool)

(assert (= bs!40456 (and b!83400 b!83388)))

(assert (=> bs!40456 (not (= lambda!10314 lambda!10301))))

(assert (=> bs!40456 (not (= lambda!10314 lambda!10300))))

(assert (=> bs!40456 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10314 lambda!10299))))

(declare-fun bs!40457 () Bool)

(assert (= bs!40457 (and b!83400 b!83383)))

(assert (=> bs!40457 (not (= lambda!10314 lambda!10292))))

(assert (=> bs!40457 (not (= lambda!10314 lambda!10291))))

(assert (=> bs!40457 (= lambda!10314 lambda!10290)))

(declare-fun bs!40458 () Bool)

(assert (= bs!40458 (and b!83400 b!83326)))

(assert (=> bs!40458 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10314 lambda!10280))))

(assert (=> b!83400 true))

(declare-fun lambda!10315 () Int)

(assert (=> bs!40453 (not (= lambda!10315 lambda!10283))))

(assert (=> bs!40454 (not (= lambda!10315 lambda!10282))))

(assert (=> bs!40455 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10315 lambda!10281))))

(assert (=> bs!40456 (not (= lambda!10315 lambda!10301))))

(assert (=> bs!40456 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10315 lambda!10300))))

(assert (=> bs!40456 (not (= lambda!10315 lambda!10299))))

(assert (=> bs!40457 (not (= lambda!10315 lambda!10292))))

(assert (=> bs!40457 (= lambda!10315 lambda!10291)))

(assert (=> bs!40457 (not (= lambda!10315 lambda!10290))))

(assert (=> b!83400 (not (= lambda!10315 lambda!10314))))

(assert (=> bs!40458 (not (= lambda!10315 lambda!10280))))

(assert (=> b!83400 true))

(declare-fun lambda!10316 () Int)

(assert (=> bs!40453 (not (= lambda!10316 lambda!10283))))

(assert (=> bs!40454 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10316 lambda!10282))))

(assert (=> bs!40455 (not (= lambda!10316 lambda!10281))))

(assert (=> bs!40456 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10316 lambda!10301))))

(assert (=> bs!40456 (not (= lambda!10316 lambda!10300))))

(assert (=> bs!40456 (not (= lambda!10316 lambda!10299))))

(assert (=> bs!40457 (= lambda!10316 lambda!10292)))

(assert (=> bs!40457 (not (= lambda!10316 lambda!10291))))

(assert (=> bs!40457 (not (= lambda!10316 lambda!10290))))

(assert (=> b!83400 (not (= lambda!10316 lambda!10315))))

(assert (=> b!83400 (not (= lambda!10316 lambda!10314))))

(assert (=> bs!40458 (not (= lambda!10316 lambda!10280))))

(assert (=> b!83400 true))

(declare-fun e!45228 () Bool)

(declare-fun e!45229 () Bool)

(assert (=> b!83400 (= e!45228 e!45229)))

(declare-fun res!42909 () Bool)

(assert (=> b!83400 (=> (not res!42909) (not e!45229))))

(declare-fun lt!19416 () List!675)

(declare-fun lt!19413 () List!675)

(assert (=> b!83400 (= res!42909 (append_preserves_forall!0 (quickSort!0 lt!19413) lt!19416 lambda!10283))))

(declare-fun lt!19415 () Bool)

(declare-fun e!45227 () Bool)

(assert (=> b!83400 (= lt!19415 e!45227)))

(declare-fun res!42906 () Bool)

(assert (=> b!83400 (=> (not res!42906) (not e!45227))))

(assert (=> b!83400 (= res!42906 (sort_preserves_forall!0 lt!19413 lambda!10283))))

(declare-fun lt!19418 () Bool)

(declare-fun e!45225 () Bool)

(assert (=> b!83400 (= lt!19418 e!45225)))

(declare-fun res!42907 () Bool)

(assert (=> b!83400 (=> (not res!42907) (not e!45225))))

(declare-fun e!45226 () Bool)

(assert (=> b!83400 (= res!42907 e!45226)))

(declare-fun res!42908 () Bool)

(assert (=> b!83400 (=> (not res!42908) (not e!45226))))

(declare-fun filter_preserves_forall!0 (List!675 Int Int) Bool)

(assert (=> b!83400 (= res!42908 (filter_preserves_forall!0 (t!47913 less!5) lambda!10314 lambda!10283))))

(declare-fun lt!19417 () List!675)

(assert (=> b!83400 (= lt!19417 (filter!28 (t!47913 less!5) lambda!10316))))

(assert (=> b!83400 (= lt!19416 (Cons!632 (h!1002 less!5) (filter!28 (t!47913 less!5) lambda!10315)))))

(assert (=> b!83400 (= lt!19413 (filter!28 (t!47913 less!5) lambda!10314))))

(declare-fun d!56505 () Bool)

(assert (=> d!56505 (forall!30 (quickSort!0 less!5) lambda!10283)))

(declare-fun lt!19414 () Bool)

(assert (=> d!56505 (= lt!19414 e!45228)))

(declare-fun res!42905 () Bool)

(assert (=> d!56505 (=> res!42905 e!45228)))

(assert (=> d!56505 (= res!42905 (or (is-Nil!634 less!5) (and (is-Cons!632 less!5) (is-Nil!634 (t!47913 less!5)))))))

(assert (=> d!56505 (forall!30 less!5 lambda!10283)))

(assert (=> d!56505 (= (sort_preserves_forall!0 less!5 lambda!10283) true)))

(declare-fun b!83401 () Bool)

(assert (=> b!83401 (= e!45227 (sort_preserves_forall!0 lt!19417 lambda!10283))))

(declare-fun b!83402 () Bool)

(assert (=> b!83402 (= e!45225 (filter_preserves_forall!0 (t!47913 less!5) lambda!10316 lambda!10283))))

(declare-fun b!83403 () Bool)

(assert (=> b!83403 (= e!45226 (filter_preserves_forall!0 (t!47913 less!5) lambda!10315 lambda!10283))))

(declare-fun b!83404 () Bool)

(assert (=> b!83404 (= e!45229 (append_preserves_forall!0 (++!83 (quickSort!0 lt!19413) lt!19416) (quickSort!0 lt!19417) lambda!10283))))

(assert (= (and d!56505 (not res!42905)) b!83400))

(assert (= (and b!83400 res!42908) b!83403))

(assert (= (and b!83400 res!42907) b!83402))

(assert (= (and b!83400 res!42906) b!83401))

(assert (= (and b!83400 res!42909) b!83404))

(declare-fun m!79146 () Bool)

(assert (=> b!83404 m!79146))

(assert (=> b!83404 m!79146))

(declare-fun m!79148 () Bool)

(assert (=> b!83404 m!79148))

(declare-fun m!79150 () Bool)

(assert (=> b!83404 m!79150))

(assert (=> b!83404 m!79148))

(assert (=> b!83404 m!79150))

(declare-fun m!79152 () Bool)

(assert (=> b!83404 m!79152))

(declare-fun m!79154 () Bool)

(assert (=> b!83400 m!79154))

(declare-fun m!79156 () Bool)

(assert (=> b!83400 m!79156))

(declare-fun m!79158 () Bool)

(assert (=> b!83400 m!79158))

(declare-fun m!79160 () Bool)

(assert (=> b!83400 m!79160))

(assert (=> b!83400 m!79146))

(assert (=> b!83400 m!79146))

(declare-fun m!79162 () Bool)

(assert (=> b!83400 m!79162))

(declare-fun m!79164 () Bool)

(assert (=> b!83400 m!79164))

(assert (=> d!56505 m!79058))

(assert (=> d!56505 m!79058))

(declare-fun m!79166 () Bool)

(assert (=> d!56505 m!79166))

(declare-fun m!79168 () Bool)

(assert (=> d!56505 m!79168))

(declare-fun m!79170 () Bool)

(assert (=> b!83402 m!79170))

(declare-fun m!79172 () Bool)

(assert (=> b!83401 m!79172))

(declare-fun m!79174 () Bool)

(assert (=> b!83403 m!79174))

(assert (=> b!83329 d!56505))

(declare-fun bs!40459 () Bool)

(declare-fun d!56507 () Bool)

(assert (= bs!40459 (and d!56507 b!83329)))

(declare-fun lambda!10323 () Int)

(assert (=> bs!40459 (not (= lambda!10323 lambda!10283))))

(declare-fun bs!40460 () Bool)

(assert (= bs!40460 (and d!56507 b!83332)))

(assert (=> bs!40460 (not (= lambda!10323 lambda!10282))))

(declare-fun bs!40461 () Bool)

(assert (= bs!40461 (and d!56507 b!83331)))

(assert (=> bs!40461 (not (= lambda!10323 lambda!10281))))

(declare-fun bs!40462 () Bool)

(assert (= bs!40462 (and d!56507 b!83388)))

(assert (=> bs!40462 (not (= lambda!10323 lambda!10301))))

(assert (=> bs!40462 (not (= lambda!10323 lambda!10300))))

(assert (=> bs!40462 (= (= (h!1002 ls!96) (h!1002 more!5)) (= lambda!10323 lambda!10299))))

(declare-fun bs!40463 () Bool)

(assert (= bs!40463 (and d!56507 b!83383)))

(assert (=> bs!40463 (not (= lambda!10323 lambda!10292))))

(assert (=> bs!40463 (not (= lambda!10323 lambda!10291))))

(assert (=> bs!40463 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10323 lambda!10290))))

(declare-fun bs!40464 () Bool)

(assert (= bs!40464 (and d!56507 b!83400)))

(assert (=> bs!40464 (not (= lambda!10323 lambda!10316))))

(assert (=> bs!40464 (not (= lambda!10323 lambda!10315))))

(assert (=> bs!40464 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10323 lambda!10314))))

(declare-fun bs!40465 () Bool)

(assert (= bs!40465 (and d!56507 b!83326)))

(assert (=> bs!40465 (= lambda!10323 lambda!10280)))

(assert (=> d!56507 true))

(declare-fun bs!40466 () Bool)

(declare-fun b!83409 () Bool)

(assert (= bs!40466 (and b!83409 b!83329)))

(declare-fun lambda!10324 () Int)

(assert (=> bs!40466 (= lambda!10324 lambda!10283)))

(declare-fun bs!40467 () Bool)

(assert (= bs!40467 (and b!83409 b!83332)))

(assert (=> bs!40467 (not (= lambda!10324 lambda!10282))))

(declare-fun bs!40468 () Bool)

(assert (= bs!40468 (and b!83409 d!56507)))

(assert (=> bs!40468 (not (= lambda!10324 lambda!10323))))

(declare-fun bs!40469 () Bool)

(assert (= bs!40469 (and b!83409 b!83331)))

(assert (=> bs!40469 (not (= lambda!10324 lambda!10281))))

(declare-fun bs!40470 () Bool)

(assert (= bs!40470 (and b!83409 b!83388)))

(assert (=> bs!40470 (not (= lambda!10324 lambda!10301))))

(assert (=> bs!40470 (not (= lambda!10324 lambda!10300))))

(assert (=> bs!40470 (not (= lambda!10324 lambda!10299))))

(declare-fun bs!40471 () Bool)

(assert (= bs!40471 (and b!83409 b!83383)))

(assert (=> bs!40471 (not (= lambda!10324 lambda!10292))))

(assert (=> bs!40471 (not (= lambda!10324 lambda!10291))))

(assert (=> bs!40471 (not (= lambda!10324 lambda!10290))))

(declare-fun bs!40472 () Bool)

(assert (= bs!40472 (and b!83409 b!83400)))

(assert (=> bs!40472 (not (= lambda!10324 lambda!10316))))

(assert (=> bs!40472 (not (= lambda!10324 lambda!10315))))

(assert (=> bs!40472 (not (= lambda!10324 lambda!10314))))

(declare-fun bs!40473 () Bool)

(assert (= bs!40473 (and b!83409 b!83326)))

(assert (=> bs!40473 (not (= lambda!10324 lambda!10280))))

(assert (=> b!83409 true))

(declare-fun bs!40474 () Bool)

(declare-fun b!83410 () Bool)

(assert (= bs!40474 (and b!83410 b!83329)))

(declare-fun lambda!10325 () Int)

(assert (=> bs!40474 (= lambda!10325 lambda!10283)))

(declare-fun bs!40475 () Bool)

(assert (= bs!40475 (and b!83410 b!83332)))

(assert (=> bs!40475 (not (= lambda!10325 lambda!10282))))

(declare-fun bs!40476 () Bool)

(assert (= bs!40476 (and b!83410 d!56507)))

(assert (=> bs!40476 (not (= lambda!10325 lambda!10323))))

(declare-fun bs!40477 () Bool)

(assert (= bs!40477 (and b!83410 b!83331)))

(assert (=> bs!40477 (not (= lambda!10325 lambda!10281))))

(declare-fun bs!40478 () Bool)

(assert (= bs!40478 (and b!83410 b!83388)))

(assert (=> bs!40478 (not (= lambda!10325 lambda!10301))))

(assert (=> bs!40478 (not (= lambda!10325 lambda!10300))))

(assert (=> bs!40478 (not (= lambda!10325 lambda!10299))))

(declare-fun bs!40479 () Bool)

(assert (= bs!40479 (and b!83410 b!83383)))

(assert (=> bs!40479 (not (= lambda!10325 lambda!10292))))

(assert (=> bs!40479 (not (= lambda!10325 lambda!10291))))

(assert (=> bs!40479 (not (= lambda!10325 lambda!10290))))

(declare-fun bs!40480 () Bool)

(assert (= bs!40480 (and b!83410 b!83400)))

(assert (=> bs!40480 (not (= lambda!10325 lambda!10316))))

(assert (=> bs!40480 (not (= lambda!10325 lambda!10315))))

(assert (=> bs!40480 (not (= lambda!10325 lambda!10314))))

(declare-fun bs!40481 () Bool)

(assert (= bs!40481 (and b!83410 b!83409)))

(assert (=> bs!40481 (= lambda!10325 lambda!10324)))

(declare-fun bs!40482 () Bool)

(assert (= bs!40482 (and b!83410 b!83326)))

(assert (=> bs!40482 (not (= lambda!10325 lambda!10280))))

(assert (=> b!83410 true))

(declare-fun e!45232 () Bool)

(assert (=> d!56507 e!45232))

(declare-fun c!20895 () Bool)

(assert (=> d!56507 (= c!20895 (is-Cons!632 less!5))))

(assert (=> d!56507 (forall!30 less!5 lambda!10323)))

(assert (=> d!56507 (= (forall_lt_implies_le!0 less!5 (h!1002 ls!96)) true)))

(assert (=> b!83409 (= e!45232 (forall!30 less!5 lambda!10324))))

(declare-fun lt!19421 () Bool)

(assert (=> b!83409 (= lt!19421 (forall_lt_implies_le!0 (t!47913 less!5) (h!1002 ls!96)))))

(assert (=> b!83410 (= e!45232 (forall!30 less!5 lambda!10325))))

(assert (= (and d!56507 c!20895) b!83409))

(assert (= (and d!56507 (not c!20895)) b!83410))

(declare-fun m!79176 () Bool)

(assert (=> d!56507 m!79176))

(declare-fun m!79178 () Bool)

(assert (=> b!83409 m!79178))

(declare-fun m!79180 () Bool)

(assert (=> b!83409 m!79180))

(declare-fun m!79182 () Bool)

(assert (=> b!83410 m!79182))

(assert (=> b!83334 d!56507))

(declare-fun d!56509 () Bool)

(declare-fun e!45238 () Bool)

(assert (=> d!56509 e!45238))

(declare-fun c!20898 () Bool)

(assert (=> d!56509 (= c!20898 (is-Cons!632 (quickSort!0 less!5)))))

(declare-fun e!45237 () Bool)

(assert (=> d!56509 e!45237))

(declare-fun res!42912 () Bool)

(assert (=> d!56509 (=> (not res!42912) (not e!45237))))

(assert (=> d!56509 (= res!42912 (forall!30 (quickSort!0 less!5) lambda!10283))))

(assert (=> d!56509 (= (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10283) true)))

(declare-fun b!83419 () Bool)

(assert (=> b!83419 (= e!45237 (forall!30 equal!10 lambda!10283))))

(declare-fun b!83420 () Bool)

(assert (=> b!83420 (= e!45238 (forall!30 (++!83 (quickSort!0 less!5) equal!10) lambda!10283))))

(declare-fun lt!19424 () Bool)

(assert (=> b!83420 (= lt!19424 (append_preserves_forall!0 (t!47913 (quickSort!0 less!5)) equal!10 lambda!10283))))

(declare-fun b!83421 () Bool)

(assert (=> b!83421 (= e!45238 (forall!30 (++!83 (quickSort!0 less!5) equal!10) lambda!10283))))

(assert (= (and d!56509 res!42912) b!83419))

(assert (= (and d!56509 c!20898) b!83420))

(assert (= (and d!56509 (not c!20898)) b!83421))

(assert (=> d!56509 m!79058))

(assert (=> d!56509 m!79166))

(declare-fun m!79184 () Bool)

(assert (=> b!83419 m!79184))

(assert (=> b!83420 m!79058))

(assert (=> b!83420 m!79078))

(assert (=> b!83420 m!79078))

(assert (=> b!83420 m!79092))

(declare-fun m!79186 () Bool)

(assert (=> b!83420 m!79186))

(assert (=> b!83421 m!79058))

(assert (=> b!83421 m!79078))

(assert (=> b!83421 m!79078))

(assert (=> b!83421 m!79092))

(assert (=> b!83339 d!56509))

(assert (=> b!83339 d!56501))

(declare-fun bs!40483 () Bool)

(declare-fun b!83422 () Bool)

(assert (= bs!40483 (and b!83422 b!83329)))

(declare-fun lambda!10326 () Int)

(assert (=> bs!40483 (not (= lambda!10326 lambda!10283))))

(declare-fun bs!40484 () Bool)

(assert (= bs!40484 (and b!83422 b!83332)))

(assert (=> bs!40484 (not (= lambda!10326 lambda!10282))))

(declare-fun bs!40485 () Bool)

(assert (= bs!40485 (and b!83422 d!56507)))

(assert (=> bs!40485 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10326 lambda!10323))))

(declare-fun bs!40486 () Bool)

(assert (= bs!40486 (and b!83422 b!83331)))

(assert (=> bs!40486 (not (= lambda!10326 lambda!10281))))

(declare-fun bs!40487 () Bool)

(assert (= bs!40487 (and b!83422 b!83388)))

(assert (=> bs!40487 (not (= lambda!10326 lambda!10301))))

(assert (=> bs!40487 (not (= lambda!10326 lambda!10300))))

(assert (=> bs!40487 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10326 lambda!10299))))

(declare-fun bs!40488 () Bool)

(assert (= bs!40488 (and b!83422 b!83410)))

(assert (=> bs!40488 (not (= lambda!10326 lambda!10325))))

(declare-fun bs!40489 () Bool)

(assert (= bs!40489 (and b!83422 b!83383)))

(assert (=> bs!40489 (not (= lambda!10326 lambda!10292))))

(assert (=> bs!40489 (not (= lambda!10326 lambda!10291))))

(assert (=> bs!40489 (= lambda!10326 lambda!10290)))

(declare-fun bs!40490 () Bool)

(assert (= bs!40490 (and b!83422 b!83400)))

(assert (=> bs!40490 (not (= lambda!10326 lambda!10316))))

(assert (=> bs!40490 (not (= lambda!10326 lambda!10315))))

(assert (=> bs!40490 (= lambda!10326 lambda!10314)))

(declare-fun bs!40491 () Bool)

(assert (= bs!40491 (and b!83422 b!83409)))

(assert (=> bs!40491 (not (= lambda!10326 lambda!10324))))

(declare-fun bs!40492 () Bool)

(assert (= bs!40492 (and b!83422 b!83326)))

(assert (=> bs!40492 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10326 lambda!10280))))

(assert (=> b!83422 true))

(declare-fun lambda!10327 () Int)

(assert (=> bs!40483 (not (= lambda!10327 lambda!10283))))

(assert (=> bs!40484 (not (= lambda!10327 lambda!10282))))

(assert (=> bs!40485 (not (= lambda!10327 lambda!10323))))

(assert (=> bs!40486 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10327 lambda!10281))))

(assert (=> bs!40487 (not (= lambda!10327 lambda!10301))))

(assert (=> bs!40487 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10327 lambda!10300))))

(assert (=> bs!40487 (not (= lambda!10327 lambda!10299))))

(assert (=> bs!40488 (not (= lambda!10327 lambda!10325))))

(assert (=> b!83422 (not (= lambda!10327 lambda!10326))))

(assert (=> bs!40489 (not (= lambda!10327 lambda!10292))))

(assert (=> bs!40489 (= lambda!10327 lambda!10291)))

(assert (=> bs!40489 (not (= lambda!10327 lambda!10290))))

(assert (=> bs!40490 (not (= lambda!10327 lambda!10316))))

(assert (=> bs!40490 (= lambda!10327 lambda!10315)))

(assert (=> bs!40490 (not (= lambda!10327 lambda!10314))))

(assert (=> bs!40491 (not (= lambda!10327 lambda!10324))))

(assert (=> bs!40492 (not (= lambda!10327 lambda!10280))))

(assert (=> b!83422 true))

(declare-fun lambda!10328 () Int)

(assert (=> bs!40483 (not (= lambda!10328 lambda!10283))))

(assert (=> bs!40484 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10328 lambda!10282))))

(assert (=> bs!40485 (not (= lambda!10328 lambda!10323))))

(assert (=> bs!40486 (not (= lambda!10328 lambda!10281))))

(assert (=> bs!40487 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10328 lambda!10301))))

(assert (=> bs!40487 (not (= lambda!10328 lambda!10300))))

(assert (=> bs!40487 (not (= lambda!10328 lambda!10299))))

(assert (=> bs!40488 (not (= lambda!10328 lambda!10325))))

(assert (=> b!83422 (not (= lambda!10328 lambda!10327))))

(assert (=> b!83422 (not (= lambda!10328 lambda!10326))))

(assert (=> bs!40489 (= lambda!10328 lambda!10292)))

(assert (=> bs!40489 (not (= lambda!10328 lambda!10291))))

(assert (=> bs!40489 (not (= lambda!10328 lambda!10290))))

(assert (=> bs!40490 (= lambda!10328 lambda!10316)))

(assert (=> bs!40490 (not (= lambda!10328 lambda!10315))))

(assert (=> bs!40490 (not (= lambda!10328 lambda!10314))))

(assert (=> bs!40491 (not (= lambda!10328 lambda!10324))))

(assert (=> bs!40492 (not (= lambda!10328 lambda!10280))))

(assert (=> b!83422 true))

(declare-fun e!45242 () Bool)

(declare-fun e!45243 () Bool)

(assert (=> b!83422 (= e!45242 e!45243)))

(declare-fun res!42917 () Bool)

(assert (=> b!83422 (=> (not res!42917) (not e!45243))))

(declare-fun lt!19425 () List!675)

(declare-fun lt!19428 () List!675)

(assert (=> b!83422 (= res!42917 (append_preserves_forall!0 (quickSort!0 lt!19425) lt!19428 lambda!10280))))

(declare-fun lt!19427 () Bool)

(declare-fun e!45241 () Bool)

(assert (=> b!83422 (= lt!19427 e!45241)))

(declare-fun res!42914 () Bool)

(assert (=> b!83422 (=> (not res!42914) (not e!45241))))

(assert (=> b!83422 (= res!42914 (sort_preserves_forall!0 lt!19425 lambda!10280))))

(declare-fun lt!19430 () Bool)

(declare-fun e!45239 () Bool)

(assert (=> b!83422 (= lt!19430 e!45239)))

(declare-fun res!42915 () Bool)

(assert (=> b!83422 (=> (not res!42915) (not e!45239))))

(declare-fun e!45240 () Bool)

(assert (=> b!83422 (= res!42915 e!45240)))

(declare-fun res!42916 () Bool)

(assert (=> b!83422 (=> (not res!42916) (not e!45240))))

(assert (=> b!83422 (= res!42916 (filter_preserves_forall!0 (t!47913 less!5) lambda!10326 lambda!10280))))

(declare-fun lt!19429 () List!675)

(assert (=> b!83422 (= lt!19429 (filter!28 (t!47913 less!5) lambda!10328))))

(assert (=> b!83422 (= lt!19428 (Cons!632 (h!1002 less!5) (filter!28 (t!47913 less!5) lambda!10327)))))

(assert (=> b!83422 (= lt!19425 (filter!28 (t!47913 less!5) lambda!10326))))

(declare-fun d!56511 () Bool)

(assert (=> d!56511 (forall!30 (quickSort!0 less!5) lambda!10280)))

(declare-fun lt!19426 () Bool)

(assert (=> d!56511 (= lt!19426 e!45242)))

(declare-fun res!42913 () Bool)

(assert (=> d!56511 (=> res!42913 e!45242)))

(assert (=> d!56511 (= res!42913 (or (is-Nil!634 less!5) (and (is-Cons!632 less!5) (is-Nil!634 (t!47913 less!5)))))))

(assert (=> d!56511 (forall!30 less!5 lambda!10280)))

(assert (=> d!56511 (= (sort_preserves_forall!0 less!5 lambda!10280) true)))

(declare-fun b!83423 () Bool)

(assert (=> b!83423 (= e!45241 (sort_preserves_forall!0 lt!19429 lambda!10280))))

(declare-fun b!83424 () Bool)

(assert (=> b!83424 (= e!45239 (filter_preserves_forall!0 (t!47913 less!5) lambda!10328 lambda!10280))))

(declare-fun b!83425 () Bool)

(assert (=> b!83425 (= e!45240 (filter_preserves_forall!0 (t!47913 less!5) lambda!10327 lambda!10280))))

(declare-fun b!83426 () Bool)

(assert (=> b!83426 (= e!45243 (append_preserves_forall!0 (++!83 (quickSort!0 lt!19425) lt!19428) (quickSort!0 lt!19429) lambda!10280))))

(assert (= (and d!56511 (not res!42913)) b!83422))

(assert (= (and b!83422 res!42916) b!83425))

(assert (= (and b!83422 res!42915) b!83424))

(assert (= (and b!83422 res!42914) b!83423))

(assert (= (and b!83422 res!42917) b!83426))

(declare-fun m!79188 () Bool)

(assert (=> b!83426 m!79188))

(assert (=> b!83426 m!79188))

(declare-fun m!79190 () Bool)

(assert (=> b!83426 m!79190))

(declare-fun m!79192 () Bool)

(assert (=> b!83426 m!79192))

(assert (=> b!83426 m!79190))

(assert (=> b!83426 m!79192))

(declare-fun m!79194 () Bool)

(assert (=> b!83426 m!79194))

(declare-fun m!79196 () Bool)

(assert (=> b!83422 m!79196))

(declare-fun m!79198 () Bool)

(assert (=> b!83422 m!79198))

(declare-fun m!79200 () Bool)

(assert (=> b!83422 m!79200))

(declare-fun m!79202 () Bool)

(assert (=> b!83422 m!79202))

(assert (=> b!83422 m!79188))

(assert (=> b!83422 m!79188))

(declare-fun m!79204 () Bool)

(assert (=> b!83422 m!79204))

(declare-fun m!79206 () Bool)

(assert (=> b!83422 m!79206))

(assert (=> d!56511 m!79058))

(assert (=> d!56511 m!79058))

(declare-fun m!79208 () Bool)

(assert (=> d!56511 m!79208))

(declare-fun m!79210 () Bool)

(assert (=> d!56511 m!79210))

(declare-fun m!79212 () Bool)

(assert (=> b!83424 m!79212))

(declare-fun m!79214 () Bool)

(assert (=> b!83423 m!79214))

(declare-fun m!79216 () Bool)

(assert (=> b!83425 m!79216))

(assert (=> b!83335 d!56511))

(declare-fun bs!40493 () Bool)

(declare-fun d!56513 () Bool)

(assert (= bs!40493 (and d!56513 b!83329)))

(declare-fun lambda!10335 () Int)

(assert (=> bs!40493 (not (= lambda!10335 lambda!10283))))

(declare-fun bs!40494 () Bool)

(assert (= bs!40494 (and d!56513 b!83332)))

(assert (=> bs!40494 (not (= lambda!10335 lambda!10282))))

(declare-fun bs!40495 () Bool)

(assert (= bs!40495 (and d!56513 d!56507)))

(assert (=> bs!40495 (not (= lambda!10335 lambda!10323))))

(declare-fun bs!40496 () Bool)

(assert (= bs!40496 (and d!56513 b!83331)))

(assert (=> bs!40496 (= lambda!10335 lambda!10281)))

(declare-fun bs!40497 () Bool)

(assert (= bs!40497 (and d!56513 b!83388)))

(assert (=> bs!40497 (not (= lambda!10335 lambda!10301))))

(assert (=> bs!40497 (= (= (h!1002 ls!96) (h!1002 more!5)) (= lambda!10335 lambda!10300))))

(assert (=> bs!40497 (not (= lambda!10335 lambda!10299))))

(declare-fun bs!40498 () Bool)

(assert (= bs!40498 (and d!56513 b!83410)))

(assert (=> bs!40498 (not (= lambda!10335 lambda!10325))))

(declare-fun bs!40499 () Bool)

(assert (= bs!40499 (and d!56513 b!83422)))

(assert (=> bs!40499 (not (= lambda!10335 lambda!10328))))

(assert (=> bs!40499 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10335 lambda!10327))))

(assert (=> bs!40499 (not (= lambda!10335 lambda!10326))))

(declare-fun bs!40500 () Bool)

(assert (= bs!40500 (and d!56513 b!83383)))

(assert (=> bs!40500 (not (= lambda!10335 lambda!10292))))

(assert (=> bs!40500 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10335 lambda!10291))))

(assert (=> bs!40500 (not (= lambda!10335 lambda!10290))))

(declare-fun bs!40501 () Bool)

(assert (= bs!40501 (and d!56513 b!83400)))

(assert (=> bs!40501 (not (= lambda!10335 lambda!10316))))

(assert (=> bs!40501 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10335 lambda!10315))))

(assert (=> bs!40501 (not (= lambda!10335 lambda!10314))))

(declare-fun bs!40502 () Bool)

(assert (= bs!40502 (and d!56513 b!83409)))

(assert (=> bs!40502 (not (= lambda!10335 lambda!10324))))

(declare-fun bs!40503 () Bool)

(assert (= bs!40503 (and d!56513 b!83326)))

(assert (=> bs!40503 (not (= lambda!10335 lambda!10280))))

(assert (=> d!56513 true))

(declare-fun bs!40504 () Bool)

(declare-fun b!83431 () Bool)

(assert (= bs!40504 (and b!83431 b!83329)))

(declare-fun lambda!10336 () Int)

(assert (=> bs!40504 (= lambda!10336 lambda!10283)))

(declare-fun bs!40505 () Bool)

(assert (= bs!40505 (and b!83431 b!83332)))

(assert (=> bs!40505 (not (= lambda!10336 lambda!10282))))

(declare-fun bs!40506 () Bool)

(assert (= bs!40506 (and b!83431 d!56507)))

(assert (=> bs!40506 (not (= lambda!10336 lambda!10323))))

(declare-fun bs!40507 () Bool)

(assert (= bs!40507 (and b!83431 b!83331)))

(assert (=> bs!40507 (not (= lambda!10336 lambda!10281))))

(declare-fun bs!40508 () Bool)

(assert (= bs!40508 (and b!83431 b!83388)))

(assert (=> bs!40508 (not (= lambda!10336 lambda!10301))))

(assert (=> bs!40508 (not (= lambda!10336 lambda!10300))))

(assert (=> bs!40508 (not (= lambda!10336 lambda!10299))))

(declare-fun bs!40509 () Bool)

(assert (= bs!40509 (and b!83431 b!83410)))

(assert (=> bs!40509 (= lambda!10336 lambda!10325)))

(declare-fun bs!40510 () Bool)

(assert (= bs!40510 (and b!83431 b!83422)))

(assert (=> bs!40510 (not (= lambda!10336 lambda!10328))))

(assert (=> bs!40510 (not (= lambda!10336 lambda!10327))))

(assert (=> bs!40510 (not (= lambda!10336 lambda!10326))))

(declare-fun bs!40511 () Bool)

(assert (= bs!40511 (and b!83431 b!83383)))

(assert (=> bs!40511 (not (= lambda!10336 lambda!10292))))

(assert (=> bs!40511 (not (= lambda!10336 lambda!10291))))

(assert (=> bs!40511 (not (= lambda!10336 lambda!10290))))

(declare-fun bs!40512 () Bool)

(assert (= bs!40512 (and b!83431 d!56513)))

(assert (=> bs!40512 (not (= lambda!10336 lambda!10335))))

(declare-fun bs!40513 () Bool)

(assert (= bs!40513 (and b!83431 b!83400)))

(assert (=> bs!40513 (not (= lambda!10336 lambda!10316))))

(assert (=> bs!40513 (not (= lambda!10336 lambda!10315))))

(assert (=> bs!40513 (not (= lambda!10336 lambda!10314))))

(declare-fun bs!40514 () Bool)

(assert (= bs!40514 (and b!83431 b!83409)))

(assert (=> bs!40514 (= lambda!10336 lambda!10324)))

(declare-fun bs!40515 () Bool)

(assert (= bs!40515 (and b!83431 b!83326)))

(assert (=> bs!40515 (not (= lambda!10336 lambda!10280))))

(assert (=> b!83431 true))

(declare-fun bs!40516 () Bool)

(declare-fun b!83432 () Bool)

(assert (= bs!40516 (and b!83432 b!83329)))

(declare-fun lambda!10337 () Int)

(assert (=> bs!40516 (= lambda!10337 lambda!10283)))

(declare-fun bs!40517 () Bool)

(assert (= bs!40517 (and b!83432 b!83332)))

(assert (=> bs!40517 (not (= lambda!10337 lambda!10282))))

(declare-fun bs!40518 () Bool)

(assert (= bs!40518 (and b!83432 d!56507)))

(assert (=> bs!40518 (not (= lambda!10337 lambda!10323))))

(declare-fun bs!40519 () Bool)

(assert (= bs!40519 (and b!83432 b!83431)))

(assert (=> bs!40519 (= lambda!10337 lambda!10336)))

(declare-fun bs!40520 () Bool)

(assert (= bs!40520 (and b!83432 b!83331)))

(assert (=> bs!40520 (not (= lambda!10337 lambda!10281))))

(declare-fun bs!40521 () Bool)

(assert (= bs!40521 (and b!83432 b!83388)))

(assert (=> bs!40521 (not (= lambda!10337 lambda!10301))))

(assert (=> bs!40521 (not (= lambda!10337 lambda!10300))))

(assert (=> bs!40521 (not (= lambda!10337 lambda!10299))))

(declare-fun bs!40522 () Bool)

(assert (= bs!40522 (and b!83432 b!83410)))

(assert (=> bs!40522 (= lambda!10337 lambda!10325)))

(declare-fun bs!40523 () Bool)

(assert (= bs!40523 (and b!83432 b!83422)))

(assert (=> bs!40523 (not (= lambda!10337 lambda!10328))))

(assert (=> bs!40523 (not (= lambda!10337 lambda!10327))))

(assert (=> bs!40523 (not (= lambda!10337 lambda!10326))))

(declare-fun bs!40524 () Bool)

(assert (= bs!40524 (and b!83432 b!83383)))

(assert (=> bs!40524 (not (= lambda!10337 lambda!10292))))

(assert (=> bs!40524 (not (= lambda!10337 lambda!10291))))

(assert (=> bs!40524 (not (= lambda!10337 lambda!10290))))

(declare-fun bs!40525 () Bool)

(assert (= bs!40525 (and b!83432 d!56513)))

(assert (=> bs!40525 (not (= lambda!10337 lambda!10335))))

(declare-fun bs!40526 () Bool)

(assert (= bs!40526 (and b!83432 b!83400)))

(assert (=> bs!40526 (not (= lambda!10337 lambda!10316))))

(assert (=> bs!40526 (not (= lambda!10337 lambda!10315))))

(assert (=> bs!40526 (not (= lambda!10337 lambda!10314))))

(declare-fun bs!40527 () Bool)

(assert (= bs!40527 (and b!83432 b!83409)))

(assert (=> bs!40527 (= lambda!10337 lambda!10324)))

(declare-fun bs!40528 () Bool)

(assert (= bs!40528 (and b!83432 b!83326)))

(assert (=> bs!40528 (not (= lambda!10337 lambda!10280))))

(assert (=> b!83432 true))

(declare-fun e!45246 () Bool)

(assert (=> d!56513 e!45246))

(declare-fun c!20901 () Bool)

(assert (=> d!56513 (= c!20901 (is-Cons!632 equal!10))))

(assert (=> d!56513 (forall!30 equal!10 lambda!10335)))

(assert (=> d!56513 (= (forall_eq_implies_le!0 equal!10 (h!1002 ls!96)) true)))

(assert (=> b!83431 (= e!45246 (forall!30 equal!10 lambda!10336))))

(declare-fun lt!19433 () Bool)

(assert (=> b!83431 (= lt!19433 (forall_eq_implies_le!0 (t!47913 equal!10) (h!1002 ls!96)))))

(assert (=> b!83432 (= e!45246 (forall!30 equal!10 lambda!10337))))

(assert (= (and d!56513 c!20901) b!83431))

(assert (= (and d!56513 (not c!20901)) b!83432))

(declare-fun m!79218 () Bool)

(assert (=> d!56513 m!79218))

(declare-fun m!79220 () Bool)

(assert (=> b!83431 m!79220))

(declare-fun m!79222 () Bool)

(assert (=> b!83431 m!79222))

(declare-fun m!79224 () Bool)

(assert (=> b!83432 m!79224))

(assert (=> b!83328 d!56513))

(declare-fun bs!40529 () Bool)

(declare-fun b!83433 () Bool)

(assert (= bs!40529 (and b!83433 b!83329)))

(declare-fun lambda!10338 () Int)

(assert (=> bs!40529 (not (= lambda!10338 lambda!10283))))

(declare-fun bs!40530 () Bool)

(assert (= bs!40530 (and b!83433 b!83332)))

(assert (=> bs!40530 (not (= lambda!10338 lambda!10282))))

(declare-fun bs!40531 () Bool)

(assert (= bs!40531 (and b!83433 d!56507)))

(assert (=> bs!40531 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10338 lambda!10323))))

(declare-fun bs!40532 () Bool)

(assert (= bs!40532 (and b!83433 b!83431)))

(assert (=> bs!40532 (not (= lambda!10338 lambda!10336))))

(declare-fun bs!40533 () Bool)

(assert (= bs!40533 (and b!83433 b!83331)))

(assert (=> bs!40533 (not (= lambda!10338 lambda!10281))))

(declare-fun bs!40534 () Bool)

(assert (= bs!40534 (and b!83433 b!83388)))

(assert (=> bs!40534 (not (= lambda!10338 lambda!10301))))

(assert (=> bs!40534 (not (= lambda!10338 lambda!10300))))

(assert (=> bs!40534 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10338 lambda!10299))))

(declare-fun bs!40535 () Bool)

(assert (= bs!40535 (and b!83433 b!83432)))

(assert (=> bs!40535 (not (= lambda!10338 lambda!10337))))

(declare-fun bs!40536 () Bool)

(assert (= bs!40536 (and b!83433 b!83410)))

(assert (=> bs!40536 (not (= lambda!10338 lambda!10325))))

(declare-fun bs!40537 () Bool)

(assert (= bs!40537 (and b!83433 b!83422)))

(assert (=> bs!40537 (not (= lambda!10338 lambda!10328))))

(assert (=> bs!40537 (not (= lambda!10338 lambda!10327))))

(assert (=> bs!40537 (= lambda!10338 lambda!10326)))

(declare-fun bs!40538 () Bool)

(assert (= bs!40538 (and b!83433 b!83383)))

(assert (=> bs!40538 (not (= lambda!10338 lambda!10292))))

(assert (=> bs!40538 (not (= lambda!10338 lambda!10291))))

(assert (=> bs!40538 (= lambda!10338 lambda!10290)))

(declare-fun bs!40539 () Bool)

(assert (= bs!40539 (and b!83433 d!56513)))

(assert (=> bs!40539 (not (= lambda!10338 lambda!10335))))

(declare-fun bs!40540 () Bool)

(assert (= bs!40540 (and b!83433 b!83400)))

(assert (=> bs!40540 (not (= lambda!10338 lambda!10316))))

(assert (=> bs!40540 (not (= lambda!10338 lambda!10315))))

(assert (=> bs!40540 (= lambda!10338 lambda!10314)))

(declare-fun bs!40541 () Bool)

(assert (= bs!40541 (and b!83433 b!83409)))

(assert (=> bs!40541 (not (= lambda!10338 lambda!10324))))

(declare-fun bs!40542 () Bool)

(assert (= bs!40542 (and b!83433 b!83326)))

(assert (=> bs!40542 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10338 lambda!10280))))

(assert (=> b!83433 true))

(declare-fun lambda!10339 () Int)

(assert (=> bs!40529 (not (= lambda!10339 lambda!10283))))

(assert (=> bs!40530 (not (= lambda!10339 lambda!10282))))

(assert (=> bs!40531 (not (= lambda!10339 lambda!10323))))

(assert (=> bs!40532 (not (= lambda!10339 lambda!10336))))

(assert (=> bs!40533 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10339 lambda!10281))))

(assert (=> b!83433 (not (= lambda!10339 lambda!10338))))

(assert (=> bs!40534 (not (= lambda!10339 lambda!10301))))

(assert (=> bs!40534 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10339 lambda!10300))))

(assert (=> bs!40534 (not (= lambda!10339 lambda!10299))))

(assert (=> bs!40535 (not (= lambda!10339 lambda!10337))))

(assert (=> bs!40536 (not (= lambda!10339 lambda!10325))))

(assert (=> bs!40537 (not (= lambda!10339 lambda!10328))))

(assert (=> bs!40537 (= lambda!10339 lambda!10327)))

(assert (=> bs!40537 (not (= lambda!10339 lambda!10326))))

(assert (=> bs!40538 (not (= lambda!10339 lambda!10292))))

(assert (=> bs!40538 (= lambda!10339 lambda!10291)))

(assert (=> bs!40538 (not (= lambda!10339 lambda!10290))))

(assert (=> bs!40539 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10339 lambda!10335))))

(assert (=> bs!40540 (not (= lambda!10339 lambda!10316))))

(assert (=> bs!40540 (= lambda!10339 lambda!10315)))

(assert (=> bs!40540 (not (= lambda!10339 lambda!10314))))

(assert (=> bs!40541 (not (= lambda!10339 lambda!10324))))

(assert (=> bs!40542 (not (= lambda!10339 lambda!10280))))

(assert (=> b!83433 true))

(declare-fun lambda!10340 () Int)

(assert (=> bs!40529 (not (= lambda!10340 lambda!10283))))

(assert (=> bs!40530 (= (= (h!1002 less!5) (h!1002 ls!96)) (= lambda!10340 lambda!10282))))

(assert (=> bs!40531 (not (= lambda!10340 lambda!10323))))

(assert (=> bs!40532 (not (= lambda!10340 lambda!10336))))

(assert (=> bs!40533 (not (= lambda!10340 lambda!10281))))

(assert (=> b!83433 (not (= lambda!10340 lambda!10339))))

(assert (=> b!83433 (not (= lambda!10340 lambda!10338))))

(assert (=> bs!40534 (= (= (h!1002 less!5) (h!1002 more!5)) (= lambda!10340 lambda!10301))))

(assert (=> bs!40534 (not (= lambda!10340 lambda!10300))))

(assert (=> bs!40534 (not (= lambda!10340 lambda!10299))))

(assert (=> bs!40535 (not (= lambda!10340 lambda!10337))))

(assert (=> bs!40536 (not (= lambda!10340 lambda!10325))))

(assert (=> bs!40537 (= lambda!10340 lambda!10328)))

(assert (=> bs!40537 (not (= lambda!10340 lambda!10327))))

(assert (=> bs!40537 (not (= lambda!10340 lambda!10326))))

(assert (=> bs!40538 (= lambda!10340 lambda!10292)))

(assert (=> bs!40538 (not (= lambda!10340 lambda!10291))))

(assert (=> bs!40538 (not (= lambda!10340 lambda!10290))))

(assert (=> bs!40539 (not (= lambda!10340 lambda!10335))))

(assert (=> bs!40540 (= lambda!10340 lambda!10316)))

(assert (=> bs!40540 (not (= lambda!10340 lambda!10315))))

(assert (=> bs!40540 (not (= lambda!10340 lambda!10314))))

(assert (=> bs!40541 (not (= lambda!10340 lambda!10324))))

(assert (=> bs!40542 (not (= lambda!10340 lambda!10280))))

(assert (=> b!83433 true))

(declare-fun d!56515 () Bool)

(assert (=> d!56515 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19437 () Bool)

(declare-fun e!45247 () Bool)

(assert (=> d!56515 (= lt!19437 e!45247)))

(declare-fun res!42918 () Bool)

(assert (=> d!56515 (=> res!42918 e!45247)))

(assert (=> d!56515 (= res!42918 (or (is-Nil!634 less!5) (and (is-Cons!632 less!5) (is-Nil!634 (t!47913 less!5)))))))

(assert (=> d!56515 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!45248 () Bool)

(assert (=> b!83433 (= e!45247 e!45248)))

(declare-fun res!42919 () Bool)

(assert (=> b!83433 (=> (not res!42919) (not e!45248))))

(declare-fun lt!19435 () List!675)

(declare-fun lt!19434 () List!675)

(assert (=> b!83433 (= res!42919 (append_sorted!0 (quickSort!0 lt!19435) lt!19434))))

(declare-fun lt!19436 () List!675)

(assert (=> b!83433 (= lt!19436 (filter!28 (t!47913 less!5) lambda!10340))))

(assert (=> b!83433 (= lt!19434 (Cons!632 (h!1002 less!5) (filter!28 (t!47913 less!5) lambda!10339)))))

(assert (=> b!83433 (= lt!19435 (filter!28 (t!47913 less!5) lambda!10338))))

(declare-fun b!83434 () Bool)

(assert (=> b!83434 (= e!45248 (append_sorted!0 (++!83 (quickSort!0 lt!19435) lt!19434) (quickSort!0 lt!19436)))))

(assert (= (and d!56515 (not res!42918)) b!83433))

(assert (= (and b!83433 res!42919) b!83434))

(assert (=> d!56515 m!79058))

(assert (=> d!56515 m!79058))

(declare-fun m!79226 () Bool)

(assert (=> d!56515 m!79226))

(declare-fun m!79228 () Bool)

(assert (=> b!83433 m!79228))

(declare-fun m!79230 () Bool)

(assert (=> b!83433 m!79230))

(declare-fun m!79232 () Bool)

(assert (=> b!83433 m!79232))

(declare-fun m!79234 () Bool)

(assert (=> b!83433 m!79234))

(assert (=> b!83433 m!79232))

(declare-fun m!79236 () Bool)

(assert (=> b!83433 m!79236))

(assert (=> b!83434 m!79232))

(assert (=> b!83434 m!79232))

(declare-fun m!79238 () Bool)

(assert (=> b!83434 m!79238))

(declare-fun m!79240 () Bool)

(assert (=> b!83434 m!79240))

(assert (=> b!83434 m!79238))

(assert (=> b!83434 m!79240))

(declare-fun m!79242 () Bool)

(assert (=> b!83434 m!79242))

(assert (=> b!83338 d!56515))

(declare-fun bs!40543 () Bool)

(declare-fun d!56517 () Bool)

(assert (= bs!40543 (and d!56517 b!83329)))

(declare-fun lambda!10343 () Int)

(assert (=> bs!40543 (not (= lambda!10343 lambda!10283))))

(declare-fun bs!40544 () Bool)

(assert (= bs!40544 (and d!56517 b!83332)))

(assert (=> bs!40544 (not (= lambda!10343 lambda!10282))))

(declare-fun bs!40545 () Bool)

(assert (= bs!40545 (and d!56517 d!56507)))

(assert (=> bs!40545 (not (= lambda!10343 lambda!10323))))

(declare-fun bs!40546 () Bool)

(assert (= bs!40546 (and d!56517 b!83431)))

(assert (=> bs!40546 (not (= lambda!10343 lambda!10336))))

(declare-fun bs!40547 () Bool)

(assert (= bs!40547 (and d!56517 b!83331)))

(assert (=> bs!40547 (= lambda!10343 lambda!10281)))

(declare-fun bs!40548 () Bool)

(assert (= bs!40548 (and d!56517 b!83433)))

(assert (=> bs!40548 (not (= lambda!10343 lambda!10340))))

(assert (=> bs!40548 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10343 lambda!10339))))

(assert (=> bs!40548 (not (= lambda!10343 lambda!10338))))

(declare-fun bs!40549 () Bool)

(assert (= bs!40549 (and d!56517 b!83388)))

(assert (=> bs!40549 (not (= lambda!10343 lambda!10301))))

(assert (=> bs!40549 (= (= (h!1002 ls!96) (h!1002 more!5)) (= lambda!10343 lambda!10300))))

(assert (=> bs!40549 (not (= lambda!10343 lambda!10299))))

(declare-fun bs!40550 () Bool)

(assert (= bs!40550 (and d!56517 b!83432)))

(assert (=> bs!40550 (not (= lambda!10343 lambda!10337))))

(declare-fun bs!40551 () Bool)

(assert (= bs!40551 (and d!56517 b!83410)))

(assert (=> bs!40551 (not (= lambda!10343 lambda!10325))))

(declare-fun bs!40552 () Bool)

(assert (= bs!40552 (and d!56517 b!83422)))

(assert (=> bs!40552 (not (= lambda!10343 lambda!10328))))

(assert (=> bs!40552 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10343 lambda!10327))))

(assert (=> bs!40552 (not (= lambda!10343 lambda!10326))))

(declare-fun bs!40553 () Bool)

(assert (= bs!40553 (and d!56517 b!83383)))

(assert (=> bs!40553 (not (= lambda!10343 lambda!10292))))

(assert (=> bs!40553 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10343 lambda!10291))))

(assert (=> bs!40553 (not (= lambda!10343 lambda!10290))))

(declare-fun bs!40554 () Bool)

(assert (= bs!40554 (and d!56517 d!56513)))

(assert (=> bs!40554 (= lambda!10343 lambda!10335)))

(declare-fun bs!40555 () Bool)

(assert (= bs!40555 (and d!56517 b!83400)))

(assert (=> bs!40555 (not (= lambda!10343 lambda!10316))))

(assert (=> bs!40555 (= (= (h!1002 ls!96) (h!1002 less!5)) (= lambda!10343 lambda!10315))))

(assert (=> bs!40555 (not (= lambda!10343 lambda!10314))))

(declare-fun bs!40556 () Bool)

(assert (= bs!40556 (and d!56517 b!83409)))

(assert (=> bs!40556 (not (= lambda!10343 lambda!10324))))

(declare-fun bs!40557 () Bool)

(assert (= bs!40557 (and d!56517 b!83326)))

(assert (=> bs!40557 (not (= lambda!10343 lambda!10280))))

(assert (=> d!56517 true))

(assert (=> d!56517 (isSorted!1 (Cons!632 (h!1002 ls!96) (filter!28 (t!47913 ls!96) lambda!10343)))))

(declare-datatypes () ((Unit!1199 (Unit!1200))))

(declare-fun lt!19440 () Unit!1199)

(declare-fun Unit!1201 () Unit!1199)

(assert (=> d!56517 (= lt!19440 Unit!1201)))

(declare-fun filter_equal_sorted!0 (List!675 Int) Bool)

(assert (=> d!56517 (filter_equal_sorted!0 (t!47913 ls!96) (h!1002 ls!96))))

(assert (=> d!56517 (= (cons_filter_equal_sorted!0 (t!47913 ls!96) (h!1002 ls!96)) true)))

(declare-fun bs!40558 () Bool)

(assert (= bs!40558 d!56517))

(declare-fun m!79244 () Bool)

(assert (=> bs!40558 m!79244))

(declare-fun m!79246 () Bool)

(assert (=> bs!40558 m!79246))

(declare-fun m!79248 () Bool)

(assert (=> bs!40558 m!79248))

(assert (=> b!83330 d!56517))

(declare-fun d!56519 () Bool)

(declare-fun e!45258 () Bool)

(assert (=> d!56519 e!45258))

(declare-fun res!42930 () Bool)

(assert (=> d!56519 (=> (not res!42930) (not e!45258))))

(declare-fun lt!19446 () List!675)

(assert (=> d!56519 (= res!42930 (<= (size!663 lt!19446) (size!663 (t!47913 ls!96))))))

(declare-fun e!45260 () List!675)

(assert (=> d!56519 (= lt!19446 e!45260)))

(declare-fun c!20906 () Bool)

(assert (=> d!56519 (= c!20906 (is-Nil!634 (t!47913 ls!96)))))

(assert (=> d!56519 (= (filter!28 (t!47913 ls!96) lambda!10280) lt!19446)))

(declare-fun b!83449 () Bool)

(declare-fun e!45257 () List!675)

(declare-fun lt!19445 () List!675)

(assert (=> b!83449 (= e!45257 (Cons!632 (h!1002 (t!47913 ls!96)) lt!19445))))

(declare-fun b!83450 () Bool)

(declare-fun e!45259 () Bool)

(assert (=> b!83450 (= e!45259 (dynLambda!994 lambda!10280 (h!1002 (t!47913 ls!96))))))

(declare-fun b!83451 () Bool)

(declare-fun res!42932 () Bool)

(assert (=> b!83451 (=> (not res!42932) (not e!45258))))

(assert (=> b!83451 (= res!42932 (subset (content!134 lt!19446) (content!134 (t!47913 ls!96))))))

(declare-fun b!83452 () Bool)

(assert (=> b!83452 (= e!45260 e!45257)))

(declare-fun c!20907 () Bool)

(assert (=> b!83452 (= c!20907 e!45259)))

(declare-fun res!42931 () Bool)

(assert (=> b!83452 (=> (not res!42931) (not e!45259))))

(assert (=> b!83452 (= res!42931 (is-Cons!632 (t!47913 ls!96)))))

(assert (=> b!83452 (= lt!19445 (filter!28 (t!47913 (t!47913 ls!96)) lambda!10280))))

(declare-fun b!83453 () Bool)

(assert (=> b!83453 (= e!45257 lt!19445)))

(declare-fun b!83454 () Bool)

(assert (=> b!83454 (= e!45260 Nil!634)))

(declare-fun b!83455 () Bool)

(assert (=> b!83455 (= e!45258 (forall!30 lt!19446 lambda!10280))))

(assert (= (and b!83452 res!42931) b!83450))

(assert (= (and b!83452 c!20907) b!83449))

(assert (= (and b!83452 (not c!20907)) b!83453))

(assert (= (and d!56519 c!20906) b!83454))

(assert (= (and d!56519 (not c!20906)) b!83452))

(assert (= (and d!56519 res!42930) b!83451))

(assert (= (and b!83451 res!42932) b!83455))

(declare-fun b_lambda!16463 () Bool)

(assert (=> (not b_lambda!16463) (not b!83450)))

(declare-fun m!79250 () Bool)

(assert (=> b!83450 m!79250))

(declare-fun m!79252 () Bool)

(assert (=> b!83455 m!79252))

(declare-fun m!79254 () Bool)

(assert (=> b!83452 m!79254))

(declare-fun m!79256 () Bool)

(assert (=> d!56519 m!79256))

(declare-fun m!79258 () Bool)

(assert (=> d!56519 m!79258))

(declare-fun m!79260 () Bool)

(assert (=> b!83451 m!79260))

(declare-fun m!79262 () Bool)

(assert (=> b!83451 m!79262))

(assert (=> b!83326 d!56519))

(declare-fun b!83456 () Bool)

(declare-fun res!42936 () Bool)

(declare-fun e!45263 () Bool)

(assert (=> b!83456 (=> res!42936 e!45263)))

(assert (=> b!83456 (= res!42936 (isEmpty!685 (quickSort!0 less!5)))))

(declare-fun b!83457 () Bool)

(declare-fun res!42933 () Bool)

(declare-fun e!45262 () Bool)

(assert (=> b!83457 (=> res!42933 e!45262)))

(assert (=> b!83457 (= res!42933 (isEmpty!685 (quickSort!0 less!5)))))

(declare-fun b!83458 () Bool)

(assert (=> b!83458 (= e!45263 (dynLambda!994 lambda!10280 (last!25 (quickSort!0 less!5))))))

(declare-fun d!56521 () Bool)

(declare-fun e!45261 () Bool)

(assert (=> d!56521 e!45261))

(declare-fun c!20908 () Bool)

(assert (=> d!56521 (= c!20908 (is-Cons!632 (quickSort!0 less!5)))))

(assert (=> d!56521 (= (forall_last!0 (quickSort!0 less!5) lambda!10280) true)))

(declare-fun b!83459 () Bool)

(assert (=> b!83459 (= e!45262 (dynLambda!994 lambda!10280 (last!25 (quickSort!0 less!5))))))

(declare-fun b!83460 () Bool)

(assert (=> b!83460 (= e!45261 e!45262)))

(declare-fun res!42934 () Bool)

(assert (=> b!83460 (=> res!42934 e!45262)))

(assert (=> b!83460 (= res!42934 (not (forall!30 (quickSort!0 less!5) lambda!10280)))))

(declare-fun lt!19447 () Bool)

(assert (=> b!83460 (= lt!19447 (forall_last!0 (t!47913 (quickSort!0 less!5)) lambda!10280))))

(declare-fun b!83461 () Bool)

(assert (=> b!83461 (= e!45261 e!45263)))

(declare-fun res!42935 () Bool)

(assert (=> b!83461 (=> res!42935 e!45263)))

(assert (=> b!83461 (= res!42935 (not (forall!30 (quickSort!0 less!5) lambda!10280)))))

(assert (= (and b!83460 (not res!42934)) b!83457))

(assert (= (and b!83457 (not res!42933)) b!83459))

(assert (= (and b!83461 (not res!42935)) b!83456))

(assert (= (and b!83456 (not res!42936)) b!83458))

(assert (= (and d!56521 c!20908) b!83460))

(assert (= (and d!56521 (not c!20908)) b!83461))

(declare-fun b_lambda!16465 () Bool)

(assert (=> (not b_lambda!16465) (not b!83458)))

(declare-fun b_lambda!16467 () Bool)

(assert (=> (not b_lambda!16467) (not b!83459)))

(assert (=> b!83459 m!79058))

(declare-fun m!79264 () Bool)

(assert (=> b!83459 m!79264))

(assert (=> b!83459 m!79264))

(declare-fun m!79266 () Bool)

(assert (=> b!83459 m!79266))

(assert (=> b!83460 m!79058))

(assert (=> b!83460 m!79208))

(declare-fun m!79268 () Bool)

(assert (=> b!83460 m!79268))

(assert (=> b!83461 m!79058))

(assert (=> b!83461 m!79208))

(assert (=> b!83457 m!79058))

(declare-fun m!79270 () Bool)

(assert (=> b!83457 m!79270))

(assert (=> b!83456 m!79058))

(assert (=> b!83456 m!79270))

(assert (=> b!83458 m!79058))

(assert (=> b!83458 m!79264))

(assert (=> b!83458 m!79264))

(assert (=> b!83458 m!79266))

(assert (=> b!83333 d!56521))

(assert (=> b!83333 d!56501))

(declare-fun d!56523 () Bool)

(declare-fun e!45265 () Bool)

(assert (=> d!56523 e!45265))

(declare-fun res!42937 () Bool)

(assert (=> d!56523 (=> (not res!42937) (not e!45265))))

(declare-fun lt!19449 () List!675)

(assert (=> d!56523 (= res!42937 (<= (size!663 lt!19449) (size!663 (t!47913 ls!96))))))

(declare-fun e!45267 () List!675)

(assert (=> d!56523 (= lt!19449 e!45267)))

(declare-fun c!20909 () Bool)

(assert (=> d!56523 (= c!20909 (is-Nil!634 (t!47913 ls!96)))))

(assert (=> d!56523 (= (filter!28 (t!47913 ls!96) lambda!10281) lt!19449)))

(declare-fun b!83462 () Bool)

(declare-fun e!45264 () List!675)

(declare-fun lt!19448 () List!675)

(assert (=> b!83462 (= e!45264 (Cons!632 (h!1002 (t!47913 ls!96)) lt!19448))))

(declare-fun b!83463 () Bool)

(declare-fun e!45266 () Bool)

(assert (=> b!83463 (= e!45266 (dynLambda!994 lambda!10281 (h!1002 (t!47913 ls!96))))))

(declare-fun b!83464 () Bool)

(declare-fun res!42939 () Bool)

(assert (=> b!83464 (=> (not res!42939) (not e!45265))))

(assert (=> b!83464 (= res!42939 (subset (content!134 lt!19449) (content!134 (t!47913 ls!96))))))

(declare-fun b!83465 () Bool)

(assert (=> b!83465 (= e!45267 e!45264)))

(declare-fun c!20910 () Bool)

(assert (=> b!83465 (= c!20910 e!45266)))

(declare-fun res!42938 () Bool)

(assert (=> b!83465 (=> (not res!42938) (not e!45266))))

(assert (=> b!83465 (= res!42938 (is-Cons!632 (t!47913 ls!96)))))

(assert (=> b!83465 (= lt!19448 (filter!28 (t!47913 (t!47913 ls!96)) lambda!10281))))

(declare-fun b!83466 () Bool)

(assert (=> b!83466 (= e!45264 lt!19448)))

(declare-fun b!83467 () Bool)

(assert (=> b!83467 (= e!45267 Nil!634)))

(declare-fun b!83468 () Bool)

(assert (=> b!83468 (= e!45265 (forall!30 lt!19449 lambda!10281))))

(assert (= (and b!83465 res!42938) b!83463))

(assert (= (and b!83465 c!20910) b!83462))

(assert (= (and b!83465 (not c!20910)) b!83466))

(assert (= (and d!56523 c!20909) b!83467))

(assert (= (and d!56523 (not c!20909)) b!83465))

(assert (= (and d!56523 res!42937) b!83464))

(assert (= (and b!83464 res!42939) b!83468))

(declare-fun b_lambda!16469 () Bool)

(assert (=> (not b_lambda!16469) (not b!83463)))

(declare-fun m!79272 () Bool)

(assert (=> b!83463 m!79272))

(declare-fun m!79274 () Bool)

(assert (=> b!83468 m!79274))

(declare-fun m!79276 () Bool)

(assert (=> b!83465 m!79276))

(declare-fun m!79278 () Bool)

(assert (=> d!56523 m!79278))

(assert (=> d!56523 m!79258))

(declare-fun m!79280 () Bool)

(assert (=> b!83464 m!79280))

(assert (=> b!83464 m!79262))

(assert (=> b!83331 d!56523))

(declare-fun b!83481 () Bool)

(declare-fun e!45275 () Bool)

(declare-fun head!1061 (List!675) Int)

(assert (=> b!83481 (= e!45275 (<= (last!25 (quickSort!0 less!5)) (head!1061 equal!10)))))

(declare-fun d!56525 () Bool)

(declare-fun e!45274 () Bool)

(assert (=> d!56525 e!45274))

(declare-fun c!20913 () Bool)

(assert (=> d!56525 (= c!20913 (is-Cons!632 (quickSort!0 less!5)))))

(declare-fun e!45276 () Bool)

(assert (=> d!56525 e!45276))

(declare-fun res!42948 () Bool)

(assert (=> d!56525 (=> (not res!42948) (not e!45276))))

(assert (=> d!56525 (= res!42948 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56525 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!83482 () Bool)

(declare-fun res!42949 () Bool)

(assert (=> b!83482 (=> (not res!42949) (not e!45276))))

(assert (=> b!83482 (= res!42949 (isSorted!1 equal!10))))

(declare-fun b!83483 () Bool)

(assert (=> b!83483 (= e!45274 (isSorted!1 (++!83 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19452 () Bool)

(assert (=> b!83483 (= lt!19452 (append_sorted!0 (t!47913 (quickSort!0 less!5)) equal!10))))

(declare-fun b!83484 () Bool)

(assert (=> b!83484 (= e!45274 (isSorted!1 (++!83 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83485 () Bool)

(assert (=> b!83485 (= e!45276 e!45275)))

(declare-fun res!42950 () Bool)

(assert (=> b!83485 (=> res!42950 e!45275)))

(assert (=> b!83485 (= res!42950 (isEmpty!685 (quickSort!0 less!5)))))

(declare-fun b!83486 () Bool)

(declare-fun res!42951 () Bool)

(assert (=> b!83486 (=> res!42951 e!45275)))

(assert (=> b!83486 (= res!42951 (isEmpty!685 equal!10))))

(assert (= (and d!56525 res!42948) b!83482))

(assert (= (and b!83482 res!42949) b!83485))

(assert (= (and b!83485 (not res!42950)) b!83486))

(assert (= (and b!83486 (not res!42951)) b!83481))

(assert (= (and d!56525 c!20913) b!83483))

(assert (= (and d!56525 (not c!20913)) b!83484))

(declare-fun m!79282 () Bool)

(assert (=> b!83486 m!79282))

(assert (=> d!56525 m!79058))

(assert (=> d!56525 m!79226))

(assert (=> b!83485 m!79058))

(assert (=> b!83485 m!79270))

(declare-fun m!79284 () Bool)

(assert (=> b!83482 m!79284))

(assert (=> b!83483 m!79058))

(assert (=> b!83483 m!79078))

(assert (=> b!83483 m!79078))

(declare-fun m!79286 () Bool)

(assert (=> b!83483 m!79286))

(declare-fun m!79288 () Bool)

(assert (=> b!83483 m!79288))

(assert (=> b!83484 m!79058))

(assert (=> b!83484 m!79078))

(assert (=> b!83484 m!79078))

(assert (=> b!83484 m!79286))

(assert (=> b!83481 m!79058))

(assert (=> b!83481 m!79264))

(declare-fun m!79290 () Bool)

(assert (=> b!83481 m!79290))

(assert (=> b!83327 d!56525))

(assert (=> b!83327 d!56501))

(declare-fun d!56527 () Bool)

(declare-fun e!45278 () Bool)

(assert (=> d!56527 e!45278))

(declare-fun res!42952 () Bool)

(assert (=> d!56527 (=> (not res!42952) (not e!45278))))

(declare-fun lt!19454 () List!675)

(assert (=> d!56527 (= res!42952 (<= (size!663 lt!19454) (size!663 (t!47913 ls!96))))))

(declare-fun e!45280 () List!675)

(assert (=> d!56527 (= lt!19454 e!45280)))

(declare-fun c!20914 () Bool)

(assert (=> d!56527 (= c!20914 (is-Nil!634 (t!47913 ls!96)))))

(assert (=> d!56527 (= (filter!28 (t!47913 ls!96) lambda!10282) lt!19454)))

(declare-fun b!83487 () Bool)

(declare-fun e!45277 () List!675)

(declare-fun lt!19453 () List!675)

(assert (=> b!83487 (= e!45277 (Cons!632 (h!1002 (t!47913 ls!96)) lt!19453))))

(declare-fun b!83488 () Bool)

(declare-fun e!45279 () Bool)

(assert (=> b!83488 (= e!45279 (dynLambda!994 lambda!10282 (h!1002 (t!47913 ls!96))))))

(declare-fun b!83489 () Bool)

(declare-fun res!42954 () Bool)

(assert (=> b!83489 (=> (not res!42954) (not e!45278))))

(assert (=> b!83489 (= res!42954 (subset (content!134 lt!19454) (content!134 (t!47913 ls!96))))))

(declare-fun b!83490 () Bool)

(assert (=> b!83490 (= e!45280 e!45277)))

(declare-fun c!20915 () Bool)

(assert (=> b!83490 (= c!20915 e!45279)))

(declare-fun res!42953 () Bool)

(assert (=> b!83490 (=> (not res!42953) (not e!45279))))

(assert (=> b!83490 (= res!42953 (is-Cons!632 (t!47913 ls!96)))))

(assert (=> b!83490 (= lt!19453 (filter!28 (t!47913 (t!47913 ls!96)) lambda!10282))))

(declare-fun b!83491 () Bool)

(assert (=> b!83491 (= e!45277 lt!19453)))

(declare-fun b!83492 () Bool)

(assert (=> b!83492 (= e!45280 Nil!634)))

(declare-fun b!83493 () Bool)

(assert (=> b!83493 (= e!45278 (forall!30 lt!19454 lambda!10282))))

(assert (= (and b!83490 res!42953) b!83488))

(assert (= (and b!83490 c!20915) b!83487))

(assert (= (and b!83490 (not c!20915)) b!83491))

(assert (= (and d!56527 c!20914) b!83492))

(assert (= (and d!56527 (not c!20914)) b!83490))

(assert (= (and d!56527 res!42952) b!83489))

(assert (= (and b!83489 res!42954) b!83493))

(declare-fun b_lambda!16471 () Bool)

(assert (=> (not b_lambda!16471) (not b!83488)))

(declare-fun m!79292 () Bool)

(assert (=> b!83488 m!79292))

(declare-fun m!79294 () Bool)

(assert (=> b!83493 m!79294))

(declare-fun m!79296 () Bool)

(assert (=> b!83490 m!79296))

(declare-fun m!79298 () Bool)

(assert (=> d!56527 m!79298))

(assert (=> d!56527 m!79258))

(declare-fun m!79300 () Bool)

(assert (=> b!83489 m!79300))

(assert (=> b!83489 m!79262))

(assert (=> b!83332 d!56527))

(declare-fun b_lambda!16473 () Bool)

(assert (= b_lambda!16463 (or b!83326 b_lambda!16473)))

(declare-fun bs!40559 () Bool)

(declare-fun d!56529 () Bool)

(assert (= bs!40559 (and d!56529 b!83326)))

(assert (=> bs!40559 (= (dynLambda!994 lambda!10280 (h!1002 (t!47913 ls!96))) (< (h!1002 (t!47913 ls!96)) (h!1002 ls!96)))))

(assert (=> b!83450 d!56529))

(declare-fun b_lambda!16475 () Bool)

(assert (= b_lambda!16459 (or b!83329 b_lambda!16475)))

(declare-fun bs!40560 () Bool)

(declare-fun d!56531 () Bool)

(assert (= bs!40560 (and d!56531 b!83329)))

(assert (=> bs!40560 (= (dynLambda!994 lambda!10283 (last!25 (++!83 (quickSort!0 less!5) equal!10))) (<= (last!25 (++!83 (quickSort!0 less!5) equal!10)) (h!1002 ls!96)))))

(assert (=> b!83356 d!56531))

(declare-fun b_lambda!16477 () Bool)

(assert (= b_lambda!16469 (or b!83331 b_lambda!16477)))

(declare-fun bs!40561 () Bool)

(declare-fun d!56533 () Bool)

(assert (= bs!40561 (and d!56533 b!83331)))

(assert (=> bs!40561 (= (dynLambda!994 lambda!10281 (h!1002 (t!47913 ls!96))) (= (h!1002 (t!47913 ls!96)) (h!1002 ls!96)))))

(assert (=> b!83463 d!56533))

(declare-fun b_lambda!16479 () Bool)

(assert (= b_lambda!16461 (or b!83329 b_lambda!16479)))

(assert (=> b!83357 d!56531))

(declare-fun b_lambda!16481 () Bool)

(assert (= b_lambda!16471 (or b!83332 b_lambda!16481)))

(declare-fun bs!40562 () Bool)

(declare-fun d!56535 () Bool)

(assert (= bs!40562 (and d!56535 b!83332)))

(assert (=> bs!40562 (= (dynLambda!994 lambda!10282 (h!1002 (t!47913 ls!96))) (> (h!1002 (t!47913 ls!96)) (h!1002 ls!96)))))

(assert (=> b!83488 d!56535))

(declare-fun b_lambda!16483 () Bool)

(assert (= b_lambda!16467 (or b!83326 b_lambda!16483)))

(declare-fun bs!40563 () Bool)

(declare-fun d!56537 () Bool)

(assert (= bs!40563 (and d!56537 b!83326)))

(assert (=> bs!40563 (= (dynLambda!994 lambda!10280 (last!25 (quickSort!0 less!5))) (< (last!25 (quickSort!0 less!5)) (h!1002 ls!96)))))

(assert (=> b!83459 d!56537))

(declare-fun b_lambda!16485 () Bool)

(assert (= b_lambda!16465 (or b!83326 b_lambda!16485)))

(assert (=> b!83458 d!56537))

(push 1)

(assert (not b!83369))

(assert (not b!83482))

(assert (not b!83359))

(assert (not b!83456))

(assert (not b!83388))

(assert (not b!83431))

(assert (not b!83424))

(assert (not b!83458))

(assert (not b!83483))

(assert (not b!83410))

(assert (not d!56511))

(assert (not b!83489))

(assert (not b!83460))

(assert (not d!56527))

(assert (not d!56499))

(assert (not b!83432))

(assert (not d!56515))

(assert (not d!56523))

(assert (not b_lambda!16475))

(assert (not b!83464))

(assert (not b!83419))

(assert (not d!56503))

(assert (not b!83423))

(assert (not b!83401))

(assert (not b!83409))

(assert (not d!56525))

(assert (not b!83358))

(assert (not d!56517))

(assert (not b!83459))

(assert (not b!83383))

(assert (not b!83486))

(assert (not b!83356))

(assert (not b!83400))

(assert (not b!83481))

(assert (not b!83404))

(assert (not b!83484))

(assert (not b!83354))

(assert (not b_lambda!16473))

(assert (not b!83452))

(assert (not b!83433))

(assert (not b!83420))

(assert (not b!83426))

(assert (not d!56507))

(assert (not d!56509))

(assert (not b!83425))

(assert (not b!83457))

(assert (not b!83389))

(assert (not b_lambda!16479))

(assert (not b_lambda!16481))

(assert (not d!56505))

(assert (not b!83355))

(assert (not b!83402))

(assert (not b!83468))

(assert (not b!83451))

(assert (not b!83403))

(assert (not b_lambda!16477))

(assert (not b!83357))

(assert (not b_lambda!16483))

(assert (not b!83485))

(assert (not b!83493))

(assert (not b!83421))

(assert (not b!83455))

(assert (not b_lambda!16485))

(assert (not b!83422))

(assert (not d!56513))

(assert (not b!83434))

(assert (not b!83465))

(assert (not d!56519))

(assert (not b!83490))

(assert (not b!83370))

(assert (not b!83461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

