; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15274 () Bool)

(assert start!15274)

(assert (=> start!15274 false))

(push 1)

(check-sat)

(pop 1)

