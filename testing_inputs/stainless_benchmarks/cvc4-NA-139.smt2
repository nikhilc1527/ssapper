; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!772 () Bool)

(assert start!772)

(assert (=> start!772 false))

(assert (=> start!772 true))

(push 1)

(check-sat)

(pop 1)

