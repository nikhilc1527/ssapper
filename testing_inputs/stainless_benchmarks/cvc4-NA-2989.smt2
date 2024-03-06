; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15102 () Bool)

(assert start!15102)

(assert (=> start!15102 false))

(push 1)

(check-sat)

(pop 1)

