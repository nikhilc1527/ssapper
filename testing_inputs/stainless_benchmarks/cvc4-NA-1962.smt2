; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12872 () Bool)

(assert start!12872)

(assert (=> start!12872 false))

(assert (=> start!12872 true))

(push 1)

(check-sat)

(pop 1)

