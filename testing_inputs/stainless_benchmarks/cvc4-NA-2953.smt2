; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15030 () Bool)

(assert start!15030)

(assert (=> start!15030 false))

(assert (=> start!15030 true))

(push 1)

(check-sat)

(pop 1)

