; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15244 () Bool)

(assert start!15244)

(assert (=> start!15244 false))

(push 1)

(check-sat)

(pop 1)

