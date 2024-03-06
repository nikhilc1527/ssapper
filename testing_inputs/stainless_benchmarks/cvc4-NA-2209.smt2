; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13388 () Bool)

(assert start!13388)

(assert (=> start!13388 false))

(push 1)

(check-sat)

(pop 1)

