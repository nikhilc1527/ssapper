; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13858 () Bool)

(assert start!13858)

(assert (=> start!13858 false))

(push 1)

(check-sat)

(pop 1)

