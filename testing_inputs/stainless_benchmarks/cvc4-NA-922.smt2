; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6994 () Bool)

(assert start!6994)

(declare-fun res!23593 () Bool)

(declare-fun e!26803 () Bool)

(assert (=> start!6994 (=> (not res!23593) (not e!26803))))

(declare-datatypes () ((Node!54 (Node!55 (rank!19 Int) (elem!91 (_ BitVec 32)) (nodes!19 Heap!13))) (Heap!13 (Empty!115) (Nodes!12 (head!644 Node!54) (tail!668 Heap!13)))))

(declare-fun h!490 () Heap!13)

(assert (=> start!6994 (= res!23593 (and (not (= h!490 Empty!115)) (or (not (is-Nodes!12 h!490)) (not (is-Empty!115 (tail!668 h!490))))))))

(assert (=> start!6994 e!26803))

(assert (=> start!6994 true))

(declare-fun b!51600 () Bool)

(declare-fun res!23594 () Bool)

(assert (=> b!51600 (=> (not res!23594) (not e!26803))))

(declare-datatypes () ((tuple2!276 (tuple2!277 (_1!165 Node!54) (_2!165 Heap!13)))))

(declare-fun x$1!736 () tuple2!276)

(declare-fun getMin!0 (Heap!13) tuple2!276)

(assert (=> b!51600 (= res!23594 (= x$1!736 (getMin!0 (tail!668 h!490))))))

(declare-fun b!51601 () Bool)

(declare-fun res!23595 () Bool)

(assert (=> b!51601 (=> (not res!23595) (not e!26803))))

(declare-fun ts0!12 () Heap!13)

(declare-fun t0!12 () Node!54)

(declare-fun x$2!277 () tuple2!276)

(assert (=> b!51601 (= res!23595 (and (= t0!12 (_1!165 x$1!736)) (= ts0!12 (_2!165 x$1!736)) (bvslt (elem!91 (head!644 h!490)) (elem!91 t0!12)) (= x$2!277 (tuple2!277 (head!644 h!490) (tail!668 h!490)))))))

(declare-fun b!51602 () Bool)

(declare-fun nodeContent!0 (Node!54) (Set (_ BitVec 32)))

(declare-fun heapContent!0 (Heap!13) (Set (_ BitVec 32)))

(assert (=> b!51602 (= e!26803 (not (= (union (nodeContent!0 (_1!165 x$2!277)) (heapContent!0 (_2!165 x$2!277))) (heapContent!0 h!490))))))

(assert (= (and start!6994 res!23593) b!51600))

(assert (= (and b!51600 res!23594) b!51601))

(assert (= (and b!51601 res!23595) b!51602))

(declare-fun m!55531 () Bool)

(assert (=> b!51600 m!55531))

(declare-fun m!55533 () Bool)

(assert (=> b!51602 m!55533))

(declare-fun m!55535 () Bool)

(assert (=> b!51602 m!55535))

(declare-fun m!55537 () Bool)

(assert (=> b!51602 m!55537))

(push 1)

(assert (not b!51600))

