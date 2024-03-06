; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8148 () Bool)

(assert start!8148)

(declare-fun res!26863 () Bool)

(declare-fun e!30791 () Bool)

(assert (=> start!8148 (=> res!26863 e!30791)))

(declare-datatypes () ((T!3694 (T!3695 (val!153 Int)))))

(declare-datatypes () ((List!455 (Cons!431 (h!668 T!3694) (t!47074 List!455)) (Nil!432))))

(declare-fun list!275 () List!455)

(assert (=> start!8148 (= res!26863 (not (is-Cons!431 list!275)))))

(declare-datatypes () ((ProofOps!322 (ProofOps!323 (prop!374 Bool)))))

(declare-fun because!1 (ProofOps!322 Bool) Bool)

(declare-fun flatMap_to_zero_law!4 (List!455) Bool)

(assert (=> start!8148 (not (because!1 (ProofOps!323 (flatMap_to_zero_law!4 list!275)) e!30791))))

(declare-fun e!30792 () Bool)

(assert (=> start!8148 e!30792))

(declare-fun b!57916 () Bool)

(declare-fun flatMap_to_zero_induct!2 (List!455) Bool)

(assert (=> b!57916 (= e!30791 (flatMap_to_zero_induct!2 (t!47074 list!275)))))

(declare-fun b!57917 () Bool)

(declare-fun tp_is_empty!305 () Bool)

(declare-fun tp!16239 () Bool)

(assert (=> b!57917 (= e!30792 (and tp_is_empty!305 tp!16239))))

(assert (= (and start!8148 (not res!26863)) b!57916))

(assert (= (and start!8148 (is-Cons!431 list!275)) b!57917))

(declare-fun m!62486 () Bool)

(assert (=> start!8148 m!62486))

(declare-fun m!62488 () Bool)

(assert (=> start!8148 m!62488))

(declare-fun m!62490 () Bool)

(assert (=> b!57916 m!62490))

(push 1)

(assert (not start!8148))

(assert (not b!57916))

(assert (not b!57917))

(assert tp_is_empty!305)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50384 () Bool)

(assert (=> d!50384 (= (because!1 (ProofOps!323 (flatMap_to_zero_law!4 list!275)) e!30791) (and e!30791 (prop!374 (ProofOps!323 (flatMap_to_zero_law!4 list!275)))))))

(assert (=> start!8148 d!50384))

(declare-fun d!50386 () Bool)

(declare-fun lambda!9089 () Int)

(declare-fun flatMap!15 (List!455 Int) List!455)

(assert (=> d!50386 (= (flatMap_to_zero_law!4 list!275) (= (flatMap!15 list!275 lambda!9089) Nil!432))))

(declare-fun bs!36305 () Bool)

(assert (= bs!36305 d!50386))

(declare-fun m!62492 () Bool)

(assert (=> bs!36305 m!62492))

(assert (=> start!8148 d!50386))

(declare-fun d!50388 () Bool)

(declare-fun e!30795 () Bool)

(assert (=> d!50388 (because!1 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 list!275))) e!30795)))

(declare-fun res!26866 () Bool)

(assert (=> d!50388 (=> res!26866 e!30795)))

(assert (=> d!50388 (= res!26866 (not (is-Cons!431 (t!47074 list!275))))))

(assert (=> d!50388 (= (flatMap_to_zero_induct!2 (t!47074 list!275)) true)))

(declare-fun b!57920 () Bool)

(assert (=> b!57920 (= e!30795 (flatMap_to_zero_induct!2 (t!47074 (t!47074 list!275))))))

(assert (= (and d!50388 (not res!26866)) b!57920))

(declare-fun m!62494 () Bool)

(assert (=> d!50388 m!62494))

(declare-fun m!62496 () Bool)

(assert (=> d!50388 m!62496))

(declare-fun m!62498 () Bool)

(assert (=> b!57920 m!62498))

(assert (=> b!57916 d!50388))

(declare-fun b!57925 () Bool)

(declare-fun e!30798 () Bool)

(declare-fun tp!16242 () Bool)

(assert (=> b!57925 (= e!30798 (and tp_is_empty!305 tp!16242))))

(assert (=> b!57917 (= tp!16239 e!30798)))

(assert (= (and b!57917 (is-Cons!431 (t!47074 list!275))) b!57925))

(push 1)

