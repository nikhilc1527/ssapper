; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12924 () Bool)

(assert start!12924)

(assert (=> start!12924 false))

(push 1)

(check-sat)

(pop 1)

