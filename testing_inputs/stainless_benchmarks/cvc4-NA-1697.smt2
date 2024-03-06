; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11808 () Bool)

(assert start!11808)

(assert (=> start!11808 false))

(assert (=> start!11808 true))

(push 1)

(check-sat)

(pop 1)

