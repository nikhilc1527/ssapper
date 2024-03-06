; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14958 () Bool)

(assert start!14958)

(assert (=> start!14958 false))

(push 1)

(check-sat)

(pop 1)

