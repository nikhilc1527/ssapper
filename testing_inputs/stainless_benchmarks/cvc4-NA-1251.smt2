; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8930 () Bool)

(assert start!8930)

(assert (=> start!8930 false))

(push 1)

(check-sat)

(pop 1)

