; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9148 () Bool)

(assert start!9148)

(assert (=> start!9148 false))

(assert (=> start!9148 true))

(push 1)

(check-sat)

(pop 1)

