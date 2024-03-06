; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15422 () Bool)

(assert start!15422)

(assert (=> start!15422 false))

(push 1)

(check-sat)

(pop 1)

