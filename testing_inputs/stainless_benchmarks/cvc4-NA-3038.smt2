; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15230 () Bool)

(assert start!15230)

(assert (=> start!15230 false))

(push 1)

(check-sat)

(pop 1)