(assert tp_is_empty!305)

(assert (not d!50386))

(assert (not b!57925))

(assert (not b!57920))

(assert (not d!50388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50390 () Bool)

(declare-fun e!30799 () Bool)

(assert (=> d!50390 (because!1 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 (t!47074 list!275)))) e!30799)))

(declare-fun res!26867 () Bool)

(assert (=> d!50390 (=> res!26867 e!30799)))

(assert (=> d!50390 (= res!26867 (not (is-Cons!431 (t!47074 (t!47074 list!275)))))))

(assert (=> d!50390 (= (flatMap_to_zero_induct!2 (t!47074 (t!47074 list!275))) true)))

(declare-fun b!57926 () Bool)

(assert (=> b!57926 (= e!30799 (flatMap_to_zero_induct!2 (t!47074 (t!47074 (t!47074 list!275)))))))

(assert (= (and d!50390 (not res!26867)) b!57926))

(declare-fun m!62500 () Bool)

(assert (=> d!50390 m!62500))

(declare-fun m!62502 () Bool)

(assert (=> d!50390 m!62502))

(declare-fun m!62504 () Bool)

(assert (=> b!57926 m!62504))

(assert (=> b!57920 d!50390))

(declare-fun d!50392 () Bool)

(assert (=> d!50392 (= (because!1 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 list!275))) e!30795) (and e!30795 (prop!374 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 list!275))))))))

(assert (=> d!50388 d!50392))

(declare-fun bs!36306 () Bool)

(declare-fun d!50394 () Bool)

(assert (= bs!36306 (and d!50394 d!50386)))

(declare-fun lambda!9090 () Int)

(assert (=> bs!36306 (= lambda!9090 lambda!9089)))

(assert (=> d!50394 (= (flatMap_to_zero_law!4 (t!47074 list!275)) (= (flatMap!15 (t!47074 list!275) lambda!9090) Nil!432))))

(declare-fun bs!36307 () Bool)

(assert (= bs!36307 d!50394))

(declare-fun m!62506 () Bool)

(assert (=> bs!36307 m!62506))

(assert (=> d!50388 d!50394))

(declare-fun d!50396 () Bool)

(declare-fun c!12358 () Bool)

(assert (=> d!50396 (= c!12358 (is-Cons!431 list!275))))

(declare-fun e!30802 () List!455)

(assert (=> d!50396 (= (flatMap!15 list!275 lambda!9089) e!30802)))

(declare-fun b!57931 () Bool)

(declare-fun append!152 (List!455 List!455) List!455)

(declare-fun dynLambda!920 (Int T!3694) List!455)

(assert (=> b!57931 (= e!30802 (append!152 (dynLambda!920 lambda!9089 (h!668 list!275)) (flatMap!15 (t!47074 list!275) lambda!9089)))))

(declare-fun b!57932 () Bool)

(assert (=> b!57932 (= e!30802 Nil!432)))

(assert (= (and d!50396 c!12358) b!57931))

(assert (= (and d!50396 (not c!12358)) b!57932))

(declare-fun b_lambda!15429 () Bool)

(assert (=> (not b_lambda!15429) (not b!57931)))

(declare-fun m!62508 () Bool)

(assert (=> b!57931 m!62508))

(declare-fun m!62510 () Bool)

(assert (=> b!57931 m!62510))

(assert (=> b!57931 m!62508))

(assert (=> b!57931 m!62510))

(declare-fun m!62512 () Bool)

(assert (=> b!57931 m!62512))

(assert (=> d!50386 d!50396))

(declare-fun b!57933 () Bool)

(declare-fun e!30803 () Bool)

(declare-fun tp!16243 () Bool)

(assert (=> b!57933 (= e!30803 (and tp_is_empty!305 tp!16243))))

(assert (=> b!57925 (= tp!16242 e!30803)))

(assert (= (and b!57925 (is-Cons!431 (t!47074 (t!47074 list!275)))) b!57933))

(declare-fun b_lambda!15431 () Bool)

(assert (= b_lambda!15429 (or d!50386 b_lambda!15431)))

(declare-fun bs!36308 () Bool)

(declare-fun d!50398 () Bool)

(assert (= bs!36308 (and d!50398 d!50386)))

(assert (=> bs!36308 (= (dynLambda!920 lambda!9089 (h!668 list!275)) Nil!432)))

