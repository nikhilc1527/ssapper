; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13400 () Bool)

(assert start!13400)

(assert (=> start!13400 false))

(push 1)

(check-sat)

(pop 1)

