; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!624 () Bool)

(assert start!624)

(assert (=> start!624 false))

(push 1)

(check-sat)

(pop 1)

