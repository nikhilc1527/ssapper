; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15314 () Bool)

(assert start!15314)

(assert (=> start!15314 false))

(push 1)

(check-sat)

(pop 1)

