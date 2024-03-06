; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13082 () Bool)

(assert start!13082)

(assert (=> start!13082 false))

(assert (=> start!13082 true))

(push 1)

(check-sat)

(pop 1)

