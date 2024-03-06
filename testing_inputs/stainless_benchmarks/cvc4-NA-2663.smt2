; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14352 () Bool)

(assert start!14352)

(assert (=> start!14352 false))

(push 1)

(check-sat)

(pop 1)

