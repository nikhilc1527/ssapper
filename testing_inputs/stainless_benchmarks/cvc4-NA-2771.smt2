; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14602 () Bool)

(assert start!14602)

(assert (=> start!14602 false))

(push 1)

(check-sat)

(pop 1)

