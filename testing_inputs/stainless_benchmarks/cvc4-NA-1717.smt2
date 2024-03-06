; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11848 () Bool)

(assert start!11848)

(declare-datatypes () ((Tree!119 (Node!162 (left!1723 Tree!119) (value!7323 (_ BitVec 32)) (right!1729 Tree!119)) (Leaf!551))))

(declare-fun tree!133 () Tree!119)

(declare-fun tree!134 () Tree!119)

(assert (=> start!11848 (and (is-Node!162 tree!133) (= tree!134 tree!133) (not (is-Node!162 tree!134)))))

(assert (=> start!11848 true))

(push 1)

(check-sat)

(pop 1)

