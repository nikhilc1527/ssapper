; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12822 () Bool)

(assert start!12822)

(assert (=> start!12822 false))

(push 1)

(check-sat)

(pop 1)

