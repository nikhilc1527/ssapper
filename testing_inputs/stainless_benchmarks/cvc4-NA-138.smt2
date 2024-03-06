; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!770 () Bool)

(assert start!770)

(assert (=> start!770 false))

(assert (=> start!770 true))

(push 1)

(check-sat)

(pop 1)

