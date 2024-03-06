; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12820 () Bool)

(assert start!12820)

(assert (=> start!12820 false))

(push 1)

(check-sat)

(pop 1)

