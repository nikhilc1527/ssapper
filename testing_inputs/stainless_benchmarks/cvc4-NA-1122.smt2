; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8134 () Bool)

(assert start!8134)

(declare-fun res!26853 () Bool)

(declare-fun e!30756 () Bool)

(assert (=> start!8134 (=> res!26853 e!30756)))

(declare-datatypes () ((T!3690 (T!3691 (val!151 Int)))))

(declare-datatypes () ((List!453 (Cons!429 (h!666 T!3690) (t!47072 List!453)) (Nil!430))))

(declare-fun list!280 () List!453)

(assert (=> start!8134 (= res!26853 (not (is-Cons!429 list!280)))))

(declare-datatypes () ((ProofOps!320 (ProofOps!321 (prop!372 Bool)))))

(declare-fun because!1 (ProofOps!320 Bool) Bool)

(declare-fun right_unit_law!5 (List!453) Bool)

(assert (=> start!8134 (not (because!1 (ProofOps!321 (right_unit_law!5 list!280)) e!30756))))

(declare-fun e!30757 () Bool)

(assert (=> start!8134 e!30757))

(declare-fun b!57865 () Bool)

(declare-fun right_unit_induct!2 (List!453) Bool)

(assert (=> b!57865 (= e!30756 (right_unit_induct!2 (t!47072 list!280)))))

(declare-fun b!57866 () Bool)

(declare-fun tp_is_empty!301 () Bool)

(declare-fun tp!16227 () Bool)

(assert (=> b!57866 (= e!30757 (and tp_is_empty!301 tp!16227))))

(assert (= (and start!8134 (not res!26853)) b!57865))

(assert (= (and start!8134 (is-Cons!429 list!280)) b!57866))

(declare-fun m!62402 () Bool)

(assert (=> start!8134 m!62402))

(declare-fun m!62404 () Bool)

(assert (=> start!8134 m!62404))

(declare-fun m!62406 () Bool)

(assert (=> b!57865 m!62406))

(push 1)

(assert (not b!57865))

(assert (not start!8134))

(assert (not b!57866))

(assert tp_is_empty!301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50328 () Bool)

(declare-fun e!30760 () Bool)

(assert (=> d!50328 (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 list!280))) e!30760)))

(declare-fun res!26856 () Bool)

(assert (=> d!50328 (=> res!26856 e!30760)))

(assert (=> d!50328 (= res!26856 (not (is-Cons!429 (t!47072 list!280))))))

(assert (=> d!50328 (= (right_unit_induct!2 (t!47072 list!280)) true)))

(declare-fun b!57869 () Bool)

(assert (=> b!57869 (= e!30760 (right_unit_induct!2 (t!47072 (t!47072 list!280))))))

(assert (= (and d!50328 (not res!26856)) b!57869))

(declare-fun m!62408 () Bool)

(assert (=> d!50328 m!62408))

(declare-fun m!62410 () Bool)

(assert (=> d!50328 m!62410))

(declare-fun m!62412 () Bool)

(assert (=> b!57869 m!62412))

(assert (=> b!57865 d!50328))

(declare-fun d!50330 () Bool)

(assert (=> d!50330 (= (because!1 (ProofOps!321 (right_unit_law!5 list!280)) e!30756) (and e!30756 (prop!372 (ProofOps!321 (right_unit_law!5 list!280)))))))

(assert (=> start!8134 d!50330))

(declare-fun d!50332 () Bool)

(declare-fun lambda!9083 () Int)

(declare-fun flatMap!14 (List!453 Int) List!453)

(assert (=> d!50332 (= (right_unit_law!5 list!280) (= (flatMap!14 list!280 lambda!9083) list!280))))

(declare-fun bs!36287 () Bool)

(assert (= bs!36287 d!50332))

(declare-fun m!62414 () Bool)

(assert (=> bs!36287 m!62414))

(assert (=> start!8134 d!50332))

(declare-fun b!57874 () Bool)

(declare-fun e!30763 () Bool)

(declare-fun tp!16230 () Bool)

(assert (=> b!57874 (= e!30763 (and tp_is_empty!301 tp!16230))))

(assert (=> b!57866 (= tp!16227 e!30763)))

(assert (= (and b!57866 (is-Cons!429 (t!47072 list!280))) b!57874))

(push 1)

(assert (not b!57869))

