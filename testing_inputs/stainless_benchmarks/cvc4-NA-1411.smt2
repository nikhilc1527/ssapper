; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9770 () Bool)

(assert start!9770)

(assert (=> start!9770 false))

(assert (=> start!9770 true))

(push 1)

(check-sat)

(pop 1)

