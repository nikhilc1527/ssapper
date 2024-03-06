; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13766 () Bool)

(assert start!13766)

(assert (=> start!13766 false))

(push 1)

(check-sat)

(pop 1)

