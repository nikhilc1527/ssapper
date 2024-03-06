; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14562 () Bool)

(assert start!14562)

(assert (=> start!14562 false))

(push 1)

(check-sat)

(pop 1)

