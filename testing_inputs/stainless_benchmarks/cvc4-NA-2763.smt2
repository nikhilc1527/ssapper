; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14578 () Bool)

(assert start!14578)

(assert (=> start!14578 false))

(push 1)

(check-sat)

(pop 1)

