; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14422 () Bool)

(assert start!14422)

(assert (=> start!14422 false))

(assert (=> start!14422 true))

(push 1)

(check-sat)

(pop 1)

