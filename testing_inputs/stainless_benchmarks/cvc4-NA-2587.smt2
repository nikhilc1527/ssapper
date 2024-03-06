; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14196 () Bool)

(assert start!14196)

(assert (=> start!14196 false))

(assert (=> start!14196 true))

(push 1)

(check-sat)

(pop 1)

