; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14198 () Bool)

(assert start!14198)

(assert (=> start!14198 false))

(push 1)

(check-sat)

(pop 1)

