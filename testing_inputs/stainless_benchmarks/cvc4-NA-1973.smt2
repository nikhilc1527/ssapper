; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12894 () Bool)

(assert start!12894)

(assert (=> start!12894 false))

(assert (=> start!12894 true))

(push 1)

(check-sat)

(pop 1)

