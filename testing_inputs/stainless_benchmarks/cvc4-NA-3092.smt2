; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15338 () Bool)

(assert start!15338)

(assert (=> start!15338 false))

(push 1)

(check-sat)

(pop 1)

