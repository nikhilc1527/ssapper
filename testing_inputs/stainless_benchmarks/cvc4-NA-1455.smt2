; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10010 () Bool)

(assert start!10010)

(declare-fun res!35387 () Bool)

(declare-fun e!39181 () Bool)

(assert (=> start!10010 (=> (not res!35387) (not e!39181))))

(declare-datatypes () ((tuple2!378 (tuple2!379 (_1!224 Int) (_2!224 Int)))))

(declare-fun p!678 () tuple2!378)

(declare-datatypes () ((List!614 (Nil!572) (Cons!571 (head!981 Int) (tail!1002 List!614)))))

(declare-fun list!876 () List!614)

(assert (=> start!10010 (= res!35387 (and (>= (_1!224 p!678) 0) (>= (_2!224 p!678) 0) (is-Cons!571 list!876)))))

(assert (=> start!10010 e!39181))

(assert (=> start!10010 true))

(declare-fun b!72484 () Bool)

(declare-fun res!35388 () Bool)

(assert (=> b!72484 (=> (not res!35388) (not e!39181))))

(declare-fun p2!115 () tuple2!378)

(declare-fun reduce!0 (tuple2!378 tuple2!378) tuple2!378)

(declare-fun parPair!0 (Int) tuple2!378)

(assert (=> b!72484 (= res!35388 (= p2!115 (reduce!0 p!678 (parPair!0 (head!981 list!876)))))))

(declare-fun b!72485 () Bool)

(declare-fun res!35389 () Bool)

(assert (=> b!72485 (=> (not res!35389) (not e!39181))))

(declare-fun res!34945 () Bool)

(declare-fun balanced_withReduce!0 (List!614 tuple2!378) Bool)

(assert (=> b!72485 (= res!35389 (= res!34945 (balanced_withReduce!0 (tail!1002 list!876) p2!115)))))

(declare-fun list!879 () List!614)

(declare-fun b!72486 () Bool)

(declare-fun counter!43 () Int)

(declare-fun failed!4 () Bool)

(assert (=> b!72486 (= e!39181 (and (= list!879 list!876) (= counter!43 (- (_1!224 p!678) (_2!224 p!678))) (= failed!4 (> (_2!224 p!678) 0)) (< counter!43 0) (not failed!4)))))

(assert (= (and start!10010 res!35387) b!72484))

(assert (= (and b!72484 res!35388) b!72485))

(assert (= (and b!72485 res!35389) b!72486))

(declare-fun m!72446 () Bool)

(assert (=> b!72484 m!72446))

(assert (=> b!72484 m!72446))

(declare-fun m!72448 () Bool)

(assert (=> b!72484 m!72448))

(declare-fun m!72450 () Bool)

(assert (=> b!72485 m!72450))

(push 1)

(assert (not b!72484))

(assert (not b!72485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

