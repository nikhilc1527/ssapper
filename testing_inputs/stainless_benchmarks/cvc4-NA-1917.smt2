; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12770 () Bool)

(assert start!12770)

(assert (=> start!12770 false))

(push 1)

(check-sat)

(pop 1)

