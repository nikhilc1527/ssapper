; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13038 () Bool)

(assert start!13038)

(assert (=> start!13038 false))

(push 1)

(check-sat)

(pop 1)

