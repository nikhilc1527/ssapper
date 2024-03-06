; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14478 () Bool)

(assert start!14478)

(assert (=> start!14478 false))

(assert (=> start!14478 true))

(push 1)

(check-sat)

(pop 1)

