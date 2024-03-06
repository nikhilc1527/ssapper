; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14166 () Bool)

(assert start!14166)

(assert (=> start!14166 false))

(push 1)

(check-sat)

(pop 1)

