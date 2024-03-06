; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13520 () Bool)

(assert start!13520)

(assert (=> start!13520 false))

(push 1)

(check-sat)

(pop 1)

