; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14642 () Bool)

(assert start!14642)

(assert (=> start!14642 false))

(push 1)

(check-sat)

(pop 1)

