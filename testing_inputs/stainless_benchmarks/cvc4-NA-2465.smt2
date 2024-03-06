; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13944 () Bool)

(assert start!13944)

(assert (=> start!13944 false))

(assert (=> start!13944 true))

(push 1)

(check-sat)

(pop 1)