(assert (not b!57874))

(assert (not d!50328))

(assert (not d!50332))

(assert tp_is_empty!301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50334 () Bool)

(declare-fun c!12344 () Bool)

(assert (=> d!50334 (= c!12344 (is-Cons!429 list!280))))

(declare-fun e!30766 () List!453)

(assert (=> d!50334 (= (flatMap!14 list!280 lambda!9083) e!30766)))

(declare-fun b!57879 () Bool)

(declare-fun append!151 (List!453 List!453) List!453)

(declare-fun dynLambda!919 (Int T!3690) List!453)

(assert (=> b!57879 (= e!30766 (append!151 (dynLambda!919 lambda!9083 (h!666 list!280)) (flatMap!14 (t!47072 list!280) lambda!9083)))))

(declare-fun b!57880 () Bool)

(assert (=> b!57880 (= e!30766 Nil!430)))

(assert (= (and d!50334 c!12344) b!57879))

(assert (= (and d!50334 (not c!12344)) b!57880))

(declare-fun b_lambda!15405 () Bool)

(assert (=> (not b_lambda!15405) (not b!57879)))

(declare-fun m!62416 () Bool)

(assert (=> b!57879 m!62416))

(declare-fun m!62418 () Bool)

(assert (=> b!57879 m!62418))

(assert (=> b!57879 m!62416))

(assert (=> b!57879 m!62418))

(declare-fun m!62420 () Bool)

(assert (=> b!57879 m!62420))

(assert (=> d!50332 d!50334))

(declare-fun d!50336 () Bool)

(assert (=> d!50336 (= (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 list!280))) e!30760) (and e!30760 (prop!372 (ProofOps!321 (right_unit_law!5 (t!47072 list!280))))))))

(assert (=> d!50328 d!50336))

(declare-fun bs!36288 () Bool)

(declare-fun d!50338 () Bool)

(assert (= bs!36288 (and d!50338 d!50332)))

(declare-fun lambda!9084 () Int)

(assert (=> bs!36288 (= lambda!9084 lambda!9083)))

(assert (=> d!50338 (= (right_unit_law!5 (t!47072 list!280)) (= (flatMap!14 (t!47072 list!280) lambda!9084) (t!47072 list!280)))))

(declare-fun bs!36289 () Bool)

(assert (= bs!36289 d!50338))

(declare-fun m!62422 () Bool)

(assert (=> bs!36289 m!62422))

(assert (=> d!50328 d!50338))

(declare-fun d!50340 () Bool)

(declare-fun e!30767 () Bool)

(assert (=> d!50340 (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 list!280)))) e!30767)))

(declare-fun res!26857 () Bool)

(assert (=> d!50340 (=> res!26857 e!30767)))

(assert (=> d!50340 (= res!26857 (not (is-Cons!429 (t!47072 (t!47072 list!280)))))))

(assert (=> d!50340 (= (right_unit_induct!2 (t!47072 (t!47072 list!280))) true)))

(declare-fun b!57881 () Bool)

(assert (=> b!57881 (= e!30767 (right_unit_induct!2 (t!47072 (t!47072 (t!47072 list!280)))))))

(assert (= (and d!50340 (not res!26857)) b!57881))

(declare-fun m!62424 () Bool)

(assert (=> d!50340 m!62424))

(declare-fun m!62426 () Bool)

(assert (=> d!50340 m!62426))

(declare-fun m!62428 () Bool)

(assert (=> b!57881 m!62428))

(assert (=> b!57869 d!50340))

(declare-fun b!57882 () Bool)

(declare-fun e!30768 () Bool)

(declare-fun tp!16231 () Bool)

(assert (=> b!57882 (= e!30768 (and tp_is_empty!301 tp!16231))))

(assert (=> b!57874 (= tp!16230 e!30768)))

(assert (= (and b!57874 (is-Cons!429 (t!47072 (t!47072 list!280)))) b!57882))

(declare-fun b_lambda!15407 () Bool)

(assert (= b_lambda!15405 (or d!50332 b_lambda!15407)))

(declare-fun bs!36290 () Bool)

(declare-fun d!50342 () Bool)

(assert (= bs!36290 (and d!50342 d!50332)))

(assert (=> bs!36290 (= (dynLambda!919 lambda!9083 (h!666 list!280)) (Cons!429 (h!666 list!280) Nil!430))))

