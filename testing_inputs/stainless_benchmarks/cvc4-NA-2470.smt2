; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13954 () Bool)

(assert start!13954)

(assert (=> start!13954 false))

(assert (=> start!13954 true))

(push 1)

(check-sat)

(pop 1)

