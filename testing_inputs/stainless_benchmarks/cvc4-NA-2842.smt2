; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14772 () Bool)

(assert start!14772)

(assert (=> start!14772 false))

(push 1)

(check-sat)

(pop 1)

