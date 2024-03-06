; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9988 () Bool)

(assert start!9988)

(declare-fun b_free!7309 () Bool)

(declare-fun b_next!39079 () Bool)

(assert (=> start!9988 (= b_free!7309 (not b_next!39079))))

(declare-fun tp!16864 () Bool)

(declare-fun b_and!58723 () Bool)

(assert (=> start!9988 (= tp!16864 b_and!58723)))

(declare-fun b_next!39081 () Bool)

(declare-fun b!72439 () Bool)

(declare-fun f!4353 () Int)

(declare-fun lambda!9174 () Int)

(assert (=> start!9988 (= b_next!39079 (or (and b!72439 (= lambda!9174 f!4353)) b_next!39081))))

(declare-fun res!35363 () Bool)

(declare-fun e!39158 () Bool)

(assert (=> start!9988 (=> (not res!35363) (not e!39158))))

(declare-datatypes () ((tuple2!374 (tuple2!375 (_1!222 Int) (_2!222 Int)))))

(declare-fun p!664 () tuple2!374)

(assert (=> start!9988 (= res!35363 (and (>= (_1!222 p!664) 0) (>= (_2!222 p!664) 0)))))

(assert (=> start!9988 e!39158))

(assert (=> start!9988 true))

(assert (=> start!9988 tp!16864))

(declare-fun res!35364 () Bool)

(assert (=> b!72439 (=> (not res!35364) (not e!39158))))

(assert (=> b!72439 (= res!35364 (= f!4353 lambda!9174))))

(declare-datatypes () ((List!612 (Nil!570) (Cons!569 (head!979 Int) (tail!1000 List!612)))))

(declare-fun list!866 () List!612)

(declare-fun b!72440 () Bool)

(declare-fun e!39157 () Bool)

(declare-datatypes () ((ProofOps!382 (ProofOps!383 (prop!502 Bool)))))

(declare-fun because!1 (ProofOps!382 Bool) Bool)

(declare-fun foldLeft!6 (List!612 tuple2!374 Int) tuple2!374)

(declare-fun balanced_withReduce!0 (List!612 tuple2!374) Bool)

(assert (=> b!72440 (= e!39158 (not (because!1 (ProofOps!383 (= (= (foldLeft!6 list!866 p!664 f!4353) (tuple2!375 0 0)) (balanced_withReduce!0 list!866 p!664))) e!39157)))))

(declare-fun res!35365 () Bool)

(assert (=> b!72440 (=> res!35365 e!39157)))

(assert (=> b!72440 (= res!35365 (not (is-Cons!569 list!866)))))

(declare-fun b!72441 () Bool)

(declare-fun balanced_foldLeft_equivalence!0 (List!612 tuple2!374) Bool)

(declare-fun dynLambda!954 (Int tuple2!374 Int) tuple2!374)

(assert (=> b!72441 (= e!39157 (balanced_foldLeft_equivalence!0 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866))))))

(assert (= (and start!9988 res!35363) b!72439))

(assert (= (and b!72439 res!35364) b!72440))

(assert (= (and b!72440 (not res!35365)) b!72441))

(declare-fun b_lambda!15739 () Bool)

(assert (=> (not b_lambda!15739) (not b!72441)))

(declare-fun t!47479 () Bool)

(declare-fun tb!46135 () Bool)

(assert (=> (and start!9988 (= f!4353 f!4353) t!47479) tb!46135))

(declare-fun result!46563 () Bool)

(assert (=> tb!46135 (= result!46563 true)))

(assert (=> b!72441 t!47479))

(declare-fun b_and!58725 () Bool)

(assert (= b_and!58723 (and (=> t!47479 result!46563) b_and!58725)))

(declare-fun m!72378 () Bool)

(assert (=> b!72440 m!72378))

(declare-fun m!72380 () Bool)

(assert (=> b!72440 m!72380))

(declare-fun m!72382 () Bool)

(assert (=> b!72440 m!72382))

