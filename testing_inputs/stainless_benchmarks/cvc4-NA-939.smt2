; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7106 () Bool)

(assert start!7106)

(declare-fun res!23746 () Bool)

(declare-fun e!27130 () Bool)

(assert (=> start!7106 (=> (not res!23746) (not e!27130))))

(declare-datatypes () ((Node!88 (Node!89 (rank!36 Int) (elem!108 (_ BitVec 32)) (nodes!36 Heap!30))) (Heap!30 (Empty!132) (Nodes!29 (head!661 Node!88) (tail!685 Heap!30)))))

(declare-fun h2!24 () Heap!30)

(declare-fun h1!26 () Heap!30)

(assert (=> start!7106 (= res!23746 (and (not (is-Empty!132 h2!24)) (not (is-Empty!132 h1!26)) (>= (rank!36 (head!661 h1!26)) (rank!36 (head!661 h2!24))) (< (rank!36 (head!661 h2!24)) (rank!36 (head!661 h1!26)))))))

(assert (=> start!7106 e!27130))

(assert (=> start!7106 true))

(declare-fun b!52269 () Bool)

(declare-fun res!23747 () Bool)

(assert (=> b!52269 (=> (not res!23747) (not e!27130))))

(declare-fun res!23498 () Heap!30)

(declare-fun merge!1 (Heap!30 Heap!30) Heap!30)

(assert (=> b!52269 (= res!23747 (= res!23498 (Nodes!29 (head!661 h2!24) (merge!1 h1!26 (tail!685 h2!24)))))))

(declare-fun b!52270 () Bool)

(declare-fun heapContent!0 (Heap!30) (Set (_ BitVec 32)))

(assert (=> b!52270 (= e!27130 (not (= (heapContent!0 res!23498) (union (heapContent!0 h1!26) (heapContent!0 h2!24)))))))

(assert (= (and start!7106 res!23746) b!52269))

(assert (= (and b!52269 res!23747) b!52270))

(declare-fun m!56231 () Bool)

(assert (=> b!52269 m!56231))

(declare-fun m!56233 () Bool)

(assert (=> b!52270 m!56233))

(declare-fun m!56235 () Bool)

(assert (=> b!52270 m!56235))

(declare-fun m!56237 () Bool)

(assert (=> b!52270 m!56237))

(push 1)

(assert (not b!52269))

