; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13018 () Bool)

(assert start!13018)

(assert (=> start!13018 false))

(push 1)

(check-sat)

(pop 1)

