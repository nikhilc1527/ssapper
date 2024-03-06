; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13340 () Bool)

(assert start!13340)

(assert (=> start!13340 false))

(push 1)

(check-sat)

(pop 1)

