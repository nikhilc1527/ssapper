; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4626 () Bool)

(assert start!4626)

(declare-fun b_free!2201 () Bool)

(declare-fun b_next!5333 () Bool)

(assert (=> start!4626 (= b_free!2201 (not b_next!5333))))

(declare-fun tp!7322 () Bool)

(declare-fun b_and!7953 () Bool)

(assert (=> start!4626 (= tp!7322 b_and!7953)))

(declare-fun f!2359 () Int)

(declare-fun lambda!4176 () Int)

(declare-fun b_next!5335 () Bool)

(declare-fun b!35258 () Bool)

(assert (=> start!4626 (= b_next!5333 (or (and b!35258 (= lambda!4176 f!2359)) b_next!5335))))

(declare-fun e!17794 () Bool)

(declare-fun e!17795 () Bool)

(declare-datatypes () ((List!403 (Nil!394) (Cons!393 (head!608 (_ BitVec 32)) (tail!632 List!403)))))

(declare-fun list!222 () List!403)

(declare-fun x!11392 () (_ BitVec 32))

(declare-fun b!35254 () Bool)

(declare-datatypes () ((ProofOps!302 (ProofOps!303 (prop!323 Bool)))))

(declare-fun because!1 (ProofOps!302 Bool) Bool)

(declare-fun lemma_reassociative!0 (List!403 (_ BitVec 32)) Bool)

(assert (=> b!35254 (= e!17794 (not (because!1 (ProofOps!303 (lemma_reassociative!0 list!222 x!11392)) e!17795)))))

(declare-fun res!16353 () Bool)

(assert (=> b!35254 (=> res!16353 e!17795)))

