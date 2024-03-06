; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12858 () Bool)

(assert start!12858)

(assert (=> start!12858 false))

(push 1)

(check-sat)

(pop 1)

