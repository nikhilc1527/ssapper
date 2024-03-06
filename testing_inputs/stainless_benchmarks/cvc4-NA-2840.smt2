; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14768 () Bool)

(assert start!14768)

(assert (=> start!14768 false))

(assert (=> start!14768 true))

(push 1)

(check-sat)

(pop 1)

