; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13752 () Bool)

(assert start!13752)

(assert (=> start!13752 false))

(push 1)

(check-sat)

(pop 1)

