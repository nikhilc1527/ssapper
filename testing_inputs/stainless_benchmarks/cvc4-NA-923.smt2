; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7002 () Bool)

(assert start!7002)

(declare-fun res!23602 () Bool)

(declare-fun e!26813 () Bool)

(assert (=> start!7002 (=> (not res!23602) (not e!26813))))

(declare-datatypes () ((Node!56 (Node!57 (rank!20 Int) (elem!92 (_ BitVec 32)) (nodes!20 Heap!14))) (Heap!14 (Empty!116) (Nodes!13 (head!645 Node!56) (tail!669 Heap!14)))))

(declare-fun h!490 () Heap!14)

(assert (=> start!7002 (= res!23602 (and (not (= h!490 Empty!116)) (or (not (is-Nodes!13 h!490)) (not (is-Empty!116 (tail!669 h!490))))))))

(assert (=> start!7002 e!26813))

(assert (=> start!7002 true))

(declare-fun b!51623 () Bool)

(declare-fun res!23603 () Bool)

(assert (=> b!51623 (=> (not res!23603) (not e!26813))))

(declare-datatypes () ((tuple2!278 (tuple2!279 (_1!166 Node!56) (_2!166 Heap!14)))))

(declare-fun x$1!736 () tuple2!278)

(declare-fun getMin!0 (Heap!14) tuple2!278)

(assert (=> b!51623 (= res!23603 (= x$1!736 (getMin!0 (tail!669 h!490))))))

(declare-fun b!51624 () Bool)

(declare-fun res!23604 () Bool)

(assert (=> b!51624 (=> (not res!23604) (not e!26813))))

(declare-fun ts0!12 () Heap!14)

(declare-fun t0!12 () Node!56)

(declare-fun x$2!278 () tuple2!278)

(assert (=> b!51624 (= res!23604 (and (= t0!12 (_1!166 x$1!736)) (= ts0!12 (_2!166 x$1!736)) (bvsge (elem!92 (head!645 h!490)) (elem!92 t0!12)) (= x$2!278 (tuple2!279 t0!12 (Nodes!13 (head!645 h!490) ts0!12)))))))

(declare-fun b!51625 () Bool)

(declare-fun nodeContent!0 (Node!56) (Set (_ BitVec 32)))

(declare-fun heapContent!0 (Heap!14) (Set (_ BitVec 32)))

(assert (=> b!51625 (= e!26813 (not (= (union (nodeContent!0 (_1!166 x$2!278)) (heapContent!0 (_2!166 x$2!278))) (heapContent!0 h!490))))))

(assert (= (and start!7002 res!23602) b!51623))

(assert (= (and b!51623 res!23603) b!51624))

(assert (= (and b!51624 res!23604) b!51625))

(declare-fun m!55557 () Bool)

(assert (=> b!51623 m!55557))

(declare-fun m!55559 () Bool)

(assert (=> b!51625 m!55559))

(declare-fun m!55561 () Bool)

(assert (=> b!51625 m!55561))

(declare-fun m!55563 () Bool)

(assert (=> b!51625 m!55563))

(push 1)

(assert (not b!51625))

