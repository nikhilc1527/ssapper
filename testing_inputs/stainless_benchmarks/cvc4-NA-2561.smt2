; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14144 () Bool)

(assert start!14144)

(assert (=> start!14144 false))

(assert (=> start!14144 true))

(push 1)

(check-sat)

(pop 1)

