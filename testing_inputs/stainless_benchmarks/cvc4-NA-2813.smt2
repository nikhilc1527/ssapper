; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14702 () Bool)

(assert start!14702)

(assert (=> start!14702 false))

(push 1)

(check-sat)

(pop 1)

