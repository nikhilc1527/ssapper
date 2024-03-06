; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13992 () Bool)

(assert start!13992)

(assert (=> start!13992 false))

(push 1)

(check-sat)

(pop 1)

