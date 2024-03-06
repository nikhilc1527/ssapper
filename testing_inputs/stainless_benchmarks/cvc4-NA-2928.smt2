; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14968 () Bool)

(assert start!14968)

(assert (=> start!14968 false))

(push 1)

(check-sat)

(pop 1)

