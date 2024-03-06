; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13670 () Bool)

(assert start!13670)

(assert (=> start!13670 false))

(push 1)

(check-sat)

(pop 1)

