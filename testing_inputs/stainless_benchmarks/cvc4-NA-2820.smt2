; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14716 () Bool)

(assert start!14716)

(assert (=> start!14716 false))

(assert (=> start!14716 true))

(push 1)

(check-sat)

(pop 1)

