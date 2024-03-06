; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13688 () Bool)

(assert start!13688)

(assert (=> start!13688 false))

(push 1)

(check-sat)

(pop 1)

