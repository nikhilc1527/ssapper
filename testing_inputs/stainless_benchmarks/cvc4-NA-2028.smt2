; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13004 () Bool)

(assert start!13004)

(assert (=> start!13004 false))

(push 1)

(check-sat)

(pop 1)