(assert (not b!52270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52291 () Bool)

(declare-fun e!27142 () Heap!30)

(assert (=> b!52291 (= e!27142 (tail!685 h2!24))))

(declare-fun e!27141 () Heap!30)

(declare-fun b!52292 () Bool)

(declare-fun lt!9157 () Bool)

(assert (=> b!52292 (= e!27141 (merge!1 (ite lt!9157 (tail!685 h1!26) h1!26) (ite lt!9157 (tail!685 h2!24) (tail!685 (tail!685 h2!24)))))))

(declare-fun b!52293 () Bool)

(declare-fun res!23754 () Heap!30)

(assert (=> b!52293 (= e!27141 res!23754)))

(assert (=> b!52293 true))

(assert (=> b!52293 true))

(declare-fun b!52294 () Bool)

(declare-fun e!27143 () Heap!30)

(declare-fun e!27144 () Heap!30)

(assert (=> b!52294 (= e!27143 e!27144)))

(declare-fun c!11326 () Bool)

(assert (=> b!52294 (= c!11326 (< (rank!36 (head!661 (tail!685 h2!24))) (rank!36 (head!661 h1!26))))))

(declare-fun b!52295 () Bool)

(declare-fun e!27145 () Heap!30)

(assert (=> b!52295 (= e!27145 h1!26)))

(declare-fun b!52296 () Bool)

(declare-fun lt!9155 () Heap!30)

(assert (=> b!52296 (= e!27144 (Nodes!29 (head!661 (tail!685 h2!24)) lt!9155))))

(declare-fun b!52297 () Bool)

(declare-fun insertNode!0 (Node!88 Heap!30) Heap!30)

(declare-fun link!0 (Node!88 Node!88) Node!88)

(assert (=> b!52297 (= e!27144 (insertNode!0 (link!0 (head!661 h1!26) (head!661 (tail!685 h2!24))) (merge!1 (tail!685 h1!26) (tail!685 (tail!685 h2!24)))))))

(declare-fun b!52298 () Bool)

(assert (=> b!52298 (= e!27142 e!27143)))

(declare-fun c!11327 () Bool)

(assert (=> b!52298 (= c!11327 lt!9157)))

(assert (=> b!52298 (= lt!9155 e!27141)))

(declare-fun c!11325 () Bool)

(assert (=> b!52298 (= c!11325 (or lt!9157 (< (rank!36 (head!661 (tail!685 h2!24))) (rank!36 (head!661 h1!26)))))))

(assert (=> b!52298 (= lt!9157 (< (rank!36 (head!661 h1!26)) (rank!36 (head!661 (tail!685 h2!24)))))))

(declare-fun b!52299 () Bool)

(assert (=> b!52299 (= e!27143 (Nodes!29 (head!661 h1!26) lt!9155))))

(declare-fun d!44196 () Bool)

(declare-fun lt!9156 () Heap!30)

(assert (=> d!44196 (= (heapContent!0 lt!9156) (union (heapContent!0 h1!26) (heapContent!0 (tail!685 h2!24))))))

(assert (=> d!44196 (= lt!9156 e!27145)))

(declare-fun c!11328 () Bool)

(assert (=> d!44196 (= c!11328 (is-Empty!132 (tail!685 h2!24)))))

(assert (=> d!44196 (= (merge!1 h1!26 (tail!685 h2!24)) lt!9156)))

(declare-fun b!52300 () Bool)

(assert (=> b!52300 (= e!27145 e!27142)))

(declare-fun c!11324 () Bool)

(assert (=> b!52300 (= c!11324 (is-Empty!132 h1!26))))

(assert (= (and b!52298 c!11325) b!52292))

(assert (= (and b!52298 (not c!11325)) b!52293))

(assert (= (and b!52294 c!11326) b!52296))

(assert (= (and b!52294 (not c!11326)) b!52297))

(assert (= (and b!52298 c!11327) b!52299))

(assert (= (and b!52298 (not c!11327)) b!52294))

(assert (= (and b!52300 c!11324) b!52291))

(assert (= (and b!52300 (not c!11324)) b!52298))

(assert (= (and d!44196 c!11328) b!52295))

(assert (= (and d!44196 (not c!11328)) b!52300))

(declare-fun m!56239 () Bool)

(assert (=> b!52292 m!56239))

(declare-fun m!56241 () Bool)

(assert (=> b!52297 m!56241))

(declare-fun m!56243 () Bool)

(assert (=> b!52297 m!56243))

(assert (=> b!52297 m!56241))

(assert (=> b!52297 m!56243))

(declare-fun m!56245 () Bool)

(assert (=> b!52297 m!56245))

(declare-fun m!56247 () Bool)

(assert (=> d!44196 m!56247))

(assert (=> d!44196 m!56235))

(declare-fun m!56249 () Bool)

(assert (=> d!44196 m!56249))

(assert (=> b!52269 d!44196))

(declare-fun d!44198 () Bool)

(declare-fun c!11331 () Bool)

(assert (=> d!44198 (= c!11331 (is-Empty!132 res!23498))))

(declare-fun e!27148 () (Set (_ BitVec 32)))

(assert (=> d!44198 (= (heapContent!0 res!23498) e!27148)))

(declare-fun b!52305 () Bool)

(assert (=> b!52305 (= e!27148 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52306 () Bool)

(declare-fun nodeContent!0 (Node!88) (Set (_ BitVec 32)))

(assert (=> b!52306 (= e!27148 (union (nodeContent!0 (head!661 res!23498)) (heapContent!0 (tail!685 res!23498))))))

(assert (= (and d!44198 c!11331) b!52305))

(assert (= (and d!44198 (not c!11331)) b!52306))

(declare-fun m!56251 () Bool)

(assert (=> b!52306 m!56251))

(declare-fun m!56253 () Bool)

(assert (=> b!52306 m!56253))

(assert (=> b!52270 d!44198))

(declare-fun d!44200 () Bool)

(declare-fun c!11332 () Bool)

(assert (=> d!44200 (= c!11332 (is-Empty!132 h1!26))))

(declare-fun e!27149 () (Set (_ BitVec 32)))

(assert (=> d!44200 (= (heapContent!0 h1!26) e!27149)))

(declare-fun b!52307 () Bool)

(assert (=> b!52307 (= e!27149 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52308 () Bool)

(assert (=> b!52308 (= e!27149 (union (nodeContent!0 (head!661 h1!26)) (heapContent!0 (tail!685 h1!26))))))

(assert (= (and d!44200 c!11332) b!52307))

(assert (= (and d!44200 (not c!11332)) b!52308))

(declare-fun m!56255 () Bool)

(assert (=> b!52308 m!56255))

(declare-fun m!56257 () Bool)

(assert (=> b!52308 m!56257))

(assert (=> b!52270 d!44200))

(declare-fun d!44202 () Bool)

(declare-fun c!11333 () Bool)

(assert (=> d!44202 (= c!11333 (is-Empty!132 h2!24))))

(declare-fun e!27150 () (Set (_ BitVec 32)))

(assert (=> d!44202 (= (heapContent!0 h2!24) e!27150)))

(declare-fun b!52309 () Bool)

(assert (=> b!52309 (= e!27150 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52310 () Bool)

(assert (=> b!52310 (= e!27150 (union (nodeContent!0 (head!661 h2!24)) (heapContent!0 (tail!685 h2!24))))))

(assert (= (and d!44202 c!11333) b!52309))

(assert (= (and d!44202 (not c!11333)) b!52310))

(declare-fun m!56259 () Bool)

(assert (=> b!52310 m!56259))

(assert (=> b!52310 m!56249))

(assert (=> b!52270 d!44202))

(push 1)

(assert (not b!52292))

(assert (not b!52310))

(assert (not b!52297))

(assert (not d!44196))

(assert (not b!52308))

(assert (not b!52306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

