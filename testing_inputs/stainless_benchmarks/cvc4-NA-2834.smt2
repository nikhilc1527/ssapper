; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14752 () Bool)

(assert start!14752)

(assert (=> start!14752 false))

(assert (=> start!14752 true))

(push 1)

(check-sat)

(pop 1)

