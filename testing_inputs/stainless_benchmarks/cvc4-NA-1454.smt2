; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10004 () Bool)

(assert start!10004)

(declare-fun res!35379 () Bool)

(declare-fun e!39178 () Bool)

(assert (=> start!10004 (=> (not res!35379) (not e!39178))))

(declare-datatypes () ((tuple2!376 (tuple2!377 (_1!223 Int) (_2!223 Int)))))

(declare-fun p!678 () tuple2!376)

(declare-datatypes () ((List!613 (Nil!571) (Cons!570 (head!980 Int) (tail!1001 List!613)))))

(declare-fun list!876 () List!613)

(assert (=> start!10004 (= res!35379 (and (>= (_1!223 p!678) 0) (>= (_2!223 p!678) 0) (is-Cons!570 list!876)))))

(assert (=> start!10004 e!39178))

(assert (=> start!10004 true))

(declare-fun b!72476 () Bool)

(declare-fun res!35380 () Bool)

(assert (=> b!72476 (=> (not res!35380) (not e!39178))))

(declare-fun p2!115 () tuple2!376)

(declare-fun reduce!0 (tuple2!376 tuple2!376) tuple2!376)

(declare-fun parPair!0 (Int) tuple2!376)

(assert (=> b!72476 (= res!35380 (= p2!115 (reduce!0 p!678 (parPair!0 (head!980 list!876)))))))

(declare-fun b!72477 () Bool)

(declare-fun p!679 () tuple2!376)

(declare-fun list!877 () List!613)

(assert (=> b!72477 (= e!39178 (and (= list!877 (tail!1001 list!876)) (= p!679 p2!115) (or (< (_1!223 p!679) 0) (< (_2!223 p!679) 0))))))

(assert (= (and start!10004 res!35379) b!72476))

(assert (= (and b!72476 res!35380) b!72477))

(declare-fun m!72442 () Bool)

(assert (=> b!72476 m!72442))

(assert (=> b!72476 m!72442))

(declare-fun m!72444 () Bool)

(assert (=> b!72476 m!72444))

(push 1)

(assert (not b!72476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54617 () Bool)

(assert (=> d!54617 (= (reduce!0 p!678 (parPair!0 (head!980 list!876))) (ite (>= (_1!223 p!678) (_2!223 (parPair!0 (head!980 list!876)))) (tuple2!377 (+ (- (_1!223 p!678) (_2!223 (parPair!0 (head!980 list!876)))) (_1!223 (parPair!0 (head!980 list!876)))) (_2!223 p!678)) (tuple2!377 (_1!223 (parPair!0 (head!980 list!876))) (+ (- (_2!223 (parPair!0 (head!980 list!876))) (_1!223 p!678)) (_2!223 p!678)))))))

(assert (=> b!72476 d!54617))

(declare-fun d!54619 () Bool)

(assert (=> d!54619 (= (parPair!0 (head!980 list!876)) (ite (= (head!980 list!876) 1) (tuple2!377 1 0) (ite (= (head!980 list!876) 2) (tuple2!377 0 1) (tuple2!377 0 0))))))

(assert (=> b!72476 d!54619))

(push 1)

(check-sat)

(pop 1)

