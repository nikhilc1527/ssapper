; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14476 () Bool)

(assert start!14476)

(assert (=> start!14476 false))

(assert (=> start!14476 true))

(push 1)

(check-sat)

(pop 1)

