; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15152 () Bool)

(assert start!15152)

(assert (=> start!15152 false))

(push 1)

(check-sat)

(pop 1)