(assert (=> b!35254 (= res!16353 (not (and (is-Cons!393 list!222) (bvsgt x!11392 #b00000000000000000000000000000000))))))

(declare-fun res!16354 () Bool)

(assert (=> start!4626 (=> (not res!16354) (not e!17794))))

(assert (=> start!4626 (= res!16354 (bvsge x!11392 #b00000000000000000000000000000000))))

(assert (=> start!4626 e!17794))

(assert (=> start!4626 tp!7322))

(assert (=> start!4626 true))

(declare-fun b!35255 () Bool)

(declare-fun res!16355 () Bool)

(assert (=> b!35255 (=> (not res!16355) (not e!17794))))

(declare-fun l2!251 () List!403)

(declare-fun drop!1 (List!403 (_ BitVec 32)) List!403)

(assert (=> b!35255 (= res!16355 (= l2!251 (drop!1 list!222 x!11392)))))

(declare-fun b!35256 () Bool)

(declare-fun res!16351 () Bool)

(assert (=> b!35256 (=> (not res!16351) (not e!17794))))

(declare-fun l1!257 () List!403)

(declare-fun take!3 (List!403 (_ BitVec 32)) List!403)

(assert (=> b!35256 (= res!16351 (= l1!257 (take!3 list!222 x!11392)))))

(declare-fun b!35257 () Bool)

(declare-fun lemma_reassociative_induct!0 (List!403 (_ BitVec 32)) Bool)

(assert (=> b!35257 (= e!17795 (lemma_reassociative_induct!0 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)))))

(declare-fun res!16352 () Bool)

(assert (=> b!35258 (=> (not res!16352) (not e!17794))))

(assert (=> b!35258 (= res!16352 (= f!2359 lambda!4176))))

(assert (= (and start!4626 res!16354) b!35258))

(assert (= (and b!35258 res!16352) b!35256))

(assert (= (and b!35256 res!16351) b!35255))

(assert (= (and b!35255 res!16355) b!35254))

(assert (= (and b!35254 (not res!16353)) b!35257))

(declare-fun m!38027 () Bool)

(assert (=> b!35254 m!38027))

(declare-fun m!38029 () Bool)

(assert (=> b!35254 m!38029))

(declare-fun m!38031 () Bool)

(assert (=> b!35255 m!38031))

(declare-fun m!38033 () Bool)

(assert (=> b!35256 m!38033))

(declare-fun m!38035 () Bool)

(assert (=> b!35257 m!38035))

(push 1)

(assert (not b!35254))

(assert b_and!7953)

(assert (not b!35256))

(assert (not b!35257))

(assert (not b_next!5335))

(assert (not b!35255))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7953)

(assert (not b_next!5335))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18458 () Bool)

(declare-fun c!7479 () Bool)

(assert (=> d!18458 (= c!7479 (and (is-Cons!393 list!222) (bvsgt x!11392 #b00000000000000000000000000000000)))))

(declare-fun e!17798 () List!403)

(assert (=> d!18458 (= (drop!1 list!222 x!11392) e!17798)))

(declare-fun b!35263 () Bool)

(assert (=> b!35263 (= e!17798 (drop!1 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)))))

(declare-fun b!35264 () Bool)

(assert (=> b!35264 (= e!17798 list!222)))

(assert (= (and d!18458 c!7479) b!35263))

(assert (= (and d!18458 (not c!7479)) b!35264))

(declare-fun m!38037 () Bool)

(assert (=> b!35263 m!38037))

(assert (=> b!35255 d!18458))

(declare-fun d!18460 () Bool)

(declare-fun e!17801 () Bool)

(assert (=> d!18460 (because!1 (ProofOps!303 (lemma_reassociative!0 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001))) e!17801)))

(declare-fun res!16358 () Bool)

(assert (=> d!18460 (=> res!16358 e!17801)))

(assert (=> d!18460 (= res!16358 (not (and (is-Cons!393 (tail!632 list!222)) (bvsgt (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (=> d!18460 (bvsge (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!18460 (= (lemma_reassociative_induct!0 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)) true)))

(declare-fun b!35267 () Bool)

(assert (=> b!35267 (= e!17801 (lemma_reassociative_induct!0 (tail!632 (tail!632 list!222)) (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!18460 (not res!16358)) b!35267))

(declare-fun m!38039 () Bool)

(assert (=> d!18460 m!38039))

(declare-fun m!38041 () Bool)

(assert (=> d!18460 m!38041))

(declare-fun m!38043 () Bool)

(assert (=> b!35267 m!38043))

(assert (=> b!35257 d!18460))

(declare-fun d!18462 () Bool)

(assert (=> d!18462 (= (because!1 (ProofOps!303 (lemma_reassociative!0 list!222 x!11392)) e!17795) (and e!17795 (prop!323 (ProofOps!303 (lemma_reassociative!0 list!222 x!11392)))))))

(assert (=> b!35254 d!18462))

(declare-fun bs!11287 () Bool)

(declare-fun d!18464 () Bool)

(assert (= bs!11287 (and d!18464 b!35258)))

(declare-fun lambda!4179 () Int)

(assert (=> bs!11287 (= lambda!4179 lambda!4176)))

(declare-fun b_next!5337 () Bool)

(assert (=> start!4626 (= b_next!5335 (or (and d!18464 (= lambda!4179 f!2359)) b_next!5337))))

(declare-fun foldRight!78 (List!403 (_ BitVec 32) Int) (_ BitVec 32))

(assert (=> d!18464 (= (lemma_reassociative!0 list!222 x!11392) (= (foldRight!78 list!222 #b00000000000000000000000000000000 lambda!4179) (bvadd (foldRight!78 (take!3 list!222 x!11392) #b00000000000000000000000000000000 lambda!4179) (foldRight!78 (drop!1 list!222 x!11392) #b00000000000000000000000000000000 lambda!4179))))))

(declare-fun bs!11288 () Bool)

(assert (= bs!11288 d!18464))

(assert (=> bs!11288 m!38031))

(assert (=> bs!11288 m!38033))

(declare-fun m!38045 () Bool)

(assert (=> bs!11288 m!38045))

(assert (=> bs!11288 m!38033))

(declare-fun m!38047 () Bool)

(assert (=> bs!11288 m!38047))

(assert (=> bs!11288 m!38031))

(declare-fun m!38049 () Bool)

(assert (=> bs!11288 m!38049))

(assert (=> b!35254 d!18464))

(declare-fun d!18466 () Bool)

(declare-fun c!7482 () Bool)

(assert (=> d!18466 (= c!7482 (and (is-Cons!393 list!222) (bvsgt x!11392 #b00000000000000000000000000000000)))))

(declare-fun e!17804 () List!403)

(assert (=> d!18466 (= (take!3 list!222 x!11392) e!17804)))

(declare-fun b!35272 () Bool)

(assert (=> b!35272 (= e!17804 (Cons!393 (head!608 list!222) (take!3 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001))))))

(declare-fun b!35273 () Bool)

(assert (=> b!35273 (= e!17804 Nil!394)))

(assert (= (and d!18466 c!7482) b!35272))

(assert (= (and d!18466 (not c!7482)) b!35273))

(declare-fun m!38051 () Bool)

(assert (=> b!35272 m!38051))

(assert (=> b!35256 d!18466))

(push 1)

(assert (not d!18464))

(assert (not b!35272))

(assert (not d!18460))

(assert (not b!35267))

(assert b_and!7953)

(assert (not b_next!5337))

(assert (not b!35263))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7953)

(assert (not b_next!5337))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18468 () Bool)

(declare-fun c!7483 () Bool)

(assert (=> d!18468 (= c!7483 (and (is-Cons!393 (tail!632 list!222)) (bvsgt (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!17805 () List!403)

(assert (=> d!18468 (= (take!3 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)) e!17805)))

(declare-fun b!35274 () Bool)

(assert (=> b!35274 (= e!17805 (Cons!393 (head!608 (tail!632 list!222)) (take!3 (tail!632 (tail!632 list!222)) (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!35275 () Bool)

(assert (=> b!35275 (= e!17805 Nil!394)))

(assert (= (and d!18468 c!7483) b!35274))

(assert (= (and d!18468 (not c!7483)) b!35275))

(declare-fun m!38053 () Bool)

(assert (=> b!35274 m!38053))

(assert (=> b!35272 d!18468))

(declare-fun d!18470 () Bool)

(declare-fun e!17806 () Bool)

(assert (=> d!18470 (because!1 (ProofOps!303 (lemma_reassociative!0 (tail!632 (tail!632 list!222)) (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) e!17806)))

(declare-fun res!16359 () Bool)

(assert (=> d!18470 (=> res!16359 e!17806)))

(assert (=> d!18470 (= res!16359 (not (and (is-Cons!393 (tail!632 (tail!632 list!222))) (bvsgt (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (=> d!18470 (bvsge (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!18470 (= (lemma_reassociative_induct!0 (tail!632 (tail!632 list!222)) (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) true)))

(declare-fun b!35276 () Bool)

(assert (=> b!35276 (= e!17806 (lemma_reassociative_induct!0 (tail!632 (tail!632 (tail!632 list!222))) (bvsub (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!18470 (not res!16359)) b!35276))

(declare-fun m!38055 () Bool)

(assert (=> d!18470 m!38055))

(declare-fun m!38057 () Bool)

(assert (=> d!18470 m!38057))

(declare-fun m!38059 () Bool)

(assert (=> b!35276 m!38059))

(assert (=> b!35267 d!18470))

(declare-fun d!18472 () Bool)

(declare-fun c!7484 () Bool)

(assert (=> d!18472 (= c!7484 (and (is-Cons!393 (tail!632 list!222)) (bvsgt (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!17807 () List!403)

(assert (=> d!18472 (= (drop!1 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)) e!17807)))

(declare-fun b!35277 () Bool)

(assert (=> b!35277 (= e!17807 (drop!1 (tail!632 (tail!632 list!222)) (bvsub (bvsub x!11392 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!35278 () Bool)

(assert (=> b!35278 (= e!17807 (tail!632 list!222))))

(assert (= (and d!18472 c!7484) b!35277))

(assert (= (and d!18472 (not c!7484)) b!35278))

(declare-fun m!38061 () Bool)

(assert (=> b!35277 m!38061))

(assert (=> b!35263 d!18472))

(declare-fun d!18474 () Bool)

(assert (=> d!18474 (= (because!1 (ProofOps!303 (lemma_reassociative!0 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001))) e!17801) (and e!17801 (prop!323 (ProofOps!303 (lemma_reassociative!0 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001))))))))

(assert (=> d!18460 d!18474))

(declare-fun bs!11289 () Bool)

(declare-fun d!18476 () Bool)

(assert (= bs!11289 (and d!18476 b!35258)))

(declare-fun lambda!4180 () Int)

(assert (=> bs!11289 (= lambda!4180 lambda!4176)))

(declare-fun bs!11290 () Bool)

(assert (= bs!11290 (and d!18476 d!18464)))

(assert (=> bs!11290 (= lambda!4180 lambda!4179)))

(declare-fun b_next!5339 () Bool)

(assert (=> start!4626 (= b_next!5337 (or (and d!18476 (= lambda!4180 f!2359)) b_next!5339))))

(assert (=> d!18476 (= (lemma_reassociative!0 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)) (= (foldRight!78 (tail!632 list!222) #b00000000000000000000000000000000 lambda!4180) (bvadd (foldRight!78 (take!3 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)) #b00000000000000000000000000000000 lambda!4180) (foldRight!78 (drop!1 (tail!632 list!222) (bvsub x!11392 #b00000000000000000000000000000001)) #b00000000000000000000000000000000 lambda!4180))))))

(declare-fun bs!11291 () Bool)

(assert (= bs!11291 d!18476))

(assert (=> bs!11291 m!38037))

(assert (=> bs!11291 m!38051))

(declare-fun m!38063 () Bool)

(assert (=> bs!11291 m!38063))

(assert (=> bs!11291 m!38051))

(declare-fun m!38065 () Bool)

(assert (=> bs!11291 m!38065))

(assert (=> bs!11291 m!38037))

(declare-fun m!38067 () Bool)

(assert (=> bs!11291 m!38067))

(assert (=> d!18460 d!18476))

(declare-fun d!18478 () Bool)

(declare-fun c!7487 () Bool)

(assert (=> d!18478 (= c!7487 (is-Cons!393 (drop!1 list!222 x!11392)))))

(declare-fun e!17810 () (_ BitVec 32))

(assert (=> d!18478 (= (foldRight!78 (drop!1 list!222 x!11392) #b00000000000000000000000000000000 lambda!4179) e!17810)))

(declare-fun b!35283 () Bool)

(declare-fun dynLambda!644 (Int (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!35283 (= e!17810 (dynLambda!644 lambda!4179 (head!608 (drop!1 list!222 x!11392)) (foldRight!78 (tail!632 (drop!1 list!222 x!11392)) #b00000000000000000000000000000000 lambda!4179)))))

(declare-fun b!35284 () Bool)

(assert (=> b!35284 (= e!17810 #b00000000000000000000000000000000)))

(assert (= (and d!18478 c!7487) b!35283))

(assert (= (and d!18478 (not c!7487)) b!35284))

(declare-fun b_lambda!9571 () Bool)

(assert (=> (not b_lambda!9571) (not b!35283)))

(declare-fun m!38069 () Bool)

(assert (=> b!35283 m!38069))

(assert (=> b!35283 m!38069))

(declare-fun m!38071 () Bool)

(assert (=> b!35283 m!38071))

(assert (=> d!18464 d!18478))

(declare-fun d!18480 () Bool)

(declare-fun c!7488 () Bool)

(assert (=> d!18480 (= c!7488 (is-Cons!393 (take!3 list!222 x!11392)))))

(declare-fun e!17811 () (_ BitVec 32))

(assert (=> d!18480 (= (foldRight!78 (take!3 list!222 x!11392) #b00000000000000000000000000000000 lambda!4179) e!17811)))

(declare-fun b!35285 () Bool)

(assert (=> b!35285 (= e!17811 (dynLambda!644 lambda!4179 (head!608 (take!3 list!222 x!11392)) (foldRight!78 (tail!632 (take!3 list!222 x!11392)) #b00000000000000000000000000000000 lambda!4179)))))

(declare-fun b!35286 () Bool)

(assert (=> b!35286 (= e!17811 #b00000000000000000000000000000000)))

(assert (= (and d!18480 c!7488) b!35285))

(assert (= (and d!18480 (not c!7488)) b!35286))

(declare-fun b_lambda!9573 () Bool)

(assert (=> (not b_lambda!9573) (not b!35285)))

(declare-fun m!38073 () Bool)

(assert (=> b!35285 m!38073))

(assert (=> b!35285 m!38073))

(declare-fun m!38075 () Bool)

(assert (=> b!35285 m!38075))

(assert (=> d!18464 d!18480))

(assert (=> d!18464 d!18458))

(assert (=> d!18464 d!18466))

(declare-fun d!18482 () Bool)

(declare-fun c!7489 () Bool)

(assert (=> d!18482 (= c!7489 (is-Cons!393 list!222))))

(declare-fun e!17812 () (_ BitVec 32))

(assert (=> d!18482 (= (foldRight!78 list!222 #b00000000000000000000000000000000 lambda!4179) e!17812)))

(declare-fun b!35287 () Bool)

(assert (=> b!35287 (= e!17812 (dynLambda!644 lambda!4179 (head!608 list!222) (foldRight!78 (tail!632 list!222) #b00000000000000000000000000000000 lambda!4179)))))

(declare-fun b!35288 () Bool)

(assert (=> b!35288 (= e!17812 #b00000000000000000000000000000000)))

(assert (= (and d!18482 c!7489) b!35287))

(assert (= (and d!18482 (not c!7489)) b!35288))

(declare-fun b_lambda!9575 () Bool)

(assert (=> (not b_lambda!9575) (not b!35287)))

(declare-fun m!38077 () Bool)

(assert (=> b!35287 m!38077))

(assert (=> b!35287 m!38077))

(declare-fun m!38079 () Bool)

(assert (=> b!35287 m!38079))

(assert (=> d!18464 d!18482))

(declare-fun b_lambda!9577 () Bool)

(assert (= b_lambda!9575 (or d!18464 b_lambda!9577)))

(declare-fun bs!11292 () Bool)

(declare-fun d!18484 () Bool)

(assert (= bs!11292 (and d!18484 d!18464)))

(assert (=> bs!11292 (= (dynLambda!644 lambda!4179 (head!608 list!222) (foldRight!78 (tail!632 list!222) #b00000000000000000000000000000000 lambda!4179)) (bvadd (head!608 list!222) (foldRight!78 (tail!632 list!222) #b00000000000000000000000000000000 lambda!4179)))))

(assert (=> b!35287 d!18484))

(declare-fun b_lambda!9579 () Bool)

(assert (= b_lambda!9573 (or d!18464 b_lambda!9579)))

(declare-fun bs!11293 () Bool)

(declare-fun d!18486 () Bool)

(assert (= bs!11293 (and d!18486 d!18464)))

(assert (=> bs!11293 (= (dynLambda!644 lambda!4179 (head!608 (take!3 list!222 x!11392)) (foldRight!78 (tail!632 (take!3 list!222 x!11392)) #b00000000000000000000000000000000 lambda!4179)) (bvadd (head!608 (take!3 list!222 x!11392)) (foldRight!78 (tail!632 (take!3 list!222 x!11392)) #b00000000000000000000000000000000 lambda!4179)))))

(assert (=> b!35285 d!18486))

(declare-fun b_lambda!9581 () Bool)

(assert (= b_lambda!9571 (or d!18464 b_lambda!9581)))

(declare-fun bs!11294 () Bool)

(declare-fun d!18488 () Bool)

(assert (= bs!11294 (and d!18488 d!18464)))

(assert (=> bs!11294 (= (dynLambda!644 lambda!4179 (head!608 (drop!1 list!222 x!11392)) (foldRight!78 (tail!632 (drop!1 list!222 x!11392)) #b00000000000000000000000000000000 lambda!4179)) (bvadd (head!608 (drop!1 list!222 x!11392)) (foldRight!78 (tail!632 (drop!1 list!222 x!11392)) #b00000000000000000000000000000000 lambda!4179)))))

(assert (=> b!35283 d!18488))

(push 1)

(assert (not b!35287))

(assert (not b_lambda!9579))

(assert (not d!18470))

(assert (not b_next!5339))

(assert (not b!35274))

(assert (not b!35277))

(assert (not b!35285))

(assert (not d!18476))

(assert b_and!7953)

(assert (not b_lambda!9577))

(assert (not b!35283))

(assert (not b!35276))

(assert (not b_lambda!9581))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7953)

(assert (not b_next!5339))

(check-sat)

(pop 1)

