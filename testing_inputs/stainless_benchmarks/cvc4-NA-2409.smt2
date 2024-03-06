; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13812 () Bool)

(assert start!13812)

(assert (=> start!13812 false))

(push 1)

(check-sat)

(pop 1)

