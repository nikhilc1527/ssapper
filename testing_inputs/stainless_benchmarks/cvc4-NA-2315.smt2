; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13622 () Bool)

(assert start!13622)

(assert (=> start!13622 false))

(push 1)

(check-sat)

(pop 1)