(declare-fun m!72384 () Bool)

(assert (=> b!72441 m!72384))

(assert (=> b!72441 m!72384))

(declare-fun m!72386 () Bool)

(assert (=> b!72441 m!72386))

(push 1)

(assert (not b!72441))

(assert (not b!72440))

(assert (not b_next!39081))

(assert b_and!58725)

(assert (not b_lambda!15739))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58725)

(assert (not b_next!39081))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15741 () Bool)

(assert (= b_lambda!15739 (or (and b!72439 (= lambda!9174 f!4353)) (and start!9988 b_free!7309) b_lambda!15741)))

(declare-fun bs!37750 () Bool)

(declare-fun d!54573 () Bool)

(assert (= bs!37750 (and d!54573 b!72439)))

(declare-fun reduce!0 (tuple2!374 tuple2!374) tuple2!374)

(declare-fun parPair!0 (Int) tuple2!374)

(assert (=> bs!37750 (= (dynLambda!954 lambda!9174 p!664 (head!979 list!866)) (reduce!0 p!664 (parPair!0 (head!979 list!866))))))

(declare-fun m!72388 () Bool)

(assert (=> bs!37750 m!72388))

(assert (=> bs!37750 m!72388))

(declare-fun m!72390 () Bool)

(assert (=> bs!37750 m!72390))

(assert (=> (and b!72439 (= lambda!9174 f!4353) b!72441) d!54573))

(push 1)

(assert (not bs!37750))

(assert (not b!72441))

(assert (not b!72440))

(assert (not b_next!39081))

(assert b_and!58725)

(assert (not b_lambda!15741))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58725)

(assert (not b_next!39081))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!37751 () Bool)

(declare-fun d!54575 () Bool)

(assert (= bs!37751 (and d!54575 b!72439)))

(declare-fun lambda!9177 () Int)

(assert (=> bs!37751 (= lambda!9177 lambda!9174)))

(declare-fun b_next!39083 () Bool)

(assert (=> start!9988 (= b_next!39081 (or (and d!54575 (= lambda!9177 f!4353)) b_next!39083))))

(declare-fun e!39161 () Bool)

(assert (=> d!54575 (because!1 (ProofOps!383 (= (= (foldLeft!6 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866)) lambda!9177) (tuple2!375 0 0)) (balanced_withReduce!0 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866))))) e!39161)))

(declare-fun res!35368 () Bool)

(assert (=> d!54575 (=> res!35368 e!39161)))

(assert (=> d!54575 (= res!35368 (not (is-Cons!569 (tail!1000 list!866))))))

(assert (=> d!54575 (and (>= (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0) (>= (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0))))

(assert (=> d!54575 (= (balanced_foldLeft_equivalence!0 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866))) true)))

(declare-fun b!72444 () Bool)

(assert (=> b!72444 (= e!39161 (balanced_foldLeft_equivalence!0 (tail!1000 (tail!1000 list!866)) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866))))))))

(assert (= (and d!54575 (not res!35368)) b!72444))

(assert (=> d!54575 m!72384))

(declare-fun m!72392 () Bool)

(assert (=> d!54575 m!72392))

(assert (=> d!54575 m!72384))

(declare-fun m!72394 () Bool)

(assert (=> d!54575 m!72394))

(declare-fun m!72396 () Bool)

(assert (=> d!54575 m!72396))

(declare-fun m!72398 () Bool)

(assert (=> b!72444 m!72398))

(assert (=> b!72444 m!72384))

(assert (=> b!72444 m!72398))

(declare-fun m!72400 () Bool)

(assert (=> b!72444 m!72400))

(assert (=> b!72444 m!72400))

(declare-fun m!72402 () Bool)

(assert (=> b!72444 m!72402))

(assert (=> b!72441 d!54575))

(declare-fun d!54577 () Bool)

