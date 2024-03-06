; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12958 () Bool)

(assert start!12958)

(assert (=> start!12958 false))

(push 1)

(check-sat)

(pop 1)

