; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15302 () Bool)

(assert start!15302)

(assert (=> start!15302 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