(assert (=> b!57931 d!50398))

(push 1)

(assert tp_is_empty!305)

(assert (not b!57931))

(assert (not d!50394))

(assert (not b!57933))

(assert (not b!57926))

(assert (not d!50390))

(assert (not b_lambda!15431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50400 () Bool)

(declare-fun lt!10627 () List!455)

(assert (=> d!50400 (or (= lt!10627 (dynLambda!920 lambda!9089 (h!668 list!275))) (not (= (flatMap!15 (t!47074 list!275) lambda!9089) Nil!432)))))

(declare-fun e!30806 () List!455)

(assert (=> d!50400 (= lt!10627 e!30806)))

(declare-fun c!12361 () Bool)

(assert (=> d!50400 (= c!12361 (is-Cons!431 (dynLambda!920 lambda!9089 (h!668 list!275))))))

(assert (=> d!50400 (= (append!152 (dynLambda!920 lambda!9089 (h!668 list!275)) (flatMap!15 (t!47074 list!275) lambda!9089)) lt!10627)))

(declare-fun b!57938 () Bool)

(assert (=> b!57938 (= e!30806 (Cons!431 (h!668 (dynLambda!920 lambda!9089 (h!668 list!275))) (append!152 (t!47074 (dynLambda!920 lambda!9089 (h!668 list!275))) (flatMap!15 (t!47074 list!275) lambda!9089))))))

(declare-fun b!57939 () Bool)

(assert (=> b!57939 (= e!30806 (flatMap!15 (t!47074 list!275) lambda!9089))))

(assert (= (and d!50400 c!12361) b!57938))

(assert (= (and d!50400 (not c!12361)) b!57939))

(assert (=> b!57938 m!62510))

(declare-fun m!62514 () Bool)

(assert (=> b!57938 m!62514))

(assert (=> b!57931 d!50400))

(declare-fun d!50402 () Bool)

(declare-fun c!12362 () Bool)

(assert (=> d!50402 (= c!12362 (is-Cons!431 (t!47074 list!275)))))

(declare-fun e!30807 () List!455)

(assert (=> d!50402 (= (flatMap!15 (t!47074 list!275) lambda!9089) e!30807)))

(declare-fun b!57940 () Bool)

(assert (=> b!57940 (= e!30807 (append!152 (dynLambda!920 lambda!9089 (h!668 (t!47074 list!275))) (flatMap!15 (t!47074 (t!47074 list!275)) lambda!9089)))))

(declare-fun b!57941 () Bool)

(assert (=> b!57941 (= e!30807 Nil!432)))

(assert (= (and d!50402 c!12362) b!57940))

(assert (= (and d!50402 (not c!12362)) b!57941))

(declare-fun b_lambda!15433 () Bool)

(assert (=> (not b_lambda!15433) (not b!57940)))

(declare-fun m!62516 () Bool)

(assert (=> b!57940 m!62516))

(declare-fun m!62518 () Bool)

(assert (=> b!57940 m!62518))

(assert (=> b!57940 m!62516))

(assert (=> b!57940 m!62518))

(declare-fun m!62520 () Bool)

(assert (=> b!57940 m!62520))

(assert (=> b!57931 d!50402))

(declare-fun d!50404 () Bool)

(declare-fun c!12363 () Bool)

(assert (=> d!50404 (= c!12363 (is-Cons!431 (t!47074 list!275)))))

(declare-fun e!30808 () List!455)

(assert (=> d!50404 (= (flatMap!15 (t!47074 list!275) lambda!9090) e!30808)))

(declare-fun b!57942 () Bool)

(assert (=> b!57942 (= e!30808 (append!152 (dynLambda!920 lambda!9090 (h!668 (t!47074 list!275))) (flatMap!15 (t!47074 (t!47074 list!275)) lambda!9090)))))

(declare-fun b!57943 () Bool)

(assert (=> b!57943 (= e!30808 Nil!432)))

(assert (= (and d!50404 c!12363) b!57942))

(assert (= (and d!50404 (not c!12363)) b!57943))

(declare-fun b_lambda!15435 () Bool)

(assert (=> (not b_lambda!15435) (not b!57942)))

(declare-fun m!62522 () Bool)

(assert (=> b!57942 m!62522))

(declare-fun m!62524 () Bool)

(assert (=> b!57942 m!62524))

(assert (=> b!57942 m!62522))

(assert (=> b!57942 m!62524))

(declare-fun m!62526 () Bool)

(assert (=> b!57942 m!62526))

(assert (=> d!50394 d!50404))

(declare-fun d!50406 () Bool)

(declare-fun e!30809 () Bool)

(assert (=> d!50406 (because!1 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 (t!47074 (t!47074 list!275))))) e!30809)))

