; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13642 () Bool)

(assert start!13642)

(assert (=> start!13642 false))

(push 1)

(check-sat)

(pop 1)

