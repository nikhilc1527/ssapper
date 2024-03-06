; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13578 () Bool)

(assert start!13578)

(assert (=> start!13578 false))

(push 1)

(check-sat)

(pop 1)

