; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12772 () Bool)

(assert start!12772)

(assert (=> start!12772 false))

(push 1)

(check-sat)

(pop 1)

