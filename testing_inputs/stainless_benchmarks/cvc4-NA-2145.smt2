; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13260 () Bool)

(assert start!13260)

(assert (=> start!13260 false))

(push 1)

(check-sat)

(pop 1)