(assert (=> d!54577 (= (reduce!0 p!664 (parPair!0 (head!979 list!866))) (ite (>= (_1!222 p!664) (_2!222 (parPair!0 (head!979 list!866)))) (tuple2!375 (+ (- (_1!222 p!664) (_2!222 (parPair!0 (head!979 list!866)))) (_1!222 (parPair!0 (head!979 list!866)))) (_2!222 p!664)) (tuple2!375 (_1!222 (parPair!0 (head!979 list!866))) (+ (- (_2!222 (parPair!0 (head!979 list!866))) (_1!222 p!664)) (_2!222 p!664)))))))

(assert (=> bs!37750 d!54577))

(declare-fun d!54579 () Bool)

(assert (=> d!54579 (= (parPair!0 (head!979 list!866)) (ite (= (head!979 list!866) 1) (tuple2!375 1 0) (ite (= (head!979 list!866) 2) (tuple2!375 0 1) (tuple2!375 0 0))))))

(assert (=> bs!37750 d!54579))

(declare-fun d!54581 () Bool)

(assert (=> d!54581 (= (because!1 (ProofOps!383 (= (= (foldLeft!6 list!866 p!664 f!4353) (tuple2!375 0 0)) (balanced_withReduce!0 list!866 p!664))) e!39157) (and e!39157 (prop!502 (ProofOps!383 (= (= (foldLeft!6 list!866 p!664 f!4353) (tuple2!375 0 0)) (balanced_withReduce!0 list!866 p!664))))))))

(assert (=> b!72440 d!54581))

(declare-fun d!54583 () Bool)

(declare-fun c!17433 () Bool)

(assert (=> d!54583 (= c!17433 (is-Cons!569 list!866))))

(declare-fun e!39164 () tuple2!374)

(assert (=> d!54583 (= (foldLeft!6 list!866 p!664 f!4353) e!39164)))

(declare-fun b!72449 () Bool)

(assert (=> b!72449 (= e!39164 (foldLeft!6 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866)) f!4353))))

(declare-fun b!72450 () Bool)

(assert (=> b!72450 (= e!39164 p!664)))

(assert (= (and d!54583 c!17433) b!72449))

(assert (= (and d!54583 (not c!17433)) b!72450))

(declare-fun b_lambda!15743 () Bool)

(assert (=> (not b_lambda!15743) (not b!72449)))

(assert (=> b!72449 t!47479))

(declare-fun b_and!58727 () Bool)

(assert (= b_and!58725 (and (=> t!47479 result!46563) b_and!58727)))

(assert (=> b!72449 m!72384))

(assert (=> b!72449 m!72384))

(declare-fun m!72404 () Bool)

(assert (=> b!72449 m!72404))

(assert (=> b!72440 d!54583))

(declare-fun d!54585 () Bool)

(declare-fun lt!15350 () Bool)

(declare-fun balanced_withFailure!0 (List!612 Int Bool) Bool)

(assert (=> d!54585 (= lt!15350 (balanced_withFailure!0 list!866 (- (_1!222 p!664) (_2!222 p!664)) (> (_2!222 p!664) 0)))))

(declare-fun e!39167 () Bool)

(assert (=> d!54585 (= lt!15350 e!39167)))

(declare-fun c!17436 () Bool)

(assert (=> d!54585 (= c!17436 (is-Cons!569 list!866))))

(assert (=> d!54585 (and (>= (_1!222 p!664) 0) (>= (_2!222 p!664) 0))))

(assert (=> d!54585 (= (balanced_withReduce!0 list!866 p!664) lt!15350)))

(declare-fun b!72455 () Bool)

(assert (=> b!72455 (= e!39167 (balanced_withReduce!0 (tail!1000 list!866) (reduce!0 p!664 (parPair!0 (head!979 list!866)))))))

(declare-fun b!72456 () Bool)

(assert (=> b!72456 (= e!39167 (and (= (_1!222 p!664) 0) (= (_2!222 p!664) 0)))))

(assert (= (and d!54585 c!17436) b!72455))

(assert (= (and d!54585 (not c!17436)) b!72456))

