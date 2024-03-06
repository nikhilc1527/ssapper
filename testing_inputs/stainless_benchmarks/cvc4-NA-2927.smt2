; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14966 () Bool)

(assert start!14966)

(assert (=> start!14966 false))

(push 1)

(check-sat)

(pop 1)

