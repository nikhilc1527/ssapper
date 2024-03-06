; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13626 () Bool)

(assert start!13626)

(assert (=> start!13626 false))

(push 1)

(check-sat)

(pop 1)

