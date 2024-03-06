; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15326 () Bool)

(assert start!15326)

(assert (=> start!15326 false))

(push 1)

(check-sat)

(pop 1)

