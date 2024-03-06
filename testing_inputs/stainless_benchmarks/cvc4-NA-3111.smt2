; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15376 () Bool)

(assert start!15376)

(assert (=> start!15376 false))

(push 1)

(check-sat)

(pop 1)

