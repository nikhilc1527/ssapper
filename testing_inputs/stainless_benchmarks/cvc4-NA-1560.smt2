; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10586 () Bool)

(assert start!10586)

(declare-fun b_free!7351 () Bool)

(declare-fun b_next!39129 () Bool)

(assert (=> start!10586 (= b_free!7351 (not b_next!39129))))

(declare-fun tp!16939 () Bool)

(declare-fun b_and!58871 () Bool)

(assert (=> start!10586 (= tp!16939 b_and!58871)))

(declare-fun b!80353 () Bool)

(assert (=> b!80353 true))

(declare-fun b_next!39131 () Bool)

(declare-fun p!846 () Int)

(declare-fun lambda!9211 () Int)

(assert (=> start!10586 (= b_next!39129 (or (and b!80353 (= lambda!9211 p!846)) b_next!39131))))

(declare-fun bs!38273 () Bool)

(declare-fun b!80350 () Bool)

(assert (= bs!38273 (and b!80350 b!80353)))

(declare-fun lambda!9212 () Int)

(assert (=> bs!38273 (not (= lambda!9212 lambda!9211))))

(assert (=> b!80350 true))

(declare-fun b_next!39133 () Bool)

(assert (=> start!10586 (= b_next!39131 (or (and b!80350 (= lambda!9212 p!846)) b_next!39133))))

(declare-fun bs!38274 () Bool)

(declare-fun b!80354 () Bool)

(assert (= bs!38274 (and b!80354 b!80353)))

(declare-fun lambda!9213 () Int)

(assert (=> bs!38274 (not (= lambda!9213 lambda!9211))))

(declare-fun bs!38275 () Bool)

(assert (= bs!38275 (and b!80354 b!80350)))

(assert (=> bs!38275 (not (= lambda!9213 lambda!9212))))

(assert (=> b!80354 true))

(declare-fun b_next!39135 () Bool)

(assert (=> start!10586 (= b_next!39133 (or (and b!80354 (= lambda!9213 p!846)) b_next!39135))))

(declare-fun res!40849 () Bool)

(declare-fun e!43593 () Bool)

(assert (=> b!80350 (=> (not res!40849) (not e!43593))))

(declare-datatypes () ((List!658 (Cons!615 (h!983 Int) (t!47777 List!658)) (Nil!617))))

(declare-fun equal!10 () List!658)

(declare-fun ls!96 () List!658)

(declare-fun filter!11 (List!658 Int) List!658)

(assert (=> b!80350 (= res!40849 (= equal!10 (Cons!615 (h!983 ls!96) (filter!11 (t!47777 ls!96) lambda!9212))))))

(declare-fun b!80351 () Bool)

(declare-fun ls!99 () List!658)

(declare-fun forall!13 (List!658 Int) Bool)

(assert (=> b!80351 (= e!43593 (not (forall!13 ls!99 p!846)))))

(declare-fun b!80352 () Bool)

(declare-fun res!40854 () Bool)

(assert (=> b!80352 (=> (not res!40854) (not e!43593))))

(assert (=> b!80352 (= res!40854 (= p!846 lambda!9211))))

(declare-fun res!40850 () Bool)

(assert (=> start!10586 (=> (not res!40850) (not e!43593))))

(assert (=> start!10586 (= res!40850 (and (not (is-Nil!617 ls!96)) (not (is-Nil!617 (t!47777 ls!96)))))))

(assert (=> start!10586 e!43593))

(assert (=> start!10586 true))

(assert (=> start!10586 tp!16939))

(declare-fun res!40853 () Bool)

(assert (=> b!80353 (=> (not res!40853) (not e!43593))))

(declare-fun less!5 () List!658)

(assert (=> b!80353 (= res!40853 (= less!5 (filter!11 (t!47777 ls!96) lambda!9211)))))

(declare-fun res!40852 () Bool)

(assert (=> b!80354 (=> (not res!40852) (not e!43593))))

(declare-fun more!5 () List!658)

(assert (=> b!80354 (= res!40852 (= more!5 (filter!11 (t!47777 ls!96) lambda!9213)))))

(declare-fun b!80355 () Bool)

(declare-fun res!40855 () Bool)

