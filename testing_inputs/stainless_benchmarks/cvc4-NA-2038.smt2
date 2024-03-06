; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13024 () Bool)

(assert start!13024)

(assert (=> start!13024 false))

(push 1)

(check-sat)

(pop 1)

