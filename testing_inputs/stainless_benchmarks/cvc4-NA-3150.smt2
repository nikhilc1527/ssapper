; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15458 () Bool)

(assert start!15458)

(assert (=> start!15458 false))

(push 1)

(check-sat)

(pop 1)