(assert (=> b!80355 (=> (not res!40855) (not e!43593))))

(declare-fun sorted_lemma!0 (List!658) Bool)

(assert (=> b!80355 (= res!40855 (sorted_lemma!0 less!5))))

(declare-fun b!80356 () Bool)

(declare-fun res!40851 () Bool)

(assert (=> b!80356 (=> (not res!40851) (not e!43593))))

(assert (=> b!80356 (= res!40851 (= ls!99 less!5))))

(assert (= (and start!10586 res!40850) b!80353))

(assert (= (and b!80353 res!40853) b!80350))

(assert (= (and b!80350 res!40849) b!80354))

(assert (= (and b!80354 res!40852) b!80355))

(assert (= (and b!80355 res!40855) b!80356))

(assert (= (and b!80356 res!40851) b!80352))

(assert (= (and b!80352 res!40854) b!80351))

(declare-fun m!75144 () Bool)

(assert (=> b!80350 m!75144))

(declare-fun m!75146 () Bool)

(assert (=> b!80351 m!75146))

(declare-fun m!75148 () Bool)

(assert (=> b!80355 m!75148))

(declare-fun m!75150 () Bool)

(assert (=> b!80354 m!75150))

(declare-fun m!75152 () Bool)

(assert (=> b!80353 m!75152))

(push 1)

(assert (not b!80355))

(assert (not b_next!39135))

(assert (not b!80353))

(assert (not b!80354))

(assert (not b!80350))

(assert b_and!58871)

(assert (not b!80351))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58871)

(assert (not b_next!39135))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!80373 () Bool)

(declare-fun e!43602 () List!658)

(declare-fun lt!18348 () List!658)

(assert (=> b!80373 (= e!43602 lt!18348)))

(declare-fun b!80374 () Bool)

(declare-fun e!43604 () List!658)

(assert (=> b!80374 (= e!43604 Nil!617)))

(declare-fun d!55441 () Bool)

(declare-fun e!43605 () Bool)

(assert (=> d!55441 e!43605))

(declare-fun res!40866 () Bool)

(assert (=> d!55441 (=> (not res!40866) (not e!43605))))

(declare-fun lt!18349 () List!658)

(declare-fun size!646 (List!658) Int)

(assert (=> d!55441 (= res!40866 (<= (size!646 lt!18349) (size!646 (t!47777 ls!96))))))

(assert (=> d!55441 (= lt!18349 e!43604)))

(declare-fun c!20338 () Bool)

(assert (=> d!55441 (= c!20338 (is-Nil!617 (t!47777 ls!96)))))

(assert (=> d!55441 (= (filter!11 (t!47777 ls!96) lambda!9211) lt!18349)))

(declare-fun b!80375 () Bool)

(assert (=> b!80375 (= e!43602 (Cons!615 (h!983 (t!47777 ls!96)) lt!18348))))

(declare-fun b!80376 () Bool)

(assert (=> b!80376 (= e!43604 e!43602)))

(declare-fun c!20337 () Bool)

(declare-fun e!43603 () Bool)

(assert (=> b!80376 (= c!20337 e!43603)))

(declare-fun res!40867 () Bool)

(assert (=> b!80376 (=> (not res!40867) (not e!43603))))

(assert (=> b!80376 (= res!40867 (is-Cons!615 (t!47777 ls!96)))))

(assert (=> b!80376 (= lt!18348 (filter!11 (t!47777 (t!47777 ls!96)) lambda!9211))))

(declare-fun b!80377 () Bool)

(declare-fun dynLambda!977 (Int Int) Bool)

(assert (=> b!80377 (= e!43603 (dynLambda!977 lambda!9211 (h!983 (t!47777 ls!96))))))

(declare-fun b!80378 () Bool)

(assert (=> b!80378 (= e!43605 (forall!13 lt!18349 lambda!9211))))

(declare-fun b!80379 () Bool)

(declare-fun res!40868 () Bool)

(assert (=> b!80379 (=> (not res!40868) (not e!43605))))

(declare-fun content!117 (List!658) (Set Int))

(assert (=> b!80379 (= res!40868 (subset (content!117 lt!18349) (content!117 (t!47777 ls!96))))))

