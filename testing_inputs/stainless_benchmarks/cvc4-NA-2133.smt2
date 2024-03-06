; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13236 () Bool)

(assert start!13236)

(assert (=> start!13236 false))

(push 1)

(check-sat)

(pop 1)

