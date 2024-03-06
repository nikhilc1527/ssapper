; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12784 () Bool)

(assert start!12784)

(assert (=> start!12784 false))

(push 1)

(check-sat)

(pop 1)

