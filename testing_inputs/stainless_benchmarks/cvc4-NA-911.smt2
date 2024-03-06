; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6918 () Bool)

(assert start!6918)

(declare-datatypes () ((Node!32 (Node!33 (rank!8 Int) (elem!80 (_ BitVec 32)) (nodes!8 Heap!2))) (Heap!2 (Empty!104) (Nodes!1 (head!633 Node!32) (tail!657 Heap!2)))))

(declare-fun v!1754 () Heap!2)

(assert (=> start!6918 (and (= v!1754 Empty!104) (not (is-Empty!104 v!1754)))))

(assert (=> start!6918 true))

(push 1)

(check-sat)

(pop 1)

