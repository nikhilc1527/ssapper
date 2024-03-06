; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2098 () Bool)

(assert start!2098)

(assert (=> start!2098 false))

(assert (=> start!2098 true))

(push 1)

(check-sat)

(pop 1)

