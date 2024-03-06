; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12846 () Bool)

(assert start!12846)

(assert (=> start!12846 false))

(push 1)

(check-sat)

(pop 1)

