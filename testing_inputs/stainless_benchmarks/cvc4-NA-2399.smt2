; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13790 () Bool)

(assert start!13790)

(assert (=> start!13790 false))

(push 1)

(check-sat)

(pop 1)

