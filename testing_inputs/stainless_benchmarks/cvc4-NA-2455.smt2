; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13906 () Bool)

(assert start!13906)

(assert (=> start!13906 false))

(push 1)

(check-sat)

(pop 1)

