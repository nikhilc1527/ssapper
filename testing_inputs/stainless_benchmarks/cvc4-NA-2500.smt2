; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14022 () Bool)

(assert start!14022)

(assert (=> start!14022 false))

(assert (=> start!14022 true))

(push 1)

(check-sat)

(pop 1)

