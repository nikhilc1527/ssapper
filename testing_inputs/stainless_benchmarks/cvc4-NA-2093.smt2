; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13138 () Bool)

(assert start!13138)

(assert (=> start!13138 false))

(push 1)

(check-sat)

(pop 1)

