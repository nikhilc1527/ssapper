; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14150 () Bool)

(assert start!14150)

(assert (=> start!14150 false))

(push 1)

(check-sat)

(pop 1)

