; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6992 () Bool)

(assert start!6992)

(declare-fun res!23585 () Bool)

(declare-fun e!26800 () Bool)

(assert (=> start!6992 (=> (not res!23585) (not e!26800))))

(declare-datatypes () ((Node!52 (Node!53 (rank!18 Int) (elem!90 (_ BitVec 32)) (nodes!18 Heap!12))) (Heap!12 (Empty!114) (Nodes!11 (head!643 Node!52) (tail!667 Heap!12)))))

(declare-fun h!490 () Heap!12)

(assert (=> start!6992 (= res!23585 (and (not (= h!490 Empty!114)) (or (not (is-Nodes!11 h!490)) (not (is-Empty!114 (tail!667 h!490))))))))

(assert (=> start!6992 e!26800))

(assert (=> start!6992 true))

(declare-fun b!51592 () Bool)

(declare-fun res!23586 () Bool)

(assert (=> b!51592 (=> (not res!23586) (not e!26800))))

(declare-datatypes () ((tuple2!274 (tuple2!275 (_1!164 Node!52) (_2!164 Heap!12)))))

(declare-fun x$1!736 () tuple2!274)

(declare-fun getMin!0 (Heap!12) tuple2!274)

(assert (=> b!51592 (= res!23586 (= x$1!736 (getMin!0 (tail!667 h!490))))))

(declare-fun b!51593 () Bool)

(assert (=> b!51593 (= e!26800 false)))

(assert (= (and start!6992 res!23585) b!51592))

(assert (= (and b!51592 res!23586) b!51593))

(declare-fun m!55529 () Bool)

(assert (=> b!51592 m!55529))

(push 1)

(assert (not b!51592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

