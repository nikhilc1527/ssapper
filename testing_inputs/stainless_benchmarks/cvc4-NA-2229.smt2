; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13428 () Bool)

(assert start!13428)

(assert (=> start!13428 false))

(assert (=> start!13428 true))

(push 1)

(check-sat)

(pop 1)

