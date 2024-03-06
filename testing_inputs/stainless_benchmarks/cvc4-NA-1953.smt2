; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12854 () Bool)

(assert start!12854)

(assert (=> start!12854 false))

(push 1)

(check-sat)

(pop 1)

