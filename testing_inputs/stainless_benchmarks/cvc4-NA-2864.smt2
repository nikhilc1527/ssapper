; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14816 () Bool)

(assert start!14816)

(assert (=> start!14816 false))

(push 1)

(check-sat)

(pop 1)