(assert (not b!51602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43924 () Bool)

(declare-fun lt!9035 () tuple2!276)

(assert (=> d!43924 (= (union (nodeContent!0 (_1!165 lt!9035)) (heapContent!0 (_2!165 lt!9035))) (heapContent!0 (tail!668 h!490)))))

(declare-fun e!26806 () tuple2!276)

(assert (=> d!43924 (= lt!9035 e!26806)))

(declare-fun c!11045 () Bool)

(assert (=> d!43924 (= c!11045 (and (is-Nodes!12 (tail!668 h!490)) (is-Empty!115 (tail!668 (tail!668 h!490)))))))

(assert (=> d!43924 (not (= (tail!668 h!490) Empty!115))))

(assert (=> d!43924 (= (getMin!0 (tail!668 h!490)) lt!9035)))

(declare-fun lt!9034 () tuple2!276)

(declare-fun lt!9036 () Node!54)

(declare-fun b!51608 () Bool)

(assert (=> b!51608 (= e!26806 (ite (bvslt (elem!91 (head!644 (tail!668 h!490))) (elem!91 lt!9036)) (tuple2!277 (head!644 (tail!668 h!490)) (tail!668 (tail!668 h!490))) (tuple2!277 lt!9036 (Nodes!12 (head!644 (tail!668 h!490)) (_2!165 lt!9034)))))))

(declare-fun lt!9037 () tuple2!276)

(assert (=> b!51608 (= lt!9036 (_1!165 lt!9037))))

(assert (=> b!51608 (= lt!9034 (getMin!0 (tail!668 (tail!668 h!490))))))

(assert (=> b!51608 (= lt!9037 (getMin!0 (tail!668 (tail!668 h!490))))))

(declare-fun b!51607 () Bool)

(assert (=> b!51607 (= e!26806 (tuple2!277 (head!644 (tail!668 h!490)) Empty!115))))

(assert (= (and d!43924 c!11045) b!51607))

(assert (= (and d!43924 (not c!11045)) b!51608))

(declare-fun m!55539 () Bool)

(assert (=> d!43924 m!55539))

(declare-fun m!55541 () Bool)

(assert (=> d!43924 m!55541))

(declare-fun m!55543 () Bool)

(assert (=> d!43924 m!55543))

(declare-fun m!55545 () Bool)

(assert (=> b!51608 m!55545))

(assert (=> b!51600 d!43924))

(declare-fun d!43926 () Bool)

(assert (=> d!43926 (= (nodeContent!0 (_1!165 x$2!277)) (union (insert (elem!91 (_1!165 x$2!277)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!19 (_1!165 x$2!277)))))))

(declare-fun bs!23770 () Bool)

(assert (= bs!23770 d!43926))

(declare-fun m!55547 () Bool)

(assert (=> bs!23770 m!55547))

(declare-fun m!55549 () Bool)

(assert (=> bs!23770 m!55549))

(assert (=> b!51602 d!43926))

(declare-fun d!43928 () Bool)

(declare-fun c!11048 () Bool)

(assert (=> d!43928 (= c!11048 (is-Empty!115 (_2!165 x$2!277)))))

(declare-fun e!26809 () (Set (_ BitVec 32)))

(assert (=> d!43928 (= (heapContent!0 (_2!165 x$2!277)) e!26809)))

(declare-fun b!51613 () Bool)

(assert (=> b!51613 (= e!26809 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51614 () Bool)

(assert (=> b!51614 (= e!26809 (union (nodeContent!0 (head!644 (_2!165 x$2!277))) (heapContent!0 (tail!668 (_2!165 x$2!277)))))))

(assert (= (and d!43928 c!11048) b!51613))

(assert (= (and d!43928 (not c!11048)) b!51614))

(declare-fun m!55551 () Bool)

(assert (=> b!51614 m!55551))

(declare-fun m!55553 () Bool)

(assert (=> b!51614 m!55553))

(assert (=> b!51602 d!43928))

(declare-fun d!43930 () Bool)

(declare-fun c!11049 () Bool)

(assert (=> d!43930 (= c!11049 (is-Empty!115 h!490))))

(declare-fun e!26810 () (Set (_ BitVec 32)))

(assert (=> d!43930 (= (heapContent!0 h!490) e!26810)))

(declare-fun b!51615 () Bool)

(assert (=> b!51615 (= e!26810 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51616 () Bool)

(assert (=> b!51616 (= e!26810 (union (nodeContent!0 (head!644 h!490)) (heapContent!0 (tail!668 h!490))))))

(assert (= (and d!43930 c!11049) b!51615))

(assert (= (and d!43930 (not c!11049)) b!51616))

(declare-fun m!55555 () Bool)

(assert (=> b!51616 m!55555))

(assert (=> b!51616 m!55543))

(assert (=> b!51602 d!43930))

(push 1)

(assert (not b!51614))

(assert (not d!43924))

(assert (not d!43926))

(assert (not b!51608))

(assert (not b!51616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