(declare-fun m!72406 () Bool)

(assert (=> d!54585 m!72406))

(assert (=> b!72455 m!72388))

(assert (=> b!72455 m!72388))

(assert (=> b!72455 m!72390))

(assert (=> b!72455 m!72390))

(declare-fun m!72408 () Bool)

(assert (=> b!72455 m!72408))

(assert (=> b!72440 d!54585))

(declare-fun b_lambda!15745 () Bool)

(assert (= b_lambda!15743 (or (and b!72439 (= lambda!9174 f!4353)) (and d!54575 (= lambda!9177 f!4353)) (and start!9988 b_free!7309) b_lambda!15745)))

(assert (=> (and b!72439 (= lambda!9174 f!4353) b!72449) d!54573))

(declare-fun bs!37752 () Bool)

(declare-fun d!54587 () Bool)

(assert (= bs!37752 (and d!54587 d!54575)))

(assert (=> bs!37752 (= (dynLambda!954 lambda!9177 p!664 (head!979 list!866)) (reduce!0 p!664 (parPair!0 (head!979 list!866))))))

(assert (=> bs!37752 m!72388))

(assert (=> bs!37752 m!72388))

(assert (=> bs!37752 m!72390))

(assert (=> (and d!54575 (= lambda!9177 f!4353) b!72449) d!54587))

(push 1)

(assert b_and!58727)

(assert (not bs!37752))

(assert (not b_lambda!15741))

(assert (not b_next!39083))

(assert (not d!54585))

(assert (not b_lambda!15745))

(assert (not b!72449))

(assert (not b!72455))

(assert (not b!72444))

(assert (not d!54575))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58727)

(assert (not b_next!39083))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54589 () Bool)

(declare-fun c!17437 () Bool)

(assert (=> d!54589 (= c!17437 (is-Cons!569 (tail!1000 list!866)))))

(declare-fun e!39168 () tuple2!374)

(assert (=> d!54589 (= (foldLeft!6 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866)) f!4353) e!39168)))

(declare-fun b!72457 () Bool)

(assert (=> b!72457 (= e!39168 (foldLeft!6 (tail!1000 (tail!1000 list!866)) (dynLambda!954 f!4353 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (head!979 (tail!1000 list!866))) f!4353))))

(declare-fun b!72458 () Bool)

(assert (=> b!72458 (= e!39168 (dynLambda!954 f!4353 p!664 (head!979 list!866)))))

(assert (= (and d!54589 c!17437) b!72457))

(assert (= (and d!54589 (not c!17437)) b!72458))

(declare-fun b_lambda!15747 () Bool)

(assert (=> (not b_lambda!15747) (not b!72457)))

(declare-fun t!47481 () Bool)

(declare-fun tb!46137 () Bool)

(assert (=> (and start!9988 (= f!4353 f!4353) t!47481) tb!46137))

(declare-fun result!46565 () Bool)

(assert (=> tb!46137 (= result!46565 true)))

(assert (=> b!72457 t!47481))

(declare-fun b_and!58729 () Bool)

(assert (= b_and!58727 (and (=> t!47481 result!46565) b_and!58729)))

(assert (=> b!72457 m!72384))

(declare-fun m!72410 () Bool)

(assert (=> b!72457 m!72410))

(assert (=> b!72457 m!72410))

(declare-fun m!72412 () Bool)

(assert (=> b!72457 m!72412))

(assert (=> b!72449 d!54589))

(declare-fun bs!37753 () Bool)

(declare-fun d!54591 () Bool)

(assert (= bs!37753 (and d!54591 b!72439)))

(declare-fun lambda!9178 () Int)

(assert (=> bs!37753 (= lambda!9178 lambda!9174)))

(declare-fun bs!37754 () Bool)

(assert (= bs!37754 (and d!54591 d!54575)))

(assert (=> bs!37754 (= lambda!9178 lambda!9177)))

(declare-fun b_next!39085 () Bool)

