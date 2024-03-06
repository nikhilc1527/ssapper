; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7096 () Bool)

(assert start!7096)

(declare-fun res!23728 () Bool)

(declare-fun e!27099 () Bool)

(assert (=> start!7096 (=> (not res!23728) (not e!27099))))

(declare-datatypes () ((Node!84 (Node!85 (rank!34 Int) (elem!106 (_ BitVec 32)) (nodes!34 Heap!28))) (Heap!28 (Empty!130) (Nodes!27 (head!659 Node!84) (tail!683 Heap!28)))))

(declare-fun res!23495 () Heap!28)

(declare-fun h2!24 () Heap!28)

(declare-fun h1!26 () Heap!28)

(assert (=> start!7096 (= res!23728 (and (not (is-Empty!130 h2!24)) (is-Empty!130 h1!26) (= res!23495 h2!24)))))

(assert (=> start!7096 e!27099))

(assert (=> start!7096 true))

(declare-fun b!52208 () Bool)

(declare-fun heapContent!0 (Heap!28) (Set (_ BitVec 32)))

(assert (=> b!52208 (= e!27099 (not (= (heapContent!0 res!23495) (union (heapContent!0 h1!26) (heapContent!0 h2!24)))))))

(assert (= (and start!7096 res!23728) b!52208))

(declare-fun m!56183 () Bool)

(assert (=> b!52208 m!56183))

(declare-fun m!56185 () Bool)

(assert (=> b!52208 m!56185))

(declare-fun m!56187 () Bool)

(assert (=> b!52208 m!56187))

(push 1)

(assert (not b!52208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44182 () Bool)

(declare-fun c!11291 () Bool)

(assert (=> d!44182 (= c!11291 (is-Empty!130 res!23495))))

(declare-fun e!27102 () (Set (_ BitVec 32)))

(assert (=> d!44182 (= (heapContent!0 res!23495) e!27102)))

(declare-fun b!52213 () Bool)

(assert (=> b!52213 (= e!27102 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52214 () Bool)

(declare-fun nodeContent!0 (Node!84) (Set (_ BitVec 32)))

(assert (=> b!52214 (= e!27102 (union (nodeContent!0 (head!659 res!23495)) (heapContent!0 (tail!683 res!23495))))))

(assert (= (and d!44182 c!11291) b!52213))

(assert (= (and d!44182 (not c!11291)) b!52214))

(declare-fun m!56189 () Bool)

(assert (=> b!52214 m!56189))

(declare-fun m!56191 () Bool)

(assert (=> b!52214 m!56191))

(assert (=> b!52208 d!44182))

(declare-fun d!44184 () Bool)

(declare-fun c!11292 () Bool)

(assert (=> d!44184 (= c!11292 (is-Empty!130 h1!26))))

(declare-fun e!27103 () (Set (_ BitVec 32)))

(assert (=> d!44184 (= (heapContent!0 h1!26) e!27103)))

(declare-fun b!52215 () Bool)

(assert (=> b!52215 (= e!27103 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52216 () Bool)

(assert (=> b!52216 (= e!27103 (union (nodeContent!0 (head!659 h1!26)) (heapContent!0 (tail!683 h1!26))))))

(assert (= (and d!44184 c!11292) b!52215))

(assert (= (and d!44184 (not c!11292)) b!52216))

(declare-fun m!56193 () Bool)

(assert (=> b!52216 m!56193))

(declare-fun m!56195 () Bool)

(assert (=> b!52216 m!56195))

(assert (=> b!52208 d!44184))

(declare-fun d!44186 () Bool)

(declare-fun c!11293 () Bool)

(assert (=> d!44186 (= c!11293 (is-Empty!130 h2!24))))

(declare-fun e!27104 () (Set (_ BitVec 32)))

(assert (=> d!44186 (= (heapContent!0 h2!24) e!27104)))

(declare-fun b!52217 () Bool)

(assert (=> b!52217 (= e!27104 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52218 () Bool)

(assert (=> b!52218 (= e!27104 (union (nodeContent!0 (head!659 h2!24)) (heapContent!0 (tail!683 h2!24))))))

(assert (= (and d!44186 c!11293) b!52217))

(assert (= (and d!44186 (not c!11293)) b!52218))

(declare-fun m!56197 () Bool)

(assert (=> b!52218 m!56197))

(declare-fun m!56199 () Bool)

(assert (=> b!52218 m!56199))

(assert (=> b!52208 d!44186))

(push 1)

(assert (not b!52218))

(assert (not b!52216))

(assert (not b!52214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

