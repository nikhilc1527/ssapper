; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15406 () Bool)

(assert start!15406)

(assert (=> start!15406 false))

(push 1)

(check-sat)

(pop 1)

