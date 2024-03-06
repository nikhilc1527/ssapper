; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13684 () Bool)

(assert start!13684)

(assert (=> start!13684 false))

(push 1)

(check-sat)

(pop 1)

