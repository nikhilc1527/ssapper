; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12910 () Bool)

(assert start!12910)

(assert (=> start!12910 false))

(push 1)

(check-sat)

(pop 1)

