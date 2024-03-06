; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13620 () Bool)

(assert start!13620)

(assert (=> start!13620 false))

(assert (=> start!13620 true))

(push 1)

(check-sat)

(pop 1)

