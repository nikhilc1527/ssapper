; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13822 () Bool)

(assert start!13822)

(assert (=> start!13822 false))

(assert (=> start!13822 true))

(push 1)

(check-sat)

(pop 1)

