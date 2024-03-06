; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13212 () Bool)

(assert start!13212)

(assert (=> start!13212 false))

(push 1)

(check-sat)

(pop 1)

