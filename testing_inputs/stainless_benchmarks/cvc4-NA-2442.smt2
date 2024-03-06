; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13880 () Bool)

(assert start!13880)

(assert (=> start!13880 false))

(push 1)

(check-sat)

(pop 1)

