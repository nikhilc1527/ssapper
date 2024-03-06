; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12994 () Bool)

(assert start!12994)

(assert (=> start!12994 false))

(push 1)

(check-sat)

(pop 1)

