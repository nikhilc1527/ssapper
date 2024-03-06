; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12864 () Bool)

(assert start!12864)

(assert (=> start!12864 false))

(push 1)

(check-sat)

(pop 1)

