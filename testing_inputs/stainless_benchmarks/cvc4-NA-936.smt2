; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7092 () Bool)

(assert start!7092)

(declare-fun res!23725 () Bool)

(declare-fun e!27091 () Bool)

(assert (=> start!7092 (=> (not res!23725) (not e!27091))))

(declare-datatypes () ((Node!82 (Node!83 (rank!33 Int) (elem!105 (_ BitVec 32)) (nodes!33 Heap!27))) (Heap!27 (Empty!129) (Nodes!26 (head!658 Node!82) (tail!682 Heap!27)))))

(declare-fun res!23494 () Heap!27)

(declare-fun h2!24 () Heap!27)

(declare-fun h1!26 () Heap!27)

(assert (=> start!7092 (= res!23725 (and (is-Empty!129 h2!24) (= res!23494 h1!26)))))

(assert (=> start!7092 e!27091))

(assert (=> start!7092 true))

(declare-fun b!52195 () Bool)

(declare-fun heapContent!0 (Heap!27) (Set (_ BitVec 32)))

(assert (=> b!52195 (= e!27091 (not (= (heapContent!0 res!23494) (union (heapContent!0 h1!26) (heapContent!0 h2!24)))))))

(assert (= (and start!7092 res!23725) b!52195))

(declare-fun m!56165 () Bool)

(assert (=> b!52195 m!56165))

(declare-fun m!56167 () Bool)

(assert (=> b!52195 m!56167))

(declare-fun m!56169 () Bool)

(assert (=> b!52195 m!56169))

(push 1)

(assert (not b!52195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44176 () Bool)

(declare-fun c!11286 () Bool)

(assert (=> d!44176 (= c!11286 (is-Empty!129 res!23494))))

(declare-fun e!27094 () (Set (_ BitVec 32)))

(assert (=> d!44176 (= (heapContent!0 res!23494) e!27094)))

(declare-fun b!52200 () Bool)

(assert (=> b!52200 (= e!27094 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52201 () Bool)

(declare-fun nodeContent!0 (Node!82) (Set (_ BitVec 32)))

(assert (=> b!52201 (= e!27094 (union (nodeContent!0 (head!658 res!23494)) (heapContent!0 (tail!682 res!23494))))))

(assert (= (and d!44176 c!11286) b!52200))

(assert (= (and d!44176 (not c!11286)) b!52201))

(declare-fun m!56171 () Bool)

(assert (=> b!52201 m!56171))

(declare-fun m!56173 () Bool)

(assert (=> b!52201 m!56173))

(assert (=> b!52195 d!44176))

(declare-fun d!44178 () Bool)

(declare-fun c!11287 () Bool)

(assert (=> d!44178 (= c!11287 (is-Empty!129 h1!26))))

(declare-fun e!27095 () (Set (_ BitVec 32)))

(assert (=> d!44178 (= (heapContent!0 h1!26) e!27095)))

(declare-fun b!52202 () Bool)

(assert (=> b!52202 (= e!27095 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52203 () Bool)

(assert (=> b!52203 (= e!27095 (union (nodeContent!0 (head!658 h1!26)) (heapContent!0 (tail!682 h1!26))))))

(assert (= (and d!44178 c!11287) b!52202))

(assert (= (and d!44178 (not c!11287)) b!52203))

(declare-fun m!56175 () Bool)

(assert (=> b!52203 m!56175))

(declare-fun m!56177 () Bool)

(assert (=> b!52203 m!56177))

(assert (=> b!52195 d!44178))

(declare-fun d!44180 () Bool)

(declare-fun c!11288 () Bool)

(assert (=> d!44180 (= c!11288 (is-Empty!129 h2!24))))

(declare-fun e!27096 () (Set (_ BitVec 32)))

(assert (=> d!44180 (= (heapContent!0 h2!24) e!27096)))

(declare-fun b!52204 () Bool)

(assert (=> b!52204 (= e!27096 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52205 () Bool)

(assert (=> b!52205 (= e!27096 (union (nodeContent!0 (head!658 h2!24)) (heapContent!0 (tail!682 h2!24))))))

(assert (= (and d!44180 c!11288) b!52204))

(assert (= (and d!44180 (not c!11288)) b!52205))

(declare-fun m!56179 () Bool)

(assert (=> b!52205 m!56179))

(declare-fun m!56181 () Bool)

(assert (=> b!52205 m!56181))

(assert (=> b!52195 d!44180))

(push 1)

(assert (not b!52205))

(assert (not b!52203))

(assert (not b!52201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

