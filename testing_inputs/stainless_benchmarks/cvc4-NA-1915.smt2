; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12766 () Bool)

(assert start!12766)

(assert (=> start!12766 false))

(push 1)

(check-sat)

(pop 1)

