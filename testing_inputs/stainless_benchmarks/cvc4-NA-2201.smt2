; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13372 () Bool)

(assert start!13372)

(assert (=> start!13372 false))

(push 1)

(check-sat)

(pop 1)

