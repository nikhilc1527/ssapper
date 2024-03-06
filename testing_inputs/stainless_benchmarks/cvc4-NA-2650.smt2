; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14326 () Bool)

(assert start!14326)

(assert (=> start!14326 false))

(push 1)

(check-sat)

(pop 1)

