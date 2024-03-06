; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13418 () Bool)

(assert start!13418)

(assert (=> start!13418 false))

(push 1)

(check-sat)

(pop 1)