(assert (=> b!57879 d!50342))

(push 1)

(assert (not b!57882))

(assert (not d!50338))

(assert (not b!57879))

(assert (not b!57881))

(assert (not b_lambda!15407))

(assert (not d!50340))

(assert tp_is_empty!301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50344 () Bool)

(assert (=> d!50344 (= (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 list!280)))) e!30767) (and e!30767 (prop!372 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 list!280)))))))))

(assert (=> d!50340 d!50344))

(declare-fun bs!36291 () Bool)

(declare-fun d!50346 () Bool)

(assert (= bs!36291 (and d!50346 d!50332)))

(declare-fun lambda!9085 () Int)

(assert (=> bs!36291 (= lambda!9085 lambda!9083)))

(declare-fun bs!36292 () Bool)

(assert (= bs!36292 (and d!50346 d!50338)))

(assert (=> bs!36292 (= lambda!9085 lambda!9084)))

(assert (=> d!50346 (= (right_unit_law!5 (t!47072 (t!47072 list!280))) (= (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9085) (t!47072 (t!47072 list!280))))))

(declare-fun bs!36293 () Bool)

(assert (= bs!36293 d!50346))

(declare-fun m!62430 () Bool)

(assert (=> bs!36293 m!62430))

(assert (=> d!50340 d!50346))

(declare-fun d!50348 () Bool)

(declare-fun e!30769 () Bool)

(assert (=> d!50348 (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 (t!47072 list!280))))) e!30769)))

(declare-fun res!26858 () Bool)

(assert (=> d!50348 (=> res!26858 e!30769)))

(assert (=> d!50348 (= res!26858 (not (is-Cons!429 (t!47072 (t!47072 (t!47072 list!280))))))))

(assert (=> d!50348 (= (right_unit_induct!2 (t!47072 (t!47072 (t!47072 list!280)))) true)))

(declare-fun b!57883 () Bool)

(assert (=> b!57883 (= e!30769 (right_unit_induct!2 (t!47072 (t!47072 (t!47072 (t!47072 list!280))))))))

(assert (= (and d!50348 (not res!26858)) b!57883))

(declare-fun m!62432 () Bool)

(assert (=> d!50348 m!62432))

(declare-fun m!62434 () Bool)

(assert (=> d!50348 m!62434))

(declare-fun m!62436 () Bool)

(assert (=> b!57883 m!62436))

(assert (=> b!57881 d!50348))

(declare-fun d!50350 () Bool)

(declare-fun c!12345 () Bool)

(assert (=> d!50350 (= c!12345 (is-Cons!429 (t!47072 list!280)))))

(declare-fun e!30770 () List!453)

(assert (=> d!50350 (= (flatMap!14 (t!47072 list!280) lambda!9084) e!30770)))

(declare-fun b!57884 () Bool)

(assert (=> b!57884 (= e!30770 (append!151 (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280))) (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9084)))))

(declare-fun b!57885 () Bool)

(assert (=> b!57885 (= e!30770 Nil!430)))

(assert (= (and d!50350 c!12345) b!57884))

(assert (= (and d!50350 (not c!12345)) b!57885))

(declare-fun b_lambda!15409 () Bool)

(assert (=> (not b_lambda!15409) (not b!57884)))

(declare-fun m!62438 () Bool)

(assert (=> b!57884 m!62438))

(declare-fun m!62440 () Bool)

(assert (=> b!57884 m!62440))

(assert (=> b!57884 m!62438))

(assert (=> b!57884 m!62440))

(declare-fun m!62442 () Bool)

(assert (=> b!57884 m!62442))

(assert (=> d!50338 d!50350))

(declare-fun d!50352 () Bool)

(declare-fun lt!10618 () List!453)

(assert (=> d!50352 (or (= lt!10618 (dynLambda!919 lambda!9083 (h!666 list!280))) (not (= (flatMap!14 (t!47072 list!280) lambda!9083) Nil!430)))))

(declare-fun e!30773 () List!453)

(assert (=> d!50352 (= lt!10618 e!30773)))

(declare-fun c!12348 () Bool)

(assert (=> d!50352 (= c!12348 (is-Cons!429 (dynLambda!919 lambda!9083 (h!666 list!280))))))

