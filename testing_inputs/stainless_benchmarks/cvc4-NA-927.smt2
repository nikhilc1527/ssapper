; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7046 () Bool)

(assert start!7046)

(declare-fun res!23656 () Bool)

(declare-fun e!26987 () Bool)

(assert (=> start!7046 (=> (not res!23656) (not e!26987))))

(declare-datatypes () ((OptInt!8 (Some!232 (value!3244 (_ BitVec 32))) (None!233))))

(declare-fun x$3!123 () OptInt!8)

(declare-datatypes () ((Node!64 (Node!65 (rank!24 Int) (elem!96 (_ BitVec 32)) (nodes!24 Heap!18))) (Heap!18 (Empty!120) (Nodes!17 (head!649 Node!64) (tail!673 Heap!18)))))

(declare-fun h!391 () Heap!18)

(declare-fun inlined!6102 () OptInt!8)

(assert (=> start!7046 (= res!23656 (and (is-Empty!120 h!391) (= inlined!6102 None!233) (= x$3!123 inlined!6102) (not (is-None!233 x$3!123))))))

(assert (=> start!7046 e!26987))

(assert (=> start!7046 true))

(declare-fun b!51975 () Bool)

(declare-fun heapContent!0 (Heap!18) (Set (_ BitVec 32)))

(assert (=> b!51975 (= e!26987 (not (member (value!3244 x$3!123) (heapContent!0 h!391))))))

(assert (= (and start!7046 res!23656) b!51975))

(declare-fun m!55967 () Bool)

(assert (=> b!51975 m!55967))

(declare-fun m!55969 () Bool)

(assert (=> b!51975 m!55969))

(push 1)

(assert (not b!51975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

