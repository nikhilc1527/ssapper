; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13192 () Bool)

(assert start!13192)

(assert (=> start!13192 false))

(push 1)

(check-sat)

(pop 1)

