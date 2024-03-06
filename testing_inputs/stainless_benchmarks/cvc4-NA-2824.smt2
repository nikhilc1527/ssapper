; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14724 () Bool)

(assert start!14724)

(assert (=> start!14724 false))

(assert (=> start!14724 true))

(push 1)

(check-sat)

(pop 1)

