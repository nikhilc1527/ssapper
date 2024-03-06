; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6986 () Bool)

(assert start!6986)

(declare-fun res!23579 () Bool)

(declare-fun e!26793 () Bool)

(assert (=> start!6986 (=> (not res!23579) (not e!26793))))

(declare-datatypes () ((Node!50 (Node!51 (rank!17 Int) (elem!89 (_ BitVec 32)) (nodes!17 Heap!11))) (Heap!11 (Empty!113) (Nodes!10 (head!642 Node!50) (tail!666 Heap!11)))))

(declare-fun h!490 () Heap!11)

(assert (=> start!6986 (= res!23579 (and (not (= h!490 Empty!113)) (is-Nodes!10 h!490) (is-Empty!113 (tail!666 h!490))))))

(assert (=> start!6986 e!26793))

(assert (=> start!6986 true))

(declare-fun b!51578 () Bool)

(declare-fun res!23580 () Bool)

(assert (=> b!51578 (=> (not res!23580) (not e!26793))))

(declare-datatypes () ((tuple2!272 (tuple2!273 (_1!163 Node!50) (_2!163 Heap!11)))))

(declare-fun x$2!274 () tuple2!272)

(declare-fun lt!9025 () Heap!11)

(assert (=> b!51578 (= res!23580 (= x$2!274 (tuple2!273 (head!642 h!490) lt!9025)))))

(assert (=> b!51578 (is-Empty!113 lt!9025)))

(assert (=> b!51578 (= lt!9025 Empty!113)))

(declare-fun b!51579 () Bool)

(declare-fun nodeContent!0 (Node!50) (Set (_ BitVec 32)))

(declare-fun heapContent!0 (Heap!11) (Set (_ BitVec 32)))

(assert (=> b!51579 (= e!26793 (not (= (union (nodeContent!0 (_1!163 x$2!274)) (heapContent!0 (_2!163 x$2!274))) (heapContent!0 h!490))))))

(assert (= (and start!6986 res!23579) b!51578))

(assert (= (and b!51578 res!23580) b!51579))

(declare-fun m!55511 () Bool)

(assert (=> b!51579 m!55511))

(declare-fun m!55513 () Bool)

(assert (=> b!51579 m!55513))

(declare-fun m!55515 () Bool)

(assert (=> b!51579 m!55515))

(push 1)

(assert (not b!51579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43918 () Bool)

(assert (=> d!43918 (= (nodeContent!0 (_1!163 x$2!274)) (union (insert (elem!89 (_1!163 x$2!274)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!17 (_1!163 x$2!274)))))))

(declare-fun bs!23767 () Bool)

(assert (= bs!23767 d!43918))

(declare-fun m!55517 () Bool)

(assert (=> bs!23767 m!55517))

(declare-fun m!55519 () Bool)

(assert (=> bs!23767 m!55519))

(assert (=> b!51579 d!43918))

(declare-fun d!43920 () Bool)

(declare-fun c!11041 () Bool)

(assert (=> d!43920 (= c!11041 (is-Empty!113 (_2!163 x$2!274)))))

(declare-fun e!26796 () (Set (_ BitVec 32)))

(assert (=> d!43920 (= (heapContent!0 (_2!163 x$2!274)) e!26796)))

(declare-fun b!51584 () Bool)

(assert (=> b!51584 (= e!26796 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51585 () Bool)

(assert (=> b!51585 (= e!26796 (union (nodeContent!0 (head!642 (_2!163 x$2!274))) (heapContent!0 (tail!666 (_2!163 x$2!274)))))))

(assert (= (and d!43920 c!11041) b!51584))

(assert (= (and d!43920 (not c!11041)) b!51585))

(declare-fun m!55521 () Bool)

(assert (=> b!51585 m!55521))

(declare-fun m!55523 () Bool)

(assert (=> b!51585 m!55523))

(assert (=> b!51579 d!43920))

(declare-fun d!43922 () Bool)

(declare-fun c!11042 () Bool)

(assert (=> d!43922 (= c!11042 (is-Empty!113 h!490))))

(declare-fun e!26797 () (Set (_ BitVec 32)))

(assert (=> d!43922 (= (heapContent!0 h!490) e!26797)))

(declare-fun b!51586 () Bool)

(assert (=> b!51586 (= e!26797 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51587 () Bool)

(assert (=> b!51587 (= e!26797 (union (nodeContent!0 (head!642 h!490)) (heapContent!0 (tail!666 h!490))))))

(assert (= (and d!43922 c!11042) b!51586))

(assert (= (and d!43922 (not c!11042)) b!51587))

(declare-fun m!55525 () Bool)

(assert (=> b!51587 m!55525))

(declare-fun m!55527 () Bool)

(assert (=> b!51587 m!55527))

(assert (=> b!51579 d!43922))

(push 1)

(assert (not b!51585))

(assert (not b!51587))

(assert (not d!43918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

