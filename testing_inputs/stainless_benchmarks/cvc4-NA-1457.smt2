; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10014 () Bool)

(assert start!10014)

(declare-fun res!35396 () Bool)

(declare-fun e!39184 () Bool)

(assert (=> start!10014 (=> (not res!35396) (not e!39184))))

(declare-datatypes () ((tuple2!382 (tuple2!383 (_1!226 Int) (_2!226 Int)))))

(declare-fun p!678 () tuple2!382)

(declare-datatypes () ((List!616 (Nil!574) (Cons!573 (head!983 Int) (tail!1004 List!616)))))

(declare-fun list!876 () List!616)

(assert (=> start!10014 (= res!35396 (and (>= (_1!226 p!678) 0) (>= (_2!226 p!678) 0) (is-Cons!573 list!876)))))

(assert (=> start!10014 e!39184))

(assert (=> start!10014 true))

(declare-fun b!72493 () Bool)

(declare-fun res!35397 () Bool)

(assert (=> b!72493 (=> (not res!35397) (not e!39184))))

(declare-fun p2!115 () tuple2!382)

(declare-fun reduce!0 (tuple2!382 tuple2!382) tuple2!382)

(declare-fun parPair!0 (Int) tuple2!382)

(assert (=> b!72493 (= res!35397 (= p2!115 (reduce!0 p!678 (parPair!0 (head!983 list!876)))))))

(declare-fun b!72494 () Bool)

(declare-fun res!35398 () Bool)

(assert (=> b!72494 (=> (not res!35398) (not e!39184))))

(declare-fun res!34945 () Bool)

(declare-fun balanced_withReduce!0 (List!616 tuple2!382) Bool)

(assert (=> b!72494 (= res!35398 (= res!34945 (balanced_withReduce!0 (tail!1004 list!876) p2!115)))))

(declare-fun b!72495 () Bool)

(declare-fun balanced_withFailure!0 (List!616 Int Bool) Bool)

(assert (=> b!72495 (= e!39184 (not (= res!34945 (balanced_withFailure!0 list!876 (- (_1!226 p!678) (_2!226 p!678)) (> (_2!226 p!678) 0)))))))

(assert (= (and start!10014 res!35396) b!72493))

(assert (= (and b!72493 res!35397) b!72494))

(assert (= (and b!72494 res!35398) b!72495))

(declare-fun m!72452 () Bool)

(assert (=> b!72493 m!72452))

(assert (=> b!72493 m!72452))

(declare-fun m!72454 () Bool)

(assert (=> b!72493 m!72454))

(declare-fun m!72456 () Bool)

(assert (=> b!72494 m!72456))

(declare-fun m!72458 () Bool)

(assert (=> b!72495 m!72458))

(push 1)

(assert (not b!72494))

(assert (not b!72493))

