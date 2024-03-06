; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13532 () Bool)

(assert start!13532)

(assert (=> start!13532 false))

(assert (=> start!13532 true))

(push 1)

(check-sat)

(pop 1)

