; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14228 () Bool)

(assert start!14228)

(assert (=> start!14228 false))

(push 1)

(check-sat)

(pop 1)

