; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14810 () Bool)

(assert start!14810)

(assert (=> start!14810 false))

(push 1)

(check-sat)

(pop 1)

