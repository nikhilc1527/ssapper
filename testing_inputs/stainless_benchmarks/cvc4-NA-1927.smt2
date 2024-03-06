; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12790 () Bool)

(assert start!12790)

(assert (=> start!12790 false))

(push 1)

(check-sat)

(pop 1)

