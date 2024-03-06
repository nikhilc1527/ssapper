; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12896 () Bool)

(assert start!12896)

(assert (=> start!12896 false))

(push 1)

(check-sat)

(pop 1)

