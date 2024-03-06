; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14274 () Bool)

(assert start!14274)

(assert (=> start!14274 false))

(push 1)

(check-sat)

(pop 1)

