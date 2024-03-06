; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12752 () Bool)

(assert start!12752)

(assert (=> start!12752 false))

(push 1)

(check-sat)

(pop 1)

