; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11660 () Bool)

(assert start!11660)

(declare-fun b_free!7531 () Bool)

(declare-fun b_next!39889 () Bool)

(assert (=> start!11660 (= b_free!7531 (not b_next!39889))))

(declare-fun tp!17446 () Bool)

(declare-fun b_and!60505 () Bool)

(assert (=> start!11660 (= tp!17446 b_and!60505)))

(declare-fun b!89348 () Bool)

(declare-fun res!46807 () Bool)

(declare-fun e!48701 () Bool)

(assert (=> b!89348 (=> (not res!46807) (not e!48701))))

(declare-datatypes () ((T!6013 (T!6014 (val!199 Int)))))

(declare-fun x$2!519 () T!6013)

(declare-fun t!48611 () T!6013)

(assert (=> b!89348 (= res!46807 (= x$2!519 t!48611))))

(declare-fun b!89349 () Bool)

(declare-fun res!46809 () Bool)

(assert (=> b!89349 (=> (not res!46809) (not e!48701))))

(declare-datatypes () ((List!743 (Cons!697 (h!1101 T!6013) (t!48830 List!743)) (Nil!699))))

(declare-fun res!45953 () List!743)

(declare-fun l!1596 () List!743)

(declare-fun $colon$colon!24 (List!743 T!6013) List!743)

(assert (=> b!89349 (= res!46809 (= res!45953 ($colon$colon!24 l!1596 x$2!519)))))

(declare-fun b!89350 () Bool)

(declare-fun e!48702 () Bool)

(declare-fun tp_is_empty!393 () Bool)

(declare-fun tp!17447 () Bool)

(assert (=> b!89350 (= e!48702 (and tp_is_empty!393 tp!17447))))

(declare-fun b!89351 () Bool)

(declare-fun e!48699 () Bool)

(declare-fun tp!17445 () Bool)

(assert (=> b!89351 (= e!48699 (and tp_is_empty!393 tp!17445))))

(declare-fun b!89352 () Bool)

(declare-fun e!48700 () Bool)

(declare-fun length!18 (List!743) Int)

(assert (=> b!89352 (= e!48700 (not (= (length!18 res!45953) (+ 1 (length!18 l!1596)))))))

(declare-fun b!89353 () Bool)

(declare-fun res!46811 () Bool)

(assert (=> b!89353 (=> (not res!46811) (not e!48701))))

(declare-fun key!527 () Int)

(declare-fun dynLambda!1070 (Int T!6013) Int)

(assert (=> b!89353 (= res!46811 (<= (dynLambda!1070 key!527 t!48611) (dynLambda!1070 key!527 (h!1101 l!1596))))))

(declare-fun b!89354 () Bool)

(assert (=> b!89354 (= e!48701 e!48700)))

(declare-fun res!46810 () Bool)

(assert (=> b!89354 (=> res!46810 e!48700)))

(declare-fun content!166 (List!743) (Set T!6013))

(assert (=> b!89354 (= res!46810 (not (= (content!166 res!45953) (union (insert t!48611 (as emptyset (Set T!6013))) (content!166 l!1596)))))))

(declare-fun res!46808 () Bool)

(assert (=> start!11660 (=> (not res!46808) (not e!48701))))

(assert (=> start!11660 (= res!46808 (not (is-Nil!699 l!1596)))))

(assert (=> start!11660 e!48701))

(assert (=> start!11660 e!48699))

(assert (=> start!11660 tp_is_empty!393))

(assert (=> start!11660 e!48702))

(assert (=> start!11660 tp!17446))

(assert (= (and start!11660 res!46808) b!89353))

(assert (= (and b!89353 res!46811) b!89348))

(assert (= (and b!89348 res!46807) b!89349))

(assert (= (and b!89349 res!46809) b!89354))

(assert (= (and b!89354 (not res!46810)) b!89352))

(assert (= (and start!11660 (is-Cons!697 res!45953)) b!89351))

(assert (= (and start!11660 (is-Cons!697 l!1596)) b!89350))

(declare-fun b_lambda!18259 () Bool)

