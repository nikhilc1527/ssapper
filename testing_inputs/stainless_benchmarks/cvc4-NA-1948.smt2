; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12844 () Bool)

(assert start!12844)

(assert (=> start!12844 false))

(push 1)

(check-sat)

(pop 1)

