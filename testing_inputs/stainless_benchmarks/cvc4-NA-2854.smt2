; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14796 () Bool)

(assert start!14796)

(assert (=> start!14796 false))

(push 1)

(check-sat)

(pop 1)

