; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13230 () Bool)

(assert start!13230)

(assert (=> start!13230 false))

(push 1)

(check-sat)

(pop 1)