(assert (= (and b!80376 res!40867) b!80377))

(assert (= (and b!80376 c!20337) b!80375))

(assert (= (and b!80376 (not c!20337)) b!80373))

(assert (= (and d!55441 c!20338) b!80374))

(assert (= (and d!55441 (not c!20338)) b!80376))

(assert (= (and d!55441 res!40866) b!80379))

(assert (= (and b!80379 res!40868) b!80378))

(declare-fun b_lambda!15907 () Bool)

(assert (=> (not b_lambda!15907) (not b!80377)))

(declare-fun m!75154 () Bool)

(assert (=> d!55441 m!75154))

(declare-fun m!75156 () Bool)

(assert (=> d!55441 m!75156))

(declare-fun m!75158 () Bool)

(assert (=> b!80378 m!75158))

(declare-fun m!75160 () Bool)

(assert (=> b!80376 m!75160))

(declare-fun m!75162 () Bool)

(assert (=> b!80379 m!75162))

(declare-fun m!75164 () Bool)

(assert (=> b!80379 m!75164))

(declare-fun m!75166 () Bool)

(assert (=> b!80377 m!75166))

(assert (=> b!80353 d!55441))

(declare-fun d!55443 () Bool)

(declare-fun res!40873 () Bool)

(declare-fun e!43610 () Bool)

(assert (=> d!55443 (=> res!40873 e!43610)))

(assert (=> d!55443 (= res!40873 (is-Nil!617 ls!99))))

(assert (=> d!55443 (= (forall!13 ls!99 p!846) e!43610)))

(declare-fun b!80384 () Bool)

(declare-fun e!43611 () Bool)

(assert (=> b!80384 (= e!43610 e!43611)))

(declare-fun res!40874 () Bool)

(assert (=> b!80384 (=> (not res!40874) (not e!43611))))

(assert (=> b!80384 (= res!40874 (dynLambda!977 p!846 (h!983 ls!99)))))

(declare-fun b!80385 () Bool)

(assert (=> b!80385 (= e!43611 (forall!13 (t!47777 ls!99) p!846))))

(assert (= (and d!55443 (not res!40873)) b!80384))

(assert (= (and b!80384 res!40874) b!80385))

(declare-fun b_lambda!15909 () Bool)

(assert (=> (not b_lambda!15909) (not b!80384)))

(declare-fun t!47779 () Bool)

(declare-fun tb!46199 () Bool)

(assert (=> (and start!10586 (= p!846 p!846) t!47779) tb!46199))

(declare-fun result!46629 () Bool)

(assert (=> tb!46199 (= result!46629 true)))

(assert (=> b!80384 t!47779))

(declare-fun b_and!58873 () Bool)

(assert (= b_and!58871 (and (=> t!47779 result!46629) b_and!58873)))

(declare-fun m!75168 () Bool)

(assert (=> b!80384 m!75168))

(declare-fun m!75170 () Bool)

(assert (=> b!80385 m!75170))

(assert (=> b!80351 d!55443))

(declare-fun bs!38276 () Bool)

(declare-fun b!80390 () Bool)

(assert (= bs!38276 (and b!80390 b!80353)))

(declare-fun lambda!9220 () Int)

(assert (=> bs!38276 (= (= (h!983 less!5) (h!983 ls!96)) (= lambda!9220 lambda!9211))))

(declare-fun bs!38277 () Bool)

(assert (= bs!38277 (and b!80390 b!80350)))

(assert (=> bs!38277 (not (= lambda!9220 lambda!9212))))

(declare-fun bs!38278 () Bool)

(assert (= bs!38278 (and b!80390 b!80354)))

(assert (=> bs!38278 (not (= lambda!9220 lambda!9213))))

(assert (=> b!80390 true))

(declare-fun b_next!39137 () Bool)

(assert (=> start!10586 (= b_next!39135 (or (and b!80390 (= lambda!9220 p!846)) b_next!39137))))

(declare-fun lambda!9221 () Int)

(assert (=> bs!38276 (not (= lambda!9221 lambda!9211))))

(assert (=> bs!38277 (= (= (h!983 less!5) (h!983 ls!96)) (= lambda!9221 lambda!9212))))

