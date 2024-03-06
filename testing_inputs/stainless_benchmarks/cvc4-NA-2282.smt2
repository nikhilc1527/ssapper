; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13538 () Bool)

(assert start!13538)

(assert (=> start!13538 false))

(push 1)

(check-sat)

(pop 1)

