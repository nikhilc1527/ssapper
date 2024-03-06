; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12782 () Bool)

(assert start!12782)

(assert (=> start!12782 false))

(push 1)

(check-sat)

(pop 1)

