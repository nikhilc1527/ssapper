; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13896 () Bool)

(assert start!13896)

(assert (=> start!13896 false))

(push 1)

(check-sat)

(pop 1)

