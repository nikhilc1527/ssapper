; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6946 () Bool)

(assert start!6946)

(declare-fun res!23534 () Bool)

(declare-fun e!26662 () Bool)

(assert (=> start!6946 (=> (not res!23534) (not e!26662))))

(declare-datatypes () ((Node!36 (Node!37 (rank!10 Int) (elem!82 (_ BitVec 32)) (nodes!10 Heap!4))) (Heap!4 (Empty!106) (Nodes!3 (head!635 Node!36) (tail!659 Heap!4)))))

(declare-fun inlined!6178 () Heap!4)

(declare-fun res!23507 () Heap!4)

(assert (=> start!6946 (= res!23534 (and (= inlined!6178 Empty!106) (= res!23507 inlined!6178)))))

(assert (=> start!6946 e!26662))

(assert (=> start!6946 true))

(declare-fun b!51317 () Bool)

(declare-fun heapContent!0 (Heap!4) (Set (_ BitVec 32)))

(assert (=> b!51317 (= e!26662 (not (= (heapContent!0 res!23507) (as emptyset (Set (_ BitVec 32))))))))

(assert (=> b!51317 (is-Empty!106 res!23507)))

(assert (= (and start!6946 res!23534) b!51317))

(declare-fun m!55103 () Bool)

(assert (=> b!51317 m!55103))

(push 1)

(assert (not b!51317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43766 () Bool)

(declare-fun c!10925 () Bool)

(assert (=> d!43766 (= c!10925 (is-Empty!106 res!23507))))

(declare-fun e!26665 () (Set (_ BitVec 32)))

(assert (=> d!43766 (= (heapContent!0 res!23507) e!26665)))

(declare-fun b!51322 () Bool)

(assert (=> b!51322 (= e!26665 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51323 () Bool)

(declare-fun nodeContent!0 (Node!36) (Set (_ BitVec 32)))

(assert (=> b!51323 (= e!26665 (union (nodeContent!0 (head!635 res!23507)) (heapContent!0 (tail!659 res!23507))))))

(assert (= (and d!43766 c!10925) b!51322))

(assert (= (and d!43766 (not c!10925)) b!51323))

(declare-fun m!55105 () Bool)

(assert (=> b!51323 m!55105))

(declare-fun m!55107 () Bool)

(assert (=> b!51323 m!55107))

(assert (=> b!51317 d!43766))

(push 1)

(assert (not b!51323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

