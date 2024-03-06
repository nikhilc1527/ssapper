; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13398 () Bool)

(assert start!13398)

(assert (=> start!13398 false))

(push 1)

(check-sat)

(pop 1)