(assert (not b!51623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43932 () Bool)

(assert (=> d!43932 (= (nodeContent!0 (_1!166 x$2!278)) (union (insert (elem!92 (_1!166 x$2!278)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!20 (_1!166 x$2!278)))))))

(declare-fun bs!23772 () Bool)

(assert (= bs!23772 d!43932))

(declare-fun m!55565 () Bool)

(assert (=> bs!23772 m!55565))

(declare-fun m!55567 () Bool)

(assert (=> bs!23772 m!55567))

(assert (=> b!51625 d!43932))

(declare-fun d!43934 () Bool)

(declare-fun c!11052 () Bool)

(assert (=> d!43934 (= c!11052 (is-Empty!116 (_2!166 x$2!278)))))

(declare-fun e!26816 () (Set (_ BitVec 32)))

(assert (=> d!43934 (= (heapContent!0 (_2!166 x$2!278)) e!26816)))

(declare-fun b!51630 () Bool)

(assert (=> b!51630 (= e!26816 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51631 () Bool)

(assert (=> b!51631 (= e!26816 (union (nodeContent!0 (head!645 (_2!166 x$2!278))) (heapContent!0 (tail!669 (_2!166 x$2!278)))))))

(assert (= (and d!43934 c!11052) b!51630))

(assert (= (and d!43934 (not c!11052)) b!51631))

(declare-fun m!55569 () Bool)

(assert (=> b!51631 m!55569))

(declare-fun m!55571 () Bool)

(assert (=> b!51631 m!55571))

(assert (=> b!51625 d!43934))

(declare-fun d!43936 () Bool)

(declare-fun c!11053 () Bool)

(assert (=> d!43936 (= c!11053 (is-Empty!116 h!490))))

(declare-fun e!26817 () (Set (_ BitVec 32)))

(assert (=> d!43936 (= (heapContent!0 h!490) e!26817)))

(declare-fun b!51632 () Bool)

(assert (=> b!51632 (= e!26817 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51633 () Bool)

(assert (=> b!51633 (= e!26817 (union (nodeContent!0 (head!645 h!490)) (heapContent!0 (tail!669 h!490))))))

(assert (= (and d!43936 c!11053) b!51632))

(assert (= (and d!43936 (not c!11053)) b!51633))

(declare-fun m!55573 () Bool)

(assert (=> b!51633 m!55573))

(declare-fun m!55575 () Bool)

(assert (=> b!51633 m!55575))

(assert (=> b!51625 d!43936))

(declare-fun d!43938 () Bool)

(declare-fun lt!9047 () tuple2!278)

(assert (=> d!43938 (= (union (nodeContent!0 (_1!166 lt!9047)) (heapContent!0 (_2!166 lt!9047))) (heapContent!0 (tail!669 h!490)))))

(declare-fun e!26820 () tuple2!278)

(assert (=> d!43938 (= lt!9047 e!26820)))

(declare-fun c!11056 () Bool)

(assert (=> d!43938 (= c!11056 (and (is-Nodes!13 (tail!669 h!490)) (is-Empty!116 (tail!669 (tail!669 h!490)))))))

(assert (=> d!43938 (not (= (tail!669 h!490) Empty!116))))

(assert (=> d!43938 (= (getMin!0 (tail!669 h!490)) lt!9047)))

(declare-fun lt!9049 () tuple2!278)

(declare-fun lt!9048 () Node!56)

(declare-fun b!51639 () Bool)

(assert (=> b!51639 (= e!26820 (ite (bvslt (elem!92 (head!645 (tail!669 h!490))) (elem!92 lt!9048)) (tuple2!279 (head!645 (tail!669 h!490)) (tail!669 (tail!669 h!490))) (tuple2!279 lt!9048 (Nodes!13 (head!645 (tail!669 h!490)) (_2!166 lt!9049)))))))

(declare-fun lt!9046 () tuple2!278)

(assert (=> b!51639 (= lt!9048 (_1!166 lt!9046))))

(assert (=> b!51639 (= lt!9049 (getMin!0 (tail!669 (tail!669 h!490))))))

(assert (=> b!51639 (= lt!9046 (getMin!0 (tail!669 (tail!669 h!490))))))

(declare-fun b!51638 () Bool)

(assert (=> b!51638 (= e!26820 (tuple2!279 (head!645 (tail!669 h!490)) Empty!116))))

(assert (= (and d!43938 c!11056) b!51638))

(assert (= (and d!43938 (not c!11056)) b!51639))

(declare-fun m!55577 () Bool)

(assert (=> d!43938 m!55577))

(declare-fun m!55579 () Bool)

(assert (=> d!43938 m!55579))

(assert (=> d!43938 m!55575))

(declare-fun m!55581 () Bool)

(assert (=> b!51639 m!55581))

(assert (=> b!51623 d!43938))

(push 1)

(assert (not d!43938))

(assert (not d!43932))

(assert (not b!51631))

(assert (not b!51639))

(assert (not b!51633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

