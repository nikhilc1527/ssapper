; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13680 () Bool)

(assert start!13680)

(assert (=> start!13680 false))

(push 1)

(check-sat)

(pop 1)

