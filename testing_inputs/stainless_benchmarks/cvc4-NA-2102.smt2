; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13156 () Bool)

(assert start!13156)

(assert (=> start!13156 false))

(push 1)

(check-sat)

(pop 1)

