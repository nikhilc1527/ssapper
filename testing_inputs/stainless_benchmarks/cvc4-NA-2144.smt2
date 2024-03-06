; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13258 () Bool)

(assert start!13258)

(assert (=> start!13258 false))

(push 1)

(check-sat)

(pop 1)

