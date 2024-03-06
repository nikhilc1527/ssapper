; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15346 () Bool)

(assert start!15346)

(assert (=> start!15346 false))

(push 1)

(check-sat)

(pop 1)

