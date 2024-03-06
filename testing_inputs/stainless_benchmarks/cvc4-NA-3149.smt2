; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15456 () Bool)

(assert start!15456)

(assert (=> start!15456 false))

(assert (=> start!15456 true))

(push 1)

(check-sat)

(pop 1)

