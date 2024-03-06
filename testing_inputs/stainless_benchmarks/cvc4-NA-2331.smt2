; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13654 () Bool)

(assert start!13654)

(assert (=> start!13654 false))

(assert (=> start!13654 true))

(push 1)

(check-sat)

(pop 1)

