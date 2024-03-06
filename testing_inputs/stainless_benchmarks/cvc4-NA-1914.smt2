; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12764 () Bool)

(assert start!12764)

(assert (=> start!12764 false))

(push 1)

(check-sat)

(pop 1)

