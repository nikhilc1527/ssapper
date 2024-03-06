; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13356 () Bool)

(assert start!13356)

(assert (=> start!13356 false))

(push 1)

(check-sat)

(pop 1)

