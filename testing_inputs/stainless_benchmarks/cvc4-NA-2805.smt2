; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14686 () Bool)

(assert start!14686)

(assert (=> start!14686 false))

(assert (=> start!14686 true))

(push 1)

(check-sat)

(pop 1)

