; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13346 () Bool)

(assert start!13346)

(assert (=> start!13346 false))

(push 1)

(check-sat)

(pop 1)

