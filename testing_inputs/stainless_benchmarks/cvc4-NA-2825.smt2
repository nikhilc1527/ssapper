; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14726 () Bool)

(assert start!14726)

(assert (=> start!14726 false))

(assert (=> start!14726 true))

(push 1)

(check-sat)

(pop 1)

