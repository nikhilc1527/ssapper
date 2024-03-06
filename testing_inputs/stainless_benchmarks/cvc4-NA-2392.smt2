; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13776 () Bool)

(assert start!13776)

(assert (=> start!13776 false))

(push 1)

(check-sat)

(pop 1)

