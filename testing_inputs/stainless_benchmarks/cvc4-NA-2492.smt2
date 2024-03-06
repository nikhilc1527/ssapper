; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13998 () Bool)

(assert start!13998)

(assert (=> start!13998 false))

(push 1)

(check-sat)

(pop 1)

