; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6952 () Bool)

(assert start!6952)

(declare-fun res!23537 () Bool)

(declare-fun e!26668 () Bool)

(assert (=> start!6952 (=> (not res!23537) (not e!26668))))

(declare-datatypes () ((Node!40 (Node!41 (rank!12 Int) (elem!84 (_ BitVec 32)) (nodes!12 Heap!6))) (Heap!6 (Empty!108) (Nodes!5 (head!637 Node!40) (tail!661 Heap!6)))))

(declare-fun inlined!6123 () Heap!6)

(declare-fun h!424 () Heap!6)

(declare-fun res!23488 () Heap!6)

(assert (=> start!6952 (= res!23537 (and (is-Empty!108 h!424) (= inlined!6123 Empty!108) (= res!23488 inlined!6123)))))

(assert (=> start!6952 e!26668))

(assert (=> start!6952 true))

(declare-fun b!51326 () Bool)

(declare-fun heapContent!0 (Heap!6) (Set (_ BitVec 32)))

(assert (=> b!51326 (= e!26668 (not (subset (heapContent!0 res!23488) (heapContent!0 h!424))))))

(assert (= (and start!6952 res!23537) b!51326))

(declare-fun m!55109 () Bool)

(assert (=> b!51326 m!55109))

(declare-fun m!55111 () Bool)

(assert (=> b!51326 m!55111))

(push 1)

(assert (not b!51326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

