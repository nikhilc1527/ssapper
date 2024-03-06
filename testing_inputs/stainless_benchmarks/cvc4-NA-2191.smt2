; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13352 () Bool)

(assert start!13352)

(assert (=> start!13352 false))

(push 1)

(check-sat)

(pop 1)

