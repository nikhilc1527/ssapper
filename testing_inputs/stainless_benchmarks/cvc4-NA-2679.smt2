; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14402 () Bool)

(assert start!14402)

(assert (=> start!14402 false))

(push 1)

(check-sat)

(pop 1)

