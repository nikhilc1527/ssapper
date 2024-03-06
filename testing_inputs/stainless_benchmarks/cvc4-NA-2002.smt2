; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12952 () Bool)

(assert start!12952)

(assert (=> start!12952 false))

(push 1)

(check-sat)

(pop 1)

