; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13814 () Bool)

(assert start!13814)

(assert (=> start!13814 false))

(push 1)

(check-sat)

(pop 1)

