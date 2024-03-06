; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13288 () Bool)

(assert start!13288)

(assert (=> start!13288 false))

(push 1)

(check-sat)

(pop 1)

