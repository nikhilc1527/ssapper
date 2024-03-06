; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14524 () Bool)

(assert start!14524)

(assert (=> start!14524 false))

(assert (=> start!14524 true))

(push 1)

(check-sat)

(pop 1)

