; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12756 () Bool)

(assert start!12756)

(assert (=> start!12756 false))

(push 1)

(check-sat)

(pop 1)

