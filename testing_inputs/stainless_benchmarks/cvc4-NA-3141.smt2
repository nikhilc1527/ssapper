; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15438 () Bool)

(assert start!15438)

(assert (=> start!15438 false))

(push 1)

(check-sat)

(pop 1)

