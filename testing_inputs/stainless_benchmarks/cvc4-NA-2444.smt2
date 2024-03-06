; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13884 () Bool)

(assert start!13884)

(assert (=> start!13884 false))

(push 1)

(check-sat)

(pop 1)

