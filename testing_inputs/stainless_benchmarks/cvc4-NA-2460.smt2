; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13916 () Bool)

(assert start!13916)

(assert (=> start!13916 false))

(push 1)

(check-sat)

(pop 1)

