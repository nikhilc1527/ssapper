; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13876 () Bool)

(assert start!13876)

(assert (=> start!13876 false))

(push 1)

(check-sat)

(pop 1)

