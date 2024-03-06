; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13518 () Bool)

(assert start!13518)

(assert (=> start!13518 false))

(push 1)

(check-sat)

(pop 1)

