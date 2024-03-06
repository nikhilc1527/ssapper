; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4610 () Bool)

(assert start!4610)

(declare-fun b_free!2197 () Bool)

(declare-fun b_next!5321 () Bool)

(assert (=> start!4610 (= b_free!2197 (not b_next!5321))))

(declare-fun tp!7316 () Bool)

(declare-fun b_and!7949 () Bool)

(assert (=> start!4610 (= tp!7316 b_and!7949)))

(declare-fun b!35194 () Bool)

(declare-fun f!2362 () Int)

(declare-fun lambda!4166 () Int)

(declare-fun b_next!5323 () Bool)

(assert (=> start!4610 (= b_next!5321 (or (and b!35194 (= lambda!4166 f!2362)) b_next!5323))))

(declare-fun res!16319 () Bool)

(declare-fun e!17768 () Bool)

(assert (=> b!35194 (=> (not res!16319) (not e!17768))))

(assert (=> b!35194 (= res!16319 (= f!2362 lambda!4166))))

(declare-fun res!16317 () Bool)

(assert (=> start!4610 (=> (not res!16317) (not e!17768))))

(declare-fun x!11399 () (_ BitVec 32))

(assert (=> start!4610 (= res!16317 (bvsge x!11399 #b00000000000000000000000000000000))))

(assert (=> start!4610 e!17768))

(assert (=> start!4610 true))

(assert (=> start!4610 tp!7316))

(declare-fun b!35195 () Bool)

(declare-fun res!16318 () Bool)

(assert (=> b!35195 (=> (not res!16318) (not e!17768))))

(declare-datatypes () ((List!401 (Nil!392) (Cons!391 (head!606 (_ BitVec 32)) (tail!630 List!401)))))

(declare-fun l1!263 () List!401)

(declare-fun list!234 () List!401)

(declare-fun take!3 (List!401 (_ BitVec 32)) List!401)

(assert (=> b!35195 (= res!16318 (= l1!263 (take!3 list!234 x!11399)))))

(declare-fun e!17769 () Bool)

(declare-fun b!35196 () Bool)

(declare-datatypes () ((ProofOps!298 (ProofOps!299 (prop!320 Bool)))))

(declare-fun because!1 (ProofOps!298 Bool) Bool)

(declare-fun lemma_split!0 (List!401 (_ BitVec 32)) Bool)

(assert (=> b!35196 (= e!17768 (not (because!1 (ProofOps!299 (lemma_split!0 list!234 x!11399)) e!17769)))))

(declare-fun res!16320 () Bool)

(assert (=> b!35196 (=> res!16320 e!17769)))

(assert (=> b!35196 (= res!16320 (not (and (is-Cons!391 list!234) (bvsgt x!11399 #b00000000000000000000000000000000))))))

(declare-fun b!35197 () Bool)

(declare-fun res!16321 () Bool)

(assert (=> b!35197 (=> (not res!16321) (not e!17768))))

(declare-fun l2!257 () List!401)

(declare-fun drop!1 (List!401 (_ BitVec 32)) List!401)

(assert (=> b!35197 (= res!16321 (= l2!257 (drop!1 list!234 x!11399)))))

(declare-fun b!35198 () Bool)

(declare-fun lemma_split_induct!0 (List!401 (_ BitVec 32)) Bool)

(assert (=> b!35198 (= e!17769 (lemma_split_induct!0 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)))))

(assert (= (and start!4610 res!16317) b!35194))

(assert (= (and b!35194 res!16319) b!35195))

(assert (= (and b!35195 res!16318) b!35197))

(assert (= (and b!35197 res!16321) b!35196))

(assert (= (and b!35196 (not res!16320)) b!35198))

(declare-fun m!37967 () Bool)

(assert (=> b!35195 m!37967))

(declare-fun m!37969 () Bool)

(assert (=> b!35196 m!37969))

(declare-fun m!37971 () Bool)

(assert (=> b!35196 m!37971))

(declare-fun m!37973 () Bool)

(assert (=> b!35197 m!37973))

(declare-fun m!37975 () Bool)

(assert (=> b!35198 m!37975))

(push 1)

(assert (not b!35196))

(assert (not b!35195))

(assert (not b!35197))

(assert (not b_next!5323))

(assert b_and!7949)

(assert (not b!35198))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7949)

(assert (not b_next!5323))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18426 () Bool)

(declare-fun c!7466 () Bool)

(assert (=> d!18426 (= c!7466 (and (is-Cons!391 list!234) (bvsgt x!11399 #b00000000000000000000000000000000)))))

(declare-fun e!17772 () List!401)

(assert (=> d!18426 (= (drop!1 list!234 x!11399) e!17772)))

(declare-fun b!35203 () Bool)

(assert (=> b!35203 (= e!17772 (drop!1 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)))))

(declare-fun b!35204 () Bool)

(assert (=> b!35204 (= e!17772 list!234)))

(assert (= (and d!18426 c!7466) b!35203))

(assert (= (and d!18426 (not c!7466)) b!35204))

(declare-fun m!37977 () Bool)

(assert (=> b!35203 m!37977))

(assert (=> b!35197 d!18426))

(declare-fun d!18428 () Bool)

(assert (=> d!18428 (= (because!1 (ProofOps!299 (lemma_split!0 list!234 x!11399)) e!17769) (and e!17769 (prop!320 (ProofOps!299 (lemma_split!0 list!234 x!11399)))))))

(assert (=> b!35196 d!18428))

(declare-fun bs!11277 () Bool)

(declare-fun d!18430 () Bool)

(assert (= bs!11277 (and d!18430 b!35194)))

(declare-fun lambda!4169 () Int)

(assert (=> bs!11277 (= lambda!4169 lambda!4166)))

(declare-fun b_next!5325 () Bool)

(assert (=> start!4610 (= b_next!5323 (or (and d!18430 (= lambda!4169 f!2362)) b_next!5325))))

(declare-fun foldRight!77 (List!401 (_ BitVec 32) Int) (_ BitVec 32))

(assert (=> d!18430 (= (lemma_split!0 list!234 x!11399) (= (foldRight!77 list!234 #b00000000000000000000000000000000 lambda!4169) (foldRight!77 (take!3 list!234 x!11399) (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169) lambda!4169)))))

(declare-fun bs!11278 () Bool)

(assert (= bs!11278 d!18430))

(assert (=> bs!11278 m!37967))

(declare-fun m!37979 () Bool)

(assert (=> bs!11278 m!37979))

(declare-fun m!37981 () Bool)

(assert (=> bs!11278 m!37981))

(declare-fun m!37983 () Bool)

(assert (=> bs!11278 m!37983))

(assert (=> bs!11278 m!37973))

(assert (=> bs!11278 m!37973))

(assert (=> bs!11278 m!37979))

(assert (=> bs!11278 m!37967))

(assert (=> b!35196 d!18430))

(declare-fun d!18432 () Bool)

(declare-fun e!17775 () Bool)

(assert (=> d!18432 (because!1 (ProofOps!299 (lemma_split!0 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001))) e!17775)))

(declare-fun res!16324 () Bool)

(assert (=> d!18432 (=> res!16324 e!17775)))

(assert (=> d!18432 (= res!16324 (not (and (is-Cons!391 (tail!630 list!234)) (bvsgt (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (=> d!18432 (bvsge (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!18432 (= (lemma_split_induct!0 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)) true)))

(declare-fun b!35207 () Bool)

(assert (=> b!35207 (= e!17775 (lemma_split_induct!0 (tail!630 (tail!630 list!234)) (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!18432 (not res!16324)) b!35207))

(declare-fun m!37985 () Bool)

(assert (=> d!18432 m!37985))

(declare-fun m!37987 () Bool)

(assert (=> d!18432 m!37987))

(declare-fun m!37989 () Bool)

(assert (=> b!35207 m!37989))

(assert (=> b!35198 d!18432))

(declare-fun d!18434 () Bool)

(declare-fun c!7469 () Bool)

(assert (=> d!18434 (= c!7469 (and (is-Cons!391 list!234) (bvsgt x!11399 #b00000000000000000000000000000000)))))

(declare-fun e!17778 () List!401)

(assert (=> d!18434 (= (take!3 list!234 x!11399) e!17778)))

(declare-fun b!35212 () Bool)

(assert (=> b!35212 (= e!17778 (Cons!391 (head!606 list!234) (take!3 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001))))))

(declare-fun b!35213 () Bool)

(assert (=> b!35213 (= e!17778 Nil!392)))

(assert (= (and d!18434 c!7469) b!35212))

(assert (= (and d!18434 (not c!7469)) b!35213))

(declare-fun m!37991 () Bool)

(assert (=> b!35212 m!37991))

(assert (=> b!35195 d!18434))

(push 1)

(assert (not b!35203))

(assert (not b_next!5325))

(assert (not d!18430))

(assert (not b!35207))

(assert (not d!18432))

(assert (not b!35212))

(assert b_and!7949)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7949)

(assert (not b_next!5325))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18436 () Bool)

(declare-fun c!7470 () Bool)

(assert (=> d!18436 (= c!7470 (and (is-Cons!391 (tail!630 list!234)) (bvsgt (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!17779 () List!401)

(assert (=> d!18436 (= (drop!1 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)) e!17779)))

(declare-fun b!35214 () Bool)

(assert (=> b!35214 (= e!17779 (drop!1 (tail!630 (tail!630 list!234)) (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!35215 () Bool)

(assert (=> b!35215 (= e!17779 (tail!630 list!234))))

(assert (= (and d!18436 c!7470) b!35214))

(assert (= (and d!18436 (not c!7470)) b!35215))

(declare-fun m!37993 () Bool)

(assert (=> b!35214 m!37993))

(assert (=> b!35203 d!18436))

(declare-fun d!18438 () Bool)

(declare-fun c!7473 () Bool)

(assert (=> d!18438 (= c!7473 (is-Cons!391 (take!3 list!234 x!11399)))))

(declare-fun e!17782 () (_ BitVec 32))

(assert (=> d!18438 (= (foldRight!77 (take!3 list!234 x!11399) (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169) lambda!4169) e!17782)))

(declare-fun b!35220 () Bool)

(declare-fun dynLambda!643 (Int (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!35220 (= e!17782 (dynLambda!643 lambda!4169 (head!606 (take!3 list!234 x!11399)) (foldRight!77 (tail!630 (take!3 list!234 x!11399)) (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169) lambda!4169)))))

(declare-fun b!35221 () Bool)

(assert (=> b!35221 (= e!17782 (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169))))

(assert (= (and d!18438 c!7473) b!35220))

(assert (= (and d!18438 (not c!7473)) b!35221))

(declare-fun b_lambda!9559 () Bool)

(assert (=> (not b_lambda!9559) (not b!35220)))

(assert (=> b!35220 m!37979))

(declare-fun m!37995 () Bool)

(assert (=> b!35220 m!37995))

(assert (=> b!35220 m!37995))

(declare-fun m!37997 () Bool)

(assert (=> b!35220 m!37997))

(assert (=> d!18430 d!18438))

(declare-fun d!18440 () Bool)

(declare-fun c!7474 () Bool)

(assert (=> d!18440 (= c!7474 (is-Cons!391 (drop!1 list!234 x!11399)))))

(declare-fun e!17783 () (_ BitVec 32))

(assert (=> d!18440 (= (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169) e!17783)))

(declare-fun b!35222 () Bool)

(assert (=> b!35222 (= e!17783 (dynLambda!643 lambda!4169 (head!606 (drop!1 list!234 x!11399)) (foldRight!77 (tail!630 (drop!1 list!234 x!11399)) #b00000000000000000000000000000000 lambda!4169)))))

(declare-fun b!35223 () Bool)

(assert (=> b!35223 (= e!17783 #b00000000000000000000000000000000)))

(assert (= (and d!18440 c!7474) b!35222))

(assert (= (and d!18440 (not c!7474)) b!35223))

(declare-fun b_lambda!9561 () Bool)

(assert (=> (not b_lambda!9561) (not b!35222)))

(declare-fun m!37999 () Bool)

(assert (=> b!35222 m!37999))

(assert (=> b!35222 m!37999))

(declare-fun m!38001 () Bool)

(assert (=> b!35222 m!38001))

(assert (=> d!18430 d!18440))

(assert (=> d!18430 d!18434))

(declare-fun d!18442 () Bool)

(declare-fun c!7475 () Bool)

(assert (=> d!18442 (= c!7475 (is-Cons!391 list!234))))

(declare-fun e!17784 () (_ BitVec 32))

(assert (=> d!18442 (= (foldRight!77 list!234 #b00000000000000000000000000000000 lambda!4169) e!17784)))

(declare-fun b!35224 () Bool)

(assert (=> b!35224 (= e!17784 (dynLambda!643 lambda!4169 (head!606 list!234) (foldRight!77 (tail!630 list!234) #b00000000000000000000000000000000 lambda!4169)))))

(declare-fun b!35225 () Bool)

(assert (=> b!35225 (= e!17784 #b00000000000000000000000000000000)))

(assert (= (and d!18442 c!7475) b!35224))

(assert (= (and d!18442 (not c!7475)) b!35225))

(declare-fun b_lambda!9563 () Bool)

(assert (=> (not b_lambda!9563) (not b!35224)))

(declare-fun m!38003 () Bool)

(assert (=> b!35224 m!38003))

(assert (=> b!35224 m!38003))

(declare-fun m!38005 () Bool)

(assert (=> b!35224 m!38005))

(assert (=> d!18430 d!18442))

(assert (=> d!18430 d!18426))

(declare-fun d!18444 () Bool)

(declare-fun e!17785 () Bool)

(assert (=> d!18444 (because!1 (ProofOps!299 (lemma_split!0 (tail!630 (tail!630 list!234)) (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) e!17785)))

(declare-fun res!16325 () Bool)

(assert (=> d!18444 (=> res!16325 e!17785)))

(assert (=> d!18444 (= res!16325 (not (and (is-Cons!391 (tail!630 (tail!630 list!234))) (bvsgt (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (=> d!18444 (bvsge (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!18444 (= (lemma_split_induct!0 (tail!630 (tail!630 list!234)) (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) true)))

(declare-fun b!35226 () Bool)

(assert (=> b!35226 (= e!17785 (lemma_split_induct!0 (tail!630 (tail!630 (tail!630 list!234))) (bvsub (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!18444 (not res!16325)) b!35226))

(declare-fun m!38007 () Bool)

(assert (=> d!18444 m!38007))

(declare-fun m!38009 () Bool)

(assert (=> d!18444 m!38009))

(declare-fun m!38011 () Bool)

(assert (=> b!35226 m!38011))

(assert (=> b!35207 d!18444))

(declare-fun d!18446 () Bool)

(declare-fun c!7476 () Bool)

(assert (=> d!18446 (= c!7476 (and (is-Cons!391 (tail!630 list!234)) (bvsgt (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!17786 () List!401)

(assert (=> d!18446 (= (take!3 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)) e!17786)))

(declare-fun b!35227 () Bool)

(assert (=> b!35227 (= e!17786 (Cons!391 (head!606 (tail!630 list!234)) (take!3 (tail!630 (tail!630 list!234)) (bvsub (bvsub x!11399 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!35228 () Bool)

(assert (=> b!35228 (= e!17786 Nil!392)))

(assert (= (and d!18446 c!7476) b!35227))

(assert (= (and d!18446 (not c!7476)) b!35228))

(declare-fun m!38013 () Bool)

(assert (=> b!35227 m!38013))

(assert (=> b!35212 d!18446))

(declare-fun d!18448 () Bool)

(assert (=> d!18448 (= (because!1 (ProofOps!299 (lemma_split!0 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001))) e!17775) (and e!17775 (prop!320 (ProofOps!299 (lemma_split!0 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001))))))))

(assert (=> d!18432 d!18448))

(declare-fun bs!11279 () Bool)

(declare-fun d!18450 () Bool)

(assert (= bs!11279 (and d!18450 b!35194)))

(declare-fun lambda!4170 () Int)

(assert (=> bs!11279 (= lambda!4170 lambda!4166)))

(declare-fun bs!11280 () Bool)

(assert (= bs!11280 (and d!18450 d!18430)))

(assert (=> bs!11280 (= lambda!4170 lambda!4169)))

(declare-fun b_next!5327 () Bool)

(assert (=> start!4610 (= b_next!5325 (or (and d!18450 (= lambda!4170 f!2362)) b_next!5327))))

(assert (=> d!18450 (= (lemma_split!0 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)) (= (foldRight!77 (tail!630 list!234) #b00000000000000000000000000000000 lambda!4170) (foldRight!77 (take!3 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)) (foldRight!77 (drop!1 (tail!630 list!234) (bvsub x!11399 #b00000000000000000000000000000001)) #b00000000000000000000000000000000 lambda!4170) lambda!4170)))))

(declare-fun bs!11281 () Bool)

(assert (= bs!11281 d!18450))

(assert (=> bs!11281 m!37991))

(declare-fun m!38015 () Bool)

(assert (=> bs!11281 m!38015))

(declare-fun m!38017 () Bool)

(assert (=> bs!11281 m!38017))

(declare-fun m!38019 () Bool)

(assert (=> bs!11281 m!38019))

(assert (=> bs!11281 m!37977))

(assert (=> bs!11281 m!37977))

(assert (=> bs!11281 m!38015))

(assert (=> bs!11281 m!37991))

(assert (=> d!18432 d!18450))

(declare-fun b_lambda!9565 () Bool)

(assert (= b_lambda!9563 (or d!18430 b_lambda!9565)))

(declare-fun bs!11282 () Bool)

(declare-fun d!18452 () Bool)

(assert (= bs!11282 (and d!18452 d!18430)))

(assert (=> bs!11282 (= (dynLambda!643 lambda!4169 (head!606 list!234) (foldRight!77 (tail!630 list!234) #b00000000000000000000000000000000 lambda!4169)) (bvadd (head!606 list!234) (foldRight!77 (tail!630 list!234) #b00000000000000000000000000000000 lambda!4169)))))

(assert (=> b!35224 d!18452))

(declare-fun b_lambda!9567 () Bool)

(assert (= b_lambda!9559 (or d!18430 b_lambda!9567)))

(declare-fun bs!11283 () Bool)

(declare-fun d!18454 () Bool)

(assert (= bs!11283 (and d!18454 d!18430)))

(assert (=> bs!11283 (= (dynLambda!643 lambda!4169 (head!606 (take!3 list!234 x!11399)) (foldRight!77 (tail!630 (take!3 list!234 x!11399)) (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169) lambda!4169)) (bvadd (head!606 (take!3 list!234 x!11399)) (foldRight!77 (tail!630 (take!3 list!234 x!11399)) (foldRight!77 (drop!1 list!234 x!11399) #b00000000000000000000000000000000 lambda!4169) lambda!4169)))))

(assert (=> b!35220 d!18454))

(declare-fun b_lambda!9569 () Bool)

(assert (= b_lambda!9561 (or d!18430 b_lambda!9569)))

(declare-fun bs!11284 () Bool)

(declare-fun d!18456 () Bool)

(assert (= bs!11284 (and d!18456 d!18430)))

(assert (=> bs!11284 (= (dynLambda!643 lambda!4169 (head!606 (drop!1 list!234 x!11399)) (foldRight!77 (tail!630 (drop!1 list!234 x!11399)) #b00000000000000000000000000000000 lambda!4169)) (bvadd (head!606 (drop!1 list!234 x!11399)) (foldRight!77 (tail!630 (drop!1 list!234 x!11399)) #b00000000000000000000000000000000 lambda!4169)))))

(assert (=> b!35222 d!18456))

(push 1)

(assert (not d!18444))

(assert (not b_lambda!9565))

(assert (not d!18450))

(assert (not b!35214))

(assert (not b!35220))

(assert (not b_next!5327))

(assert (not b!35224))

(assert (not b!35227))

(assert (not b!35226))

(assert (not b!35222))

(assert (not b_lambda!9567))

(assert b_and!7949)

(assert (not b_lambda!9569))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7949)

(assert (not b_next!5327))

(check-sat)

(pop 1)

