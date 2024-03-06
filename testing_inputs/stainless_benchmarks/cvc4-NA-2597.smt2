; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14216 () Bool)

(assert start!14216)

(assert (=> start!14216 false))

(push 1)

(check-sat)

(pop 1)

