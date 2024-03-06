; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13030 () Bool)

(assert start!13030)

(assert (=> start!13030 false))

(push 1)

(check-sat)

(pop 1)

