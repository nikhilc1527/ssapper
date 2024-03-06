; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11868 () Bool)

(assert start!11868)

(declare-datatypes () ((Tree!125 (Node!168 (left!1729 Tree!125) (value!7329 (_ BitVec 32)) (right!1735 Tree!125)) (Leaf!557))))

(declare-fun tree!138 () Tree!125)

(declare-fun tree!139 () Tree!125)

(assert (=> start!11868 (and (is-Node!168 tree!138) (not (is-Leaf!557 (right!1735 tree!138))) (= tree!139 (right!1735 tree!138)) (not (is-Node!168 tree!139)))))

(assert (=> start!11868 true))

(push 1)

(check-sat)

(pop 1)