(assert (=> start!9988 (= b_next!39083 (or (and d!54591 (= lambda!9178 f!4353)) b_next!39085))))

(declare-fun e!39169 () Bool)

(assert (=> d!54591 (because!1 (ProofOps!383 (= (= (foldLeft!6 (tail!1000 (tail!1000 list!866)) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))) lambda!9178) (tuple2!375 0 0)) (balanced_withReduce!0 (tail!1000 (tail!1000 list!866)) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866))))))) e!39169)))

(declare-fun res!35370 () Bool)

(assert (=> d!54591 (=> res!35370 e!39169)))

(assert (=> d!54591 (= res!35370 (not (is-Cons!569 (tail!1000 (tail!1000 list!866)))))))

(assert (=> d!54591 (and (>= (_1!222 (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866))))) 0) (>= (_2!222 (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866))))) 0))))

(assert (=> d!54591 (= (balanced_foldLeft_equivalence!0 (tail!1000 (tail!1000 list!866)) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866))))) true)))

(declare-fun b!72459 () Bool)

(assert (=> b!72459 (= e!39169 (balanced_foldLeft_equivalence!0 (tail!1000 (tail!1000 (tail!1000 list!866))) (reduce!0 (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))) (parPair!0 (head!979 (tail!1000 (tail!1000 list!866)))))))))

(assert (= (and d!54591 (not res!35370)) b!72459))

(assert (=> d!54591 m!72400))

(declare-fun m!72414 () Bool)

(assert (=> d!54591 m!72414))

(assert (=> d!54591 m!72400))

(declare-fun m!72416 () Bool)

(assert (=> d!54591 m!72416))

(declare-fun m!72418 () Bool)

(assert (=> d!54591 m!72418))

(declare-fun m!72420 () Bool)

(assert (=> b!72459 m!72420))

(assert (=> b!72459 m!72400))

(assert (=> b!72459 m!72420))

(declare-fun m!72422 () Bool)

(assert (=> b!72459 m!72422))

(assert (=> b!72459 m!72422))

(declare-fun m!72424 () Bool)

(assert (=> b!72459 m!72424))

(assert (=> b!72444 d!54591))

(declare-fun d!54593 () Bool)

(assert (=> d!54593 (= (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))) (ite (>= (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) (_2!222 (parPair!0 (head!979 (tail!1000 list!866))))) (tuple2!375 (+ (- (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) (_2!222 (parPair!0 (head!979 (tail!1000 list!866))))) (_1!222 (parPair!0 (head!979 (tail!1000 list!866))))) (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866)))) (tuple2!375 (_1!222 (parPair!0 (head!979 (tail!1000 list!866)))) (+ (- (_2!222 (parPair!0 (head!979 (tail!1000 list!866)))) (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866)))) (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866)))))))))

(assert (=> b!72444 d!54593))

(declare-fun d!54595 () Bool)

(assert (=> d!54595 (= (parPair!0 (head!979 (tail!1000 list!866))) (ite (= (head!979 (tail!1000 list!866)) 1) (tuple2!375 1 0) (ite (= (head!979 (tail!1000 list!866)) 2) (tuple2!375 0 1) (tuple2!375 0 0))))))

(assert (=> b!72444 d!54595))

(declare-fun d!54597 () Bool)

(assert (=> d!54597 (= (because!1 (ProofOps!383 (= (= (foldLeft!6 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866)) lambda!9177) (tuple2!375 0 0)) (balanced_withReduce!0 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866))))) e!39161) (and e!39161 (prop!502 (ProofOps!383 (= (= (foldLeft!6 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866)) lambda!9177) (tuple2!375 0 0)) (balanced_withReduce!0 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866))))))))))

(assert (=> d!54575 d!54597))

(declare-fun d!54599 () Bool)

(declare-fun c!17438 () Bool)

(assert (=> d!54599 (= c!17438 (is-Cons!569 (tail!1000 list!866)))))

(declare-fun e!39170 () tuple2!374)

