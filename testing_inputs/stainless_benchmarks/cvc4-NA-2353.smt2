; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13698 () Bool)

(assert start!13698)

(assert (=> start!13698 false))

(push 1)

(check-sat)

(pop 1)