(assert (=> (not b_lambda!18259) (not b!89353)))

(declare-fun t!48827 () Bool)

(declare-fun tb!46709 () Bool)

(assert (=> (and start!11660 (= key!527 key!527) t!48827) tb!46709))

(declare-fun result!47165 () Bool)

(assert (=> tb!46709 (= result!47165 true)))

(assert (=> b!89353 t!48827))

(declare-fun b_and!60507 () Bool)

(assert (= b_and!60505 (and (=> t!48827 result!47165) b_and!60507)))

(declare-fun b_lambda!18261 () Bool)

(assert (=> (not b_lambda!18261) (not b!89353)))

(declare-fun t!48829 () Bool)

(declare-fun tb!46711 () Bool)

(assert (=> (and start!11660 (= key!527 key!527) t!48829) tb!46711))

(declare-fun result!47167 () Bool)

(assert (=> tb!46711 (= result!47167 true)))

(assert (=> b!89353 t!48829))

(declare-fun b_and!60509 () Bool)

(assert (= b_and!60507 (and (=> t!48829 result!47167) b_and!60509)))

(declare-fun m!85438 () Bool)

(assert (=> b!89349 m!85438))

(declare-fun m!85440 () Bool)

(assert (=> b!89352 m!85440))

(declare-fun m!85442 () Bool)

(assert (=> b!89352 m!85442))

(declare-fun m!85444 () Bool)

(assert (=> b!89353 m!85444))

(declare-fun m!85446 () Bool)

(assert (=> b!89353 m!85446))

(declare-fun m!85448 () Bool)

(assert (=> b!89354 m!85448))

(declare-fun m!85450 () Bool)

(assert (=> b!89354 m!85450))

(declare-fun m!85452 () Bool)

(assert (=> b!89354 m!85452))

(push 1)

(assert (not b!89351))

(assert tp_is_empty!393)

(assert (not b!89350))

(assert (not b!89354))

(assert b_and!60509)

(assert (not b!89352))

(assert (not b_lambda!18259))

(assert (not b!89349))

(assert (not b_lambda!18261))

(assert (not b_next!39889))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60509)

(assert (not b_next!39889))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18263 () Bool)

(assert (= b_lambda!18261 (or (and start!11660 b_free!7531) b_lambda!18263)))

(declare-fun b_lambda!18265 () Bool)

(assert (= b_lambda!18259 (or (and start!11660 b_free!7531) b_lambda!18265)))

(push 1)

(assert (not b!89351))

(assert tp_is_empty!393)

(assert (not b!89350))

(assert (not b!89354))

(assert (not b_lambda!18263))

(assert b_and!60509)

(assert (not b_lambda!18265))

(assert (not b!89352))

(assert (not b!89349))

(assert (not b_next!39889))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60509)

(assert (not b_next!39889))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59171 () Bool)

(declare-fun size!720 (List!743) Int)

(assert (=> d!59171 (= (length!18 res!45953) (size!720 res!45953))))

(declare-fun bs!41494 () Bool)

(assert (= bs!41494 d!59171))

(declare-fun m!85454 () Bool)

(assert (=> bs!41494 m!85454))

(assert (=> b!89352 d!59171))

(declare-fun d!59173 () Bool)

(assert (=> d!59173 (= (length!18 l!1596) (size!720 l!1596))))

(declare-fun bs!41495 () Bool)

(assert (= bs!41495 d!59173))

(declare-fun m!85456 () Bool)

(assert (=> bs!41495 m!85456))

(assert (=> b!89352 d!59173))

(declare-fun d!59175 () Bool)

(declare-fun c!21923 () Bool)

(assert (=> d!59175 (= c!21923 (is-Nil!699 res!45953))))

(declare-fun e!48705 () (Set T!6013))

(assert (=> d!59175 (= (content!166 res!45953) e!48705)))

(declare-fun b!89359 () Bool)

(assert (=> b!89359 (= e!48705 (as emptyset (Set T!6013)))))

(declare-fun b!89360 () Bool)