(assert (=> d!54599 (= (foldLeft!6 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866)) lambda!9177) e!39170)))

(declare-fun b!72460 () Bool)

(assert (=> b!72460 (= e!39170 (foldLeft!6 (tail!1000 (tail!1000 list!866)) (dynLambda!954 lambda!9177 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (head!979 (tail!1000 list!866))) lambda!9177))))

(declare-fun b!72461 () Bool)

(assert (=> b!72461 (= e!39170 (dynLambda!954 f!4353 p!664 (head!979 list!866)))))

(assert (= (and d!54599 c!17438) b!72460))

(assert (= (and d!54599 (not c!17438)) b!72461))

(declare-fun b_lambda!15749 () Bool)

(assert (=> (not b_lambda!15749) (not b!72460)))

(assert (=> b!72460 m!72384))

(declare-fun m!72426 () Bool)

(assert (=> b!72460 m!72426))

(assert (=> b!72460 m!72426))

(declare-fun m!72428 () Bool)

(assert (=> b!72460 m!72428))

(assert (=> d!54575 d!54599))

(declare-fun d!54601 () Bool)

(declare-fun lt!15351 () Bool)

(assert (=> d!54601 (= lt!15351 (balanced_withFailure!0 (tail!1000 list!866) (- (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866)))) (> (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0)))))

(declare-fun e!39171 () Bool)

(assert (=> d!54601 (= lt!15351 e!39171)))

(declare-fun c!17439 () Bool)

(assert (=> d!54601 (= c!17439 (is-Cons!569 (tail!1000 list!866)))))

(assert (=> d!54601 (and (>= (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0) (>= (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0))))

(assert (=> d!54601 (= (balanced_withReduce!0 (tail!1000 list!866) (dynLambda!954 f!4353 p!664 (head!979 list!866))) lt!15351)))

(declare-fun b!72462 () Bool)

(assert (=> b!72462 (= e!39171 (balanced_withReduce!0 (tail!1000 (tail!1000 list!866)) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866))))))))

(declare-fun b!72463 () Bool)

