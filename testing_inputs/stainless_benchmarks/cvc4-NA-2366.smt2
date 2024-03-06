; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13724 () Bool)

(assert start!13724)

(assert (=> start!13724 false))

(push 1)

(check-sat)

(pop 1)

