; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13378 () Bool)

(assert start!13378)

(assert (=> start!13378 false))

(push 1)

(check-sat)

(pop 1)

