; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6972 () Bool)

(assert start!6972)

(declare-fun res!23567 () Bool)

(declare-fun e!26768 () Bool)

(assert (=> start!6972 (=> (not res!23567) (not e!26768))))

(declare-datatypes () ((Node!44 (Node!45 (rank!14 Int) (elem!86 (_ BitVec 32)) (nodes!14 Heap!8))) (Heap!8 (Empty!110) (Nodes!7 (head!639 Node!44) (tail!663 Heap!8)))))

(declare-fun acc!12 () Heap!8)

(declare-fun res!23491 () Heap!8)

(declare-fun h!443 () Heap!8)

(assert (=> start!6972 (= res!23567 (and (is-Empty!110 h!443) (= res!23491 acc!12)))))

(assert (=> start!6972 e!26768))

(assert (=> start!6972 true))

(declare-fun b!51529 () Bool)

(declare-fun heapContent!0 (Heap!8) (Set (_ BitVec 32)))

(assert (=> b!51529 (= e!26768 (not (= (heapContent!0 res!23491) (union (heapContent!0 h!443) (heapContent!0 acc!12)))))))

(assert (= (and start!6972 res!23567) b!51529))

(declare-fun m!55429 () Bool)

(assert (=> b!51529 m!55429))

(declare-fun m!55431 () Bool)

(assert (=> b!51529 m!55431))

(declare-fun m!55433 () Bool)

(assert (=> b!51529 m!55433))

(push 1)

(assert (not b!51529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43886 () Bool)

(declare-fun c!11022 () Bool)

(assert (=> d!43886 (= c!11022 (is-Empty!110 res!23491))))

(declare-fun e!26771 () (Set (_ BitVec 32)))

(assert (=> d!43886 (= (heapContent!0 res!23491) e!26771)))

(declare-fun b!51534 () Bool)

(assert (=> b!51534 (= e!26771 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51535 () Bool)

(declare-fun nodeContent!0 (Node!44) (Set (_ BitVec 32)))

(assert (=> b!51535 (= e!26771 (union (nodeContent!0 (head!639 res!23491)) (heapContent!0 (tail!663 res!23491))))))

(assert (= (and d!43886 c!11022) b!51534))

(assert (= (and d!43886 (not c!11022)) b!51535))

(declare-fun m!55435 () Bool)

(assert (=> b!51535 m!55435))

(declare-fun m!55437 () Bool)

(assert (=> b!51535 m!55437))

(assert (=> b!51529 d!43886))

(declare-fun d!43888 () Bool)

(declare-fun c!11023 () Bool)

(assert (=> d!43888 (= c!11023 (is-Empty!110 h!443))))

(declare-fun e!26772 () (Set (_ BitVec 32)))

(assert (=> d!43888 (= (heapContent!0 h!443) e!26772)))

(declare-fun b!51536 () Bool)

(assert (=> b!51536 (= e!26772 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51537 () Bool)

(assert (=> b!51537 (= e!26772 (union (nodeContent!0 (head!639 h!443)) (heapContent!0 (tail!663 h!443))))))

(assert (= (and d!43888 c!11023) b!51536))

(assert (= (and d!43888 (not c!11023)) b!51537))

(declare-fun m!55439 () Bool)

(assert (=> b!51537 m!55439))

(declare-fun m!55441 () Bool)

(assert (=> b!51537 m!55441))

(assert (=> b!51529 d!43888))

(declare-fun d!43890 () Bool)

(declare-fun c!11024 () Bool)

(assert (=> d!43890 (= c!11024 (is-Empty!110 acc!12))))

(declare-fun e!26773 () (Set (_ BitVec 32)))

(assert (=> d!43890 (= (heapContent!0 acc!12) e!26773)))

(declare-fun b!51538 () Bool)

(assert (=> b!51538 (= e!26773 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51539 () Bool)

(assert (=> b!51539 (= e!26773 (union (nodeContent!0 (head!639 acc!12)) (heapContent!0 (tail!663 acc!12))))))

(assert (= (and d!43890 c!11024) b!51538))

(assert (= (and d!43890 (not c!11024)) b!51539))

(declare-fun m!55443 () Bool)

(assert (=> b!51539 m!55443))

(declare-fun m!55445 () Bool)

(assert (=> b!51539 m!55445))

(assert (=> b!51529 d!43890))

(push 1)

(assert (not b!51537))

(assert (not b!51535))

(assert (not b!51539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

