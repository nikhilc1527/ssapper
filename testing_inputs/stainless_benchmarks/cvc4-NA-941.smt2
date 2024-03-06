; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7124 () Bool)

(assert start!7124)

(declare-fun res!23777 () Bool)

(declare-fun e!27247 () Bool)

(assert (=> start!7124 (=> (not res!23777) (not e!27247))))

(declare-datatypes () ((Node!92 (Node!93 (rank!38 Int) (elem!110 (_ BitVec 32)) (nodes!38 Heap!32))) (Heap!32 (Empty!134) (Nodes!31 (head!663 Node!92) (tail!687 Heap!32)))))

(declare-fun h!510 () Heap!32)

(declare-fun t!46649 () Node!92)

(declare-fun res!23503 () Heap!32)

(assert (=> start!7124 (= res!23777 (and (is-Empty!134 h!510) (= res!23503 (Nodes!31 t!46649 Empty!134))))))

(assert (=> start!7124 e!27247))

(assert (=> start!7124 true))

(declare-fun b!52501 () Bool)

(declare-fun heapContent!0 (Heap!32) (Set (_ BitVec 32)))

(declare-fun nodeContent!0 (Node!92) (Set (_ BitVec 32)))

(assert (=> b!52501 (= e!27247 (not (= (heapContent!0 res!23503) (union (nodeContent!0 t!46649) (heapContent!0 h!510)))))))

(assert (= (and start!7124 res!23777) b!52501))

(declare-fun m!56571 () Bool)

(assert (=> b!52501 m!56571))

(declare-fun m!56573 () Bool)

(assert (=> b!52501 m!56573))

(declare-fun m!56575 () Bool)

(assert (=> b!52501 m!56575))

(push 1)

(assert (not b!52501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44322 () Bool)

(declare-fun c!11427 () Bool)

(assert (=> d!44322 (= c!11427 (is-Empty!134 res!23503))))

(declare-fun e!27250 () (Set (_ BitVec 32)))

(assert (=> d!44322 (= (heapContent!0 res!23503) e!27250)))

(declare-fun b!52506 () Bool)

(assert (=> b!52506 (= e!27250 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52507 () Bool)

(assert (=> b!52507 (= e!27250 (union (nodeContent!0 (head!663 res!23503)) (heapContent!0 (tail!687 res!23503))))))

(assert (= (and d!44322 c!11427) b!52506))

(assert (= (and d!44322 (not c!11427)) b!52507))

(declare-fun m!56577 () Bool)

(assert (=> b!52507 m!56577))

(declare-fun m!56579 () Bool)

(assert (=> b!52507 m!56579))

(assert (=> b!52501 d!44322))

(declare-fun d!44324 () Bool)

(assert (=> d!44324 (= (nodeContent!0 t!46649) (union (insert (elem!110 t!46649) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!38 t!46649))))))

(declare-fun bs!23837 () Bool)

(assert (= bs!23837 d!44324))

(declare-fun m!56581 () Bool)

(assert (=> bs!23837 m!56581))

(declare-fun m!56583 () Bool)

(assert (=> bs!23837 m!56583))

(assert (=> b!52501 d!44324))

(declare-fun d!44326 () Bool)

(declare-fun c!11428 () Bool)

(assert (=> d!44326 (= c!11428 (is-Empty!134 h!510))))

(declare-fun e!27251 () (Set (_ BitVec 32)))

(assert (=> d!44326 (= (heapContent!0 h!510) e!27251)))

(declare-fun b!52508 () Bool)

(assert (=> b!52508 (= e!27251 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52509 () Bool)

(assert (=> b!52509 (= e!27251 (union (nodeContent!0 (head!663 h!510)) (heapContent!0 (tail!687 h!510))))))

(assert (= (and d!44326 c!11428) b!52508))

(assert (= (and d!44326 (not c!11428)) b!52509))

(declare-fun m!56585 () Bool)

(assert (=> b!52509 m!56585))

(declare-fun m!56587 () Bool)

(assert (=> b!52509 m!56587))

(assert (=> b!52501 d!44326))

(push 1)

(assert (not b!52509))

(assert (not d!44324))

(assert (not b!52507))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

