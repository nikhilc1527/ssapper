; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13328 () Bool)

(assert start!13328)

(assert (=> start!13328 false))

(push 1)

(check-sat)

(pop 1)

