; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14530 () Bool)

(assert start!14530)

(assert (=> start!14530 false))

(push 1)

(check-sat)

(pop 1)

