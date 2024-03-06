; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12926 () Bool)

(assert start!12926)

(assert (=> start!12926 false))

(push 1)

(check-sat)

(pop 1)

