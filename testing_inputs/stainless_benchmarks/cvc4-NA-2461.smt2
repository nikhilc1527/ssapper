; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13918 () Bool)

(assert start!13918)

(assert (=> start!13918 false))

(push 1)

(check-sat)

(pop 1)

