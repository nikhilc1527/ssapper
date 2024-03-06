; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15210 () Bool)

(assert start!15210)

(assert (=> start!15210 false))

(push 1)

(check-sat)

(pop 1)

