; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13146 () Bool)

(assert start!13146)

(assert (=> start!13146 false))

(push 1)

(check-sat)

(pop 1)

