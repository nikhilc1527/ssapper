; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13882 () Bool)

(assert start!13882)

(assert (=> start!13882 false))

(push 1)

(check-sat)

(pop 1)