(assert (=> b!89360 (= e!48705 (union (insert (h!1101 res!45953) (as emptyset (Set T!6013))) (content!166 (t!48830 res!45953))))))

(assert (= (and d!59175 c!21923) b!89359))

(assert (= (and d!59175 (not c!21923)) b!89360))

(declare-fun m!85458 () Bool)

(assert (=> b!89360 m!85458))

(declare-fun m!85460 () Bool)

(assert (=> b!89360 m!85460))

(assert (=> b!89354 d!59175))

(declare-fun d!59177 () Bool)

(declare-fun c!21924 () Bool)

(assert (=> d!59177 (= c!21924 (is-Nil!699 l!1596))))

(declare-fun e!48706 () (Set T!6013))

(assert (=> d!59177 (= (content!166 l!1596) e!48706)))

(declare-fun b!89361 () Bool)

(assert (=> b!89361 (= e!48706 (as emptyset (Set T!6013)))))

(declare-fun b!89362 () Bool)

(assert (=> b!89362 (= e!48706 (union (insert (h!1101 l!1596) (as emptyset (Set T!6013))) (content!166 (t!48830 l!1596))))))

(assert (= (and d!59177 c!21924) b!89361))

(assert (= (and d!59177 (not c!21924)) b!89362))

(declare-fun m!85462 () Bool)

(assert (=> b!89362 m!85462))

(declare-fun m!85464 () Bool)

(assert (=> b!89362 m!85464))

(assert (=> b!89354 d!59177))

(declare-fun d!59179 () Bool)

(assert (=> d!59179 (= ($colon$colon!24 l!1596 x$2!519) (Cons!697 x$2!519 l!1596))))

(assert (=> b!89349 d!59179))

(declare-fun b!89367 () Bool)

(declare-fun e!48709 () Bool)

(declare-fun tp!17450 () Bool)

(assert (=> b!89367 (= e!48709 (and tp_is_empty!393 tp!17450))))

(assert (=> b!89350 (= tp!17447 e!48709)))

(assert (= (and b!89350 (is-Cons!697 (t!48830 l!1596))) b!89367))

(declare-fun b!89368 () Bool)

(declare-fun e!48710 () Bool)

(declare-fun tp!17451 () Bool)

(assert (=> b!89368 (= e!48710 (and tp_is_empty!393 tp!17451))))

(assert (=> b!89351 (= tp!17445 e!48710)))

(assert (= (and b!89351 (is-Cons!697 (t!48830 res!45953))) b!89368))

(push 1)

(assert (not d!59173))

(assert tp_is_empty!393)

(assert (not b_lambda!18263))

(assert (not b!89362))

(assert (not b!89367))

(assert b_and!60509)

(assert (not b_lambda!18265))

(assert (not d!59171))

(assert (not b!89368))

(assert (not b!89360))

(assert (not b_next!39889))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60509)

(assert (not b_next!39889))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59181 () Bool)

(declare-fun c!21925 () Bool)

(assert (=> d!59181 (= c!21925 (is-Nil!699 (t!48830 l!1596)))))

(declare-fun e!48711 () (Set T!6013))

(assert (=> d!59181 (= (content!166 (t!48830 l!1596)) e!48711)))

(declare-fun b!89369 () Bool)

(assert (=> b!89369 (= e!48711 (as emptyset (Set T!6013)))))

(declare-fun b!89370 () Bool)

(assert (=> b!89370 (= e!48711 (union (insert (h!1101 (t!48830 l!1596)) (as emptyset (Set T!6013))) (content!166 (t!48830 (t!48830 l!1596)))))))

(assert (= (and d!59181 c!21925) b!89369))

(assert (= (and d!59181 (not c!21925)) b!89370))

(declare-fun m!85466 () Bool)

(assert (=> b!89370 m!85466))

(declare-fun m!85468 () Bool)

(assert (=> b!89370 m!85468))

(assert (=> b!89362 d!59181))

(declare-fun d!59183 () Bool)

(declare-fun c!21926 () Bool)

(assert (=> d!59183 (= c!21926 (is-Nil!699 (t!48830 res!45953)))))

