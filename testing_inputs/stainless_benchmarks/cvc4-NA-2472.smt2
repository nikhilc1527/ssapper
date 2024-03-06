; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13958 () Bool)

(assert start!13958)

(assert (=> start!13958 false))

(push 1)

(check-sat)

(pop 1)

