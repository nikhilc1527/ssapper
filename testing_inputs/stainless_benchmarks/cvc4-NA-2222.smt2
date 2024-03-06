; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13414 () Bool)

(assert start!13414)

(assert (=> start!13414 false))

(push 1)

(check-sat)

(pop 1)

