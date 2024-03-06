; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14034 () Bool)

(assert start!14034)

(assert (=> start!14034 false))

(assert (=> start!14034 true))

(push 1)

(check-sat)

(pop 1)

