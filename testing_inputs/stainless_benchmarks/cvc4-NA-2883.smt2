; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14866 () Bool)

(assert start!14866)

(assert (=> start!14866 false))

(push 1)

(check-sat)

(pop 1)

