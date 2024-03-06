; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13244 () Bool)

(assert start!13244)

(assert (=> start!13244 false))

(push 1)

(check-sat)

(pop 1)

