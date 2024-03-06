; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12944 () Bool)

(assert start!12944)

(assert (=> start!12944 false))

(push 1)

(check-sat)

(pop 1)

