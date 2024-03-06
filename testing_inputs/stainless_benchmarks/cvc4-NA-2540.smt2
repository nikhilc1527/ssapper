; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14102 () Bool)

(assert start!14102)

(assert (=> start!14102 false))

(assert (=> start!14102 true))

(push 1)

(check-sat)

(pop 1)

