; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13556 () Bool)

(assert start!13556)

(assert (=> start!13556 false))

(push 1)

(check-sat)

(pop 1)

