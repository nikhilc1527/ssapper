; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14520 () Bool)

(assert start!14520)

(assert (=> start!14520 false))

(push 1)

(check-sat)

(pop 1)