(assert (=> d!50352 (= (append!151 (dynLambda!919 lambda!9083 (h!666 list!280)) (flatMap!14 (t!47072 list!280) lambda!9083)) lt!10618)))

(declare-fun b!57890 () Bool)

(assert (=> b!57890 (= e!30773 (Cons!429 (h!666 (dynLambda!919 lambda!9083 (h!666 list!280))) (append!151 (t!47072 (dynLambda!919 lambda!9083 (h!666 list!280))) (flatMap!14 (t!47072 list!280) lambda!9083))))))

(declare-fun b!57891 () Bool)

(assert (=> b!57891 (= e!30773 (flatMap!14 (t!47072 list!280) lambda!9083))))

(assert (= (and d!50352 c!12348) b!57890))

(assert (= (and d!50352 (not c!12348)) b!57891))

(assert (=> b!57890 m!62418))

(declare-fun m!62444 () Bool)

(assert (=> b!57890 m!62444))

(assert (=> b!57879 d!50352))

(declare-fun d!50354 () Bool)

(declare-fun c!12349 () Bool)

(assert (=> d!50354 (= c!12349 (is-Cons!429 (t!47072 list!280)))))

(declare-fun e!30774 () List!453)

(assert (=> d!50354 (= (flatMap!14 (t!47072 list!280) lambda!9083) e!30774)))

(declare-fun b!57892 () Bool)

(assert (=> b!57892 (= e!30774 (append!151 (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280))) (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9083)))))

(declare-fun b!57893 () Bool)

(assert (=> b!57893 (= e!30774 Nil!430)))

(assert (= (and d!50354 c!12349) b!57892))

(assert (= (and d!50354 (not c!12349)) b!57893))

(declare-fun b_lambda!15411 () Bool)

(assert (=> (not b_lambda!15411) (not b!57892)))

(declare-fun m!62446 () Bool)

(assert (=> b!57892 m!62446))

(declare-fun m!62448 () Bool)

(assert (=> b!57892 m!62448))

(assert (=> b!57892 m!62446))

(assert (=> b!57892 m!62448))

(declare-fun m!62450 () Bool)

(assert (=> b!57892 m!62450))

(assert (=> b!57879 d!50354))

(declare-fun b!57894 () Bool)

(declare-fun e!30775 () Bool)

(declare-fun tp!16232 () Bool)

(assert (=> b!57894 (= e!30775 (and tp_is_empty!301 tp!16232))))

(assert (=> b!57882 (= tp!16231 e!30775)))

(assert (= (and b!57882 (is-Cons!429 (t!47072 (t!47072 (t!47072 list!280))))) b!57894))

(declare-fun b_lambda!15413 () Bool)

(assert (= b_lambda!15411 (or d!50332 b_lambda!15413)))

(declare-fun bs!36294 () Bool)

(declare-fun d!50356 () Bool)

(assert (= bs!36294 (and d!50356 d!50332)))

(assert (=> bs!36294 (= (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280))) (Cons!429 (h!666 (t!47072 list!280)) Nil!430))))

(assert (=> b!57892 d!50356))

(declare-fun b_lambda!15415 () Bool)

(assert (= b_lambda!15409 (or d!50338 b_lambda!15415)))

(declare-fun bs!36295 () Bool)

(declare-fun d!50358 () Bool)

(assert (= bs!36295 (and d!50358 d!50338)))

(assert (=> bs!36295 (= (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280))) (Cons!429 (h!666 (t!47072 list!280)) Nil!430))))

(assert (=> b!57884 d!50358))

(push 1)

(assert (not b!57883))

(assert (not b_lambda!15413))

(assert (not d!50348))

(assert (not b!57892))

(assert (not b!57894))

(assert (not b_lambda!15415))

(assert (not b_lambda!15407))

(assert (not d!50346))

(assert (not b!57890))

(assert (not b!57884))

(assert tp_is_empty!301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50360 () Bool)

(assert (=> d!50360 (= (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 (t!47072 list!280))))) e!30769) (and e!30769 (prop!372 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 (t!47072 list!280))))))))))

(assert (=> d!50348 d!50360))

(declare-fun bs!36296 () Bool)

(declare-fun d!50362 () Bool)

(assert (= bs!36296 (and d!50362 d!50332)))

(declare-fun lambda!9086 () Int)

(assert (=> bs!36296 (= lambda!9086 lambda!9083)))

