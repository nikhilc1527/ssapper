; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14890 () Bool)

(assert start!14890)

(assert (=> start!14890 false))

(push 1)

(check-sat)

(pop 1)

