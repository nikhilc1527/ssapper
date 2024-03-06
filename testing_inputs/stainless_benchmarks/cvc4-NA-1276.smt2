; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9126 () Bool)

(assert start!9126)

(assert (=> start!9126 false))

(assert (=> start!9126 true))

(push 1)

(check-sat)

(pop 1)

