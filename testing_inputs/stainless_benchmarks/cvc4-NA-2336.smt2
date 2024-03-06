; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13664 () Bool)

(assert start!13664)

(assert (=> start!13664 false))

(push 1)

(check-sat)

(pop 1)