(declare-fun bs!36297 () Bool)

(assert (= bs!36297 (and d!50362 d!50338)))

(assert (=> bs!36297 (= lambda!9086 lambda!9084)))

(declare-fun bs!36298 () Bool)

(assert (= bs!36298 (and d!50362 d!50346)))

(assert (=> bs!36298 (= lambda!9086 lambda!9085)))

(assert (=> d!50362 (= (right_unit_law!5 (t!47072 (t!47072 (t!47072 list!280)))) (= (flatMap!14 (t!47072 (t!47072 (t!47072 list!280))) lambda!9086) (t!47072 (t!47072 (t!47072 list!280)))))))

(declare-fun bs!36299 () Bool)

(assert (= bs!36299 d!50362))

(declare-fun m!62452 () Bool)

(assert (=> bs!36299 m!62452))

(assert (=> d!50348 d!50362))

(declare-fun d!50364 () Bool)

(declare-fun lt!10619 () List!453)

(assert (=> d!50364 (or (= lt!10619 (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280)))) (not (= (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9083) Nil!430)))))

(declare-fun e!30776 () List!453)

(assert (=> d!50364 (= lt!10619 e!30776)))

(declare-fun c!12350 () Bool)

(assert (=> d!50364 (= c!12350 (is-Cons!429 (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280)))))))

(assert (=> d!50364 (= (append!151 (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280))) (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9083)) lt!10619)))

(declare-fun b!57895 () Bool)

(assert (=> b!57895 (= e!30776 (Cons!429 (h!666 (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280)))) (append!151 (t!47072 (dynLambda!919 lambda!9083 (h!666 (t!47072 list!280)))) (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9083))))))

(declare-fun b!57896 () Bool)

(assert (=> b!57896 (= e!30776 (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9083))))

(assert (= (and d!50364 c!12350) b!57895))

(assert (= (and d!50364 (not c!12350)) b!57896))

(assert (=> b!57895 m!62448))

(declare-fun m!62454 () Bool)

(assert (=> b!57895 m!62454))

(assert (=> b!57892 d!50364))

(declare-fun d!50366 () Bool)

(declare-fun c!12351 () Bool)

(assert (=> d!50366 (= c!12351 (is-Cons!429 (t!47072 (t!47072 list!280))))))

(declare-fun e!30777 () List!453)

(assert (=> d!50366 (= (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9083) e!30777)))

(declare-fun b!57897 () Bool)

(assert (=> b!57897 (= e!30777 (append!151 (dynLambda!919 lambda!9083 (h!666 (t!47072 (t!47072 list!280)))) (flatMap!14 (t!47072 (t!47072 (t!47072 list!280))) lambda!9083)))))

(declare-fun b!57898 () Bool)

(assert (=> b!57898 (= e!30777 Nil!430)))

(assert (= (and d!50366 c!12351) b!57897))

(assert (= (and d!50366 (not c!12351)) b!57898))

(declare-fun b_lambda!15417 () Bool)

(assert (=> (not b_lambda!15417) (not b!57897)))

(declare-fun m!62456 () Bool)

(assert (=> b!57897 m!62456))

(declare-fun m!62458 () Bool)

(assert (=> b!57897 m!62458))

(assert (=> b!57897 m!62456))

(assert (=> b!57897 m!62458))

(declare-fun m!62460 () Bool)

(assert (=> b!57897 m!62460))

(assert (=> b!57892 d!50366))

(declare-fun d!50368 () Bool)

(declare-fun lt!10620 () List!453)

(assert (=> d!50368 (or (= lt!10620 (t!47072 (dynLambda!919 lambda!9083 (h!666 list!280)))) (not (= (flatMap!14 (t!47072 list!280) lambda!9083) Nil!430)))))

(declare-fun e!30778 () List!453)

(assert (=> d!50368 (= lt!10620 e!30778)))

(declare-fun c!12352 () Bool)

(assert (=> d!50368 (= c!12352 (is-Cons!429 (t!47072 (dynLambda!919 lambda!9083 (h!666 list!280)))))))

(assert (=> d!50368 (= (append!151 (t!47072 (dynLambda!919 lambda!9083 (h!666 list!280))) (flatMap!14 (t!47072 list!280) lambda!9083)) lt!10620)))

(declare-fun b!57899 () Bool)

