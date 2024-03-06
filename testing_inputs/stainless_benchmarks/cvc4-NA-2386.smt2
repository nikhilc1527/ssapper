; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13764 () Bool)

(assert start!13764)

(assert (=> start!13764 false))

(push 1)

(check-sat)

(pop 1)

