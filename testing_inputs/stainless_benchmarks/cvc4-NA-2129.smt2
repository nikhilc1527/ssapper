; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13228 () Bool)

(assert start!13228)

(assert (=> start!13228 false))

(push 1)

(check-sat)

(pop 1)

