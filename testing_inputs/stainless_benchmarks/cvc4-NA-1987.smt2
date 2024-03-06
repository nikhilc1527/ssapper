; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12922 () Bool)

(assert start!12922)

(assert (=> start!12922 false))

(push 1)

(check-sat)

(pop 1)