(assert (=> b!57899 (= e!30778 (Cons!429 (h!666 (t!47072 (dynLambda!919 lambda!9083 (h!666 list!280)))) (append!151 (t!47072 (t!47072 (dynLambda!919 lambda!9083 (h!666 list!280)))) (flatMap!14 (t!47072 list!280) lambda!9083))))))

(declare-fun b!57900 () Bool)

(assert (=> b!57900 (= e!30778 (flatMap!14 (t!47072 list!280) lambda!9083))))

(assert (= (and d!50368 c!12352) b!57899))

(assert (= (and d!50368 (not c!12352)) b!57900))

(assert (=> b!57899 m!62418))

(declare-fun m!62462 () Bool)

(assert (=> b!57899 m!62462))

(assert (=> b!57890 d!50368))

(declare-fun d!50370 () Bool)

(declare-fun lt!10621 () List!453)

(assert (=> d!50370 (or (= lt!10621 (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280)))) (not (= (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9084) Nil!430)))))

(declare-fun e!30779 () List!453)

(assert (=> d!50370 (= lt!10621 e!30779)))

(declare-fun c!12353 () Bool)

(assert (=> d!50370 (= c!12353 (is-Cons!429 (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280)))))))

(assert (=> d!50370 (= (append!151 (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280))) (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9084)) lt!10621)))

(declare-fun b!57901 () Bool)

(assert (=> b!57901 (= e!30779 (Cons!429 (h!666 (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280)))) (append!151 (t!47072 (dynLambda!919 lambda!9084 (h!666 (t!47072 list!280)))) (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9084))))))

(declare-fun b!57902 () Bool)

(assert (=> b!57902 (= e!30779 (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9084))))

(assert (= (and d!50370 c!12353) b!57901))

(assert (= (and d!50370 (not c!12353)) b!57902))

(assert (=> b!57901 m!62440))

(declare-fun m!62464 () Bool)

(assert (=> b!57901 m!62464))

(assert (=> b!57884 d!50370))

(declare-fun d!50372 () Bool)

(declare-fun c!12354 () Bool)

(assert (=> d!50372 (= c!12354 (is-Cons!429 (t!47072 (t!47072 list!280))))))

(declare-fun e!30780 () List!453)

(assert (=> d!50372 (= (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9084) e!30780)))

(declare-fun b!57903 () Bool)

(assert (=> b!57903 (= e!30780 (append!151 (dynLambda!919 lambda!9084 (h!666 (t!47072 (t!47072 list!280)))) (flatMap!14 (t!47072 (t!47072 (t!47072 list!280))) lambda!9084)))))

(declare-fun b!57904 () Bool)

(assert (=> b!57904 (= e!30780 Nil!430)))

(assert (= (and d!50372 c!12354) b!57903))

(assert (= (and d!50372 (not c!12354)) b!57904))

(declare-fun b_lambda!15419 () Bool)

(assert (=> (not b_lambda!15419) (not b!57903)))

(declare-fun m!62466 () Bool)

(assert (=> b!57903 m!62466))

(declare-fun m!62468 () Bool)

(assert (=> b!57903 m!62468))

(assert (=> b!57903 m!62466))

(assert (=> b!57903 m!62468))

(declare-fun m!62470 () Bool)

(assert (=> b!57903 m!62470))

(assert (=> b!57884 d!50372))

(declare-fun d!50374 () Bool)

(declare-fun e!30781 () Bool)

(assert (=> d!50374 (because!1 (ProofOps!321 (right_unit_law!5 (t!47072 (t!47072 (t!47072 (t!47072 list!280)))))) e!30781)))

(declare-fun res!26860 () Bool)

(assert (=> d!50374 (=> res!26860 e!30781)))

(assert (=> d!50374 (= res!26860 (not (is-Cons!429 (t!47072 (t!47072 (t!47072 (t!47072 list!280)))))))))

(assert (=> d!50374 (= (right_unit_induct!2 (t!47072 (t!47072 (t!47072 (t!47072 list!280))))) true)))

(declare-fun b!57905 () Bool)

(assert (=> b!57905 (= e!30781 (right_unit_induct!2 (t!47072 (t!47072 (t!47072 (t!47072 (t!47072 list!280)))))))))

(assert (= (and d!50374 (not res!26860)) b!57905))

(declare-fun m!62472 () Bool)