(assert (=> bs!38278 (not (= lambda!9221 lambda!9213))))

(assert (=> b!80390 (not (= lambda!9221 lambda!9220))))

(assert (=> b!80390 true))

(declare-fun b_next!39139 () Bool)

(assert (=> start!10586 (= b_next!39137 (or (and b!80390 (= lambda!9221 p!846)) b_next!39139))))

(declare-fun lambda!9222 () Int)

(assert (=> bs!38278 (= (= (h!983 less!5) (h!983 ls!96)) (= lambda!9222 lambda!9213))))

(assert (=> bs!38276 (not (= lambda!9222 lambda!9211))))

(assert (=> b!80390 (not (= lambda!9222 lambda!9221))))

(assert (=> b!80390 (not (= lambda!9222 lambda!9220))))

(assert (=> bs!38277 (not (= lambda!9222 lambda!9212))))

(assert (=> b!80390 true))

(declare-fun b_next!39141 () Bool)

(assert (=> start!10586 (= b_next!39139 (or (and b!80390 (= lambda!9222 p!846)) b_next!39141))))

(declare-fun d!55445 () Bool)

(declare-fun isSorted!1 (List!658) Bool)

(declare-fun quickSort!0 (List!658) List!658)

(assert (=> d!55445 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18361 () Bool)

(declare-fun e!43617 () Bool)

(assert (=> d!55445 (= lt!18361 e!43617)))

(declare-fun res!40881 () Bool)

(assert (=> d!55445 (=> res!40881 e!43617)))

(assert (=> d!55445 (= res!40881 (or (is-Nil!617 less!5) (and (is-Cons!615 less!5) (is-Nil!617 (t!47777 less!5)))))))

(assert (=> d!55445 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!43616 () Bool)

(assert (=> b!80390 (= e!43617 e!43616)))

(declare-fun res!40882 () Bool)

(assert (=> b!80390 (=> (not res!40882) (not e!43616))))

(declare-fun lt!18359 () List!658)

(declare-fun lt!18358 () List!658)

(declare-fun append_sorted!0 (List!658 List!658) Bool)

(assert (=> b!80390 (= res!40882 (append_sorted!0 (quickSort!0 lt!18359) lt!18358))))

(declare-fun lt!18360 () List!658)

(assert (=> b!80390 (= lt!18360 (filter!11 (t!47777 less!5) lambda!9222))))

(assert (=> b!80390 (= lt!18358 (Cons!615 (h!983 less!5) (filter!11 (t!47777 less!5) lambda!9221)))))

(assert (=> b!80390 (= lt!18359 (filter!11 (t!47777 less!5) lambda!9220))))

(declare-fun b!80391 () Bool)

(declare-fun ++!66 (List!658 List!658) List!658)

(assert (=> b!80391 (= e!43616 (append_sorted!0 (++!66 (quickSort!0 lt!18359) lt!18358) (quickSort!0 lt!18360)))))

(assert (= (and d!55445 (not res!40881)) b!80390))

(assert (= (and b!80390 res!40882) b!80391))

(declare-fun m!75172 () Bool)

(assert (=> d!55445 m!75172))

(assert (=> d!55445 m!75172))

(declare-fun m!75174 () Bool)

(assert (=> d!55445 m!75174))

(declare-fun m!75176 () Bool)

(assert (=> b!80390 m!75176))

(declare-fun m!75178 () Bool)

(assert (=> b!80390 m!75178))

(declare-fun m!75180 () Bool)

(assert (=> b!80390 m!75180))

(declare-fun m!75182 () Bool)

(assert (=> b!80390 m!75182))

(declare-fun m!75184 () Bool)

(assert (=> b!80390 m!75184))

(assert (=> b!80390 m!75176))

(assert (=> b!80391 m!75176))

(assert (=> b!80391 m!75176))

(declare-fun m!75186 () Bool)

(assert (=> b!80391 m!75186))

(declare-fun m!75188 () Bool)

(assert (=> b!80391 m!75188))

(assert (=> b!80391 m!75186))

(assert (=> b!80391 m!75188))

(declare-fun m!75190 () Bool)

(assert (=> b!80391 m!75190))

(assert (=> b!80355 d!55445))

(declare-fun b!80392 () Bool)

(declare-fun e!43618 () List!658)

(declare-fun lt!18362 () List!658)

(assert (=> b!80392 (= e!43618 lt!18362)))

(declare-fun b!80393 () Bool)

(declare-fun e!43620 () List!658)

(assert (=> b!80393 (= e!43620 Nil!617)))

(declare-fun d!55447 () Bool)

(declare-fun e!43621 () Bool)

(assert (=> d!55447 e!43621))

(declare-fun res!40883 () Bool)

(assert (=> d!55447 (=> (not res!40883) (not e!43621))))

(declare-fun lt!18363 () List!658)

(assert (=> d!55447 (= res!40883 (<= (size!646 lt!18363) (size!646 (t!47777 ls!96))))))

(assert (=> d!55447 (= lt!18363 e!43620)))

(declare-fun c!20340 () Bool)

(assert (=> d!55447 (= c!20340 (is-Nil!617 (t!47777 ls!96)))))

(assert (=> d!55447 (= (filter!11 (t!47777 ls!96) lambda!9213) lt!18363)))

(declare-fun b!80394 () Bool)

(assert (=> b!80394 (= e!43618 (Cons!615 (h!983 (t!47777 ls!96)) lt!18362))))

(declare-fun b!80395 () Bool)

(assert (=> b!80395 (= e!43620 e!43618)))

(declare-fun c!20339 () Bool)

(declare-fun e!43619 () Bool)

(assert (=> b!80395 (= c!20339 e!43619)))

(declare-fun res!40884 () Bool)

(assert (=> b!80395 (=> (not res!40884) (not e!43619))))

(assert (=> b!80395 (= res!40884 (is-Cons!615 (t!47777 ls!96)))))

(assert (=> b!80395 (= lt!18362 (filter!11 (t!47777 (t!47777 ls!96)) lambda!9213))))

(declare-fun b!80396 () Bool)

(assert (=> b!80396 (= e!43619 (dynLambda!977 lambda!9213 (h!983 (t!47777 ls!96))))))

(declare-fun b!80397 () Bool)

(assert (=> b!80397 (= e!43621 (forall!13 lt!18363 lambda!9213))))

(declare-fun b!80398 () Bool)

(declare-fun res!40885 () Bool)

(assert (=> b!80398 (=> (not res!40885) (not e!43621))))

(assert (=> b!80398 (= res!40885 (subset (content!117 lt!18363) (content!117 (t!47777 ls!96))))))

(assert (= (and b!80395 res!40884) b!80396))

(assert (= (and b!80395 c!20339) b!80394))

(assert (= (and b!80395 (not c!20339)) b!80392))

(assert (= (and d!55447 c!20340) b!80393))

(assert (= (and d!55447 (not c!20340)) b!80395))

(assert (= (and d!55447 res!40883) b!80398))

(assert (= (and b!80398 res!40885) b!80397))

(declare-fun b_lambda!15911 () Bool)

(assert (=> (not b_lambda!15911) (not b!80396)))

(declare-fun m!75192 () Bool)

(assert (=> d!55447 m!75192))

(assert (=> d!55447 m!75156))

(declare-fun m!75194 () Bool)

(assert (=> b!80397 m!75194))

(declare-fun m!75196 () Bool)

(assert (=> b!80395 m!75196))

(declare-fun m!75198 () Bool)

(assert (=> b!80398 m!75198))

(assert (=> b!80398 m!75164))

(declare-fun m!75200 () Bool)

(assert (=> b!80396 m!75200))

(assert (=> b!80354 d!55447))

(declare-fun b!80399 () Bool)

(declare-fun e!43622 () List!658)

(declare-fun lt!18364 () List!658)

(assert (=> b!80399 (= e!43622 lt!18364)))

(declare-fun b!80400 () Bool)

(declare-fun e!43624 () List!658)

(assert (=> b!80400 (= e!43624 Nil!617)))

(declare-fun d!55449 () Bool)

(declare-fun e!43625 () Bool)

(assert (=> d!55449 e!43625))

(declare-fun res!40886 () Bool)

(assert (=> d!55449 (=> (not res!40886) (not e!43625))))

(declare-fun lt!18365 () List!658)

(assert (=> d!55449 (= res!40886 (<= (size!646 lt!18365) (size!646 (t!47777 ls!96))))))

(assert (=> d!55449 (= lt!18365 e!43624)))

(declare-fun c!20342 () Bool)

(assert (=> d!55449 (= c!20342 (is-Nil!617 (t!47777 ls!96)))))

(assert (=> d!55449 (= (filter!11 (t!47777 ls!96) lambda!9212) lt!18365)))

(declare-fun b!80401 () Bool)

(assert (=> b!80401 (= e!43622 (Cons!615 (h!983 (t!47777 ls!96)) lt!18364))))

(declare-fun b!80402 () Bool)

(assert (=> b!80402 (= e!43624 e!43622)))

(declare-fun c!20341 () Bool)

(declare-fun e!43623 () Bool)

(assert (=> b!80402 (= c!20341 e!43623)))

(declare-fun res!40887 () Bool)

(assert (=> b!80402 (=> (not res!40887) (not e!43623))))

(assert (=> b!80402 (= res!40887 (is-Cons!615 (t!47777 ls!96)))))

(assert (=> b!80402 (= lt!18364 (filter!11 (t!47777 (t!47777 ls!96)) lambda!9212))))

(declare-fun b!80403 () Bool)

(assert (=> b!80403 (= e!43623 (dynLambda!977 lambda!9212 (h!983 (t!47777 ls!96))))))

(declare-fun b!80404 () Bool)

(assert (=> b!80404 (= e!43625 (forall!13 lt!18365 lambda!9212))))

(declare-fun b!80405 () Bool)

(declare-fun res!40888 () Bool)

(assert (=> b!80405 (=> (not res!40888) (not e!43625))))

(assert (=> b!80405 (= res!40888 (subset (content!117 lt!18365) (content!117 (t!47777 ls!96))))))

(assert (= (and b!80402 res!40887) b!80403))

(assert (= (and b!80402 c!20341) b!80401))

(assert (= (and b!80402 (not c!20341)) b!80399))

(assert (= (and d!55449 c!20342) b!80400))

(assert (= (and d!55449 (not c!20342)) b!80402))

(assert (= (and d!55449 res!40886) b!80405))

(assert (= (and b!80405 res!40888) b!80404))

(declare-fun b_lambda!15913 () Bool)

(assert (=> (not b_lambda!15913) (not b!80403)))

(declare-fun m!75202 () Bool)

(assert (=> d!55449 m!75202))

(assert (=> d!55449 m!75156))

(declare-fun m!75204 () Bool)

(assert (=> b!80404 m!75204))

(declare-fun m!75206 () Bool)

(assert (=> b!80402 m!75206))

(declare-fun m!75208 () Bool)

(assert (=> b!80405 m!75208))

(assert (=> b!80405 m!75164))

(declare-fun m!75210 () Bool)

(assert (=> b!80403 m!75210))

(assert (=> b!80350 d!55449))

(declare-fun b_lambda!15915 () Bool)

(assert (= b_lambda!15913 (or b!80350 b_lambda!15915)))

(declare-fun bs!38279 () Bool)

(declare-fun d!55451 () Bool)

(assert (= bs!38279 (and d!55451 b!80350)))

(assert (=> bs!38279 (= (dynLambda!977 lambda!9212 (h!983 (t!47777 ls!96))) (= (h!983 (t!47777 ls!96)) (h!983 ls!96)))))

(assert (=> b!80403 d!55451))

(declare-fun b_lambda!15917 () Bool)

(assert (= b_lambda!15907 (or b!80353 b_lambda!15917)))

(declare-fun bs!38280 () Bool)

(declare-fun d!55453 () Bool)

(assert (= bs!38280 (and d!55453 b!80353)))

(assert (=> bs!38280 (= (dynLambda!977 lambda!9211 (h!983 (t!47777 ls!96))) (< (h!983 (t!47777 ls!96)) (h!983 ls!96)))))

(assert (=> b!80377 d!55453))

(declare-fun b_lambda!15919 () Bool)

(assert (= b_lambda!15909 (or (and b!80390 (= lambda!9220 p!846)) (and b!80354 (= lambda!9213 p!846)) (and b!80353 (= lambda!9211 p!846)) (and b!80390 (= lambda!9221 p!846)) (and b!80350 (= lambda!9212 p!846)) (and start!10586 b_free!7351) (and b!80390 (= lambda!9222 p!846)) b_lambda!15919)))

(declare-fun bs!38281 () Bool)

(declare-fun d!55455 () Bool)

(assert (= bs!38281 (and d!55455 b!80390)))

(assert (=> bs!38281 (= (dynLambda!977 lambda!9222 (h!983 ls!99)) (> (h!983 ls!99) (h!983 less!5)))))

(assert (=> (and b!80390 (= lambda!9222 p!846) b!80384) d!55455))

(declare-fun bs!38282 () Bool)

(declare-fun d!55457 () Bool)

(assert (= bs!38282 (and d!55457 b!80390)))

(assert (=> bs!38282 (= (dynLambda!977 lambda!9221 (h!983 ls!99)) (= (h!983 ls!99) (h!983 less!5)))))

(assert (=> (and b!80390 (= lambda!9221 p!846) b!80384) d!55457))

(declare-fun bs!38283 () Bool)

(declare-fun d!55459 () Bool)

(assert (= bs!38283 (and d!55459 b!80353)))

(assert (=> bs!38283 (= (dynLambda!977 lambda!9211 (h!983 ls!99)) (< (h!983 ls!99) (h!983 ls!96)))))

(assert (=> (and b!80353 (= lambda!9211 p!846) b!80384) d!55459))

(declare-fun bs!38284 () Bool)

(declare-fun d!55461 () Bool)

(assert (= bs!38284 (and d!55461 b!80354)))

(assert (=> bs!38284 (= (dynLambda!977 lambda!9213 (h!983 ls!99)) (> (h!983 ls!99) (h!983 ls!96)))))

(assert (=> (and b!80354 (= lambda!9213 p!846) b!80384) d!55461))

(declare-fun bs!38285 () Bool)

(declare-fun d!55463 () Bool)

(assert (= bs!38285 (and d!55463 b!80350)))

(assert (=> bs!38285 (= (dynLambda!977 lambda!9212 (h!983 ls!99)) (= (h!983 ls!99) (h!983 ls!96)))))

(assert (=> (and b!80350 (= lambda!9212 p!846) b!80384) d!55463))

(declare-fun bs!38286 () Bool)

(declare-fun d!55465 () Bool)

(assert (= bs!38286 (and d!55465 b!80390)))

(assert (=> bs!38286 (= (dynLambda!977 lambda!9220 (h!983 ls!99)) (< (h!983 ls!99) (h!983 less!5)))))

(assert (=> (and b!80390 (= lambda!9220 p!846) b!80384) d!55465))

(declare-fun b_lambda!15921 () Bool)

(assert (= b_lambda!15911 (or b!80354 b_lambda!15921)))

(declare-fun bs!38287 () Bool)

(declare-fun d!55467 () Bool)

(assert (= bs!38287 (and d!55467 b!80354)))

(assert (=> bs!38287 (= (dynLambda!977 lambda!9213 (h!983 (t!47777 ls!96))) (> (h!983 (t!47777 ls!96)) (h!983 ls!96)))))

(assert (=> b!80396 d!55467))

(push 1)

(assert (not d!55447))

(assert (not b!80378))

(assert (not b!80390))

(assert (not b!80404))

(assert (not b!80395))

(assert (not b!80402))

(assert (not b!80405))

(assert (not d!55449))

(assert (not b!80385))

(assert (not b_lambda!15919))

(assert (not b!80376))

(assert (not b!80397))

(assert b_and!58873)

(assert (not b!80379))

(assert (not d!55441))

(assert (not b!80391))

(assert (not b!80398))

(assert (not b_lambda!15915))

(assert (not d!55445))

(assert (not b_lambda!15921))

(assert (not b_lambda!15917))

(assert (not b_next!39141))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58873)

(assert (not b_next!39141))

(check-sat)

(pop 1)

