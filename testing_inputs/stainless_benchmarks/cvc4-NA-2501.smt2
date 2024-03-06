; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14024 () Bool)

(assert start!14024)

(assert (=> start!14024 false))

(assert (=> start!14024 true))

(push 1)

(check-sat)

(pop 1)

