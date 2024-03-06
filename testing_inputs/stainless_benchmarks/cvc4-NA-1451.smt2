; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9976 () Bool)

(assert start!9976)

(declare-fun b_free!7305 () Bool)

(declare-fun b_next!39071 () Bool)

(assert (=> start!9976 (= b_free!7305 (not b_next!39071))))

(declare-fun tp!16858 () Bool)

(declare-fun b_and!58715 () Bool)

(assert (=> start!9976 (= tp!16858 b_and!58715)))

(declare-fun lambda!9168 () Int)

(declare-fun b_next!39073 () Bool)

(declare-fun f!4353 () Int)

(declare-fun b!72407 () Bool)

(assert (=> start!9976 (= b_next!39071 (or (and b!72407 (= lambda!9168 f!4353)) b_next!39073))))

(declare-fun res!35345 () Bool)

(declare-fun e!39143 () Bool)

(assert (=> b!72407 (=> (not res!35345) (not e!39143))))

(assert (=> b!72407 (= res!35345 (= f!4353 lambda!9168))))

(declare-fun b!72408 () Bool)

(declare-fun res!35344 () Bool)

(assert (=> b!72408 (=> (not res!35344) (not e!39143))))

(declare-datatypes () ((List!610 (Nil!568) (Cons!567 (head!977 Int) (tail!998 List!610)))))

(declare-fun list!866 () List!610)

(assert (=> b!72408 (= res!35344 (is-Cons!567 list!866))))

(declare-fun res!35346 () Bool)

(assert (=> start!9976 (=> (not res!35346) (not e!39143))))

(declare-datatypes () ((tuple2!370 (tuple2!371 (_1!220 Int) (_2!220 Int)))))

(declare-fun p!664 () tuple2!370)

(assert (=> start!9976 (= res!35346 (and (>= (_1!220 p!664) 0) (>= (_2!220 p!664) 0)))))

(assert (=> start!9976 e!39143))

(assert (=> start!9976 true))

(assert (=> start!9976 tp!16858))

(declare-fun b!72409 () Bool)

(declare-fun res!35342 () Bool)

(assert (=> b!72409 (=> (not res!35342) (not e!39143))))

(declare-datatypes () ((ProofOps!378 (ProofOps!379 (prop!500 Bool)))))

(declare-fun thiss!9454 () ProofOps!378)

(declare-fun foldLeft!4 (List!610 tuple2!370 Int) tuple2!370)

(declare-fun balanced_withReduce!0 (List!610 tuple2!370) Bool)

(assert (=> b!72409 (= res!35342 (= thiss!9454 (ProofOps!379 (= (= (foldLeft!4 list!866 p!664 f!4353) (tuple2!371 0 0)) (balanced_withReduce!0 list!866 p!664)))))))

(declare-fun p!667 () tuple2!370)

(declare-fun b!72410 () Bool)

(declare-fun p2!104 () tuple2!370)

(declare-fun list!871 () List!610)

(assert (=> b!72410 (= e!39143 (and (= list!871 (tail!998 list!866)) (= p!667 p2!104) (or (< (_1!220 p!667) 0) (< (_2!220 p!667) 0))))))

(declare-fun b!72411 () Bool)

(declare-fun res!35343 () Bool)

(assert (=> b!72411 (=> (not res!35343) (not e!39143))))

(declare-fun dynLambda!953 (Int tuple2!370 Int) tuple2!370)

(assert (=> b!72411 (= res!35343 (= p2!104 (dynLambda!953 f!4353 p!664 (head!977 list!866))))))

(assert (= (and start!9976 res!35346) b!72407))

(assert (= (and b!72407 res!35345) b!72409))

(assert (= (and b!72409 res!35342) b!72408))

(assert (= (and b!72408 res!35344) b!72411))

(assert (= (and b!72411 res!35343) b!72410))

(declare-fun b_lambda!15731 () Bool)

(assert (=> (not b_lambda!15731) (not b!72411)))

(declare-fun t!47477 () Bool)

(declare-fun tb!46133 () Bool)

(assert (=> (and start!9976 (= f!4353 f!4353) t!47477) tb!46133))

(declare-fun result!46561 () Bool)

(assert (=> tb!46133 (= result!46561 true)))

(assert (=> b!72411 t!47477))

(declare-fun b_and!58717 () Bool)

(assert (= b_and!58715 (and (=> t!47477 result!46561) b_and!58717)))

(declare-fun m!72358 () Bool)

(assert (=> b!72409 m!72358))

(declare-fun m!72360 () Bool)

(assert (=> b!72409 m!72360))

(declare-fun m!72362 () Bool)

(assert (=> b!72411 m!72362))

(push 1)

(assert (not b!72409))

(assert (not b_lambda!15731))

(assert b_and!58717)

(assert (not b_next!39073))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58717)

(assert (not b_next!39073))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15733 () Bool)

(assert (= b_lambda!15731 (or (and b!72407 (= lambda!9168 f!4353)) (and start!9976 b_free!7305) b_lambda!15733)))

(declare-fun bs!37747 () Bool)

(declare-fun d!54563 () Bool)

(assert (= bs!37747 (and d!54563 b!72407)))

(declare-fun reduce!0 (tuple2!370 tuple2!370) tuple2!370)

(declare-fun parPair!0 (Int) tuple2!370)

