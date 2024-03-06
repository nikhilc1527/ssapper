; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12902 () Bool)

(assert start!12902)

(assert (=> start!12902 false))

(push 1)

(check-sat)

(pop 1)

