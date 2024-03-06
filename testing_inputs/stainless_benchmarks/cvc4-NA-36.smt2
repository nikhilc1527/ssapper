; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!174 () Bool)

(assert start!174)

(assert (=> start!174 false))

(assert (=> start!174 true))

(push 1)

(check-sat)

(pop 1)

