; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15378 () Bool)

(assert start!15378)

(assert (=> start!15378 false))

(push 1)

(check-sat)

(pop 1)