(assert (=> bs!37747 (= (dynLambda!953 lambda!9168 p!664 (head!977 list!866)) (reduce!0 p!664 (parPair!0 (head!977 list!866))))))

(declare-fun m!72364 () Bool)

(assert (=> bs!37747 m!72364))

(assert (=> bs!37747 m!72364))

(declare-fun m!72366 () Bool)

(assert (=> bs!37747 m!72366))

(assert (=> (and b!72407 (= lambda!9168 f!4353) b!72411) d!54563))

(push 1)

(assert (not bs!37747))

(assert (not b_lambda!15733))

(assert (not b!72409))

(assert b_and!58717)

(assert (not b_next!39073))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58717)

(assert (not b_next!39073))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54565 () Bool)

(assert (=> d!54565 (= (reduce!0 p!664 (parPair!0 (head!977 list!866))) (ite (>= (_1!220 p!664) (_2!220 (parPair!0 (head!977 list!866)))) (tuple2!371 (+ (- (_1!220 p!664) (_2!220 (parPair!0 (head!977 list!866)))) (_1!220 (parPair!0 (head!977 list!866)))) (_2!220 p!664)) (tuple2!371 (_1!220 (parPair!0 (head!977 list!866))) (+ (- (_2!220 (parPair!0 (head!977 list!866))) (_1!220 p!664)) (_2!220 p!664)))))))

(assert (=> bs!37747 d!54565))

(declare-fun d!54567 () Bool)

(assert (=> d!54567 (= (parPair!0 (head!977 list!866)) (ite (= (head!977 list!866) 1) (tuple2!371 1 0) (ite (= (head!977 list!866) 2) (tuple2!371 0 1) (tuple2!371 0 0))))))

(assert (=> bs!37747 d!54567))

(declare-fun d!54569 () Bool)

(declare-fun c!17427 () Bool)

(assert (=> d!54569 (= c!17427 (is-Cons!567 list!866))))

(declare-fun e!39146 () tuple2!370)

(assert (=> d!54569 (= (foldLeft!4 list!866 p!664 f!4353) e!39146)))

(declare-fun b!72416 () Bool)

(assert (=> b!72416 (= e!39146 (foldLeft!4 (tail!998 list!866) (dynLambda!953 f!4353 p!664 (head!977 list!866)) f!4353))))

(declare-fun b!72417 () Bool)

(assert (=> b!72417 (= e!39146 p!664)))

(assert (= (and d!54569 c!17427) b!72416))

(assert (= (and d!54569 (not c!17427)) b!72417))

(declare-fun b_lambda!15735 () Bool)

(assert (=> (not b_lambda!15735) (not b!72416)))

(assert (=> b!72416 t!47477))

(declare-fun b_and!58719 () Bool)

(assert (= b_and!58717 (and (=> t!47477 result!46561) b_and!58719)))

(assert (=> b!72416 m!72362))

(assert (=> b!72416 m!72362))

(declare-fun m!72368 () Bool)

(assert (=> b!72416 m!72368))

(assert (=> b!72409 d!54569))

(declare-fun d!54571 () Bool)

(declare-fun lt!15347 () Bool)

(declare-fun balanced_withFailure!0 (List!610 Int Bool) Bool)

(assert (=> d!54571 (= lt!15347 (balanced_withFailure!0 list!866 (- (_1!220 p!664) (_2!220 p!664)) (> (_2!220 p!664) 0)))))

(declare-fun e!39149 () Bool)

(assert (=> d!54571 (= lt!15347 e!39149)))

(declare-fun c!17430 () Bool)

(assert (=> d!54571 (= c!17430 (is-Cons!567 list!866))))

(assert (=> d!54571 (and (>= (_1!220 p!664) 0) (>= (_2!220 p!664) 0))))

(assert (=> d!54571 (= (balanced_withReduce!0 list!866 p!664) lt!15347)))

(declare-fun b!72422 () Bool)

(assert (=> b!72422 (= e!39149 (balanced_withReduce!0 (tail!998 list!866) (reduce!0 p!664 (parPair!0 (head!977 list!866)))))))

(declare-fun b!72423 () Bool)

(assert (=> b!72423 (= e!39149 (and (= (_1!220 p!664) 0) (= (_2!220 p!664) 0)))))

(assert (= (and d!54571 c!17430) b!72422))

(assert (= (and d!54571 (not c!17430)) b!72423))

(declare-fun m!72370 () Bool)

(assert (=> d!54571 m!72370))

(assert (=> b!72422 m!72364))

(assert (=> b!72422 m!72364))

(assert (=> b!72422 m!72366))

(assert (=> b!72422 m!72366))

(declare-fun m!72372 () Bool)

(assert (=> b!72422 m!72372))

(assert (=> b!72409 d!54571))

(declare-fun b_lambda!15737 () Bool)

(assert (= b_lambda!15735 (or (and b!72407 (= lambda!9168 f!4353)) (and start!9976 b_free!7305) b_lambda!15737)))

(assert (=> (and b!72407 (= lambda!9168 f!4353) b!72416) d!54563))

(push 1)

(assert (not b!72422))

(assert (not b_lambda!15733))

(assert (not d!54571))

(assert (not b!72416))

(assert b_and!58719)

(assert (not b_next!39073))

(assert (not b_lambda!15737))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58719)

(assert (not b_next!39073))

(check-sat)

(pop 1)

