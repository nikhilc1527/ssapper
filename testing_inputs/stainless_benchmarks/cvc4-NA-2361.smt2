; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13714 () Bool)

(assert start!13714)

(assert (=> start!13714 false))

(push 1)

(check-sat)

(pop 1)

