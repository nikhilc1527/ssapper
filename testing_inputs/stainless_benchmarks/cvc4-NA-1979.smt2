; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12906 () Bool)

(assert start!12906)

(assert (=> start!12906 false))

(push 1)

(check-sat)

(pop 1)

