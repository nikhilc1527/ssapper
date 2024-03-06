; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13060 () Bool)

(assert start!13060)

(assert (=> start!13060 false))

(assert (=> start!13060 true))

(push 1)

(check-sat)

(pop 1)