(assert (not b!72495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54621 () Bool)

(declare-fun lt!15361 () Bool)

(assert (=> d!54621 (= lt!15361 (balanced_withFailure!0 (tail!1004 list!876) (- (_1!226 p2!115) (_2!226 p2!115)) (> (_2!226 p2!115) 0)))))

(declare-fun e!39187 () Bool)

(assert (=> d!54621 (= lt!15361 e!39187)))

(declare-fun c!17447 () Bool)

(assert (=> d!54621 (= c!17447 (is-Cons!573 (tail!1004 list!876)))))

(assert (=> d!54621 (and (>= (_1!226 p2!115) 0) (>= (_2!226 p2!115) 0))))

(assert (=> d!54621 (= (balanced_withReduce!0 (tail!1004 list!876) p2!115) lt!15361)))

(declare-fun b!72500 () Bool)

(assert (=> b!72500 (= e!39187 (balanced_withReduce!0 (tail!1004 (tail!1004 list!876)) (reduce!0 p2!115 (parPair!0 (head!983 (tail!1004 list!876))))))))

(declare-fun b!72501 () Bool)

(assert (=> b!72501 (= e!39187 (and (= (_1!226 p2!115) 0) (= (_2!226 p2!115) 0)))))

(assert (= (and d!54621 c!17447) b!72500))

(assert (= (and d!54621 (not c!17447)) b!72501))

(declare-fun m!72460 () Bool)

(assert (=> d!54621 m!72460))

(declare-fun m!72462 () Bool)

(assert (=> b!72500 m!72462))

(assert (=> b!72500 m!72462))

(declare-fun m!72464 () Bool)

(assert (=> b!72500 m!72464))

(assert (=> b!72500 m!72464))

(declare-fun m!72466 () Bool)

(assert (=> b!72500 m!72466))

(assert (=> b!72494 d!54621))

(declare-fun d!54623 () Bool)

(assert (=> d!54623 (= (reduce!0 p!678 (parPair!0 (head!983 list!876))) (ite (>= (_1!226 p!678) (_2!226 (parPair!0 (head!983 list!876)))) (tuple2!383 (+ (- (_1!226 p!678) (_2!226 (parPair!0 (head!983 list!876)))) (_1!226 (parPair!0 (head!983 list!876)))) (_2!226 p!678)) (tuple2!383 (_1!226 (parPair!0 (head!983 list!876))) (+ (- (_2!226 (parPair!0 (head!983 list!876))) (_1!226 p!678)) (_2!226 p!678)))))))

(assert (=> b!72493 d!54623))

(declare-fun d!54625 () Bool)

(assert (=> d!54625 (= (parPair!0 (head!983 list!876)) (ite (= (head!983 list!876) 1) (tuple2!383 1 0) (ite (= (head!983 list!876) 2) (tuple2!383 0 1) (tuple2!383 0 0))))))

(assert (=> b!72493 d!54625))

(declare-fun d!54627 () Bool)

(declare-fun lt!15366 () Bool)

(declare-fun balanced_nonEarly!0 (List!616 Int) Bool)

(assert (=> d!54627 (= lt!15366 (balanced_nonEarly!0 list!876 (ite (> (_2!226 p!678) 0) (- 1) (- (_1!226 p!678) (_2!226 p!678)))))))

(declare-fun e!39190 () Bool)

(assert (=> d!54627 (= lt!15366 e!39190)))

(declare-fun c!17451 () Bool)

(assert (=> d!54627 (= c!17451 (is-Cons!573 list!876))))

(assert (=> d!54627 (or (>= (- (_1!226 p!678) (_2!226 p!678)) 0) (> (_2!226 p!678) 0))))

(assert (=> d!54627 (= (balanced_withFailure!0 list!876 (- (_1!226 p!678) (_2!226 p!678)) (> (_2!226 p!678) 0)) lt!15366)))

(declare-fun b!72506 () Bool)

(declare-fun lt!15367 () Int)

(assert (=> b!72506 (= e!39190 (balanced_withFailure!0 (tail!1004 list!876) lt!15367 (or (> (_2!226 p!678) 0) (< lt!15367 0))))))

(assert (=> b!72506 (= lt!15367 (ite (= (head!983 list!876) 1) (+ (- (_1!226 p!678) (_2!226 p!678)) 1) (ite (= (head!983 list!876) 2) (- (- (_1!226 p!678) (_2!226 p!678)) 1) (- (_1!226 p!678) (_2!226 p!678)))))))

(declare-fun b!72507 () Bool)

(assert (=> b!72507 (= e!39190 (and (not (> (_2!226 p!678) 0)) (= (- (_1!226 p!678) (_2!226 p!678)) 0)))))

(assert (= (and d!54627 c!17451) b!72506))

(assert (= (and d!54627 (not c!17451)) b!72507))

(declare-fun m!72468 () Bool)

(assert (=> d!54627 m!72468))

(declare-fun m!72470 () Bool)

(assert (=> b!72506 m!72470))

(assert (=> b!72495 d!54627))

(push 1)

(assert (not b!72500))

(assert (not d!54621))

(assert (not d!54627))

(assert (not b!72506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

