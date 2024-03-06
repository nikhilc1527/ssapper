; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13116 () Bool)

(assert start!13116)

(assert (=> start!13116 false))

(push 1)

(check-sat)

(pop 1)