(declare-fun e!48712 () (Set T!6013))

(assert (=> d!59183 (= (content!166 (t!48830 res!45953)) e!48712)))

(declare-fun b!89371 () Bool)

(assert (=> b!89371 (= e!48712 (as emptyset (Set T!6013)))))

(declare-fun b!89372 () Bool)

(assert (=> b!89372 (= e!48712 (union (insert (h!1101 (t!48830 res!45953)) (as emptyset (Set T!6013))) (content!166 (t!48830 (t!48830 res!45953)))))))

(assert (= (and d!59183 c!21926) b!89371))

(assert (= (and d!59183 (not c!21926)) b!89372))

(declare-fun m!85470 () Bool)

(assert (=> b!89372 m!85470))

(declare-fun m!85472 () Bool)

(assert (=> b!89372 m!85472))

(assert (=> b!89360 d!59183))

(declare-fun d!59185 () Bool)

(declare-fun lt!20399 () Int)

(assert (=> d!59185 (>= lt!20399 0)))

(declare-fun e!48715 () Int)

(assert (=> d!59185 (= lt!20399 e!48715)))

(declare-fun c!21929 () Bool)

(assert (=> d!59185 (= c!21929 (is-Nil!699 l!1596))))

(assert (=> d!59185 (= (size!720 l!1596) lt!20399)))

(declare-fun b!89377 () Bool)

(assert (=> b!89377 (= e!48715 0)))

(declare-fun b!89378 () Bool)

(assert (=> b!89378 (= e!48715 (+ 1 (size!720 (t!48830 l!1596))))))

(assert (= (and d!59185 c!21929) b!89377))

(assert (= (and d!59185 (not c!21929)) b!89378))

(declare-fun m!85474 () Bool)

(assert (=> b!89378 m!85474))

(assert (=> d!59173 d!59185))

(declare-fun d!59187 () Bool)

(declare-fun lt!20400 () Int)

(assert (=> d!59187 (>= lt!20400 0)))

(declare-fun e!48716 () Int)

(assert (=> d!59187 (= lt!20400 e!48716)))

(declare-fun c!21930 () Bool)

(assert (=> d!59187 (= c!21930 (is-Nil!699 res!45953))))

(assert (=> d!59187 (= (size!720 res!45953) lt!20400)))

(declare-fun b!89379 () Bool)

(assert (=> b!89379 (= e!48716 0)))

(declare-fun b!89380 () Bool)

(assert (=> b!89380 (= e!48716 (+ 1 (size!720 (t!48830 res!45953))))))

(assert (= (and d!59187 c!21930) b!89379))

(assert (= (and d!59187 (not c!21930)) b!89380))

(declare-fun m!85476 () Bool)

(assert (=> b!89380 m!85476))

(assert (=> d!59171 d!59187))

(declare-fun b!89381 () Bool)

(declare-fun e!48717 () Bool)

(declare-fun tp!17452 () Bool)

(assert (=> b!89381 (= e!48717 (and tp_is_empty!393 tp!17452))))

(assert (=> b!89368 (= tp!17451 e!48717)))

(assert (= (and b!89368 (is-Cons!697 (t!48830 (t!48830 res!45953)))) b!89381))

(declare-fun b!89382 () Bool)

(declare-fun e!48718 () Bool)

(declare-fun tp!17453 () Bool)

(assert (=> b!89382 (= e!48718 (and tp_is_empty!393 tp!17453))))

(assert (=> b!89367 (= tp!17450 e!48718)))

(assert (= (and b!89367 (is-Cons!697 (t!48830 (t!48830 l!1596)))) b!89382))

(push 1)

(assert (not b!89372))

(assert tp_is_empty!393)

(assert (not b_lambda!18263))

(assert b_and!60509)

(assert (not b_lambda!18265))

(assert (not b!89381))

(assert (not b!89378))

(assert (not b!89380))

(assert (not b!89370))

(assert (not b!89382))

(assert (not b_next!39889))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60509)

(assert (not b_next!39889))

(check-sat)

(pop 1)

