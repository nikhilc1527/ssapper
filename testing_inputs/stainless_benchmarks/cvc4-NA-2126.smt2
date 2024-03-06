; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13222 () Bool)

(assert start!13222)

(assert (=> start!13222 false))

(push 1)

(check-sat)

(pop 1)

