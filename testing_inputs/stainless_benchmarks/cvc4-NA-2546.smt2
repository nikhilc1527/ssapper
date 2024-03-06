; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14114 () Bool)

(assert start!14114)

(assert (=> start!14114 false))

(push 1)

(check-sat)

(pop 1)