(declare-fun res!26869 () Bool)

(assert (=> d!50406 (=> res!26869 e!30809)))

(assert (=> d!50406 (= res!26869 (not (is-Cons!431 (t!47074 (t!47074 (t!47074 list!275))))))))

(assert (=> d!50406 (= (flatMap_to_zero_induct!2 (t!47074 (t!47074 (t!47074 list!275)))) true)))

(declare-fun b!57944 () Bool)

(assert (=> b!57944 (= e!30809 (flatMap_to_zero_induct!2 (t!47074 (t!47074 (t!47074 (t!47074 list!275))))))))

(assert (= (and d!50406 (not res!26869)) b!57944))

(declare-fun m!62528 () Bool)

(assert (=> d!50406 m!62528))

(declare-fun m!62530 () Bool)

(assert (=> d!50406 m!62530))

(declare-fun m!62532 () Bool)

(assert (=> b!57944 m!62532))

(assert (=> b!57926 d!50406))

(declare-fun d!50408 () Bool)

(assert (=> d!50408 (= (because!1 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 (t!47074 list!275)))) e!30799) (and e!30799 (prop!374 (ProofOps!323 (flatMap_to_zero_law!4 (t!47074 (t!47074 list!275)))))))))

(assert (=> d!50390 d!50408))

(declare-fun bs!36309 () Bool)

(declare-fun d!50410 () Bool)

(assert (= bs!36309 (and d!50410 d!50386)))

(declare-fun lambda!9091 () Int)

(assert (=> bs!36309 (= lambda!9091 lambda!9089)))

(declare-fun bs!36310 () Bool)

(assert (= bs!36310 (and d!50410 d!50394)))

(assert (=> bs!36310 (= lambda!9091 lambda!9090)))

(assert (=> d!50410 (= (flatMap_to_zero_law!4 (t!47074 (t!47074 list!275))) (= (flatMap!15 (t!47074 (t!47074 list!275)) lambda!9091) Nil!432))))

(declare-fun bs!36311 () Bool)

(assert (= bs!36311 d!50410))

(declare-fun m!62534 () Bool)

(assert (=> bs!36311 m!62534))

(assert (=> d!50390 d!50410))

(declare-fun b!57945 () Bool)

(declare-fun e!30810 () Bool)

(declare-fun tp!16244 () Bool)

(assert (=> b!57945 (= e!30810 (and tp_is_empty!305 tp!16244))))

(assert (=> b!57933 (= tp!16243 e!30810)))

(assert (= (and b!57933 (is-Cons!431 (t!47074 (t!47074 (t!47074 list!275))))) b!57945))

(declare-fun b_lambda!15437 () Bool)

(assert (= b_lambda!15433 (or d!50386 b_lambda!15437)))

(declare-fun bs!36312 () Bool)

(declare-fun d!50412 () Bool)

(assert (= bs!36312 (and d!50412 d!50386)))

(assert (=> bs!36312 (= (dynLambda!920 lambda!9089 (h!668 (t!47074 list!275))) Nil!432)))

(assert (=> b!57940 d!50412))

(declare-fun b_lambda!15439 () Bool)

(assert (= b_lambda!15435 (or d!50394 b_lambda!15439)))

(declare-fun bs!36313 () Bool)

(declare-fun d!50414 () Bool)

(assert (= bs!36313 (and d!50414 d!50394)))

(assert (=> bs!36313 (= (dynLambda!920 lambda!9090 (h!668 (t!47074 list!275))) Nil!432)))

(assert (=> b!57942 d!50414))

(push 1)

(assert (not b!57944))

(assert tp_is_empty!305)

(assert (not b!57945))

(assert (not b_lambda!15437))

(assert (not d!50410))

(assert (not b!57940))

(assert (not b_lambda!15439))

(assert (not b!57938))

(assert (not b!57942))

(assert (not b_lambda!15431))

(assert (not d!50406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

