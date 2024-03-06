; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14260 () Bool)

(assert start!14260)

(assert (=> start!14260 false))

(push 1)

(check-sat)

(pop 1)

