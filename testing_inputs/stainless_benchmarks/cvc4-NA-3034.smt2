; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15222 () Bool)

(assert start!15222)

(assert (=> start!15222 false))

(push 1)

(check-sat)

(pop 1)

