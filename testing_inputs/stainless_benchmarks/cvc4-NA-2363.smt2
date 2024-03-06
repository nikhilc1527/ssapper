; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13718 () Bool)

(assert start!13718)

(assert (=> start!13718 false))

(push 1)

(check-sat)

(pop 1)

