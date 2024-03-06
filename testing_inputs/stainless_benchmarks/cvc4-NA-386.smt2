; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2788 () Bool)

(assert start!2788)

(assert (=> start!2788 false))

(assert (=> start!2788 true))

(push 1)

(check-sat)

(pop 1)

