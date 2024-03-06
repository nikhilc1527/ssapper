; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6950 () Bool)

(assert start!6950)

(declare-datatypes () ((Node!38 (Node!39 (rank!11 Int) (elem!83 (_ BitVec 32)) (nodes!11 Heap!5))) (Heap!5 (Empty!107) (Nodes!4 (head!636 Node!38) (tail!660 Heap!5)))))

(declare-fun h!424 () Heap!5)

(declare-fun h!433 () Heap!5)

(assert (=> start!6950 (and (not (is-Empty!107 h!424)) (= h!433 h!424) (= h!433 Empty!107))))

(assert (=> start!6950 true))

(push 1)

(check-sat)

(pop 1)

