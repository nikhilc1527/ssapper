; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13440 () Bool)

(assert start!13440)

(assert (=> start!13440 false))

(push 1)

(check-sat)

(pop 1)

