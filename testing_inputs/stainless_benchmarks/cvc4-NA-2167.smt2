; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13304 () Bool)

(assert start!13304)

(assert (=> start!13304 false))

(assert (=> start!13304 true))

(push 1)

(check-sat)

(pop 1)

