; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13662 () Bool)

(assert start!13662)

(assert (=> start!13662 false))

(push 1)

(check-sat)

(pop 1)

