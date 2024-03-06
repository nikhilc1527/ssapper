; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6984 () Bool)

(assert start!6984)

(declare-datatypes () ((Node!48 (Node!49 (rank!16 Int) (elem!88 (_ BitVec 32)) (nodes!16 Heap!10))) (Heap!10 (Empty!112) (Nodes!9 (head!641 Node!48) (tail!665 Heap!10)))))

(declare-fun h!490 () Heap!10)

(declare-fun h!496 () Heap!10)

(assert (=> start!6984 (and (not (= h!490 Empty!112)) (or (not (is-Nodes!9 h!490)) (not (is-Empty!112 (tail!665 h!490)))) (= h!496 (tail!665 h!490)) (= h!496 Empty!112))))

(assert (=> start!6984 true))

(push 1)

(check-sat)

(pop 1)

