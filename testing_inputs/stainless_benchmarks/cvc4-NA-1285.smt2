; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9144 () Bool)

(assert start!9144)

(assert (=> start!9144 false))

(assert (=> start!9144 true))

(push 1)

(check-sat)

(pop 1)