(assert (=> d!50374 m!62472))

(declare-fun m!62474 () Bool)

(assert (=> d!50374 m!62474))

(declare-fun m!62476 () Bool)

(assert (=> b!57905 m!62476))

(assert (=> b!57883 d!50374))

(declare-fun d!50376 () Bool)

(declare-fun c!12355 () Bool)

(assert (=> d!50376 (= c!12355 (is-Cons!429 (t!47072 (t!47072 list!280))))))

(declare-fun e!30782 () List!453)

(assert (=> d!50376 (= (flatMap!14 (t!47072 (t!47072 list!280)) lambda!9085) e!30782)))

(declare-fun b!57906 () Bool)

(assert (=> b!57906 (= e!30782 (append!151 (dynLambda!919 lambda!9085 (h!666 (t!47072 (t!47072 list!280)))) (flatMap!14 (t!47072 (t!47072 (t!47072 list!280))) lambda!9085)))))

(declare-fun b!57907 () Bool)

(assert (=> b!57907 (= e!30782 Nil!430)))

(assert (= (and d!50376 c!12355) b!57906))

(assert (= (and d!50376 (not c!12355)) b!57907))

(declare-fun b_lambda!15421 () Bool)

(assert (=> (not b_lambda!15421) (not b!57906)))

(declare-fun m!62478 () Bool)

(assert (=> b!57906 m!62478))

(declare-fun m!62480 () Bool)

(assert (=> b!57906 m!62480))

(assert (=> b!57906 m!62478))

(assert (=> b!57906 m!62480))

(declare-fun m!62482 () Bool)

(assert (=> b!57906 m!62482))

(assert (=> d!50346 d!50376))

(declare-fun b!57908 () Bool)

(declare-fun e!30783 () Bool)

(declare-fun tp!16233 () Bool)

(assert (=> b!57908 (= e!30783 (and tp_is_empty!301 tp!16233))))

(assert (=> b!57894 (= tp!16232 e!30783)))

(assert (= (and b!57894 (is-Cons!429 (t!47072 (t!47072 (t!47072 (t!47072 list!280)))))) b!57908))

(declare-fun b_lambda!15423 () Bool)

(assert (= b_lambda!15417 (or d!50332 b_lambda!15423)))

(declare-fun bs!36300 () Bool)

(declare-fun d!50378 () Bool)

(assert (= bs!36300 (and d!50378 d!50332)))

(assert (=> bs!36300 (= (dynLambda!919 lambda!9083 (h!666 (t!47072 (t!47072 list!280)))) (Cons!429 (h!666 (t!47072 (t!47072 list!280))) Nil!430))))

(assert (=> b!57897 d!50378))

(declare-fun b_lambda!15425 () Bool)

(assert (= b_lambda!15419 (or d!50338 b_lambda!15425)))

(declare-fun bs!36301 () Bool)

(declare-fun d!50380 () Bool)

(assert (= bs!36301 (and d!50380 d!50338)))

(assert (=> bs!36301 (= (dynLambda!919 lambda!9084 (h!666 (t!47072 (t!47072 list!280)))) (Cons!429 (h!666 (t!47072 (t!47072 list!280))) Nil!430))))

(assert (=> b!57903 d!50380))

(declare-fun b_lambda!15427 () Bool)

(assert (= b_lambda!15421 (or d!50346 b_lambda!15427)))

(declare-fun bs!36302 () Bool)

(declare-fun d!50382 () Bool)

(assert (= bs!36302 (and d!50382 d!50346)))

(assert (=> bs!36302 (= (dynLambda!919 lambda!9085 (h!666 (t!47072 (t!47072 list!280)))) (Cons!429 (h!666 (t!47072 (t!47072 list!280))) Nil!430))))

(assert (=> b!57906 d!50382))

(push 1)

(assert (not b!57897))

(assert (not b_lambda!15427))

(assert (not d!50362))

(assert (not b_lambda!15423))

(assert (not b_lambda!15413))

(assert (not b!57895))

(assert (not b!57905))

(assert (not d!50374))

(assert (not b!57903))

(assert (not b_lambda!15425))

(assert (not b!57901))

(assert (not b!57899))

(assert (not b!57908))

(assert (not b_lambda!15415))

(assert (not b!57906))

(assert (not b_lambda!15407))

(assert tp_is_empty!301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

