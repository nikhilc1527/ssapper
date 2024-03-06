; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14304 () Bool)

(assert start!14304)

(assert (=> start!14304 false))

(push 1)

(check-sat)

(pop 1)

