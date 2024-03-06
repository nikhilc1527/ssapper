; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13306 () Bool)

(assert start!13306)

(assert (=> start!13306 false))

(push 1)

(check-sat)

(pop 1)

