; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13820 () Bool)

(assert start!13820)

(assert (=> start!13820 false))

(assert (=> start!13820 true))

(push 1)

(check-sat)

(pop 1)

