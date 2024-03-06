; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13580 () Bool)

(assert start!13580)

(assert (=> start!13580 false))

(push 1)

(check-sat)

(pop 1)

