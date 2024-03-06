; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!608 () Bool)

(assert start!608)

(assert (=> start!608 false))

(push 1)

(check-sat)

(pop 1)

