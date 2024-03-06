; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15048 () Bool)

(assert start!15048)

(assert (=> start!15048 false))

(push 1)

(check-sat)

(pop 1)

