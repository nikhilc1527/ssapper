; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13268 () Bool)

(assert start!13268)

(assert (=> start!13268 false))

(push 1)

(check-sat)

(pop 1)