(assert (=> b!72463 (= e!39171 (and (= (_1!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0) (= (_2!222 (dynLambda!954 f!4353 p!664 (head!979 list!866))) 0)))))

(assert (= (and d!54601 c!17439) b!72462))

(assert (= (and d!54601 (not c!17439)) b!72463))

(declare-fun m!72430 () Bool)

(assert (=> d!54601 m!72430))

(assert (=> b!72462 m!72398))

(assert (=> b!72462 m!72384))

(assert (=> b!72462 m!72398))

(assert (=> b!72462 m!72400))

(assert (=> b!72462 m!72400))

(assert (=> b!72462 m!72416))

(assert (=> d!54575 d!54601))

(declare-fun d!54603 () Bool)

(declare-fun lt!15356 () Bool)

(declare-fun balanced_nonEarly!0 (List!612 Int) Bool)

(assert (=> d!54603 (= lt!15356 (balanced_nonEarly!0 list!866 (ite (> (_2!222 p!664) 0) (- 1) (- (_1!222 p!664) (_2!222 p!664)))))))

(declare-fun e!39174 () Bool)

(assert (=> d!54603 (= lt!15356 e!39174)))

(declare-fun c!17443 () Bool)

(assert (=> d!54603 (= c!17443 (is-Cons!569 list!866))))

(assert (=> d!54603 (or (>= (- (_1!222 p!664) (_2!222 p!664)) 0) (> (_2!222 p!664) 0))))

(assert (=> d!54603 (= (balanced_withFailure!0 list!866 (- (_1!222 p!664) (_2!222 p!664)) (> (_2!222 p!664) 0)) lt!15356)))

(declare-fun b!72468 () Bool)

(declare-fun lt!15357 () Int)

(assert (=> b!72468 (= e!39174 (balanced_withFailure!0 (tail!1000 list!866) lt!15357 (or (> (_2!222 p!664) 0) (< lt!15357 0))))))

(assert (=> b!72468 (= lt!15357 (ite (= (head!979 list!866) 1) (+ (- (_1!222 p!664) (_2!222 p!664)) 1) (ite (= (head!979 list!866) 2) (- (- (_1!222 p!664) (_2!222 p!664)) 1) (- (_1!222 p!664) (_2!222 p!664)))))))

(declare-fun b!72469 () Bool)

(assert (=> b!72469 (= e!39174 (and (not (> (_2!222 p!664) 0)) (= (- (_1!222 p!664) (_2!222 p!664)) 0)))))

(assert (= (and d!54603 c!17443) b!72468))

(assert (= (and d!54603 (not c!17443)) b!72469))

(declare-fun m!72432 () Bool)

(assert (=> d!54603 m!72432))

(declare-fun m!72434 () Bool)

(assert (=> b!72468 m!72434))

(assert (=> d!54585 d!54603))

(declare-fun d!54605 () Bool)

(declare-fun lt!15358 () Bool)

(assert (=> d!54605 (= lt!15358 (balanced_withFailure!0 (tail!1000 list!866) (- (_1!222 (reduce!0 p!664 (parPair!0 (head!979 list!866)))) (_2!222 (reduce!0 p!664 (parPair!0 (head!979 list!866))))) (> (_2!222 (reduce!0 p!664 (parPair!0 (head!979 list!866)))) 0)))))

(declare-fun e!39175 () Bool)

(assert (=> d!54605 (= lt!15358 e!39175)))

(declare-fun c!17444 () Bool)

(assert (=> d!54605 (= c!17444 (is-Cons!569 (tail!1000 list!866)))))

(assert (=> d!54605 (and (>= (_1!222 (reduce!0 p!664 (parPair!0 (head!979 list!866)))) 0) (>= (_2!222 (reduce!0 p!664 (parPair!0 (head!979 list!866)))) 0))))

(assert (=> d!54605 (= (balanced_withReduce!0 (tail!1000 list!866) (reduce!0 p!664 (parPair!0 (head!979 list!866)))) lt!15358)))

(declare-fun b!72470 () Bool)

(assert (=> b!72470 (= e!39175 (balanced_withReduce!0 (tail!1000 (tail!1000 list!866)) (reduce!0 (reduce!0 p!664 (parPair!0 (head!979 list!866))) (parPair!0 (head!979 (tail!1000 list!866))))))))

(declare-fun b!72471 () Bool)

(assert (=> b!72471 (= e!39175 (and (= (_1!222 (reduce!0 p!664 (parPair!0 (head!979 list!866)))) 0) (= (_2!222 (reduce!0 p!664 (parPair!0 (head!979 list!866)))) 0)))))

(assert (= (and d!54605 c!17444) b!72470))

(assert (= (and d!54605 (not c!17444)) b!72471))

(declare-fun m!72436 () Bool)

(assert (=> d!54605 m!72436))

(assert (=> b!72470 m!72398))

(assert (=> b!72470 m!72390))

(assert (=> b!72470 m!72398))

(declare-fun m!72438 () Bool)

(assert (=> b!72470 m!72438))

(assert (=> b!72470 m!72438))

(declare-fun m!72440 () Bool)

(assert (=> b!72470 m!72440))

(assert (=> b!72455 d!54605))

(assert (=> b!72455 d!54577))

(assert (=> b!72455 d!54579))

(assert (=> bs!37752 d!54577))

(assert (=> bs!37752 d!54579))

(declare-fun b_lambda!15751 () Bool)

(assert (= b_lambda!15747 (or (and b!72439 (= lambda!9174 f!4353)) (and d!54575 (= lambda!9177 f!4353)) (and start!9988 b_free!7309) (and d!54591 (= lambda!9178 f!4353)) b_lambda!15751)))

(declare-fun bs!37755 () Bool)

(declare-fun d!54607 () Bool)

(assert (= bs!37755 (and d!54607 b!72439)))

(assert (=> bs!37755 (= (dynLambda!954 lambda!9174 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (head!979 (tail!1000 list!866))) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))))))

