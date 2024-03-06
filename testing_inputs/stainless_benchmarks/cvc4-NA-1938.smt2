; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12824 () Bool)

(assert start!12824)

(assert (=> start!12824 false))

(push 1)

(check-sat)

(pop 1)

