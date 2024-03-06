; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13438 () Bool)

(assert start!13438)

(assert (=> start!13438 false))

(push 1)

(check-sat)

(pop 1)