(assert (=> bs!37755 m!72398))

(assert (=> bs!37755 m!72384))

(assert (=> bs!37755 m!72398))

(assert (=> bs!37755 m!72400))

(assert (=> (and b!72439 (= lambda!9174 f!4353) b!72457) d!54607))

(declare-fun bs!37756 () Bool)

(declare-fun d!54609 () Bool)

(assert (= bs!37756 (and d!54609 d!54575)))

(assert (=> bs!37756 (= (dynLambda!954 lambda!9177 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (head!979 (tail!1000 list!866))) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))))))

(assert (=> bs!37756 m!72398))

(assert (=> bs!37756 m!72384))

(assert (=> bs!37756 m!72398))

(assert (=> bs!37756 m!72400))

(assert (=> (and d!54575 (= lambda!9177 f!4353) b!72457) d!54609))

(declare-fun bs!37757 () Bool)

(declare-fun d!54611 () Bool)

(assert (= bs!37757 (and d!54611 d!54591)))

(assert (=> bs!37757 (= (dynLambda!954 lambda!9178 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (head!979 (tail!1000 list!866))) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))))))

(assert (=> bs!37757 m!72398))

(assert (=> bs!37757 m!72384))

(assert (=> bs!37757 m!72398))

(assert (=> bs!37757 m!72400))

(assert (=> (and d!54591 (= lambda!9178 f!4353) b!72457) d!54611))

(declare-fun b_lambda!15753 () Bool)

(assert (= b_lambda!15749 (or d!54575 b_lambda!15753)))

(declare-fun bs!37758 () Bool)

(declare-fun d!54613 () Bool)

(assert (= bs!37758 (and d!54613 d!54575)))

(assert (=> bs!37758 (= (dynLambda!954 lambda!9177 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (head!979 (tail!1000 list!866))) (reduce!0 (dynLambda!954 f!4353 p!664 (head!979 list!866)) (parPair!0 (head!979 (tail!1000 list!866)))))))

(assert (=> bs!37758 m!72398))

(assert (=> bs!37758 m!72384))

(assert (=> bs!37758 m!72398))

(assert (=> bs!37758 m!72400))

(assert (=> b!72460 d!54613))

(declare-fun b_lambda!15755 () Bool)

(assert (= b_lambda!15741 (or (and d!54575 (= lambda!9177 f!4353)) (and d!54591 (= lambda!9178 f!4353)) b_lambda!15755)))

(assert (=> (and d!54575 (= lambda!9177 f!4353) b!72441) d!54587))

(declare-fun bs!37759 () Bool)

(declare-fun d!54615 () Bool)

(assert (= bs!37759 (and d!54615 d!54591)))

(assert (=> bs!37759 (= (dynLambda!954 lambda!9178 p!664 (head!979 list!866)) (reduce!0 p!664 (parPair!0 (head!979 list!866))))))

(assert (=> bs!37759 m!72388))

(assert (=> bs!37759 m!72388))

(assert (=> bs!37759 m!72390))

(assert (=> (and d!54591 (= lambda!9178 f!4353) b!72441) d!54615))

(push 1)

(assert (not bs!37756))

(assert (not b_lambda!15755))

(assert (not b_lambda!15753))

(assert (not b_next!39085))

(assert b_and!58729)

(assert (not b!72460))

(assert (not b!72457))

(assert (not d!54601))

(assert (not b!72459))

(assert (not b!72468))

(assert (not b_lambda!15745))

(assert (not bs!37759))

(assert (not bs!37757))

(assert (not d!54603))

(assert (not d!54591))

(assert (not b!72470))

(assert (not b!72462))

(assert (not bs!37755))

(assert (not d!54605))

(assert (not b_lambda!15751))

(assert (not bs!37758))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58729)

(assert (not b_next!39085))

(check-sat)

(pop 1)

