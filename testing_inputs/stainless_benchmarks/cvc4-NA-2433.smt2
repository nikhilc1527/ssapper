; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13862 () Bool)

(assert start!13862)

(assert (=> start!13862 false))

(push 1)

(check-sat)

(pop 1)

