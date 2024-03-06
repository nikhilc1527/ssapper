; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14086 () Bool)

(assert start!14086)

(assert (=> start!14086 false))

(push 1)

(check-sat)

(pop 1)

