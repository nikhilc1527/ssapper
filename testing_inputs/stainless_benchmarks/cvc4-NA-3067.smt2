; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15288 () Bool)

(assert start!15288)

(assert (=> start!15288 false))

(push 1)

(check-sat)

(pop 1)

