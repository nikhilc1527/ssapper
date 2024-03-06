; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13728 () Bool)

(assert start!13728)

(assert (=> start!13728 false))

(push 1)

(check-sat)

(pop 1)

