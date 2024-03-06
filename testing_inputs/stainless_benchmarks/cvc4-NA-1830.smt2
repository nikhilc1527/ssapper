; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12404 () Bool)

(assert start!12404)

(declare-datatypes () ((Tree!140 (Leaf!664) (TreeExt!5 (__x!316 Int)) (Node!181 (value!8761 (_ BitVec 32)) (left!1864 Tree!140) (right!1870 Tree!140)))))

(declare-fun tree!183 () Tree!140)

(assert (=> start!12404 (and (not (is-Node!181 tree!183)) (not (is-Leaf!664 tree!183)))))

(assert (=> start!12404 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

